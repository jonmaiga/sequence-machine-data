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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C051
import Seq.B000.C052
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
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A254600: Numbers of words on alphabet {0,1,...,10} with no subwords ii, for i from {0,1}.

The programs for A254600, the canonical program `A254600.P1611293815900564845` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254600 has offset 0).

The definition of A254600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254600.P13754227888916352441

`ogf((1+x)/(1-10x-9x^2))`
-/

namespace A254600.P13754227888916352441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -10, -9] n

end

end A254600.P13754227888916352441

namespace A254600

/-- `ogf((1+x)/(1-10x-9x^2))` -/
def P13754227888916352441.Spec : Prop :=
  ∀ n, P13754227888916352441.a n = A254600 n

end A254600

/-! ## A254600.P1611293815900564845

`10*a(n-1)+9*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254600

/-- `10*a(n-1)+9*a(n-2)` -/
def P1611293815900564845.Spec : Prop :=
  ∀ n, (P1611293815900564845.a n : ℤ) = A254600 n

theorem P1611293815900564845.correct : P1611293815900564845.Spec := by
  intro n
  simp only [A254600]

end A254600

/-! ## A254600.P8767851818835403896

`11*a(n-1)-a(n-2)-9*a(n-3)` with `a(0)=1, a(1)=11, a(2)=119`
-/

namespace A254600.P8767851818835403896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11, 119] fun n a =>
  11 * a (n - 1) - a (n - 2) - 9 * a (n - 3)

end

end A254600.P8767851818835403896

namespace A254600

/-- `11*a(n-1)-a(n-2)-9*a(n-3)` -/
def P8767851818835403896.Spec : Prop :=
  ∀ n, P8767851818835403896.a n = A254600 n

end A254600

/-! ## A254600.P8547045475057826635

`A015591(n+1)+A015591(n)`
-/

namespace A254600.P8547045475057826635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015591 (n + 1) + A015591 n

end

end A254600.P8547045475057826635

namespace A254600

/-- `A015591(n+1)+A015591(n)` -/
def P8547045475057826635.Spec : Prop :=
  ∀ n, P8547045475057826635.a n = A254600 n

end A254600

/-!
# A254601: Numbers of n-length words on alphabet {0,1,...,6} with no subwords ii, where i is from {0,1,2}.

The programs for A254601, the canonical program `A254601.P13783108181094913256` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254601 has offset 0).

The definition of A254601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254601.P9430796961861491151

`ogf((1+x)/(1-6x-4x^2))`
-/

namespace A254601.P9430796961861491151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -6, -4] n

end

end A254601.P9430796961861491151

namespace A254601

/-- `ogf((1+x)/(1-6x-4x^2))` -/
def P9430796961861491151.Spec : Prop :=
  ∀ n, P9430796961861491151.a n = A254601 n

end A254601

/-! ## A254601.P13783108181094913256

`6*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254601

/-- `6*a(n-1)+4*a(n-2)` -/
def P13783108181094913256.Spec : Prop :=
  ∀ n, (P13783108181094913256.a n : ℤ) = A254601 n

theorem P13783108181094913256.correct : P13783108181094913256.Spec := by
  intro n
  simp only [A254601]

end A254601

/-! ## A254601.P6085223673131275603

`round((sqrt(13)+3)*a(n-1))` with `a(0)=1`
-/

namespace A254601.P6085223673131275603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (13 : ℝ) + 3) * (a (n - 1) : ℝ))

end

end A254601.P6085223673131275603

namespace A254601

/-- `round((sqrt(13)+3)*a(n-1))` -/
def P6085223673131275603.Spec : Prop :=
  ∀ n, P6085223673131275603.a n = A254601 n

end A254601

/-! ## A254601.P8586283964721506189

`2^(n-1)*A052924(n+1)`
-/

namespace A254601.P8586283964721506189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A052924 (n + 1) : ℚ)

end

end A254601.P8586283964721506189

namespace A254601

/-- `2^(n-1)*A052924(n+1)` -/
def P8586283964721506189.Spec : Prop :=
  ∀ n, P8586283964721506189.a n = (A254601 n : ℚ)

end A254601

/-! ## A254601.P18364820793654576111

`record[A034008(n)*A052924(n)]`
-/

namespace A254601.P18364820793654576111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n * A052924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254601.P18364820793654576111

namespace A254601

/-- `record[A034008(n)*A052924(n)]` -/
def P18364820793654576111.Spec : Prop :=
  ∀ n, P18364820793654576111.a n = A254601 n

end A254601

/-! ## A254601.P9180246208731126901

`A135032(n+1)+A135032(n)`
-/

namespace A254601.P9180246208731126901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135032 (n + 1) + A135032 n

end

end A254601.P9180246208731126901

namespace A254601

/-- `A135032(n+1)+A135032(n)` -/
def P9180246208731126901.Spec : Prop :=
  ∀ n, P9180246208731126901.a n = A254601 n

end A254601

/-! ## A254601.P6632113613599679613

`A052924(n+1)^A178334(n)*A011782(n)`
-/

namespace A254601.P6632113613599679613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052924 (n + 1) : ℚ) ^ (A178334 n : ℤ) * (A011782 n : ℚ)

end

end A254601.P6632113613599679613

namespace A254601

/-- `A052924(n+1)^A178334(n)*A011782(n)` -/
def P6632113613599679613.Spec : Prop :=
  ∀ n, P6632113613599679613.a n = (A254601 n : ℚ)

end A254601

/-!
# A254602: Numbers of n-length words on alphabet {0..7} with no subwords ii, where i is from {0..2}.

The programs for A254602, the canonical program `A254602.P15916238740421056283` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254602 has offset 0).

The definition of A254602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254602.P16045495780216669002

`ogf((1+x)/(1-7x-5x^2))`
-/

namespace A254602.P16045495780216669002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -7, -5] n

end

end A254602.P16045495780216669002

namespace A254602

/-- `ogf((1+x)/(1-7x-5x^2))` -/
def P16045495780216669002.Spec : Prop :=
  ∀ n, P16045495780216669002.a n = A254602 n

end A254602

/-! ## A254602.P15916238740421056283

`7*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254602

/-- `7*a(n-1)+5*a(n-2)` -/
def P15916238740421056283.Spec : Prop :=
  ∀ n, (P15916238740421056283.a n : ℤ) = A254602 n

theorem P15916238740421056283.correct : P15916238740421056283.Spec := by
  intro n
  simp only [A254602]

end A254602

/-! ## A254602.P5231564870888558493

`A015562(1+n)+A015562(n)`
-/

namespace A254602.P5231564870888558493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015562 (1 + n) + A015562 n

end

end A254602.P5231564870888558493

namespace A254602

/-- `A015562(1+n)+A015562(n)` -/
def P5231564870888558493.Spec : Prop :=
  ∀ n, P5231564870888558493.a n = A254602 n

end A254602

/-!
# A254603: Nonprime numbers k such that sum of the divisors of k is a power of 2.

The programs for A254603, there is no canonical definition to state claims against.
-/

/-! ## A254603.P3756013521290260256

`record[A171435(A046528(n+1))]`
-/

namespace A254603.P3756013521290260256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A046528 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254603.P3756013521290260256

/-! ## A254603.P1052890785382397782

`filter[A046528(n+1), A354108(#)]`
-/

namespace A254603.P1052890785382397782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A254603.P1052890785382397782

/-! ## A254603.P15183531771112614955

`filter[A046528(n+1), A354819(#)]`
-/

namespace A254603.P15183531771112614955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A254603.P15183531771112614955

/-! ## A254603.P1190851591923539394

`filter[A270667(n+1), A354355(#)]`
-/

namespace A254603.P1190851591923539394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354355 (f1 j).toNat = 1) n)

end

end A254603.P1190851591923539394

/-! ## A254603.P6374587244290689188

`filter[A270667(n+1), A364252(#)]`
-/

namespace A254603.P6374587244290689188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364252 (f1 j).toNat = 1) n)

end

end A254603.P6374587244290689188

/-!
# A254605: The minimum absolute difference between k*m1 and m2 (m1<m2), where m1*m2 is the n-th term of A075362.

The programs for A254605, there is no canonical definition to state claims against.
-/

/-! ## A254605.P3446348991460628159

`A006928(A245501(n))-A051731(n+1)`
-/

namespace A254605.P3446348991460628159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A245501 n).toNat - A051731 (n + 1)

end

end A254605.P3446348991460628159

/-! ## A254605.P17160592172305355171

`val(A271657(n+1)+A051731(n+1)+1, 2)`
-/

namespace A254605.P17160592172305355171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A271657 (n + 1) + A051731 (n + 1) + 1).toNat 2

end

end A254605.P17160592172305355171

/-! ## A254605.P10771718445941597643

`A397172(n^((row(n)+1)%(col(n)+1)))`
-/

namespace A254605.P10771718445941597643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397172 (n ^ ((SequenceMachineLib.triRow n + 1) % (SequenceMachineLib.triCol n + 1)))

end

end A254605.P10771718445941597643

/-! ## A254605.P6929246202013173295

`A007895(A048158(n+1)*A279387(3*n+5))`
-/

namespace A254605.P6929246202013173295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A048158 (n + 1) * A279387 (3 * n + 5)).toNat

end

end A254605.P6929246202013173295

/-! ## A254605.P9098513949602486011

`A056926(A048158(n+1)*A279387(3*n+5))`
-/

namespace A254605.P9098513949602486011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A048158 (n + 1) * A279387 (3 * n + 5)).toNat

end

end A254605.P9098513949602486011

/-!
# A254606: The minimum absolute difference between k*p1 and p2 (p1<p2), where p1*p2 is the n-th term of A087112.

The programs for A254606, there is no canonical definition to state claims against.
-/

/-! ## A254606.P1047387796672006414

`A096801(A085478(n))+1-char[∑[n-1]]`
-/

namespace A254606.P1047387796672006414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096801 (A085478 n).toNat + (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A254606.P1047387796672006414

/-! ## A254606.P14412983792825378323

`A134134(A085478(n))%A135233(n)`
-/

namespace A254606.P14412983792825378323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134134 (A085478 n).toNat) (A135233 n)

end

end A254606.P14412983792825378323

/-! ## A254606.P13810443850406215902

`A259447(A085478(n))%A132108(n)`
-/

namespace A254606.P13810443850406215902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259447 (A085478 n).toNat) (A132108 n)

end

end A254606.P13810443850406215902

/-! ## A254606.P1367568608622198825

`A060502(A147431(n+1)%A210223(n+1))`
-/

namespace A254606.P1367568608622198825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (Int.tmod (A147431 (n + 1)) (A210223 (n + 1))).toNat

end

end A254606.P1367568608622198825

/-! ## A254606.P9314311635681365551

`A091221(A172288(n))`
-/

namespace A254606.P9314311635681365551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091221 (A172288 n).toNat

end

end A254606.P9314311635681365551

/-!
# A254607: Number of tilings of a 7 X n rectangle using polyominoes of shape I.

The programs for A254607, there is no canonical definition to state claims against.
-/

/-! ## A254607.P16035422073211260013

`A254414(eq[7, A002262(n)])`
-/

namespace A254607.P16035422073211260013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254607.P16035422073211260013

/-!
# A254608: a(n) is the smallest number such that A254606(a(n)) = n.

The programs for A254608, there is no canonical definition to state claims against.
-/

/-! ## A254608.P16623750187010121110

`fo[A254606(n+1)]+1`
-/

namespace A254608.P16623750187010121110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254606 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A254608.P16623750187010121110

/-!
# A254609: Triangle read by rows: T(n,k) = A243757(n)/(A243757(k)*A243757(n-k)).

The programs for A254609, the canonical program `A254609.P12096620193551696999` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254609 has offset 0).

The definition of A254609 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254609.P12096620193551696999

`A243757(row(n))/(A243757(col(n))*A243757(row(n)-col(n)))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A254609

/-- `A243757(row(n))/(A243757(col(n))*A243757(row(n)-col(n)))` -/
def P12096620193551696999.Spec : Prop :=
  ∀ n, P12096620193551696999.a n = (A254609 n : ℚ)

end A254609

/-! ## A254609.P13882312572663627123

`gcd(25, A007318(n))`
-/

namespace A254609.P13882312572663627123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 25 (A007318 n)

end

end A254609.P13882312572663627123

namespace A254609

/-- `gcd(25, A007318(n))` -/
def P13882312572663627123.Spec : Prop :=
  ∀ n, (P13882312572663627123.a n : ℤ) = A254609 n

end A254609

/-! ## A254609.P6090610705110735013

`A000351(val(A013620(n), 5))`
-/

namespace A254609.P6090610705110735013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (SequenceMachineLib.valuation (A013620 n).toNat 5)

end

end A254609.P6090610705110735013

namespace A254609

/-- `A000351(val(A013620(n), 5))` -/
def P6090610705110735013.Spec : Prop :=
  ∀ n, P6090610705110735013.a n = A254609 n

end A254609

/-! ## A254609.P16408851494579655575

`gcd(A013620(n), A216125(n))`
-/

namespace A254609.P16408851494579655575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013620 n) (A216125 n)

end

end A254609.P16408851494579655575

namespace A254609

/-- `gcd(A013620(n), A216125(n))` -/
def P16408851494579655575.Spec : Prop :=
  ∀ n, (P16408851494579655575.a n : ℤ) = A254609 n

end A254609

/-! ## A254609.P13867470676959005046

`gcd(A055372(n), A256135(n))`
-/

namespace A254609.P13867470676959005046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055372 n) (A256135 n)

end

end A254609.P13867470676959005046

namespace A254609

/-- `gcd(A055372(n), A256135(n))` -/
def P13867470676959005046.Spec : Prop :=
  ∀ n, (P13867470676959005046.a n : ℤ) = A254609 n

end A254609

/-! ## A254609.P15500003643697830529

`gcd(A040600(n), A319861(n))`
-/

namespace A254609.P15500003643697830529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040600 n) (A319861 n)

end

end A254609.P15500003643697830529

namespace A254609

/-- `gcd(A040600(n), A319861(n))` -/
def P15500003643697830529.Spec : Prop :=
  ∀ n, (P15500003643697830529.a n : ℤ) = A254609 n

end A254609

/-! ## A254609.P8032634848808455484

`gcd(A039936(n+1), A108086(n))`
-/

namespace A254609.P8032634848808455484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039936 (n + 1)) (A108086 n)

end

end A254609.P8032634848808455484

namespace A254609

/-- `gcd(A039936(n+1), A108086(n))` -/
def P8032634848808455484.Spec : Prop :=
  ∀ n, (P8032634848808455484.a n : ℤ) = A254609 n

end A254609

/-! ## A254609.P17141117414018242287

`gcd(A038265(n), A256135(n))`
-/

namespace A254609.P17141117414018242287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038265 n) (A256135 n)

end

end A254609.P17141117414018242287

namespace A254609

/-- `gcd(A038265(n), A256135(n))` -/
def P17141117414018242287.Spec : Prop :=
  ∀ n, (P17141117414018242287.a n : ℤ) = A254609 n

end A254609

/-! ## A254609.P18420672234644929860

`gcd(A038232(n), A385552(n))`
-/

namespace A254609.P18420672234644929860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038232 n) (A385552 n)

end

end A254609.P18420672234644929860

namespace A254609

/-- `gcd(A038232(n), A385552(n))` -/
def P18420672234644929860.Spec : Prop :=
  ∀ n, (P18420672234644929860.a n : ℤ) = A254609 n

end A254609

/-! ## A254609.P3377276776603869788

`gcd(A013614(n), A243757(n))`
-/

namespace A254609.P3377276776603869788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013614 n) (A243757 n)

end

end A254609.P3377276776603869788

namespace A254609

/-- `gcd(A013614(n), A243757(n))` -/
def P3377276776603869788.Spec : Prop :=
  ∀ n, (P3377276776603869788.a n : ℤ) = A254609 n

end A254609

/-! ## A254609.P8624150429786560712

`gcd(A004655(n), A015112(n))`
-/

namespace A254609.P8624150429786560712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004655 n) (A015112 n)

end

end A254609.P8624150429786560712

namespace A254609

/-- `gcd(A004655(n), A015112(n))` -/
def P8624150429786560712.Spec : Prop :=
  ∀ n, (P8624150429786560712.a n : ℤ) = A254609 n

end A254609

/-! ## A254609.P753116461391665338

`gcd(A010048(n), A118190(n))`
-/

namespace A254609.P753116461391665338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010048 n) (A118190 n)

end

end A254609.P753116461391665338

namespace A254609

/-- `gcd(A010048(n), A118190(n))` -/
def P753116461391665338.Spec : Prop :=
  ∀ n, (P753116461391665338.a n : ℤ) = A254609 n

end A254609

/-! ## A254609.P12219014848238634521

`A052905(val(A022169(n), 11))`
-/

namespace A254609.P12219014848238634521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (SequenceMachineLib.valuation (A022169 n).toNat 11)

end

end A254609.P12219014848238634521

namespace A254609

/-- `A052905(val(A022169(n), 11))` -/
def P12219014848238634521.Spec : Prop :=
  ∀ n, P12219014848238634521.a n = A254609 n

end A254609

/-! ## A254609.P8696421948128100437

`gcd(A004647(n), A015112(n))`
-/

namespace A254609.P8696421948128100437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004647 n) (A015112 n)

end

end A254609.P8696421948128100437

namespace A254609

/-- `gcd(A004647(n), A015112(n))` -/
def P8696421948128100437.Spec : Prop :=
  ∀ n, (P8696421948128100437.a n : ℤ) = A254609 n

end A254609

/-! ## A254609.P1119060377143621801

`gcd(A056451(n), A164866(n+1))`
-/

namespace A254609.P1119060377143621801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056451 n) (A164866 (n + 1))

end

end A254609.P1119060377143621801

namespace A254609

/-- `gcd(A056451(n), A164866(n+1))` -/
def P1119060377143621801.Spec : Prop :=
  ∀ n, (P1119060377143621801.a n : ℤ) = A254609 n

end A254609

/-! ## A254609.P17360065606134390931

`gcd(5, A022170(n))`
-/

namespace A254609.P17360065606134390931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A022170 n)

end

end A254609.P17360065606134390931

namespace A254609

/-- `gcd(5, A022170(n))` -/
def P17360065606134390931.Spec : Prop :=
  ∀ n, (P17360065606134390931.a n : ℤ) = A254609 n

end A254609

/-! ## A254609.P13052711060217312420

`gcd(A152717(n), A156602(n))`
-/

namespace A254609.P13052711060217312420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A152717 n) (A156602 n)

end

end A254609.P13052711060217312420

namespace A254609

/-- `gcd(A152717(n), A156602(n))` -/
def P13052711060217312420.Spec : Prop :=
  ∀ n, (P13052711060217312420.a n : ℤ) = A254609 n

end A254609

/-! ## A254609.P2490955940493881163

`gcd(5, A015121(n))`
-/

namespace A254609.P2490955940493881163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A015121 n)

end

end A254609.P2490955940493881163

namespace A254609

/-- `gcd(5, A015121(n))` -/
def P2490955940493881163.Spec : Prop :=
  ∀ n, (P2490955940493881163.a n : ℤ) = A254609 n

end A254609

/-! ## A254609.P17826327705166169872

`gcd(A022175(n), A056451(n))`
-/

namespace A254609.P17826327705166169872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022175 n) (A056451 n)

end

end A254609.P17826327705166169872

namespace A254609

/-- `gcd(A022175(n), A056451(n))` -/
def P17826327705166169872.Spec : Prop :=
  ∀ n, (P17826327705166169872.a n : ℤ) = A254609 n

end A254609

/-! ## A254609.P10607966003275558182

`gcd(A062107(n+1), A131065(n))`
-/

namespace A254609.P10607966003275558182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062107 (n + 1)) (A131065 n)

end

end A254609.P10607966003275558182

namespace A254609

/-- `gcd(A062107(n+1), A131065(n))` -/
def P10607966003275558182.Spec : Prop :=
  ∀ n, (P10607966003275558182.a n : ℤ) = A254609 n

end A254609

/-!
# A254610: Number of decompositions of 2n into sums of two primes p1 <= p2 such that the smallest |k*p1-p2| = 2^m+b, where |b|<=2.

The programs for A254610, there is no canonical definition to state claims against.
-/

/-! ## A254610.P2672280255594751683

`A045917(n+1)-A010060(A034541(n+1))`
-/

namespace A254610.P2672280255594751683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) - A010060 (A034541 (n + 1)).toNat

end

end A254610.P2672280255594751683

/-! ## A254610.P1414541001169957482

`A068307(2*(n+2))-A010060(A034541(n+1))`
-/

namespace A254610.P1414541001169957482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (2 * (n + 2)) - A010060 (A034541 (n + 1)).toNat

end

end A254610.P1414541001169957482

/-! ## A254610.P3382227564944340881

`1-A227065(n+1)+n-A010060(A034541(n+1))`
-/

namespace A254610.P3382227564944340881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A227065 (n + 1) + (n : ℤ) - A010060 (A034541 (n + 1)).toNat

end

end A254610.P3382227564944340881

/-! ## A254610.P3197852279041496972

`A226237(n+1)/(2*(n+1))-A010060(A034541(n+1))`
-/

namespace A254610.P3197852279041496972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226237 (n + 1) : ℚ) / (2 * (n + 1) : ℚ) - (A010060 (A034541 (n + 1)).toNat : ℚ)

end

end A254610.P3197852279041496972

/-! ## A254610.P6268337751901130604

`A239282(n+1)/A000040(n+1)-A010060(A034541(n+1))`
-/

namespace A254610.P6268337751901130604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239282 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) - (A010060 (A034541 (n + 1)).toNat : ℚ)

end

end A254610.P6268337751901130604

/-!
# A254612: Expansion of f(-x) * f(-x^9) in powers of x where f() is a Ramanujan theta function.

The programs for A254612, there is no canonical definition to state claims against.
-/

/-! ## A254612.P3116736509291798420

`∏{e}[A007953(n)-A132402(n), A089807(#)]`
-/

namespace A254612.P3116736509291798420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n - A132402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A089807 (Nat.factorization (f1 n).natAbs p)

end

end A254612.P3116736509291798420

/-! ## A254612.P499717670769853488

`A008683(A285013(n+3)+A024816(n+9))`
-/

namespace A254612.P499717670769853488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A285013 (n + 3) + A024816 (n + 9)).toNat

end

end A254612.P499717670769853488

/-! ## A254612.P8682451788025022319

`A008683(A132402(n)-dr(n))`
-/

namespace A254612.P8682451788025022319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A132402 n - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)).toNat

end

end A254612.P8682451788025022319

/-!
# A254614: Union of odd odious (A092246) and evil (A001969) numbers.

The programs for A254614, the canonical program `A254614.P13083430719228103807` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254614 has offset 1).

The definition of A254614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254614.P4019929820874501876

`comp[xor(n, lcm(2, n))-1]`
-/

namespace A254614.P4019929820874501876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (Nat.lcm 2 n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A254614.P4019929820874501876

namespace A254614

/-- `comp[xor(n, lcm(2, n))-1]` -/
def P4019929820874501876.Spec : Prop :=
  ∀ n, (P4019929820874501876.a n : ℤ) = A254614 (n + 1)

end A254614

/-! ## A254614.P7007609980283787982

`comp[2*xor(n, Δ[n²])]`
-/

namespace A254614.P7007609980283787982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A254614.P7007609980283787982

namespace A254614

/-- `comp[2*xor(n, Δ[n²])]` -/
def P7007609980283787982.Spec : Prop :=
  ∀ n, (P7007609980283787982.a n : ℤ) = A254614 (n + 1)

end A254614

/-! ## A254614.P17291952483031006945

`comp[2*comp[xor(2*n, n)]]`
-/

namespace A254614.P17291952483031006945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A254614.P17291952483031006945

namespace A254614

/-- `comp[2*comp[xor(2*n, n)]]` -/
def P17291952483031006945.Spec : Prop :=
  ∀ n, (P17291952483031006945.a n : ℤ) = A254614 (n + 1)

end A254614

/-! ## A254614.P8871657016193311032

`comp[xor(Δ[n²], record[xor(3, n)])]`
-/

namespace A254614.P8871657016193311032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A254614.P8871657016193311032

namespace A254614

/-- `comp[xor(Δ[n²], record[xor(3, n)])]` -/
def P8871657016193311032.Spec : Prop :=
  ∀ n, (P8871657016193311032.a n : ℤ) = A254614 (n + 1)

end A254614

/-! ## A254614.P3840185165895570405

`comp[xor(n, or(1, n)+1+n)]`
-/

namespace A254614.P3840185165895570405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.lor 1 n + 1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A254614.P3840185165895570405

namespace A254614

/-- `comp[xor(n, or(1, n)+1+n)]` -/
def P3840185165895570405.Spec : Prop :=
  ∀ n, (P3840185165895570405.a n : ℤ) = A254614 (n + 1)

end A254614

/-! ## A254614.P16490308857197401387

`comp[xor(n-1, abs(or(1, -n)-n))]`
-/

namespace A254614.P16490308857197401387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 1) |Int.lor 1 (-(n : ℤ)) - (n : ℤ)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A254614.P16490308857197401387

namespace A254614

/-- `comp[xor(n-1, abs(or(1, -n)-n))]` -/
def P16490308857197401387.Spec : Prop :=
  ∀ n, (P16490308857197401387.a n : ℤ) = A254614 (n + 1)

end A254614

/-! ## A254614.P13083430719228103807

`lt[(-1)^n, 4-a(and(n, n-1))]` with `a(0)=3`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254614

/-- `lt[(-1)^n, 4-a(and(n, n-1))]` -/
def P13083430719228103807.Spec : Prop :=
  ∀ n, (P13083430719228103807.a n : ℤ) = A254614 (n + 1)

theorem P13083430719228103807.correct : P13083430719228103807.Spec := by
  intro n
  simp only [A254614, Nat.add_sub_cancel]

end A254614

/-! ## A254614.P10970423100142373582

`comp[xor(n, lcm(n+1+n, gcd(6, n+2)))]`
-/

namespace A254614.P10970423100142373582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.lcm (n + 1 + n) (Nat.gcd 6 (n + 2)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A254614.P10970423100142373582

namespace A254614

/-- `comp[xor(n, lcm(n+1+n, gcd(6, n+2)))]` -/
def P10970423100142373582.Spec : Prop :=
  ∀ n, (P10970423100142373582.a n : ℤ) = A254614 (n + 1)

end A254614

/-! ## A254614.P11210437480096547081

`eq[1, 1-and(n+1, a(and(n, n-1)))]` with `a(0)=1`
-/

namespace A254614.P11210437480096547081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  1 - Int.land (n + 1 : ℤ) (f2 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254614.P11210437480096547081

namespace A254614

/-- `eq[1, 1-and(n+1, a(and(n, n-1)))]` -/
def P11210437480096547081.Spec : Prop :=
  ∀ n, (P11210437480096547081.a n : ℤ) = A254614 (n + 1)

end A254614

/-! ## A254614.P14120130984961109557

`comp[2*(or(n+1, 2*n)-and(n, 2*n))]`
-/

namespace A254614.P14120130984961109557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.lor (n + 1) (2 * n) : ℤ) - (Nat.land n (2 * n) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A254614.P14120130984961109557

namespace A254614

/-- `comp[2*(or(n+1, 2*n)-and(n, 2*n))]` -/
def P14120130984961109557.Spec : Prop :=
  ∀ n, (P14120130984961109557.a n : ℤ) = A254614 (n + 1)

end A254614

/-! ## A254614.P13525435584942513731

`eq[0, A254379(n)]`
-/

namespace A254614.P13525435584942513731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254614.P13525435584942513731

namespace A254614

/-- `eq[0, A254379(n)]` -/
def P13525435584942513731.Spec : Prop :=
  ∀ n, (P13525435584942513731.a n : ℤ) = A254614 (n + 1)

end A254614

/-! ## A254614.P3300144082660577156

`eq[1, A254651(n)]`
-/

namespace A254614.P3300144082660577156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254614.P3300144082660577156

namespace A254614

/-- `eq[1, A254651(n)]` -/
def P3300144082660577156.Spec : Prop :=
  ∀ n, (P3300144082660577156.a n : ℤ) = A254614 (n + 1)

end A254614

/-! ## A254614.P10980054592987807205

`lt[A268726(n), 2]`
-/

namespace A254614.P10980054592987807205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A254614.P10980054592987807205

namespace A254614

/-- `lt[A268726(n), 2]` -/
def P10980054592987807205.Spec : Prop :=
  ∀ n, (P10980054592987807205.a n : ℤ) = A254614 (n + 1)

end A254614

/-! ## A254614.P15230082845194485390

`comp[A128309(n+1)]`
-/

namespace A254614.P15230082845194485390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A254614.P15230082845194485390

namespace A254614

/-- `comp[A128309(n+1)]` -/
def P15230082845194485390.Spec : Prop :=
  ∀ n, (P15230082845194485390.a n : ℤ) = A254614 (n + 1)

end A254614

/-! ## A254614.P12907673192200882786

`comp[2*comp[A048724(n)]]`
-/

namespace A254614.P12907673192200882786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A254614.P12907673192200882786

namespace A254614

/-- `comp[2*comp[A048724(n)]]` -/
def P12907673192200882786.Spec : Prop :=
  ∀ n, (P12907673192200882786.a n : ℤ) = A254614 (n + 1)

end A254614

/-! ## A254614.P2084884841243233717

`comp[2*A000069(n+1)]`
-/

namespace A254614.P2084884841243233717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A254614.P2084884841243233717

namespace A254614

/-- `comp[2*A000069(n+1)]` -/
def P2084884841243233717.Spec : Prop :=
  ∀ n, (P2084884841243233717.a n : ℤ) = A254614 (n + 1)

end A254614

/-! ## A254614.P16845007616079376463

`comp[2*A065621(n+1)]`
-/

namespace A254614.P16845007616079376463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A254614.P16845007616079376463

namespace A254614

/-- `comp[2*A065621(n+1)]` -/
def P16845007616079376463.Spec : Prop :=
  ∀ n, (P16845007616079376463.a n : ℤ) = A254614 (n + 1)

end A254614

/-! ## A254614.P15438750092195447577

`comp[2*A268669(n+1)]`
-/

namespace A254614.P15438750092195447577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A268669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A254614.P15438750092195447577

namespace A254614

/-- `comp[2*A268669(n+1)]` -/
def P15438750092195447577.Spec : Prop :=
  ∀ n, (P15438750092195447577.a n : ℤ) = A254614 (n + 1)

end A254614

/-! ## A254614.P16479780346351004799

`comp[A280995(2*n)-1]`
-/

namespace A254614.P16479780346351004799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280995 (2 * n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A254614.P16479780346351004799

namespace A254614

/-- `comp[A280995(2*n)-1]` -/
def P16479780346351004799.Spec : Prop :=
  ∀ n, (P16479780346351004799.a n : ℤ) = A254614 (n + 1)

end A254614

/-! ## A254614.P1917785896135978286

`∑[A286063(n+1)]+n`
-/

namespace A254614.P1917785896135978286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A254614.P1917785896135978286

namespace A254614

/-- `∑[A286063(n+1)]+n` -/
def P1917785896135978286.Spec : Prop :=
  ∀ n, P1917785896135978286.a n = A254614 (n + 1)

end A254614

/-!
# A254616: Let i < k and prime(k) == x(i) mod prime(i). This sequence gives the indices k of the primes prime(k) such that Sum(i=1..k-1, x(i)) is prime.

The programs for A254616, there is no canonical definition to state claims against.
-/

/-! ## A254616.P2596588087039321925

`A000720(A340564(1+n))`
-/

namespace A254616.P2596588087039321925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A340564 (1 + n)).toNat

end

end A254616.P2596588087039321925

/-! ## A254616.P7254776200614997408

`A377505(A340564(n+1))`
-/

namespace A254616.P7254776200614997408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377505 (A340564 (n + 1)).toNat

end

end A254616.P7254776200614997408

/-! ## A254616.P17115202444233845453

`A036234(A340564(n+1)-1)`
-/

namespace A254616.P17115202444233845453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A340564 (n + 1) - 1).toNat

end

end A254616.P17115202444233845453

/-! ## A254616.P10795112247526876190

`A061395(2*A340564(n+1))`
-/

namespace A254616.P10795112247526876190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A340564 (n + 1)).toNat

end

end A254616.P10795112247526876190

/-! ## A254616.P1978252994851626805

`A284114(A340564(n+1))`
-/

namespace A254616.P1978252994851626805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284114 (A340564 (n + 1)).toNat

end

end A254616.P1978252994851626805

/-!
# A254618: a(n) = k-tuple deficiency of n-th deficient number.

The programs for A254618, there is no canonical definition to state claims against.
-/

/-! ## A254618.P17672149454595686050

`A007906(A364347(n+1)%A109420(3*n+2))`
-/

namespace A254618.P17672149454595686050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (Int.tmod (A364347 (n + 1)) (A109420 (3 * n + 2))).toNat

end

end A254618.P17672149454595686050

/-!
# A254619: a(n) = 4^n*(2*n + 1)!/n!.

The programs for A254619, the canonical program `A254619.P15966439354140218939` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254619 has offset 0).

The definition of A254619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254619.P15966439354140218939

`8*(2*n+1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254619

/-- `8*(2*n+1)*a(n-1)` -/
def P15966439354140218939.Spec : Prop :=
  ∀ n, (P15966439354140218939.a n : ℤ) = A254619 n

theorem P15966439354140218939.correct : P15966439354140218939.Spec := by
  intro n
  simp only [A254619]

end A254619

/-! ## A254619.P8708076214448732758

`4^n*(2*n+1)!/n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254619.P8708076214448732758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n * Nat.factorial (2 * n + 1) : ℚ) / (Nat.factorial n : ℚ)

end

end A254619.P8708076214448732758

namespace A254619

/-- `4^n*(2*n+1)!/n!` -/
def P8708076214448732758.Spec : Prop :=
  ∀ n, P8708076214448732758.a n = (A254619 n : ℚ)

end A254619

/-! ## A254619.P6809461937173284152

`8^n*∏[Δ[n²]]`
-/

namespace A254619.P6809461937173284152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A254619.P6809461937173284152

namespace A254619

/-- `8^n*∏[Δ[n²]]` -/
def P6809461937173284152.Spec : Prop :=
  ∀ n, P6809461937173284152.a n = A254619 n

end A254619

/-! ## A254619.P14249564463321652678

`lcm(8^n, ∏[Δ[n²]])`
-/

namespace A254619.P14249564463321652678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (8 ^ n : ℤ) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A254619.P14249564463321652678

namespace A254619

/-- `lcm(8^n, ∏[Δ[n²]])` -/
def P14249564463321652678.Spec : Prop :=
  ∀ n, (P14249564463321652678.a n : ℤ) = A254619 n

end A254619

/-! ## A254619.P2029331928991370546

`∏[a(n-1)+16]` with `a(0)=1, a(1)=24`
-/

namespace A254619.P2029331928991370546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 24] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A254619.P2029331928991370546

namespace A254619

/-- `∏[a(n-1)+16]` -/
def P2029331928991370546.Spec : Prop :=
  ∀ n, (P2029331928991370546.a n : ℤ) = A254619 n

end A254619

/-!
# A254620: a(n) = 9^n*(2*n + 1)!/n!.

The programs for A254620, the canonical program `A254620.P11484436571754414942` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254620 has offset 0).

The definition of A254620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254620.P11484436571754414942

`18*(2*n+1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254620

/-- `18*(2*n+1)*a(n-1)` -/
def P11484436571754414942.Spec : Prop :=
  ∀ n, (P11484436571754414942.a n : ℤ) = A254620 n

theorem P11484436571754414942.correct : P11484436571754414942.Spec := by
  intro n
  simp only [A254620]

end A254620

/-! ## A254620.P6452054728418188076

`9^n*(2*n+1)!/n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254620.P6452054728418188076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 ^ n * Nat.factorial (2 * n + 1) : ℚ) / (Nat.factorial n : ℚ)

end

end A254620.P6452054728418188076

namespace A254620

/-- `9^n*(2*n+1)!/n!` -/
def P6452054728418188076.Spec : Prop :=
  ∀ n, P6452054728418188076.a n = (A254620 n : ℚ)

end A254620

/-! ## A254620.P9971541366243568711

`∏[Δ[n²]]*18^n`
-/

namespace A254620.P9971541366243568711
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * (18 ^ n : ℤ)

end

end A254620.P9971541366243568711

namespace A254620

/-- `∏[Δ[n²]]*18^n` -/
def P9971541366243568711.Spec : Prop :=
  ∀ n, P9971541366243568711.a n = A254620 n

end A254620

/-! ## A254620.P5041633567936557449

`record[18*a(n-2)*n]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A254620.P5041633567936557449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  18 * (f1 (n - 2) * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254620.P5041633567936557449

namespace A254620

/-- `record[18*a(n-2)*n]` -/
def P5041633567936557449.Spec : Prop :=
  ∀ n, (P5041633567936557449.a n : ℤ) = A254620 n

end A254620

/-! ## A254620.P8526113574170645621

`A034001(2*n+1)/A000142(n)`
-/

namespace A254620.P8526113574170645621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034001 (2 * n + 1) : ℚ) / (A000142 n : ℚ)

end

end A254620.P8526113574170645621

namespace A254620

/-- `A034001(2*n+1)/A000142(n)` -/
def P8526113574170645621.Spec : Prop :=
  ∀ n, P8526113574170645621.a n = (A254620 n : ℚ)

end A254620

/-!
# A254621: Zerofree numbers having product of digits less than or equal to sum of digits.

The programs for A254621, the canonical program `A254621.P1888052046391958266` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254621 has offset 1).

The definition of A254621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254621.P1888052046391958266

`∩[A052382(n+1), A062996(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A254621

/-- `∩[A052382(n+1), A062996(n+1)]` -/
def P1888052046391958266.Spec : Prop :=
  ∀ n, (P1888052046391958266.a n : ℤ) = A254621 (n + 1)

theorem P1888052046391958266.correct : P1888052046391958266.Spec := by
  intro n
  simp only [A254621, Nat.add_sub_cancel]

end A254621

/-! ## A254621.P9710021205269280904

`record[A004719(A062996(n+1))]`
-/

namespace A254621.P9710021205269280904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A062996 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254621.P9710021205269280904

namespace A254621

/-- `record[A004719(A062996(n+1))]` -/
def P9710021205269280904.Spec : Prop :=
  ∀ n, P9710021205269280904.a n = A254621 (n + 1)

end A254621

/-! ## A254621.P15966718816165694668

`filter[A062996(n+1), A168046(#)]`
-/

namespace A254621.P15966718816165694668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A254621.P15966718816165694668

namespace A254621

/-- `filter[A062996(n+1), A168046(#)]` -/
def P15966718816165694668.Spec : Prop :=
  ∀ n, P15966718816165694668.a n = A254621 (n + 1)

end A254621

/-! ## A254621.P5587280778425674147

`record[A004719(lt[A000007(n), A062329(n)+1])]`
-/

namespace A254621.P5587280778425674147
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (SequenceMachineLib.nth (fun j => f2 j < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254621.P5587280778425674147

namespace A254621

/-- `record[A004719(lt[A000007(n), A062329(n)+1])]` -/
def P5587280778425674147.Spec : Prop :=
  ∀ n, P5587280778425674147.a n = A254621 (n + 1)

end A254621

/-! ## A254621.P733948124438765890

`lt[A098736(n)², A098736(n)*A160942(n+1)]`
-/

namespace A254621.P733948124438765890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 n * A160942 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A254621.P733948124438765890

namespace A254621

/-- `lt[A098736(n)², A098736(n)*A160942(n+1)]` -/
def P733948124438765890.Spec : Prop :=
  ∀ n, (P733948124438765890.a n : ℤ) = A254621 (n + 1)

end A254621

/-!
# A254622: Number of zerofree positive integers of at most n digits having product of digits less than or equal to sum of digits.

The programs for A254622, there is no canonical definition to state claims against.
-/

/-! ## A254622.P5711015798272371582

`or(∑[A323830(n+3)], A323829(n+1))`
-/

namespace A254622.P5711015798272371582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323830 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A323829 (n + 1))

end

end A254622.P5711015798272371582

/-!
# A254623: Number of ways to write n as x^2 + y*(3*y+1)/2 + z*(5*z+3)/2 with x,y,z nonnegative integers.

The programs for A254623, there is no canonical definition to state claims against.
-/

/-! ## A254623.P7861938577227190555

`gcd(A043562(A001924(n)), A054582(n))`
-/

namespace A254623.P7861938577227190555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A043562 (A001924 n).toNat) (A054582 n)

end

end A254623.P7861938577227190555

/-! ## A254623.P13360891303063857705

`A094839(A240212(n)+1)`
-/

namespace A254623.P13360891303063857705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094839 (A240212 n + 1).toNat

end

end A254623.P13360891303063857705

/-! ## A254623.P8706194316094198513

`A159800(A306641(n+1))`
-/

namespace A254623.P8706194316094198513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159800 (A306641 (n + 1)).toNat

end

end A254623.P8706194316094198513

/-! ## A254623.P6260283051383634232

`∏{e}[A030196(2*n+1)-A030196(n+1), #]`
-/

namespace A254623.P6260283051383634232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030196 (2 * n + 1) - A030196 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A254623.P6260283051383634232

/-! ## A254623.P12063826965234563426

`A395862(A008957(n+1))+A262611(A394466(n))`
-/

namespace A254623.P12063826965234563426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395862 (A008957 (n + 1)).toNat + A262611 (A394466 n).toNat

end

end A254623.P12063826965234563426

/-!
# A254626: Indices of triangular numbers (A000217) that are also centered pentagonal numbers (A005891).

The programs for A254626, the canonical program `A254626.P18033877858289706895` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254626 has offset 1).

The definition of A254626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254626.P14325414636230156651

`ogf((1+2x+2x^2+2x^3+x^4)/(1-x-18x^2+18x^3+x^4-x^5))`
-/

namespace A254626.P14325414636230156651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 2, 1] [1, -1, -18, 18, 1, -1] n

end

end A254626.P14325414636230156651

namespace A254626

/-- `ogf((1+2x+2x^2+2x^3+x^4)/(1-x-18x^2+18x^3+x^4-x^5))` -/
def P14325414636230156651.Spec : Prop :=
  ∀ n, P14325414636230156651.a n = A254626 (n + 1)

end A254626

/-! ## A254626.P18033877858289706895

`a(n-1)+18*a(n-2)-18*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=23, a(3)=61, a(4)=421`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254626

/-- `a(n-1)+18*a(n-2)-18*a(n-3)-a(n-4)+a(n-5)` -/
def P18033877858289706895.Spec : Prop :=
  ∀ n, P18033877858289706895.a n = A254626 (n + 1)

theorem P18033877858289706895.correct : P18033877858289706895.Spec := by
  intro n
  simp only [A254626, Nat.add_sub_cancel]

end A254626

/-! ## A254626.P15326232321622069548

`A185828(comp[3*n])`
-/

namespace A254626.P15326232321622069548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185828 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A254626.P15326232321622069548

namespace A254626

/-- `A185828(comp[3*n])` -/
def P15326232321622069548.Spec : Prop :=
  ∀ n, P15326232321622069548.a n = A254626 (n + 1)

end A254626

/-! ## A254626.P1309215033894680818

`2*A254962(n+1)-1`
-/

namespace A254626.P1309215033894680818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A254962 (n + 1) - 1

end

end A254626.P1309215033894680818

namespace A254626

/-- `2*A254962(n+1)-1` -/
def P1309215033894680818.Spec : Prop :=
  ∀ n, P1309215033894680818.a n = A254626 (n + 1)

end A254626

/-! ## A254626.P4544118942797105006

`filter[A185828(n+1), #%2]`
-/

namespace A254626.P4544118942797105006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n)

end

end A254626.P4544118942797105006

namespace A254626

/-- `filter[A185828(n+1), #%2]` -/
def P4544118942797105006.Spec : Prop :=
  ∀ n, P4544118942797105006.a n = A254626 (n + 1)

end A254626

/-! ## A254626.P11801751205844047312

`A071618(∑[log2(gcd(2, n))]+n)`
-/

namespace A254626.P11801751205844047312
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071618 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ))).toNat

end

end A254626.P11801751205844047312

namespace A254626

/-- `A071618(∑[log2(gcd(2, n))]+n)` -/
def P11801751205844047312.Spec : Prop :=
  ∀ n, P11801751205844047312.a n = A254626 (n + 1)

end A254626

/-! ## A254626.P11291526550910811598

`(A000032(or(1, n)+2*n+1)-1)/2`
-/

namespace A254626.P11291526550910811598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (Nat.lor 1 n + (2 * n + 1)) - 1 : ℚ) / 2

end

end A254626.P11291526550910811598

namespace A254626

/-- `(A000032(or(1, n)+2*n+1)-1)/2` -/
def P11291526550910811598.Spec : Prop :=
  ∀ n, P11291526550910811598.a n = (A254626 (n + 1) : ℚ)

end A254626

/-! ## A254626.P13418394453343493529

`A100886(A047241(n+1))`
-/

namespace A254626.P13418394453343493529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100886 (A047241 (n + 1)).toNat

end

end A254626.P13418394453343493529

namespace A254626

/-- `A100886(A047241(n+1))` -/
def P13418394453343493529.Spec : Prop :=
  ∀ n, P13418394453343493529.a n = A254626 (n + 1)

end A254626

/-! ## A254626.P5860894630814166614

`A111734(A047235(n+1))`
-/

namespace A254626.P5860894630814166614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111734 (A047235 (n + 1)).toNat

end

end A254626.P5860894630814166614

namespace A254626

/-- `A111734(A047235(n+1))` -/
def P5860894630814166614.Spec : Prop :=
  ∀ n, P5860894630814166614.a n = A254626 (n + 1)

end A254626

/-! ## A254626.P7714711298240331175

`A245968(2*A001651(n+1))`
-/

namespace A254626.P7714711298240331175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245968 (2 * A001651 (n + 1)).toNat

end

end A254626.P7714711298240331175

namespace A254626

/-- `A245968(2*A001651(n+1))` -/
def P7714711298240331175.Spec : Prop :=
  ∀ n, P7714711298240331175.a n = A254626 (n + 1)

end A254626

/-! ## A254626.P12926005678787938549

`A077259(n)+A001076(or(1, n))`
-/

namespace A254626.P12926005678787938549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077259 n + A001076 (Nat.lor 1 n)

end

end A254626.P12926005678787938549

namespace A254626

/-- `A077259(n)+A001076(or(1, n))` -/
def P12926005678787938549.Spec : Prop :=
  ∀ n, P12926005678787938549.a n = A254626 (n + 1)

end A254626

/-! ## A254626.P15828144066160985199

`∩[A071618(n), A185828(n+1)]`
-/

namespace A254626.P15828144066160985199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071618 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254626.P15828144066160985199

namespace A254626

/-- `∩[A071618(n), A185828(n+1)]` -/
def P15828144066160985199.Spec : Prop :=
  ∀ n, (P15828144066160985199.a n : ℤ) = A254626 (n + 1)

end A254626

/-! ## A254626.P6721150103193054279

`∩[A173714(n), A185828(n+1)]`
-/

namespace A254626.P6721150103193054279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254626.P6721150103193054279

namespace A254626

/-- `∩[A173714(n), A185828(n+1)]` -/
def P6721150103193054279.Spec : Prop :=
  ∀ n, (P6721150103193054279.a n : ℤ) = A254626 (n + 1)

end A254626

/-!
# A254627: Indices of centered pentagonal numbers (A005891) that are also triangular numbers (A000217).

The programs for A254627, the canonical program `A254627.P5724307862739867690` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254627 has offset 1).

The definition of A254627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254627.P16497571610858282085

`ogf((1+x-9x^2-x^3)/(1-x-18x^2+18x^3+x^4-x^5))`
-/

namespace A254627.P16497571610858282085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -9, -1] [1, -1, -18, 18, 1, -1] n

end

end A254627.P16497571610858282085

namespace A254627

/-- `ogf((1+x-9x^2-x^3)/(1-x-18x^2+18x^3+x^4-x^5))` -/
def P16497571610858282085.Spec : Prop :=
  ∀ n, P16497571610858282085.a n = A254627 (n + 1)

end A254627

/-! ## A254627.P5724307862739867690

`a(n-1)+18*a(n-2)-18*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=11, a(3)=28, a(4)=189`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254627

/-- `a(n-1)+18*a(n-2)-18*a(n-3)-a(n-4)+a(n-5)` -/
def P5724307862739867690.Spec : Prop :=
  ∀ n, P5724307862739867690.a n = A254627 (n + 1)

theorem P5724307862739867690.correct : P5724307862739867690.Spec := by
  intro n
  simp only [A254627, Nat.add_sub_cancel]

end A254627

/-! ## A254627.P673692415045702669

`(2+(1+2*(-1)^(n+1))*A000045(3*(n+1))-(-1)^(n+1)*A000032(3*(n+1)))/4`
-/

namespace A254627.P673692415045702669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (1 + 2 * (-1) ^ (n + 1)) * A000045 (3 * (n + 1)) - (-1) ^ (n + 1) * A000032 (3 * (n + 1)) : ℚ) / 4

end

end A254627.P673692415045702669

namespace A254627

/-- `(2+(1+2*(-1)^(n+1))*A000045(3*(n+1))-(-1)^(n+1)*A000032(3*(n+1)))/4` -/
def P673692415045702669.Spec : Prop :=
  ∀ n, P673692415045702669.a n = (A254627 (n + 1) : ℚ)

end A254627

/-! ## A254627.P12092466285343157877

`(2+(1+3*(-1)^(n+1))*A000045(3*(n+1))-2*(-1)^(n+1)*A000045(3*(n+1)+1))/4`
-/

namespace A254627.P12092466285343157877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (1 + 3 * (-1) ^ (n + 1)) * A000045 (3 * (n + 1)) - 2 * (-1) ^ (n + 1) * A000045 (3 * (n + 1) + 1) : ℚ) / 4

end

end A254627.P12092466285343157877

namespace A254627

/-- `(2+(1+3*(-1)^(n+1))*A000045(3*(n+1))-2*(-1)^(n+1)*A000045(3*(n+1)+1))/4` -/
def P12092466285343157877.Spec : Prop :=
  ∀ n, P12092466285343157877.a n = (A254627 (n + 1) : ℚ)

end A254627

/-! ## A254627.P9844593906315931000

`∑[A005247(3*n)/2]`
-/

namespace A254627.P9844593906315931000
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005247 (3 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254627.P9844593906315931000

namespace A254627

/-- `∑[A005247(3*n)/2]` -/
def P9844593906315931000.Spec : Prop :=
  ∀ n, P9844593906315931000.a n = (A254627 (n + 1) : ℚ)

end A254627

/-! ## A254627.P15223501816756790333

`A001611(2*comp[3*n])/2`
-/

namespace A254627.P15223501816756790333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001611 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A254627.P15223501816756790333

namespace A254627

/-- `A001611(2*comp[3*n])/2` -/
def P15223501816756790333.Spec : Prop :=
  ∀ n, P15223501816756790333.a n = (A254627 (n + 1) : ℚ)

end A254627

/-! ## A254627.P13660993129015958685

`(A094966(3*n+1)+1)/2`
-/

namespace A254627.P13660993129015958685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094966 (3 * n + 1) + 1 : ℚ) / 2

end

end A254627.P13660993129015958685

namespace A254627

/-- `(A094966(3*n+1)+1)/2` -/
def P13660993129015958685.Spec : Prop :=
  ∀ n, P13660993129015958685.a n = (A254627 (n + 1) : ℚ)

end A254627

/-! ## A254627.P7410696616857566440

`ceil(A000045(2*comp[3*n])/2)`
-/

namespace A254627.P7410696616857566440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000045 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2⌉

end

end A254627.P7410696616857566440

namespace A254627

/-- `ceil(A000045(2*comp[3*n])/2)` -/
def P7410696616857566440.Spec : Prop :=
  ∀ n, P7410696616857566440.a n = A254627 (n + 1)

end A254627

/-! ## A254627.P10700470300188540279

`A004695(or(1, n)+2*n+1)+1`
-/

namespace A254627.P10700470300188540279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (Nat.lor 1 n + (2 * n + 1)) + 1

end

end A254627.P10700470300188540279

namespace A254627

/-- `A004695(or(1, n)+2*n+1)+1` -/
def P10700470300188540279.Spec : Prop :=
  ∀ n, P10700470300188540279.a n = A254627 (n + 1)

end A254627

/-! ## A254627.P11683022411708314117

`A004695(2*(comp[3*n-1]+1))+1`
-/

namespace A254627.P11683022411708314117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)) + 1

end

end A254627.P11683022411708314117

namespace A254627

/-- `A004695(2*(comp[3*n-1]+1))+1` -/
def P11683022411708314117.Spec : Prop :=
  ∀ n, P11683022411708314117.a n = A254627 (n + 1)

end A254627

/-! ## A254627.P281759176043025675

`A387779(A032766(n))`
-/

namespace A254627.P281759176043025675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387779 (A032766 n).toNat

end

end A254627.P281759176043025675

namespace A254627

/-- `A387779(A032766(n))` -/
def P281759176043025675.Spec : Prop :=
  ∀ n, P281759176043025675.a n = A254627 (n + 1)

end A254627

/-! ## A254627.P7600576917396738124

`A107857(A042964(n+1))`
-/

namespace A254627.P7600576917396738124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107857 (A042964 (n + 1)).toNat

end

end A254627.P7600576917396738124

namespace A254627

/-- `A107857(A042964(n+1))` -/
def P7600576917396738124.Spec : Prop :=
  ∀ n, P7600576917396738124.a n = A254627 (n + 1)

end A254627

/-! ## A254627.P10537036194995178663

`A147997(A047235(n+1))`
-/

namespace A254627.P10537036194995178663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (A047235 (n + 1)).toNat

end

end A254627.P10537036194995178663

namespace A254627

/-- `A147997(A047235(n+1))` -/
def P10537036194995178663.Spec : Prop :=
  ∀ n, P10537036194995178663.a n = A254627 (n + 1)

end A254627

/-! ## A254627.P15018027115875488666

`A293014(A047233(n+2))`
-/

namespace A254627.P15018027115875488666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293014 (A047233 (n + 2)).toNat

end

end A254627.P15018027115875488666

namespace A254627

/-- `A293014(A047233(n+2))` -/
def P15018027115875488666.Spec : Prop :=
  ∀ n, P15018027115875488666.a n = A254627 (n + 1)

end A254627

/-! ## A254627.P7265872589758910813

`∑[A033887(n)]-A077259(n)`
-/

namespace A254627.P7265872589758910813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A077259 n

end

end A254627.P7265872589758910813

namespace A254627

/-- `∑[A033887(n)]-A077259(n)` -/
def P7265872589758910813.Spec : Prop :=
  ∀ n, P7265872589758910813.a n = A254627 (n + 1)

end A254627

/-! ## A254627.P4923518503079404908

`A173433(A047241(n+1)+1)`
-/

namespace A254627.P4923518503079404908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173433 (A047241 (n + 1) + 1).toNat

end

end A254627.P4923518503079404908

namespace A254627

/-- `A173433(A047241(n+1)+1)` -/
def P4923518503079404908.Spec : Prop :=
  ∀ n, P4923518503079404908.a n = A254627 (n + 1)

end A254627

/-! ## A254627.P9416953707897027373

`A001076(n+1)-A077259(n)`
-/

namespace A254627.P9416953707897027373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (n + 1) - A077259 n

end

end A254627.P9416953707897027373

namespace A254627

/-- `A001076(n+1)-A077259(n)` -/
def P9416953707897027373.Spec : Prop :=
  ∀ n, P9416953707897027373.a n = A254627 (n + 1)

end A254627

/-! ## A254627.P2536290730698943134

`A082651(n+1)-A077262(n)`
-/

namespace A254627.P2536290730698943134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082651 (n + 1) - A077262 n

end

end A254627.P2536290730698943134

namespace A254627

/-- `A082651(n+1)-A077262(n)` -/
def P2536290730698943134.Spec : Prop :=
  ∀ n, P2536290730698943134.a n = A254627 (n + 1)

end A254627

/-! ## A254627.P9460903682304827887

`A049652(n+1)-(A077259(n)+A049652(n))`
-/

namespace A254627.P9460903682304827887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049652 (n + 1) - (A077259 n + A049652 n)

end

end A254627.P9460903682304827887

namespace A254627

/-- `A049652(n+1)-(A077259(n)+A049652(n))` -/
def P9460903682304827887.Spec : Prop :=
  ∀ n, P9460903682304827887.a n = A254627 (n + 1)

end A254627

/-! ## A254627.P14834762447648965394

`A110526(n+1)+A110526(n)-A077259(n)`
-/

namespace A254627.P14834762447648965394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110526 (n + 1) + A110526 n - A077259 n

end

end A254627.P14834762447648965394

namespace A254627

/-- `A110526(n+1)+A110526(n)-A077259(n)` -/
def P14834762447648965394.Spec : Prop :=
  ∀ n, P14834762447648965394.a n = A254627 (n + 1)

end A254627

/-!
# A254628: Triangular numbers (A000217) that are also centered pentagonal numbers (A005891).

The programs for A254628, the canonical program `A254628.P13258080286240464621` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254628 has offset 1).

The definition of A254628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254628.P13258080286240464621

`ogf((1+5x-52x^2+5x^3+x^4)/(1-x-322x^2+322x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254628

/-- `ogf((1+5x-52x^2+5x^3+x^4)/(1-x-322x^2+322x^3+x^4-x^5))` -/
def P13258080286240464621.Spec : Prop :=
  ∀ n, P13258080286240464621.a n = A254628 (n + 1)

theorem P13258080286240464621.correct : P13258080286240464621.Spec := by
  intro n
  simp only [A254628, Nat.add_sub_cancel]

end A254628

/-! ## A254628.P11477730602421995405

`A254962(record[or(2, n)])/2`
-/

namespace A254628.P11477730602421995405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254962 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 2

end

end A254628.P11477730602421995405

namespace A254628

/-- `A254962(record[or(2, n)])/2` -/
def P11477730602421995405.Spec : Prop :=
  ∀ n, P11477730602421995405.a n = (A254628 (n + 1) : ℚ)

end A254628

/-! ## A254628.P729249937403187155

`1+5*C(A254627(1+n), 2)`
-/

namespace A254628.P729249937403187155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 5 * Nat.choose (A254627 (1 + n)).toNat 2

end

end A254628.P729249937403187155

namespace A254628

/-- `1+5*C(A254627(1+n), 2)` -/
def P729249937403187155.Spec : Prop :=
  ∀ n, (P729249937403187155.a n : ℤ) = A254628 (n + 1)

end A254628

/-! ## A254628.P9297760085927616371

`A227047(2*A047235(n+1))/2`
-/

namespace A254628.P9297760085927616371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227047 (2 * A047235 (n + 1)).toNat : ℚ) / 2

end

end A254628.P9297760085927616371

namespace A254628

/-- `A227047(2*A047235(n+1))/2` -/
def P9297760085927616371.Spec : Prop :=
  ∀ n, P9297760085927616371.a n = (A254628 (n + 1) : ℚ)

end A254628

/-! ## A254628.P16900486564785211442

`A227047(2*A328588(n+1))/2`
-/

namespace A254628.P16900486564785211442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227047 (2 * A328588 (n + 1)).toNat : ℚ) / 2

end

end A254628.P16900486564785211442

namespace A254628

/-- `A227047(2*A328588(n+1))/2` -/
def P16900486564785211442.Spec : Prop :=
  ∀ n, P16900486564785211442.a n = (A254628 (n + 1) : ℚ)

end A254628

/-! ## A254628.P2717926686594468500

`A254626(n+1)*A254962(n+1)`
-/

namespace A254628.P2717926686594468500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254626 (n + 1) * A254962 (n + 1)

end

end A254628.P2717926686594468500

namespace A254628

/-- `A254626(n+1)*A254962(n+1)` -/
def P2717926686594468500.Spec : Prop :=
  ∀ n, P2717926686594468500.a n = A254628 (n + 1)

end A254628

/-! ## A254628.P12324144967124098487

`A254962(A047235(n+1)-n)/2`
-/

namespace A254628.P12324144967124098487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254962 (A047235 (n + 1) - (n : ℤ)).toNat : ℚ) / 2

end

end A254628.P12324144967124098487

namespace A254628

/-- `A254962(A047235(n+1)-n)/2` -/
def P12324144967124098487.Spec : Prop :=
  ∀ n, P12324144967124098487.a n = (A254628 (n + 1) : ℚ)

end A254628

/-! ## A254628.P17707159752459746320

`A071618(∑[A040001(n)])*A254962(n+1)`
-/

namespace A254628.P17707159752459746320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071618 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A254962 (n + 1)

end

end A254628.P17707159752459746320

namespace A254628

/-- `A071618(∑[A040001(n)])*A254962(n+1)` -/
def P17707159752459746320.Spec : Prop :=
  ∀ n, P17707159752459746320.a n = A254628 (n + 1)

end A254628

/-! ## A254628.P549546205043879960

`A071618(A001651(n+1))*A254962(n+1)`
-/

namespace A254628.P549546205043879960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071618 (A001651 (n + 1)).toNat * A254962 (n + 1)

end

end A254628.P549546205043879960

namespace A254628

/-- `A071618(A001651(n+1))*A254962(n+1)` -/
def P549546205043879960.Spec : Prop :=
  ∀ n, P549546205043879960.a n = A254628 (n + 1)

end A254628

/-! ## A254628.P5109070069811775168

`A100886(A047241(n+1))*A254962(n+1)`
-/

namespace A254628.P5109070069811775168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100886 (A047241 (n + 1)).toNat * A254962 (n + 1)

end

end A254628.P5109070069811775168

namespace A254628

/-- `A100886(A047241(n+1))*A254962(n+1)` -/
def P5109070069811775168.Spec : Prop :=
  ∀ n, P5109070069811775168.a n = A254628 (n + 1)

end A254628

/-!
# A254629: Number of ways to write n as x^2 + y*(y+1) + z*(4*z+1) with x,y,z nonnegative integers.

The programs for A254629, there is no canonical definition to state claims against.
-/

/-! ## A254629.P11218361883317763917

`A008683(A155085(A037279(n+1)))+2`
-/

namespace A254629.P11218361883317763917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A155085 (A037279 (n + 1)).toNat).toNat + 2

end

end A254629.P11218361883317763917

/-! ## A254629.P758799831933117463

`A099054(A032547(3*(n+1))%A130513(3*n+5))`
-/

namespace A254629.P758799831933117463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099054 (Int.tmod (A032547 (3 * (n + 1))) (A130513 (3 * n + 5))).toNat

end

end A254629.P758799831933117463

/-! ## A254629.P15623026295589811429

`A090822(A078812(∑[∏{p}[n+1, #-1]]))`
-/

namespace A254629.P15623026295589811429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A078812 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A254629.P15623026295589811429

/-! ## A254629.P16509586821041285664

`gcd(A284870(n)+1, A375138(3*n+1))`
-/

namespace A254629.P16509586821041285664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A284870 n + 1) (A375138 (3 * n + 1))

end

end A254629.P16509586821041285664

/-! ## A254629.P526667085316339792

`A001222(A000265(A005276(n+1)+32))`
-/

namespace A254629.P526667085316339792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000265 (A005276 (n + 1) + 32).toNat).toNat

end

end A254629.P526667085316339792

/-!
# A254631: Number of ways to write n as x*(x+1)/2 + y*(3*y+2) + z*(3*z-2) with x,y,z nonnegative integers.

The programs for A254631, there is no canonical definition to state claims against.
-/

/-! ## A254631.P13097834141533418185

`A115583(A063733(n+3)+A007310(n+1))`
-/

namespace A254631.P13097834141533418185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115583 (A063733 (n + 3) + A007310 (n + 1)).toNat

end

end A254631.P13097834141533418185

/-! ## A254631.P15497234185237037082

`A324190(A196368(A099331(n+2))+A173633(n+4))`
-/

namespace A254631.P15497234185237037082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324190 (A196368 (A099331 (n + 2)).toNat + A173633 (n + 4)).toNat

end

end A254631.P15497234185237037082

/-!
# A254632: Triangle read by rows, T(n, k) = 4^n*[x^k]hypergeometric([3/2, -n], [3], -x), n>=0, 0<=k<=n.

The programs for A254632, the canonical program `A254632.P3228446956241715925` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254632 has offset 0).

The definition of A254632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254632.P3228446956241715925

`4^(row(n)-col(n))*C(row(n), col(n))*A000108(col(n)+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A254632

/-- `4^(row(n)-col(n))*C(row(n), col(n))*A000108(col(n)+1)` -/
def P3228446956241715925.Spec : Prop :=
  ∀ n, P3228446956241715925.a n = (A254632 n : ℚ)

end A254632

/-! ## A254632.P9363685756670279080

`(2^(C(comp[∑[n]]-n, 2)-(n+1)))²*A108198(n)`
-/

namespace A254632.P9363685756670279080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ)) ^ 2 * (A108198 n : ℚ)

end

end A254632.P9363685756670279080

namespace A254632

/-- `(2^(C(comp[∑[n]]-n, 2)-(n+1)))²*A108198(n)` -/
def P9363685756670279080.Spec : Prop :=
  ∀ n, P9363685756670279080.a n = (A254632 n : ℚ)

end A254632

/-! ## A254632.P14187479175673952981

`A108198(n)*A262616(n)`
-/

namespace A254632.P14187479175673952981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108198 n * A262616 n

end

end A254632.P14187479175673952981

namespace A254632

/-- `A108198(n)*A262616(n)` -/
def P14187479175673952981.Spec : Prop :=
  ∀ n, P14187479175673952981.a n = A254632 n

end A254632

/-! ## A254632.P5664810567846083538

`A130321(n)²*A108198(n)`
-/

namespace A254632.P5664810567846083538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n ^ 2 * A108198 n

end

end A254632.P5664810567846083538

namespace A254632

/-- `A130321(n)²*A108198(n)` -/
def P5664810567846083538.Spec : Prop :=
  ∀ n, P5664810567846083538.a n = A254632 n

end A254632

/-! ## A254632.P11879375924153050431

`A000108(A002260(n+1))*A038231(n)`
-/

namespace A254632.P11879375924153050431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002260 (n + 1)).toNat * A038231 n

end

end A254632.P11879375924153050431

namespace A254632

/-- `A000108(A002260(n+1))*A038231(n)` -/
def P11879375924153050431.Spec : Prop :=
  ∀ n, P11879375924153050431.a n = A254632 n

end A254632

/-!
# A254633: a(n) = 16^n*[x^n]hypergeometric([3/2, -2*n], [3], -x).

The programs for A254633, the canonical program `A254633.P6403475487283811037` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254633 has offset 0).

The definition of A254633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254633.P1852012891242539771

`a(n-1)*16*(4*n²-1)/(n*(n+2))` with `a(0)=1`
-/

namespace A254633.P1852012891242539771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((16 * ((4 * n ^ 2 : ℤ) - 1) : ℚ) / (n * (n + 2) : ℚ))

end

end A254633.P1852012891242539771

namespace A254633

/-- `a(n-1)*16*(4*n²-1)/(n*(n+2))` -/
def P1852012891242539771.Spec : Prop :=
  ∀ n, P1852012891242539771.a n = (A254633 n : ℚ)

end A254633

/-! ## A254633.P6403475487283811037

`4^n*A172392(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A254633

/-- `4^n*A172392(n)` -/
def P6403475487283811037.Spec : Prop :=
  ∀ n, P6403475487283811037.a n = A254633 n

theorem P6403475487283811037.correct : P6403475487283811037.Spec := by
  intro n
  simp only [A254633]

end A254633

/-! ## A254633.P15114741866663519960

`4^n*C(2*n, n)*C(2*n+2, n+1)/(n+2)`
-/

namespace A254633.P15114741866663519960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n * Nat.choose (2 * n) n * Nat.choose (2 * n + 2) (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A254633.P15114741866663519960

namespace A254633

/-- `4^n*C(2*n, n)*C(2*n+2, n+1)/(n+2)` -/
def P15114741866663519960.Spec : Prop :=
  ∀ n, P15114741866663519960.a n = (A254633 n : ℚ)

end A254633

/-! ## A254633.P15445213239370569808

`C(2*n, n)*A269796(n)`
-/

namespace A254633.P15445213239370569808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A269796 n

end

end A254633.P15445213239370569808

namespace A254633

/-- `C(2*n, n)*A269796(n)` -/
def P15445213239370569808.Spec : Prop :=
  ∀ n, P15445213239370569808.a n = A254633 n

end A254633

/-! ## A254633.P9357405539013023111

`A000984(n)*A269796(n)`
-/

namespace A254633.P9357405539013023111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A269796 n

end

end A254633.P9357405539013023111

namespace A254633

/-- `A000984(n)*A269796(n)` -/
def P9357405539013023111.Spec : Prop :=
  ∀ n, P9357405539013023111.a n = A254633 n

end A254633

/-! ## A254633.P12597367189829611203

`∑[A071724(n)]*A098430(n)`
-/

namespace A254633.P12597367189829611203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A098430 n

end

end A254633.P12597367189829611203

namespace A254633

/-- `∑[A071724(n)]*A098430(n)` -/
def P12597367189829611203.Spec : Prop :=
  ∀ n, P12597367189829611203.a n = A254633 n

end A254633

/-! ## A254633.P3786228806491831726

`Δ[A014137(n)]*A098430(n)`
-/

namespace A254633.P3786228806491831726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A098430 n

end

end A254633.P3786228806491831726

namespace A254633

/-- `Δ[A014137(n)]*A098430(n)` -/
def P3786228806491831726.Spec : Prop :=
  ∀ n, P3786228806491831726.a n = A254633 n

end A254633

/-! ## A254633.P14974237605554871971

`record[A097331(n)]*A098430(n)`
-/

namespace A254633.P14974237605554871971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A098430 n

end

end A254633.P14974237605554871971

namespace A254633

/-- `record[A097331(n)]*A098430(n)` -/
def P14974237605554871971.Spec : Prop :=
  ∀ n, P14974237605554871971.a n = A254633 n

end A254633

/-! ## A254633.P4513529388109610471

`record[A106566(n)]*A098430(n)`
-/

namespace A254633.P4513529388109610471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A098430 n

end

end A254633.P4513529388109610471

namespace A254633

/-- `record[A106566(n)]*A098430(n)` -/
def P4513529388109610471.Spec : Prop :=
  ∀ n, P4513529388109610471.a n = A254633 n

end A254633

/-! ## A254633.P10818286662384491248

`record[A126120(n)]*A098430(n)`
-/

namespace A254633.P10818286662384491248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A098430 n

end

end A254633.P10818286662384491248

namespace A254633

/-- `record[A126120(n)]*A098430(n)` -/
def P10818286662384491248.Spec : Prop :=
  ∀ n, P10818286662384491248.a n = A254633 n

end A254633

/-!
# A254634: a(n) = 1 if 2*n + 1 is Sprime (A193258), else a(n) = 0.

The programs for A254634, there is no canonical definition to state claims against.
-/

/-! ## A254634.P14981467136990260364

`char[floor(A193258(1+n)/2)]`
-/

namespace A254634.P14981467136990260364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193258 (1 + n) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A254634.P14981467136990260364

/-! ## A254634.P9484208436495489596

`char[A004526(A193258(n+1))]`
-/

namespace A254634.P9484208436495489596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A193258 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A254634.P9484208436495489596

/-! ## A254634.P2145843627982080746

`char[A008619(A193258(1+n)-1)-1]`
-/

namespace A254634.P2145843627982080746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A193258 (1 + n) - 1).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A254634.P2145843627982080746

/-! ## A254634.P8067788304827635567

`char[A028242(A193258(A080513(n)))]`
-/

namespace A254634.P8067788304827635567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A193258 (A080513 n).toNat).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A254634.P8067788304827635567

/-! ## A254634.P16267381596191013476

`char[A028242(A193258(A133310(n)))]`
-/

namespace A254634.P16267381596191013476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A193258 (A133310 n).toNat).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A254634.P16267381596191013476

/-!
# A254636: Numbers that cannot be represented as x*y + x + y, where x>=y>1.

The programs for A254636, there is no canonical definition to state claims against.
-/

/-! ## A254636.P11874886572179270662

`eq[0, A255361(n)]`
-/

namespace A254636.P11874886572179270662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255361 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254636.P11874886572179270662

/-! ## A254636.P7158812023719635154

`comp[A254671(n+1)]`
-/

namespace A254636.P7158812023719635154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A254636.P7158812023719635154

/-! ## A254636.P13266463973749040650

`eq[0, A375512(1+n)]`
-/

namespace A254636.P13266463973749040650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375512 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254636.P13266463973749040650

/-! ## A254636.P12633400129583417167

`eq[1, A378444(n+1)]`
-/

namespace A254636.P12633400129583417167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254636.P12633400129583417167

/-! ## A254636.P10391129525174581797

`eq[1, A378544(1+n)]`
-/

namespace A254636.P10391129525174581797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378544 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254636.P10391129525174581797

/-! ## A254636.P1007786107397192235

`lt[A056138(n+1), 2]`
-/

namespace A254636.P1007786107397192235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056138 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A254636.P1007786107397192235

/-! ## A254636.P75106076751023138

`lt[A307828(n+1), 2]`
-/

namespace A254636.P75106076751023138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307828 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A254636.P75106076751023138

/-! ## A254636.P13407696941077420217

`lt[A318440(n+1), 2]`
-/

namespace A254636.P13407696941077420217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A254636.P13407696941077420217

/-! ## A254636.P11453201380475268347

`lt[A033676(n+1), 3]`
-/

namespace A254636.P11453201380475268347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A254636.P11453201380475268347

/-! ## A254636.P3143823428557573156

`eq[n+1, A376915(n+1)]`
-/

namespace A254636.P3143823428557573156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376915 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254636.P3143823428557573156

/-!
# A254637: Maximal element of Image^inf({ 2 }) under repeated base-n zero-split doubling.

The programs for A254637, there is no canonical definition to state claims against.
-/

/-! ## A254637.P7341398164544089144

`A294873(A318063(n+1)+A294861(n))`
-/

namespace A254637.P7341398164544089144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294873 (A318063 (n + 1) + A294861 n).toNat

end

end A254637.P7341398164544089144

/-!
# A254640: Third partial sums of sixth powers (A001014).

The programs for A254640, the canonical program `A254640.P4572089267847384883` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254640 has offset 1).

The definition of A254640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254640.P4572089267847384883

`ogf((1+57x+302x^2+302x^3+57x^4+x^5)/(1-10x+45x^2-120x^3+210x^4-252x^5+210x^6-120x^7+45x^8-10x^9+x^10))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254640

/-- `ogf((1+57x+302x^2+302x^3+57x^4+x^5)/(1-10x+45x^2-120x^3+210x^4-252x^5+210x^6-120x^7+45x^8-10x^9+x^10))` -/
def P4572089267847384883.Spec : Prop :=
  ∀ n, P4572089267847384883.a n = A254640 (n + 1)

theorem P4572089267847384883.correct : P4572089267847384883.Spec := by
  intro n
  simp only [A254640, Nat.add_sub_cancel]

end A254640

/-! ## A254640.P3648040500839053995

`∑[∑[∑[(1+n)^6]]]`
-/

namespace A254640.P3648040500839053995
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + n) ^ 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254640.P3648040500839053995

namespace A254640

/-- `∑[∑[∑[(1+n)^6]]]` -/
def P3648040500839053995.Spec : Prop :=
  ∀ n, (P3648040500839053995.a n : ℤ) = A254640 (n + 1)

end A254640

/-! ## A254640.P3677145317155869551

`∑[∑[((n+1)*(n+1)²)²]+a(n-1)]` with `a(0)=1`
-/

namespace A254640.P3677145317155869551
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 1) ^ 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254640.P3677145317155869551

namespace A254640

/-- `∑[∑[((n+1)*(n+1)²)²]+a(n-1)]` -/
def P3677145317155869551.Spec : Prop :=
  ∀ n, (P3677145317155869551.a n : ℤ) = A254640 (n + 1)

end A254640

/-! ## A254640.P18434271251005463601

`A254645(n+2)-(A254645(n+1)+A101093(n+2))`
-/

namespace A254640.P18434271251005463601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254645 (n + 2) - (A254645 (n + 1) + A101093 (n + 2))

end

end A254640.P18434271251005463601

namespace A254640

/-- `A254645(n+2)-(A254645(n+1)+A101093(n+2))` -/
def P18434271251005463601.Spec : Prop :=
  ∀ n, P18434271251005463601.a n = A254640 (n + 1)

end A254640

/-! ## A254640.P11416455344677666866

`∑[∑[∑[A033431((n+1)²)]]]/2`
-/

namespace A254640.P11416455344677666866
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 ((n + 1) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A254640.P11416455344677666866

namespace A254640

/-- `∑[∑[∑[A033431((n+1)²)]]]/2` -/
def P11416455344677666866.Spec : Prop :=
  ∀ n, P11416455344677666866.a n = (A254640 (n + 1) : ℚ)

end A254640

/-!
# A254641: Third partial sums of seventh powers (A001015).

The programs for A254641, the canonical program `A254641.P10213969655595806805` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254641 has offset 1).

The definition of A254641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254641.P10213969655595806805

`∑[∑[∑[(1+n)^7]]]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254641

/-- `∑[∑[∑[(1+n)^7]]]` -/
def P10213969655595806805.Spec : Prop :=
  ∀ n, (P10213969655595806805.a n : ℤ) = A254641 (n + 1)

theorem P10213969655595806805.correct : P10213969655595806805.Spec := by
  intro n
  simp only [A254641, Nat.add_sub_cancel]

end A254641

/-! ## A254641.P15617120996000455612

`∑[A000541(n+1)]+a(n-1)` with `a(0)=1`
-/

namespace A254641.P15617120996000455612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A254641.P15617120996000455612

namespace A254641

/-- `∑[A000541(n+1)]+a(n-1)` -/
def P15617120996000455612.Spec : Prop :=
  ∀ n, P15617120996000455612.a n = A254641 (n + 1)

end A254641

/-! ## A254641.P9510317321571887736

`A254646(n+2)-(A254646(n+1)+A250212(n+2))`
-/

namespace A254641.P9510317321571887736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254646 (n + 2) - (A254646 (n + 1) + A250212 (n + 2))

end

end A254641.P9510317321571887736

namespace A254641

/-- `A254646(n+2)-(A254646(n+1)+A250212(n+2))` -/
def P9510317321571887736.Spec : Prop :=
  ∀ n, P9510317321571887736.a n = A254641 (n + 1)

end A254641

/-! ## A254641.P18167727513350927173

`A239094(n+2)+a(n-1)` with `a(0)=1`
-/

namespace A254641.P18167727513350927173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A239094 (n + 2) + a (n - 1)

end

end A254641.P18167727513350927173

namespace A254641

/-- `A239094(n+2)+a(n-1)` -/
def P18167727513350927173.Spec : Prop :=
  ∀ n, P18167727513350927173.a n = A254641 (n + 1)

end A254641

/-!
# A254642: Third partial sums of eighth powers (A001016).

The programs for A254642, the canonical program `A254642.P15752394770805542843` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254642 has offset 1).

The definition of A254642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254642.P15752394770805542843

`∑[∑[∑[(1+n)^8]]]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254642

/-- `∑[∑[∑[(1+n)^8]]]` -/
def P15752394770805542843.Spec : Prop :=
  ∀ n, (P15752394770805542843.a n : ℤ) = A254642 (n + 1)

theorem P15752394770805542843.correct : P15752394770805542843.Spec := by
  intro n
  simp only [A254642, Nat.add_sub_cancel]

end A254642

/-! ## A254642.P14934034084696531218

`∑[∑[∑[∑[a(n-1)+2]²²]]]` with `a(0)=1`
-/

namespace A254642.P14934034084696531218
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f4 =>
  f4 (n - 1) + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254642.P14934034084696531218

namespace A254642

/-- `∑[∑[∑[∑[a(n-1)+2]²²]]]` -/
def P14934034084696531218.Spec : Prop :=
  ∀ n, (P14934034084696531218.a n : ℤ) = A254642 (n + 1)

end A254642

/-! ## A254642.P17929962350753998196

`-∑[∑[∑[n+1-A196288(n+1)]]]`
-/

namespace A254642.P17929962350753998196
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A196288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254642.P17929962350753998196

namespace A254642

/-- `-∑[∑[∑[n+1-A196288(n+1)]]]` -/
def P17929962350753998196.Spec : Prop :=
  ∀ n, P17929962350753998196.a n = A254642 (n + 1)

end A254642

/-! ## A254642.P13946416120951868519

`A254647(n+2)-(A254647(n+1)+A253636(n+2))`
-/

namespace A254642.P13946416120951868519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254647 (n + 2) - (A254647 (n + 1) + A253636 (n + 2))

end

end A254642.P13946416120951868519

namespace A254642

/-- `A254647(n+2)-(A254647(n+1)+A253636(n+2))` -/
def P13946416120951868519.Spec : Prop :=
  ∀ n, P13946416120951868519.a n = A254642 (n + 1)

end A254642

/-!
# A254643: Third partial sums of ninth powers (A001017).

The programs for A254643, the canonical program `A254643.P17245420156156712007` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254643 has offset 1).

The definition of A254643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254643.P17245420156156712007

`∑[∑[∑[(1+n)^9]]]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254643

/-- `∑[∑[∑[(1+n)^9]]]` -/
def P17245420156156712007.Spec : Prop :=
  ∀ n, (P17245420156156712007.a n : ℤ) = A254643 (n + 1)

theorem P17245420156156712007.correct : P17245420156156712007.Spec := by
  intro n
  simp only [A254643, Nat.add_sub_cancel]

end A254643

/-! ## A254643.P16352594416528218574

`-∑[∑[∑[A024007(n+1)-1]]]`
-/

namespace A254643.P16352594416528218574
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024007 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254643.P16352594416528218574

namespace A254643

/-- `-∑[∑[∑[A024007(n+1)-1]]]` -/
def P16352594416528218574.Spec : Prop :=
  ∀ n, P16352594416528218574.a n = A254643 (n + 1)

end A254643

/-!
# A254644: Fourth partial sums of fifth powers (A000584).

The programs for A254644, the canonical program `A254644.P12369611622361575729` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254644 has offset 1).

The definition of A254644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254644.P2214203542099429877

`ogf((1+26x+66x^2+26x^3+x^4)/(1-10x+45x^2-120x^3+210x^4-252x^5+210x^6-120x^7+45x^8-10x^9+x^10))`
-/

namespace A254644.P2214203542099429877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 26, 66, 26, 1] [1, -10, 45, -120, 210, -252, 210, -120, 45, -10, 1] n

end

end A254644.P2214203542099429877

namespace A254644

/-- `ogf((1+26x+66x^2+26x^3+x^4)/(1-10x+45x^2-120x^3+210x^4-252x^5+210x^6-120x^7+45x^8-10x^9+x^10))` -/
def P2214203542099429877.Spec : Prop :=
  ∀ n, P2214203542099429877.a n = A254644 (n + 1)

end A254644

/-! ## A254644.P12369611622361575729

`C(n+5, 5)*(5*(n+3)^4-35*(n+3)²+36)/126`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254644

/-- `C(n+5, 5)*(5*(n+3)^4-35*(n+3)²+36)/126` -/
def P12369611622361575729.Spec : Prop :=
  ∀ n, P12369611622361575729.a n = (A254644 (n + 1) : ℚ)

end A254644

/-! ## A254644.P10601954741297681994

`∑[∑[∑[∑[(1+n)^5]]]]`
-/

namespace A254644.P10601954741297681994
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + n) ^ 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254644.P10601954741297681994

namespace A254644

/-- `∑[∑[∑[∑[(1+n)^5]]]]` -/
def P10601954741297681994.Spec : Prop :=
  ∀ n, (P10601954741297681994.a n : ℤ) = A254644 (n + 1)

end A254644

/-! ## A254644.P6462941348998251059

`A101099(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A254644.P6462941348998251059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101099 (n + 1) + a (n - 1)

end

end A254644.P6462941348998251059

namespace A254644

/-- `A101099(n+1)+a(n-1)` -/
def P6462941348998251059.Spec : Prop :=
  ∀ n, P6462941348998251059.a n = A254644 (n + 1)

end A254644

/-!
# A254645: Fourth partial sums of sixth powers (A001014).

The programs for A254645, the canonical program `A254645.P407966177160264888` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254645 has offset 1).

The definition of A254645 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254645.P249129714927598202

`ogf((1+57x+302x^2+302x^3+57x^4+x^5)/(1-11x+55x^2-165x^3+330x^4-462x^5+462x^6-330x^7+165x^8-55x^9+11x^10-x^11))`
-/

namespace A254645.P249129714927598202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 57, 302, 302, 57, 1] [1, -11, 55, -165, 330, -462, 462, -330, 165, -55, 11, -1] n

end

end A254645.P249129714927598202

namespace A254645

/-- `ogf((1+57x+302x^2+302x^3+57x^4+x^5)/(1-11x+55x^2-165x^3+330x^4-462x^5+462x^6-330x^7+165x^8-55x^9+11x^10-x^11))` -/
def P249129714927598202.Spec : Prop :=
  ∀ n, P249129714927598202.a n = A254645 (n + 1)

end A254645

/-! ## A254645.P407966177160264888

`C(n+5, 5)*(n+3)*(((n+1)²+4*(n+1)-1)²-2)/42`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254645

/-- `C(n+5, 5)*(n+3)*(((n+1)²+4*(n+1)-1)²-2)/42` -/
def P407966177160264888.Spec : Prop :=
  ∀ n, P407966177160264888.a n = (A254645 (n + 1) : ℚ)

end A254645

/-! ## A254645.P1609799805166101497

`∑[∑[∑[∑[(1+n)^6]]]]`
-/

namespace A254645.P1609799805166101497
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + n) ^ 6

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254645.P1609799805166101497

namespace A254645

/-- `∑[∑[∑[∑[(1+n)^6]]]]` -/
def P1609799805166101497.Spec : Prop :=
  ∀ n, (P1609799805166101497.a n : ℤ) = A254645 (n + 1)

end A254645

/-! ## A254645.P16525393579622783606

`A254640(1+n)+a(n-1)` with `a(0)=1`
-/

namespace A254645.P16525393579622783606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A254640 (1 + n) + a (n - 1)

end

end A254645.P16525393579622783606

namespace A254645

/-- `A254640(1+n)+a(n-1)` -/
def P16525393579622783606.Spec : Prop :=
  ∀ n, P16525393579622783606.a n = A254645 (n + 1)

end A254645

/-! ## A254645.P13077762115454433247

`∑[A101093(n+1)]+a(n-1)` with `a(0)=1`
-/

namespace A254645.P13077762115454433247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A254645.P13077762115454433247

namespace A254645

/-- `∑[A101093(n+1)]+a(n-1)` -/
def P13077762115454433247.Spec : Prop :=
  ∀ n, P13077762115454433247.a n = A254645 (n + 1)

end A254645

/-! ## A254645.P16488446651608622567

`Δ[A254683(n+1)-A254640(n+1)]-A254640(n+1)`
-/

namespace A254645.P16488446651608622567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254683 (n + 1) - A254640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A254640 (n + 1)

end

end A254645.P16488446651608622567

namespace A254645

/-- `Δ[A254683(n+1)-A254640(n+1)]-A254640(n+1)` -/
def P16488446651608622567.Spec : Prop :=
  ∀ n, P16488446651608622567.a n = A254645 (n + 1)

end A254645

/-!
# A254646: Fourth partial sums of seventh powers (A001015).

The programs for A254646, the canonical program `A254646.P1667414972568136351` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254646 has offset 1).

The definition of A254646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254646.P1667414972568136351

`C(n+5, 5)*(3*(n+3)^6-40*(n+3)^4+151*(n+3)²-108)/198`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254646

/-- `C(n+5, 5)*(3*(n+3)^6-40*(n+3)^4+151*(n+3)²-108)/198` -/
def P1667414972568136351.Spec : Prop :=
  ∀ n, P1667414972568136351.a n = (A254646 (n + 1) : ℚ)

end A254646

/-! ## A254646.P16881089969163063056

`∑[∑[∑[∑[(1+n)^7]]]]`
-/

namespace A254646.P16881089969163063056
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + n) ^ 7

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254646.P16881089969163063056

namespace A254646

/-- `∑[∑[∑[∑[(1+n)^7]]]]` -/
def P16881089969163063056.Spec : Prop :=
  ∀ n, (P16881089969163063056.a n : ℤ) = A254646 (n + 1)

end A254646

/-! ## A254646.P17776888493798396064

`A254641(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A254646.P17776888493798396064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A254641 (n + 1) + a (n - 1)

end

end A254646.P17776888493798396064

namespace A254646

/-- `A254641(n+1)+a(n-1)` -/
def P17776888493798396064.Spec : Prop :=
  ∀ n, P17776888493798396064.a n = A254646 (n + 1)

end A254646

/-! ## A254646.P3714534845257989112

`∑[2*∑[A250212(n+1)]]/2`
-/

namespace A254646.P3714534845257989112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250212 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A254646.P3714534845257989112

namespace A254646

/-- `∑[2*∑[A250212(n+1)]]/2` -/
def P3714534845257989112.Spec : Prop :=
  ∀ n, P3714534845257989112.a n = (A254646 (n + 1) : ℚ)

end A254646

/-! ## A254646.P7050921230584494158

`∑[∑[A000541(n+1)]]+a(n-1)` with `a(0)=1`
-/

namespace A254646.P7050921230584494158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A254646.P7050921230584494158

namespace A254646

/-- `∑[∑[A000541(n+1)]]+a(n-1)` -/
def P7050921230584494158.Spec : Prop :=
  ∀ n, P7050921230584494158.a n = A254646 (n + 1)

end A254646

/-! ## A254646.P11680727997768146928

`A254684(n+2)-(A254684(n+1)+A254641(n+2))`
-/

namespace A254646.P11680727997768146928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254684 (n + 2) - (A254684 (n + 1) + A254641 (n + 2))

end

end A254646.P11680727997768146928

namespace A254646

/-- `A254684(n+2)-(A254684(n+1)+A254641(n+2))` -/
def P11680727997768146928.Spec : Prop :=
  ∀ n, P11680727997768146928.a n = A254646 (n + 1)

end A254646

/-!
# A254647: Fourth partial sums of eighth powers (A001016).

The programs for A254647, the canonical program `A254647.P774049810970370842` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254647 has offset 1).

The definition of A254647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254647.P774049810970370842

`∑[∑[∑[∑[(1+n)^8]]]]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254647

/-- `∑[∑[∑[∑[(1+n)^8]]]]` -/
def P774049810970370842.Spec : Prop :=
  ∀ n, (P774049810970370842.a n : ℤ) = A254647 (n + 1)

theorem P774049810970370842.correct : P774049810970370842.Spec := by
  intro n
  simp only [A254647, Nat.add_sub_cancel]

end A254647

/-! ## A254647.P5257588379437456527

`∑[∑[∑[(n+1)²²²]+a(n-1)]]` with `a(0)=1`
-/

namespace A254647.P5257588379437456527
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  ∑ j ∈ Finset.range (n + 1), f3 j + f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254647.P5257588379437456527

namespace A254647

/-- `∑[∑[∑[(n+1)²²²]+a(n-1)]]` -/
def P5257588379437456527.Spec : Prop :=
  ∀ n, (P5257588379437456527.a n : ℤ) = A254647 (n + 1)

end A254647

/-!
# A254649: a(1) = A007376(1) = 1, n > 1: a(n) = smallest number not occurring earlier, that is the sum of unused next consecutive terms of A007376.

The programs for A254649, there is no canonical definition to state claims against.
-/

/-! ## A254649.P6399572214922772717

`fo[A254650(n+1)-1]+1`
-/

namespace A254649.P6399572214922772717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254650 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A254649.P6399572214922772717

/-!
# A254650: Inverse permutation to A254649.

The programs for A254650, there is no canonical definition to state claims against.
-/

/-! ## A254650.P13237071686850843848

`fo[A254649(n+1)-1]+1`
-/

namespace A254650.P13237071686850843848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254649 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A254650.P13237071686850843848

/-!
# A254651: Characteristic function of A254614, numbers that are either odd or evil (or both).

The programs for A254651, the canonical program `A254651.P5982598180716446576` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254651 has offset 0).

The definition of A254651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254651.P5982598180716446576

`1-A254379(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A254651

/-- `1-A254379(n)` -/
def P5982598180716446576.Spec : Prop :=
  ∀ n, P5982598180716446576.a n = A254651 n

theorem P5982598180716446576.correct : P5982598180716446576.Spec := by
  intro n
  simp only [A254651]

end A254651

/-! ## A254651.P5246019325635203104

`char[comp[xor(n, lcm(2, n))-1]]`
-/

namespace A254651.P5246019325635203104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (Nat.lcm 2 n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A254651.P5246019325635203104

namespace A254651

/-- `char[comp[xor(n, lcm(2, n))-1]]` -/
def P5246019325635203104.Spec : Prop :=
  ∀ n, (P5246019325635203104.a n : ℤ) = A254651 n

end A254651

/-! ## A254651.P5832018375624747354

`char[xor(n, and(n+1, n)/2)]`
-/

namespace A254651.P5832018375624747354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((Nat.land (n + 1) n : ℚ) / 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A254651.P5832018375624747354

namespace A254651

/-- `char[xor(n, and(n+1, n)/2)]` -/
def P5832018375624747354.Spec : Prop :=
  ∀ n, (P5832018375624747354.a n : ℤ) = A254651 n

end A254651

/-! ## A254651.P17558027180152634801

`char[xor(n, 2*gcd(n%2, n))]`
-/

namespace A254651.P17558027180152634801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * Nat.gcd (n % 2) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A254651.P17558027180152634801

namespace A254651

/-- `char[xor(n, 2*gcd(n%2, n))]` -/
def P17558027180152634801.Spec : Prop :=
  ∀ n, (P17558027180152634801.a n : ℤ) = A254651 n

end A254651

/-! ## A254651.P8977157836398386059

`or(n, comp[xor(n, 2*n)])%2`
-/

namespace A254651.P8977157836398386059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) % 2

end

end A254651.P8977157836398386059

namespace A254651

/-- `or(n, comp[xor(n, 2*n)])%2` -/
def P8977157836398386059.Spec : Prop :=
  ∀ n, (P8977157836398386059.a n : ℤ) = A254651 n

end A254651

/-! ## A254651.P5062765302091381832

`char[comp[2*comp[xor(n, 2*n)]]]`
-/

namespace A254651.P5062765302091381832
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A254651.P5062765302091381832

namespace A254651

/-- `char[comp[2*comp[xor(n, 2*n)]]]` -/
def P5062765302091381832.Spec : Prop :=
  ∀ n, (P5062765302091381832.a n : ℤ) = A254651 n

end A254651

/-! ## A254651.P492875296574804080

`and(1, or(comp[xor(n, 2*n)], n²))`
-/

namespace A254651.P492875296574804080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.lor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) (n ^ 2))

end

end A254651.P492875296574804080

namespace A254651

/-- `and(1, or(comp[xor(n, 2*n)], n²))` -/
def P492875296574804080.Spec : Prop :=
  ∀ n, (P492875296574804080.a n : ℤ) = A254651 n

end A254651

/-! ## A254651.P7168339901607115624

`char[or(n, char[xor(n, 2*(n+1))])]`
-/

namespace A254651.P7168339901607115624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (if ∃ j, f2 j = n then 1 else 0)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A254651.P7168339901607115624

namespace A254651

/-- `char[or(n, char[xor(n, 2*(n+1))])]` -/
def P7168339901607115624.Spec : Prop :=
  ∀ n, (P7168339901607115624.a n : ℤ) = A254651 n

end A254651

/-! ## A254651.P3416394581958044973

`1-char[2*xor(n, 2*n+1)]`
-/

namespace A254651.P3416394581958044973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A254651.P3416394581958044973

namespace A254651

/-- `1-char[2*xor(n, 2*n+1)]` -/
def P3416394581958044973.Spec : Prop :=
  ∀ n, P3416394581958044973.a n = A254651 n

end A254651

/-! ## A254651.P13059097371415740825

`xor(1, char[2*xor(n, 2*n+1)])`
-/

namespace A254651.P13059097371415740825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor n (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A254651.P13059097371415740825

namespace A254651

/-- `xor(1, char[2*xor(n, 2*n+1)])` -/
def P13059097371415740825.Spec : Prop :=
  ∀ n, (P13059097371415740825.a n : ℤ) = A254651 n

end A254651

/-! ## A254651.P5346264445582406267

`1-and(n+1, a(and(n, n-1)))` with `a(0)=1`
-/

namespace A254651.P5346264445582406267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - Int.land (n + 1 : ℤ) (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A254651.P5346264445582406267

namespace A254651

/-- `1-and(n+1, a(and(n, n-1)))` -/
def P5346264445582406267.Spec : Prop :=
  ∀ n, P5346264445582406267.a n = A254651 n

end A254651

/-! ## A254651.P14982722907236431259

`1-∑[a(n-1)+val(n, 2)]%2` with `a(0)=0`
-/

namespace A254651.P14982722907236431259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A254651.P14982722907236431259

namespace A254651

/-- `1-∑[a(n-1)+val(n, 2)]%2` -/
def P14982722907236431259.Spec : Prop :=
  ∀ n, P14982722907236431259.a n = A254651 n

end A254651

/-! ## A254651.P257578796325345656

`A254377(xor(3, n))`
-/

namespace A254651.P257578796325345656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (Nat.xor 3 n)

end

end A254651.P257578796325345656

namespace A254651

/-- `A254377(xor(3, n))` -/
def P257578796325345656.Spec : Prop :=
  ∀ n, P257578796325345656.a n = A254651 n

end A254651

/-! ## A254651.P2677981008965075223

`char[record[A160017(n)]]`
-/

namespace A254651.P2677981008965075223
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160017 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A254651.P2677981008965075223

namespace A254651

/-- `char[record[A160017(n)]]` -/
def P2677981008965075223.Spec : Prop :=
  ∀ n, (P2677981008965075223.a n : ℤ) = A254651 n

end A254651

/-! ## A254651.P9494464048531999932

`abs(1-A316828(n))`
-/

namespace A254651.P9494464048531999932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A316828 n|

end

end A254651.P9494464048531999932

namespace A254651

/-- `abs(1-A316828(n))` -/
def P9494464048531999932.Spec : Prop :=
  ∀ n, P9494464048531999932.a n = A254651 n

end A254651

/-! ## A254651.P13921294900498115743

`char[A254614(n+1)]`
-/

namespace A254651.P13921294900498115743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A254651.P13921294900498115743

namespace A254651

/-- `char[A254614(n+1)]` -/
def P13921294900498115743.Spec : Prop :=
  ∀ n, (P13921294900498115743.a n : ℤ) = A254651 n

end A254651

/-! ## A254651.P9742643949674681499

`char[lt[A268726(n), 2]]`
-/

namespace A254651.P9742643949674681499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A254651.P9742643949674681499

namespace A254651

/-- `char[lt[A268726(n), 2]]` -/
def P9742643949674681499.Spec : Prop :=
  ∀ n, (P9742643949674681499.a n : ℤ) = A254651 n

end A254651

/-! ## A254651.P18352050435817329615

`char[or(n, A010060(n))]`
-/

namespace A254651.P18352050435817329615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A010060 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A254651.P18352050435817329615

namespace A254651

/-- `char[or(n, A010060(n))]` -/
def P18352050435817329615.Spec : Prop :=
  ∀ n, (P18352050435817329615.a n : ℤ) = A254651 n

end A254651

/-! ## A254651.P14051783307112567698

`a(A101673(n))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A254651.P14051783307112567698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (A101673 n).toNat

end

end A254651.P14051783307112567698

namespace A254651

/-- `a(A101673(n))` -/
def P14051783307112567698.Spec : Prop :=
  ∀ n, (P14051783307112567698.a n : ℤ) = A254651 n

end A254651

/-!
# A254652: Indices of pentagonal numbers (A000326) which are also centered heptagonal numbers (A069099).

The programs for A254652, the canonical program `A254652.P6764320634826996064` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254652 has offset 1).

The definition of A254652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254652.P6764320634826996064

`ogf((1+3x-26x^2+3x^3+x^4)/(1-x-110x^2+110x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254652

/-- `ogf((1+3x-26x^2+3x^3+x^4)/(1-x-110x^2+110x^3+x^4-x^5))` -/
def P6764320634826996064.Spec : Prop :=
  ∀ n, P6764320634826996064.a n = A254652 (n + 1)

theorem P6764320634826996064.correct : P6764320634826996064.Spec := by
  intro n
  simp only [A254652, Nat.add_sub_cancel]

end A254652

/-!
# A254653: Indices of centered heptagonal numbers (A069099) which are also pentagonal numbers (A000326).

The programs for A254653, the canonical program `A254653.P12162960956936989046` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254653 has offset 1).

The definition of A254653 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254653.P12162960956936989046

`ogf((1+2x-55x^2-2x^3)/(1-x-110x^2+110x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254653

/-- `ogf((1+2x-55x^2-2x^3)/(1-x-110x^2+110x^3+x^4-x^5))` -/
def P12162960956936989046.Spec : Prop :=
  ∀ n, P12162960956936989046.a n = A254653 (n + 1)

theorem P12162960956936989046.correct : P12162960956936989046.Spec := by
  intro n
  simp only [A254653, Nat.add_sub_cancel]

end A254653

/-! ## A254653.P16879115365428527003

`(filter[A004254(n), #%2]+1)/2`
-/

namespace A254653.P16879115365428527003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n) + 1 : ℚ) / 2

end

end A254653.P16879115365428527003

namespace A254653

/-- `(filter[A004254(n), #%2]+1)/2` -/
def P16879115365428527003.Spec : Prop :=
  ∀ n, P16879115365428527003.a n = (A254653 (n + 1) : ℚ)

end A254653

/-! ## A254653.P5782738330436698876

`(A004254(round(or(1, 3*n)/2))+1)/2`
-/

namespace A254653.P5782738330436698876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004254 (SequenceMachineLib.roundAway ((Nat.lor 1 (3 * n) : ℚ) / 2)).toNat + 1 : ℚ) / 2

end

end A254653.P5782738330436698876

namespace A254653

/-- `(A004254(round(or(1, 3*n)/2))+1)/2` -/
def P5782738330436698876.Spec : Prop :=
  ∀ n, P5782738330436698876.a n = (A254653 (n + 1) : ℚ)

end A254653

/-! ## A254653.P7927124469861164787

`(1+A004254(A001651(1+n)))/2`
-/

namespace A254653.P7927124469861164787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A004254 (A001651 (1 + n)).toNat : ℚ) / 2

end

end A254653.P7927124469861164787

namespace A254653

/-- `(1+A004254(A001651(1+n)))/2` -/
def P7927124469861164787.Spec : Prop :=
  ∀ n, P7927124469861164787.a n = (A254653 (n + 1) : ℚ)

end A254653

/-! ## A254653.P17794292511317682482

`(A004254(A004526(3*n)+1)+1)/2`
-/

namespace A254653.P17794292511317682482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004254 (A004526 (3 * n) + 1).toNat + 1 : ℚ) / 2

end

end A254653.P17794292511317682482

namespace A254653

/-- `(A004254(A004526(3*n)+1)+1)/2` -/
def P17794292511317682482.Spec : Prop :=
  ∀ n, P17794292511317682482.a n = (A254653 (n + 1) : ℚ)

end A254653

/-! ## A254653.P11866784823996834080

`(A004254(A110654(3*n+1))+1)/2`
-/

namespace A254653.P11866784823996834080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004254 (A110654 (3 * n + 1)).toNat + 1 : ℚ) / 2

end

end A254653.P11866784823996834080

namespace A254653

/-- `(A004254(A110654(3*n+1))+1)/2` -/
def P11866784823996834080.Spec : Prop :=
  ∀ n, P11866784823996834080.a n = (A254653 (n + 1) : ℚ)

end A254653

/-! ## A254653.P10904178408654177279

`(A004254(A008619(3*n))-1)/2+1`
-/

namespace A254653.P10904178408654177279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004254 (A008619 (3 * n)).toNat - 1 : ℚ) / 2 + 1

end

end A254653.P10904178408654177279

namespace A254653

/-- `(A004254(A008619(3*n))-1)/2+1` -/
def P10904178408654177279.Spec : Prop :=
  ∀ n, P10904178408654177279.a n = (A254653 (n + 1) : ℚ)

end A254653

/-!
# A254654: Pentagonal numbers (A000326) which are also centered heptagonal numbers (A069099).

The programs for A254654, there is no canonical definition to state claims against.
-/

/-! ## A254654.P4782669688346636792

`A000326(A254652(n+1))`
-/

namespace A254654.P4782669688346636792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A254652 (n + 1)).toNat

end

end A254654.P4782669688346636792

/-!
# A254655: Run lengths of A254379 (Characteristic function of the even odious numbers).

The programs for A254655, the canonical program `A254655.P16126583742751402593` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254655 has offset 1).

The definition of A254655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254655.P8115836541036349854

`runs[1-and(n+1, a(and(n, n-1)))]` with `a(0)=1`
-/

namespace A254655.P8115836541036349854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - Int.land (n + 1 : ℤ) (f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A254655.P8115836541036349854

namespace A254655

/-- `runs[1-and(n+1, a(and(n, n-1)))]` -/
def P8115836541036349854.Spec : Prop :=
  ∀ n, (P8115836541036349854.a n : ℤ) = A254655 (n + 1)

end A254655

/-! ## A254655.P12284713003547943510

`runs[A254379(n)]`
-/

namespace A254655.P12284713003547943510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A254655.P12284713003547943510

namespace A254655

/-- `runs[A254379(n)]` -/
def P12284713003547943510.Spec : Prop :=
  ∀ n, (P12284713003547943510.a n : ℤ) = A254655 (n + 1)

end A254655

/-! ## A254655.P1113773905666342171

`runs[A254651(n)]`
-/

namespace A254655.P1113773905666342171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A254655.P1113773905666342171

namespace A254655

/-- `runs[A254651(n)]` -/
def P1113773905666342171.Spec : Prop :=
  ∀ n, (P1113773905666342171.a n : ℤ) = A254655 (n + 1)

end A254655

/-! ## A254655.P11513911060727963245

`runs[A316828(n)%2]`
-/

namespace A254655.P11513911060727963245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316828 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A254655.P11513911060727963245

namespace A254655

/-- `runs[A316828(n)%2]` -/
def P11513911060727963245.Spec : Prop :=
  ∀ n, (P11513911060727963245.a n : ℤ) = A254655 (n + 1)

end A254655

/-! ## A254655.P6530686832408766991

`A040008(n)-A254378(n+1)`
-/

namespace A254655.P6530686832408766991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 n - A254378 (n + 1)

end

end A254655.P6530686832408766991

namespace A254655

/-- `A040008(n)-A254378(n+1)` -/
def P6530686832408766991.Spec : Prop :=
  ∀ n, P6530686832408766991.a n = A254655 (n + 1)

end A254655

/-! ## A254655.P8225792279050823130

`runs[A228495(2*n+1)+A228495(n)]`
-/

namespace A254655.P8225792279050823130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228495 (2 * n + 1) + A228495 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A254655.P8225792279050823130

namespace A254655

/-- `runs[A228495(2*n+1)+A228495(n)]` -/
def P8225792279050823130.Spec : Prop :=
  ∀ n, (P8225792279050823130.a n : ℤ) = A254655 (n + 1)

end A254655

/-! ## A254655.P14929103022734643274

`runs[A254377(2*n+1)+A254377(n)]`
-/

namespace A254655.P14929103022734643274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (2 * n + 1) + A254377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A254655.P14929103022734643274

namespace A254655

/-- `runs[A254377(2*n+1)+A254377(n)]` -/
def P14929103022734643274.Spec : Prop :=
  ∀ n, (P14929103022734643274.a n : ℤ) = A254655 (n + 1)

end A254655

/-! ## A254655.P9738975439887472533

`A254378(A254378(n+1)+and(n+1, a(n-1))+1)` with `a(0)=2`
-/

namespace A254655.P9738975439887472533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A254378 (A254378 (n + 1) + Int.land (n + 1 : ℤ) (a (n - 1)) + 1).toNat

end

end A254655.P9738975439887472533

namespace A254655

/-- `A254378(A254378(n+1)+and(n+1, a(n-1))+1)` -/
def P9738975439887472533.Spec : Prop :=
  ∀ n, P9738975439887472533.a n = A254655 (n + 1)

end A254655

/-! ## A254655.P11379318879237215690

`runs[A268726(n)!]`
-/

namespace A254655.P11379318879237215690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A268726 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A254655.P11379318879237215690

namespace A254655

/-- `runs[A268726(n)!]` -/
def P11379318879237215690.Spec : Prop :=
  ∀ n, (P11379318879237215690.a n : ℤ) = A254655 (n + 1)

end A254655

/-! ## A254655.P16126583742751402593

`Δ[eq[A001285(n), A040001(n)]]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A254655

/-- `Δ[eq[A001285(n), A040001(n)]]` -/
def P16126583742751402593.Spec : Prop :=
  ∀ n, P16126583742751402593.a n = A254655 (n + 1)

theorem P16126583742751402593.correct : P16126583742751402593.Spec := by
  intro n
  simp only [A254655, Nat.add_sub_cancel]

end A254655

/-! ## A254655.P9010436038682285492

`runs[A076826(n)!]`
-/

namespace A254655.P9010436038682285492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A076826 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A254655.P9010436038682285492

namespace A254655

/-- `runs[A076826(n)!]` -/
def P9010436038682285492.Spec : Prop :=
  ∀ n, (P9010436038682285492.a n : ℤ) = A254655 (n + 1)

end A254655

/-! ## A254655.P691722287895144859

`runs[A101673(n)!]`
-/

namespace A254655.P691722287895144859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A101673 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A254655.P691722287895144859

namespace A254655

/-- `runs[A101673(n)!]` -/
def P691722287895144859.Spec : Prop :=
  ∀ n, (P691722287895144859.a n : ℤ) = A254655 (n + 1)

end A254655

/-! ## A254655.P11508178446528650729

`runs[∑[A095190(n)]]`
-/

namespace A254655.P11508178446528650729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095190 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A254655.P11508178446528650729

namespace A254655

/-- `runs[∑[A095190(n)]]` -/
def P11508178446528650729.Spec : Prop :=
  ∀ n, (P11508178446528650729.a n : ℤ) = A254655 (n + 1)

end A254655

/-! ## A254655.P4727743153974112557

`runs[char[A128309(n+1)]]`
-/

namespace A254655.P4727743153974112557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128309 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A254655.P4727743153974112557

namespace A254655

/-- `runs[char[A128309(n+1)]]` -/
def P4727743153974112557.Spec : Prop :=
  ∀ n, (P4727743153974112557.a n : ℤ) = A254655 (n + 1)

end A254655

/-! ## A254655.P5535718888672172432

`runs[char[A254614(n+1)]]`
-/

namespace A254655.P5535718888672172432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254614 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A254655.P5535718888672172432

namespace A254655

/-- `runs[char[A254614(n+1)]]` -/
def P5535718888672172432.Spec : Prop :=
  ∀ n, (P5535718888672172432.a n : ℤ) = A254655 (n + 1)

end A254655

/-! ## A254655.P8769249981097795645

`runs[∑[A163539(2*n+1)]]`
-/

namespace A254655.P8769249981097795645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163539 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A254655.P8769249981097795645

namespace A254655

/-- `runs[∑[A163539(2*n+1)]]` -/
def P8769249981097795645.Spec : Prop :=
  ∀ n, (P8769249981097795645.a n : ℤ) = A254655 (n + 1)

end A254655

/-! ## A254655.P10059493429606101705

`runs[char[A268669(2*(n+1))]]`
-/

namespace A254655.P10059493429606101705
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A254655.P10059493429606101705

namespace A254655

/-- `runs[char[A268669(2*(n+1))]]` -/
def P10059493429606101705.Spec : Prop :=
  ∀ n, (P10059493429606101705.a n : ℤ) = A254655 (n + 1)

end A254655

/-! ## A254655.P12848003824953826158

`runs[char[A065621(2*(n+1))]]`
-/

namespace A254655.P12848003824953826158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065621 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A254655.P12848003824953826158

namespace A254655

/-- `runs[char[A065621(2*(n+1))]]` -/
def P12848003824953826158.Spec : Prop :=
  ∀ n, (P12848003824953826158.a n : ℤ) = A254655 (n + 1)

end A254655

/-! ## A254655.P7653621104258654187

`runs[char[A245471(2*n+1)]]`
-/

namespace A254655.P7653621104258654187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245471 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A254655.P7653621104258654187

namespace A254655

/-- `runs[char[A245471(2*n+1)]]` -/
def P7653621104258654187.Spec : Prop :=
  ∀ n, (P7653621104258654187.a n : ℤ) = A254655 (n + 1)

end A254655

/-! ## A254655.P13165049117840633376

`runs[char[A395535(2*n+1)]]`
-/

namespace A254655.P13165049117840633376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395535 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A254655.P13165049117840633376

namespace A254655

/-- `runs[char[A395535(2*n+1)]]` -/
def P13165049117840633376.Spec : Prop :=
  ∀ n, (P13165049117840633376.a n : ℤ) = A254655 (n + 1)

end A254655

/-!
# A254656: Fixed points of the permutation A254649.

The programs for A254656, there is no canonical definition to state claims against.
-/

/-! ## A254656.P2377234429153290995

`record[gcd(n+1, A254649(n+1))]`
-/

namespace A254656.P2377234429153290995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A254649 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254656.P2377234429153290995

/-! ## A254656.P1238637250043895754

`eq[n, A254649(A028310(n))]`
-/

namespace A254656.P1238637250043895754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254649 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254656.P1238637250043895754

/-! ## A254656.P12663994503812035414

`record[gcd(A000027(n+1), A254650(n+1))]`
-/

namespace A254656.P12663994503812035414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A254650 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254656.P12663994503812035414

/-! ## A254656.P16632311483986027050

`A254649(eq[n+1, A254649(n+1)]+1)`
-/

namespace A254656.P16632311483986027050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254649 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A254656.P16632311483986027050

/-! ## A254656.P2500474746070921812

`eq[n, A254650(A123108(2*n))]`
-/

namespace A254656.P2500474746070921812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254650 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A254656.P2500474746070921812

/-!
# A254657: Numbers of words on alphabet {0,1,...,8} with no subwords ii, where i is from {0,1,2}.

The programs for A254657, the canonical program `A254657.P6994047805794382344` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254657 has offset 0).

The definition of A254657 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254657.P1143350582038027734

`ogf((1+x)/(1-8x-6x^2))`
-/

namespace A254657.P1143350582038027734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -8, -6] n

end

end A254657.P1143350582038027734

namespace A254657

/-- `ogf((1+x)/(1-8x-6x^2))` -/
def P1143350582038027734.Spec : Prop :=
  ∀ n, P1143350582038027734.a n = A254657 n

end A254657

/-! ## A254657.P6994047805794382344

`8*a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254657

/-- `8*a(n-1)+6*a(n-2)` -/
def P6994047805794382344.Spec : Prop :=
  ∀ n, (P6994047805794382344.a n : ℤ) = A254657 n

theorem P6994047805794382344.correct : P6994047805794382344.Spec := by
  intro n
  simp only [A254657]

end A254657

/-! ## A254657.P14865437578387380581

`A190560(1+n)+A190560(n)`
-/

namespace A254657.P14865437578387380581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190560 (1 + n) + A190560 n

end

end A254657.P14865437578387380581

namespace A254657

/-- `A190560(1+n)+A190560(n)` -/
def P14865437578387380581.Spec : Prop :=
  ∀ n, P14865437578387380581.a n = A254657 n

end A254657

/-! ## A254657.P4593055331463726044

`A208316(n+2)%A208316(n+1)`
-/

namespace A254657.P4593055331463726044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208316 (n + 2)) (A208316 (n + 1))

end

end A254657.P4593055331463726044

namespace A254657

/-- `A208316(n+2)%A208316(n+1)` -/
def P4593055331463726044.Spec : Prop :=
  ∀ n, P4593055331463726044.a n = A254657 n

end A254657

/-!
# A254658: Numbers of words on alphabet {0,1,...,7} with no subwords ii, where i is from {0,1,2,3}.

The programs for A254658, the canonical program `A254658.P13913947336794717153` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254658 has offset 0).

The definition of A254658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254658.P17574909073864487369

`ogf((1+x)/(1-7x-4x^2))`
-/

namespace A254658.P17574909073864487369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -7, -4] n

end

end A254658.P17574909073864487369

namespace A254658

/-- `ogf((1+x)/(1-7x-4x^2))` -/
def P17574909073864487369.Spec : Prop :=
  ∀ n, P17574909073864487369.a n = A254658 n

end A254658

/-! ## A254658.P13913947336794717153

`7*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254658

/-- `7*a(n-1)+4*a(n-2)` -/
def P13913947336794717153.Spec : Prop :=
  ∀ n, (P13913947336794717153.a n : ℤ) = A254658 n

theorem P13913947336794717153.correct : P13913947336794717153.Spec := by
  intro n
  simp only [A254658]

end A254658

/-! ## A254658.P3969999026651591365

`A015561(1+n)+A015561(n)`
-/

namespace A254658.P3969999026651591365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015561 (1 + n) + A015561 n

end

end A254658.P3969999026651591365

namespace A254658

/-- `A015561(1+n)+A015561(n)` -/
def P3969999026651591365.Spec : Prop :=
  ∀ n, P3969999026651591365.a n = A254658 n

end A254658

/-! ## A254658.P4274843430833328923

`A301779(n+1)/4`
-/

namespace A254658.P4274843430833328923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301779 (n + 1) : ℚ) / 4

end

end A254658.P4274843430833328923

namespace A254658

/-- `A301779(n+1)/4` -/
def P4274843430833328923.Spec : Prop :=
  ∀ n, P4274843430833328923.a n = (A254658 n : ℚ)

end A254658

/-! ## A254658.P12617632177780385963

`Δ[Δ[A015561(n)/5]]`
-/

namespace A254658.P12617632177780385963
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015561 n : ℚ) / 5

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A254658.P12617632177780385963

namespace A254658

/-- `Δ[Δ[A015561(n)/5]]` -/
def P12617632177780385963.Spec : Prop :=
  ∀ n, P12617632177780385963.a n = (A254658 n : ℚ)

end A254658

/-!
# A254659: Numbers of words on alphabet {0,1,...,8} with no subwords ii, where i is from {0,1,2,3}.

The programs for A254659, the canonical program `A254659.P13692229134679891932` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254659 has offset 0).

The definition of A254659 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254659.P14271575359133279419

`ogf((1+x)/(1-8x-5x^2))`
-/

namespace A254659.P14271575359133279419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -8, -5] n

end

end A254659.P14271575359133279419

namespace A254659

/-- `ogf((1+x)/(1-8x-5x^2))` -/
def P14271575359133279419.Spec : Prop :=
  ∀ n, P14271575359133279419.a n = A254659 n

end A254659

/-! ## A254659.P13692229134679891932

`8*a(n-1)+5*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254659

/-- `8*a(n-1)+5*a(n-2)` -/
def P13692229134679891932.Spec : Prop :=
  ∀ n, (P13692229134679891932.a n : ℤ) = A254659 n

theorem P13692229134679891932.correct : P13692229134679891932.Spec := by
  intro n
  simp only [A254659]

end A254659

/-! ## A254659.P7609290494756775562

`A015575(1+n)+A015575(n)`
-/

namespace A254659.P7609290494756775562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015575 (1 + n) + A015575 n

end

end A254659.P7609290494756775562

namespace A254659

/-- `A015575(1+n)+A015575(n)` -/
def P7609290494756775562.Spec : Prop :=
  ∀ n, P7609290494756775562.a n = A254659 n

end A254659

/-! ## A254659.P15191085527690719478

`Δ[Δ[A015575(n)/6]]`
-/

namespace A254659.P15191085527690719478
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015575 n : ℚ) / 6

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A254659.P15191085527690719478

namespace A254659

/-- `Δ[Δ[A015575(n)/6]]` -/
def P15191085527690719478.Spec : Prop :=
  ∀ n, P15191085527690719478.a n = (A254659 n : ℚ)

end A254659

/-!
# A254660: Numbers of words on alphabet {0,1,...,6} with no subwords ii, where i is from {0,1,...,4}.

The programs for A254660, the canonical program `A254660.P11469255691336734414` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254660 has offset 0).

The definition of A254660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254660.P13838258872710863556

`ogf((1+x)/(1-6x-2x^2))`
-/

namespace A254660.P13838258872710863556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -6, -2] n

end

end A254660.P13838258872710863556

namespace A254660

/-- `ogf((1+x)/(1-6x-2x^2))` -/
def P13838258872710863556.Spec : Prop :=
  ∀ n, P13838258872710863556.a n = A254660 n

end A254660

/-! ## A254660.P11469255691336734414

`6*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254660

/-- `6*a(n-1)+2*a(n-2)` -/
def P11469255691336734414.Spec : Prop :=
  ∀ n, (P11469255691336734414.a n : ℤ) = A254660 n

theorem P11469255691336734414.correct : P11469255691336734414.Spec := by
  intro n
  simp only [A254660]

end A254660

/-! ## A254660.P13421817768480458783

`2*(3*a(n-1)+a(n-2))` with `a(0)=1, a(1)=7`
-/

namespace A254660.P13421817768480458783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  2 * (3 * a (n - 1) + a (n - 2))

end

end A254660.P13421817768480458783

namespace A254660

/-- `2*(3*a(n-1)+a(n-2))` -/
def P13421817768480458783.Spec : Prop :=
  ∀ n, (P13421817768480458783.a n : ℤ) = A254660 n

theorem P13421817768480458783.correct : P13421817768480458783.Spec := by
  intro n
  simp only [A254660, Nat.add_sub_cancel, A254660.P13421817768480458783.a, A254660.P11469255691336734414.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A254660

/-! ## A254660.P6910655137504644007

`A180029(n)-A135030(n)`
-/

namespace A254660.P6910655137504644007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180029 n - A135030 n

end

end A254660.P6910655137504644007

namespace A254660

/-- `A180029(n)-A135030(n)` -/
def P6910655137504644007.Spec : Prop :=
  ∀ n, P6910655137504644007.a n = A254660 n

end A254660

/-! ## A254660.P13250185512609793994

`A135030(1+n)+A135030(n)`
-/

namespace A254660.P13250185512609793994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135030 (1 + n) + A135030 n

end

end A254660.P13250185512609793994

namespace A254660

/-- `A135030(1+n)+A135030(n)` -/
def P13250185512609793994.Spec : Prop :=
  ∀ n, P13250185512609793994.a n = A254660 n

end A254660

/-! ## A254660.P9596832900893527331

`abs(Δ[A033999(n)*A135030(n)])`
-/

namespace A254660.P9596832900893527331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A135030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A254660.P9596832900893527331

namespace A254660

/-- `abs(Δ[A033999(n)*A135030(n)])` -/
def P9596832900893527331.Spec : Prop :=
  ∀ n, P9596832900893527331.a n = A254660 n

end A254660

/-! ## A254660.P14797474634202888628

`A180029(n)-sqrt(A099276(n)*A131577(n))`
-/

namespace A254660.P14797474634202888628
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A180029 n : ℝ) - Real.sqrt (A099276 n * A131577 n : ℝ)

end

end A254660.P14797474634202888628

namespace A254660

/-- `A180029(n)-sqrt(A099276(n)*A131577(n))` -/
def P14797474634202888628.Spec : Prop :=
  ∀ n, P14797474634202888628.a n = (A254660 n : ℝ)

end A254660

/-!
# A254661: Number of ways to write n as the sum of a triangular number, an even square and a second pentagonal number.

The programs for A254661, there is no canonical definition to state claims against.
-/

/-! ## A254661.P428206904730235320

`A344339(∑[A005812(A173149(n+1))])`
-/

namespace A254661.P428206904730235320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (A173149 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344339 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A254661.P428206904730235320

/-! ## A254661.P1477862841136329563

`A001221(A023856(n+1)-A262964(2*n+3))`
-/

namespace A254661.P1477862841136329563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A023856 (n + 1) - A262964 (2 * n + 3)).toNat

end

end A254661.P1477862841136329563

/-! ## A254661.P10272685696572025155

`A066451(A253394(n+1))`
-/

namespace A254661.P10272685696572025155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066451 (A253394 (n + 1)).toNat

end

end A254661.P10272685696572025155

/-! ## A254661.P14660074753284887294

`A238529(A337499(n)+A081165(n))`
-/

namespace A254661.P14660074753284887294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238529 (A337499 n + A081165 n).toNat

end

end A254661.P14660074753284887294

/-! ## A254661.P18347979056448882860

`gcd(A229821(A084712(n+1)), A352104(n))`
-/

namespace A254661.P18347979056448882860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A229821 (A084712 (n + 1)).toNat) (A352104 n)

end

end A254661.P18347979056448882860

/-!
# A254662: Numbers of words on alphabet {0,1,...,7} with no subwords ii, where i is from {0,1,...,4}.

The programs for A254662, the canonical program `A254662.P16622737329728634909` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254662 has offset 0).

The definition of A254662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254662.P14102543496332221345

`ogf((1+x)/(1-7x-3x^2))`
-/

namespace A254662.P14102543496332221345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -7, -3] n

end

end A254662.P14102543496332221345

namespace A254662

/-- `ogf((1+x)/(1-7x-3x^2))` -/
def P14102543496332221345.Spec : Prop :=
  ∀ n, P14102543496332221345.a n = A254662 n

end A254662

/-! ## A254662.P16622737329728634909

`7*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254662

/-- `7*a(n-1)+3*a(n-2)` -/
def P16622737329728634909.Spec : Prop :=
  ∀ n, (P16622737329728634909.a n : ℤ) = A254662 n

theorem P16622737329728634909.correct : P16622737329728634909.Spec := by
  intro n
  simp only [A254662]

end A254662

/-! ## A254662.P6087022581395832558

`A015559(1+n)+A015559(n)`
-/

namespace A254662.P6087022581395832558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015559 (1 + n) + A015559 n

end

end A254662.P6087022581395832558

namespace A254662

/-- `A015559(1+n)+A015559(n)` -/
def P6087022581395832558.Spec : Prop :=
  ∀ n, P6087022581395832558.a n = A254662 n

end A254662

/-!
# A254663: Numbers of n-length words on alphabet {0,1,...,7} with no subwords ii, where i is from {0,1,...,5}.

The programs for A254663, the canonical program `A254663.P3580053354947675941` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254663 has offset 0).

The definition of A254663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254663.P6701862205106106853

`ogf((1+x)/(1-7x-2x^2))`
-/

namespace A254663.P6701862205106106853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -7, -2] n

end

end A254663.P6701862205106106853

namespace A254663

/-- `ogf((1+x)/(1-7x-2x^2))` -/
def P6701862205106106853.Spec : Prop :=
  ∀ n, P6701862205106106853.a n = A254663 n

end A254663

/-! ## A254663.P3580053354947675941

`7*a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254663

/-- `7*a(n-1)+2*a(n-2)` -/
def P3580053354947675941.Spec : Prop :=
  ∀ n, (P3580053354947675941.a n : ℤ) = A254663 n

theorem P3580053354947675941.correct : P3580053354947675941.Spec := by
  intro n
  simp only [A254663]

end A254663

/-! ## A254663.P4086964709082810341

`A015555(n)+∑[A227665(n)]`
-/

namespace A254663.P4086964709082810341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015555 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254663.P4086964709082810341

namespace A254663

/-- `A015555(n)+∑[A227665(n)]` -/
def P4086964709082810341.Spec : Prop :=
  ∀ n, P4086964709082810341.a n = A254663 n

end A254663

/-! ## A254663.P5819819031085826749

`A015555(1+n)+A015555(n)`
-/

namespace A254663.P5819819031085826749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015555 (1 + n) + A015555 n

end

end A254663.P5819819031085826749

namespace A254663

/-- `A015555(1+n)+A015555(n)` -/
def P5819819031085826749.Spec : Prop :=
  ∀ n, P5819819031085826749.a n = A254663 n

end A254663

/-! ## A254663.P16362335060038009001

`A225879(A016777(n))+A015555(n)`
-/

namespace A254663.P16362335060038009001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225879 (A016777 n).toNat + A015555 n

end

end A254663.P16362335060038009001

namespace A254663

/-- `A225879(A016777(n))+A015555(n)` -/
def P16362335060038009001.Spec : Prop :=
  ∀ n, P16362335060038009001.a n = A254663 n

end A254663

/-!
# A254664: Numbers of words on alphabet {0,1,...,8} with no subwords ii, where i is from {0,1,...,5}.

The programs for A254664, the canonical program `A254664.P14635175514262153685` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254664 has offset 0).

The definition of A254664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254664.P16657855389338900408

`ogf((1+x)/(1-8x-3x^2))`
-/

namespace A254664.P16657855389338900408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -8, -3] n

end

end A254664.P16657855389338900408

namespace A254664

/-- `ogf((1+x)/(1-8x-3x^2))` -/
def P16657855389338900408.Spec : Prop :=
  ∀ n, P16657855389338900408.a n = A254664 n

end A254664

/-! ## A254664.P14635175514262153685

`8*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254664

/-- `8*a(n-1)+3*a(n-2)` -/
def P14635175514262153685.Spec : Prop :=
  ∀ n, (P14635175514262153685.a n : ℤ) = A254664 n

theorem P14635175514262153685.correct : P14635175514262153685.Spec := by
  intro n
  simp only [A254664]

end A254664

/-! ## A254664.P5684773395352236678

`16*a(n-1)-a(n-2)-4*(2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=9`
-/

namespace A254664.P5684773395352236678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  16 * a (n - 1) - a (n - 2) - 4 * (2 * a (n - 1) - a (n - 2))

end

end A254664.P5684773395352236678

namespace A254664

/-- `16*a(n-1)-a(n-2)-4*(2*a(n-1)-a(n-2))` -/
def P5684773395352236678.Spec : Prop :=
  ∀ n, P5684773395352236678.a n = A254664 n

end A254664

/-! ## A254664.P8786556504770995013

`A015574(n+1)+A015574(n)`
-/

namespace A254664.P8786556504770995013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015574 (n + 1) + A015574 n

end

end A254664.P8786556504770995013

namespace A254664

/-- `A015574(n+1)+A015574(n)` -/
def P8786556504770995013.Spec : Prop :=
  ∀ n, P8786556504770995013.a n = A254664 n

end A254664

/-!
# A254665: Primes prime(n) such that prime(n) + 7*n is also prime.

The programs for A254665, there is no canonical definition to state claims against.
-/

/-! ## A254665.P1079823932812183453

`p?[A093510(3*n+2)+n]`
-/

namespace A254665.P1079823932812183453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093510 (3 * n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A254665.P1079823932812183453

/-!
# A254667: The nonnegative numbers with 2 instead of 1.

The programs for A254667, the canonical program `A254667.P2919535167425035099` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254667 has offset 0).

The definition of A254667 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254667.P2919535167425035099

`ogf((2x-2x^2+x^3)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254667

/-- `ogf((2x-2x^2+x^3)/(1-2x+x^2))` -/
def P2919535167425035099.Spec : Prop :=
  ∀ n, P2919535167425035099.a n = A254667 n

theorem P2919535167425035099.correct : P2919535167425035099.Spec := by
  intro n
  simp only [A254667]

end A254667

/-!
# A254669: Consider A098550(x_n)=2*prime(n). Let a(n) be number of even numbers<=2*prime(n) in A098550 in positions <=x_n.

The programs for A254669, there is no canonical definition to state claims against.
-/

/-! ## A254669.P14726498864486608994

`Δ[A007504(n)]-A255615(n+1)`
-/

namespace A254669.P14726498864486608994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A255615 (n + 1)

end

end A254669.P14726498864486608994

/-! ## A254669.P16756681601643706670

`p?[A014681(n)]-A255615(n+1)`
-/

namespace A254669.P16756681601643706670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A255615 (n + 1)

end

end A254669.P16756681601643706670

/-! ## A254669.P3572125058209620905

`A000040(n+1)-A255615(n+1)`
-/

namespace A254669.P3572125058209620905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A255615 (n + 1)

end

end A254669.P3572125058209620905

/-! ## A254669.P5783079399340569058

`abs(Δ[A022837(n)])-A255615(n+1)`
-/

namespace A254669.P5783079399340569058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A255615 (n + 1)

end

end A254669.P5783079399340569058

/-! ## A254669.P1696121154419827542

`abs(Δ[A117128(n)])-A255615(n+1)`
-/

namespace A254669.P1696121154419827542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A255615 (n + 1)

end

end A254669.P1696121154419827542

/-! ## A254669.P15552976649133814490

`sqrt(A001248(n+1))-A255615(n+1)`
-/

namespace A254669.P15552976649133814490
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) - (A255615 (n + 1) : ℝ)

end

end A254669.P15552976649133814490

/-! ## A254669.P4729647532729391578

`p?[A045965(n+1)]-A255615(n+1)`
-/

namespace A254669.P4729647532729391578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A255615 (n + 1)

end

end A254669.P4729647532729391578

/-! ## A254669.P15524446645462204097

`p?[A121216(n+1)]-A255615(n+1)`
-/

namespace A254669.P15524446645462204097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A255615 (n + 1)

end

end A254669.P15524446645462204097

/-! ## A254669.P5486115714995323993

`p?[A249811(n+1)]-A255615(n+1)`
-/

namespace A254669.P5486115714995323993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A255615 (n + 1)

end

end A254669.P5486115714995323993

/-! ## A254669.P3824608293521622691

`p?[A064413(n+1)]-A255615(n+1)`
-/

namespace A254669.P3824608293521622691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A255615 (n + 1)

end

end A254669.P3824608293521622691

/-! ## A254669.P7746536598407578651

`p?[A098550(n+1)]-A255615(n+1)`
-/

namespace A254669.P7746536598407578651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A255615 (n + 1)

end

end A254669.P7746536598407578651

/-! ## A254669.P13380573116082321180

`p?[A247942(n+1)]-A255615(n+1)`
-/

namespace A254669.P13380573116082321180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A255615 (n + 1)

end

end A254669.P13380573116082321180

/-! ## A254669.P6733008679334354753

`p?[A250246(n+1)]-A255615(n+1)`
-/

namespace A254669.P6733008679334354753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A255615 (n + 1)

end

end A254669.P6733008679334354753

/-! ## A254669.P8604922966552118279

`p?[A247225(n+1)]-A255615(n+1)`
-/

namespace A254669.P8604922966552118279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A255615 (n + 1)

end

end A254669.P8604922966552118279

/-!
# A254670: Terms of A254669 for which A254669(n)=prime(n).

The programs for A254670, there is no canonical definition to state claims against.
-/

/-! ## A254670.P12793062797145030566

`record[A000040(1+n)-A255617(n+1)]`
-/

namespace A254670.P12793062797145030566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + n) - A255617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254670.P12793062797145030566

/-! ## A254670.P8771286936029330095

`record[A254669(n+1)-A255617(n+1)]`
-/

namespace A254670.P8771286936029330095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254669 (n + 1) - A255617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254670.P8771286936029330095

/-! ## A254670.P7089825001693112727

`record[gcd(A000040(1+n), A254669(n+1))]`
-/

namespace A254670.P7089825001693112727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (1 + n)) (A254669 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254670.P7089825001693112727

/-! ## A254670.P9693775996358434523

`p?[A255615(n+1)!*A254669(n+1)]`
-/

namespace A254670.P9693775996358434523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A255615 (n + 1)).toNat : ℤ) * A254669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A254670.P9693775996358434523

/-! ## A254670.P12401371892506796466

`record[gcd(A040976(n+1)+2, A255615(n+1))]`
-/

namespace A254670.P12401371892506796466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040976 (n + 1) + 2) (A255615 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254670.P12401371892506796466

/-! ## A254670.P837661346407610224

`A000040(eq[A000040(n+1), A254669(n+1)]+1)`
-/

namespace A254670.P837661346407610224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A254670.P837661346407610224

/-! ## A254670.P10379339591932000775

`record[A020639(A251547(n+2))]`
-/

namespace A254670.P10379339591932000775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A251547 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254670.P10379339591932000775

/-!
# A254671: Numbers that can be represented as x*y + x + y, where x >= y > 1.

The programs for A254671, the canonical program `A254671.P17194479350893143433` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254671 has offset 1).

The definition of A254671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254671.P14450730471457191660

`A009188(1+n)-1`
-/

namespace A254671.P14450730471457191660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (1 + n) - 1

end

end A254671.P14450730471457191660

namespace A254671

/-- `A009188(1+n)-1` -/
def P14450730471457191660.Spec : Prop :=
  ∀ n, P14450730471457191660.a n = A254671 (n + 1)

end A254671

/-! ## A254671.P15718820580526281027

`A264828(3+n)-1`
-/

namespace A254671.P15718820580526281027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (3 + n) - 1

end

end A254671.P15718820580526281027

namespace A254671

/-- `A264828(3+n)-1` -/
def P15718820580526281027.Spec : Prop :=
  ∀ n, P15718820580526281027.a n = A254671 (n + 1)

end A254671

/-! ## A254671.P14264729166832571585

`lt[1, A318440(1+n)]`
-/

namespace A254671.P14264729166832571585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A254671.P14264729166832571585

namespace A254671

/-- `lt[1, A318440(1+n)]` -/
def P14264729166832571585.Spec : Prop :=
  ∀ n, (P14264729166832571585.a n : ℤ) = A254671 (n + 1)

end A254671

/-! ## A254671.P12004610268339978498

`lt[1, A378444(n+1)]`
-/

namespace A254671.P12004610268339978498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A254671.P12004610268339978498

namespace A254671

/-- `lt[1, A378444(n+1)]` -/
def P12004610268339978498.Spec : Prop :=
  ∀ n, (P12004610268339978498.a n : ℤ) = A254671 (n + 1)

end A254671

/-! ## A254671.P790092431456633243

`lt[1, A378544(n+1)]`
-/

namespace A254671.P790092431456633243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A254671.P790092431456633243

namespace A254671

/-- `lt[1, A378544(n+1)]` -/
def P790092431456633243.Spec : Prop :=
  ∀ n, (P790092431456633243.a n : ℤ) = A254671 (n + 1)

end A254671

/-! ## A254671.P7470872195407867980

`lt[2, A299150(n+1)]`
-/

namespace A254671.P7470872195407867980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A254671.P7470872195407867980

namespace A254671

/-- `lt[2, A299150(n+1)]` -/
def P7470872195407867980.Spec : Prop :=
  ∀ n, (P7470872195407867980.a n : ℤ) = A254671 (n + 1)

end A254671

/-! ## A254671.P14309313420155577432

`lt[2, A345933(n+1)]`
-/

namespace A254671.P14309313420155577432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A254671.P14309313420155577432

namespace A254671

/-- `lt[2, A345933(n+1)]` -/
def P14309313420155577432.Spec : Prop :=
  ∀ n, (P14309313420155577432.a n : ℤ) = A254671 (n + 1)

end A254671

/-! ## A254671.P17194479350893143433

`lt[1, A296955(n+1)-2]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A254671

/-- `lt[1, A296955(n+1)-2]` -/
def P17194479350893143433.Spec : Prop :=
  ∀ n, (P17194479350893143433.a n : ℤ) = A254671 (n + 1)

theorem P17194479350893143433.correct : P17194479350893143433.Spec := by
  intro n
  simp only [A254671, Nat.add_sub_cancel]

end A254671

/-! ## A254671.P4127482070062229966

`∪[A061743(n+1), A001534(n)]`
-/

namespace A254671.P4127482070062229966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001534 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A254671.P4127482070062229966

namespace A254671

/-- `∪[A061743(n+1), A001534(n)]` -/
def P4127482070062229966.Spec : Prop :=
  ∀ n, (P4127482070062229966.a n : ℤ) = A254671 (n + 1)

end A254671

/-! ## A254671.P1851158558655746670

`∪[A061743(n+1), A001547(n)]`
-/

namespace A254671.P1851158558655746670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A254671.P1851158558655746670

namespace A254671

/-- `∪[A061743(n+1), A001547(n)]` -/
def P1851158558655746670.Spec : Prop :=
  ∀ n, (P1851158558655746670.a n : ℤ) = A254671 (n + 1)

end A254671

/-! ## A254671.P8429393806717408145

`∪[A061743(n+1), A016791(n)]`
-/

namespace A254671.P8429393806717408145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016791 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A254671.P8429393806717408145

namespace A254671

/-- `∪[A061743(n+1), A016791(n)]` -/
def P8429393806717408145.Spec : Prop :=
  ∀ n, (P8429393806717408145.a n : ℤ) = A254671 (n + 1)

end A254671

/-! ## A254671.P17306750213176615570

`∪[A061743(n+1), A016827(n)]`
-/

namespace A254671.P17306750213176615570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016827 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A254671.P17306750213176615570

namespace A254671

/-- `∪[A061743(n+1), A016827(n)]` -/
def P17306750213176615570.Spec : Prop :=
  ∀ n, (P17306750213176615570.a n : ℤ) = A254671 (n + 1)

end A254671

/-! ## A254671.P14652811781845495940

`∪[A061743(n+1), A016875(n)]`
-/

namespace A254671.P14652811781845495940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016875 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A254671.P14652811781845495940

namespace A254671

/-- `∪[A061743(n+1), A016875(n)]` -/
def P14652811781845495940.Spec : Prop :=
  ∀ n, (P14652811781845495940.a n : ℤ) = A254671 (n + 1)

end A254671

/-! ## A254671.P7209929583049084053

`∪[A061743(n+1), A016935(n)]`
-/

namespace A254671.P7209929583049084053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016935 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A254671.P7209929583049084053

namespace A254671

/-- `∪[A061743(n+1), A016935(n)]` -/
def P7209929583049084053.Spec : Prop :=
  ∀ n, (P7209929583049084053.a n : ℤ) = A254671 (n + 1)

end A254671

/-! ## A254671.P14879299960886380325

`∪[A061743(n+1), A017007(n)]`
-/

namespace A254671.P14879299960886380325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017007 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A254671.P14879299960886380325

namespace A254671

/-- `∪[A061743(n+1), A017007(n)]` -/
def P14879299960886380325.Spec : Prop :=
  ∀ n, (P14879299960886380325.a n : ℤ) = A254671 (n + 1)

end A254671

/-! ## A254671.P13573647668005885609

`∪[A061743(n+1), A017091(n)]`
-/

namespace A254671.P13573647668005885609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017091 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A254671.P13573647668005885609

namespace A254671

/-- `∪[A061743(n+1), A017091(n)]` -/
def P13573647668005885609.Spec : Prop :=
  ∀ n, (P13573647668005885609.a n : ℤ) = A254671 (n + 1)

end A254671

/-! ## A254671.P17595139102999765417

`∪[A061743(n+1), A017187(n)]`
-/

namespace A254671.P17595139102999765417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017187 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A254671.P17595139102999765417

namespace A254671

/-- `∪[A061743(n+1), A017187(n)]` -/
def P17595139102999765417.Spec : Prop :=
  ∀ n, (P17595139102999765417.a n : ℤ) = A254671 (n + 1)

end A254671

/-! ## A254671.P12887368889273014058

`∪[A061743(n+1), A017257(n)]`
-/

namespace A254671.P12887368889273014058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A254671.P12887368889273014058

namespace A254671

/-- `∪[A061743(n+1), A017257(n)]` -/
def P12887368889273014058.Spec : Prop :=
  ∀ n, (P12887368889273014058.a n : ℤ) = A254671 (n + 1)

end A254671

/-! ## A254671.P16929397764249708695

`∪[A061743(n+1), A017295(n)]`
-/

namespace A254671.P16929397764249708695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017295 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A254671.P16929397764249708695

namespace A254671

/-- `∪[A061743(n+1), A017295(n)]` -/
def P16929397764249708695.Spec : Prop :=
  ∀ n, (P16929397764249708695.a n : ℤ) = A254671 (n + 1)

end A254671

/-! ## A254671.P3636499952829270022

`∪[A061743(n+1), A017415(n)]`
-/

namespace A254671.P3636499952829270022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017415 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A254671.P3636499952829270022

namespace A254671

/-- `∪[A061743(n+1), A017415(n)]` -/
def P3636499952829270022.Spec : Prop :=
  ∀ n, (P3636499952829270022.a n : ℤ) = A254671 (n + 1)

end A254671

/-!
# A254672: Primes prime(n) such that prime(n) + 6*n is also prime.

The programs for A254672, there is no canonical definition to state claims against.
-/

/-! ## A254672.P523825354026030719

`p?[lt[A230073(n+3), floor(n/2)]]`
-/

namespace A254672.P523825354026030719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230073 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A254672.P523825354026030719

/-! ## A254672.P13593083475712089143

`A000040(lt[A136220(2*n+3), A000537(n)])`
-/

namespace A254672.P13593083475712089143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136220 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A254672.P13593083475712089143

/-! ## A254672.P17683661706448055361

`A065091(lt[2, A229958(3*n+1)])`
-/

namespace A254672.P17683661706448055361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229958 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A254672.P17683661706448055361

/-! ## A254672.P4531090422819697849

`eq[A240239(n+1), A321452(n)]`
-/

namespace A254672.P4531090422819697849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254672.P4531090422819697849

/-!
# A254673: Primes prime(n) such that prime(n) + 4*n is also prime.

The programs for A254673, there is no canonical definition to state claims against.
-/

/-! ## A254673.P6479960477236523335

`A000040(A076299(n+1))`
-/

namespace A254673.P6479960477236523335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A076299 (n + 1)).toNat

end

end A254673.P6479960477236523335

/-! ## A254673.P6425091117951326210

`A008578(A076299(1+n)+1)`
-/

namespace A254673.P6425091117951326210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A076299 (1 + n) + 1).toNat

end

end A254673.P6425091117951326210

/-! ## A254673.P625962431594680237

`A182986(A076299(n+1)+1)`
-/

namespace A254673.P625962431594680237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A076299 (n + 1) + 1).toNat

end

end A254673.P625962431594680237

/-! ## A254673.P3899330006120829635

`A065091(A076299(n+1)-1)`
-/

namespace A254673.P3899330006120829635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A076299 (n + 1) - 1).toNat

end

end A254673.P3899330006120829635

/-! ## A254673.P5864932098183320684

`A073846(2*A076299(n+1))`
-/

namespace A254673.P5864932098183320684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A076299 (n + 1)).toNat

end

end A254673.P5864932098183320684

/-! ## A254673.P7237872787847521422

`A082500(2*A076299(n+1))`
-/

namespace A254673.P7237872787847521422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A076299 (n + 1)).toNat

end

end A254673.P7237872787847521422

/-! ## A254673.P3329171195105706171

`A219606(2*A076299(n+1))`
-/

namespace A254673.P3329171195105706171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219606 (2 * A076299 (n + 1)).toNat

end

end A254673.P3329171195105706171

/-! ## A254673.P2425630931440677836

`∑{d}[A076299(n+1), A007444(#)]`
-/

namespace A254673.P2425630931440677836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A254673.P2425630931440677836

/-! ## A254673.P15972721278886166243

`A207790(2*A076299(n+1))`
-/

namespace A254673.P15972721278886166243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A076299 (n + 1)).toNat

end

end A254673.P15972721278886166243

/-!
# A254674: Indices of heptagonal numbers (A000566) which are also centered triangular numbers (A005448).

The programs for A254674, the canonical program `A254674.P4118621163589827401` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254674 has offset 1).

The definition of A254674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254674.P4118621163589827401

`ogf((1+9x-38x^2+9x^3+x^4)/(1-x-62x^2+62x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254674

/-- `ogf((1+9x-38x^2+9x^3+x^4)/(1-x-62x^2+62x^3+x^4-x^5))` -/
def P4118621163589827401.Spec : Prop :=
  ∀ n, P4118621163589827401.a n = A254674 (n + 1)

theorem P4118621163589827401.correct : P4118621163589827401.Spec := by
  intro n
  simp only [A254674, Nat.add_sub_cancel]

end A254674

/-! ## A254674.P12644809012096564832

`∑[A001090(n)]+A199336(n+1)²`
-/

namespace A254674.P12644809012096564832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A199336 (n + 1) ^ 2

end

end A254674.P12644809012096564832

namespace A254674

/-- `∑[A001090(n)]+A199336(n+1)²` -/
def P12644809012096564832.Spec : Prop :=
  ∀ n, P12644809012096564832.a n = A254674 (n + 1)

end A254674

/-! ## A254674.P12799295464804093273

`∑[A010684(n)*A070997(n)]%A254675(n+1)+1`
-/

namespace A254674.P12799295464804093273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A070997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A254675 (n + 1)) + 1

end

end A254674.P12799295464804093273

namespace A254674

/-- `∑[A010684(n)*A070997(n)]%A254675(n+1)+1` -/
def P12799295464804093273.Spec : Prop :=
  ∀ n, P12799295464804093273.a n = A254674 (n + 1)

end A254674

/-! ## A254674.P14791521889478294487

`∑[A070997(n)*A176040(n+1)]%A254675(n+1)+1`
-/

namespace A254674.P14791521889478294487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070997 n * A176040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A254675 (n + 1)) + 1

end

end A254674.P14791521889478294487

namespace A254674

/-- `∑[A070997(n)*A176040(n+1)]%A254675(n+1)+1` -/
def P14791521889478294487.Spec : Prop :=
  ∀ n, P14791521889478294487.a n = A254674 (n + 1)

end A254674

/-!
# A254675: Indices of centered triangular numbers (A005448) which are also heptagonal numbers (A000566).

The programs for A254675, the canonical program `A254675.P412890949806576999` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254675 has offset 1).

The definition of A254675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254675.P412890949806576999

`ogf((1+12x-31x^2-12x^3)/(1-x-62x^2+62x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254675

/-- `ogf((1+12x-31x^2-12x^3)/(1-x-62x^2+62x^3+x^4-x^5))` -/
def P412890949806576999.Spec : Prop :=
  ∀ n, P412890949806576999.a n = A254675 (n + 1)

theorem P412890949806576999.correct : P412890949806576999.Spec := by
  intro n
  simp only [A254675, Nat.add_sub_cancel]

end A254675

/-! ## A254675.P9331423014123067934

`∑[∑[A199338(A053438(n))]]`
-/

namespace A254675.P9331423014123067934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199338 (A053438 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254675.P9331423014123067934

namespace A254675

/-- `∑[∑[A199338(A053438(n))]]` -/
def P9331423014123067934.Spec : Prop :=
  ∀ n, P9331423014123067934.a n = A254675 (n + 1)

end A254675

/-! ## A254675.P15256847148252224553

`∑[A001091(n)*A010684(n)]`
-/

namespace A254675.P15256847148252224553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001091 n * A010684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254675.P15256847148252224553

namespace A254675

/-- `∑[A001091(n)*A010684(n)]` -/
def P15256847148252224553.Spec : Prop :=
  ∀ n, P15256847148252224553.a n = A254675 (n + 1)

end A254675

/-! ## A254675.P1247505034999209017

`∑[Δ[A042948(n)]*A001091(n)]`
-/

namespace A254675.P1247505034999209017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A001091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254675.P1247505034999209017

namespace A254675

/-- `∑[Δ[A042948(n)]*A001091(n)]` -/
def P1247505034999209017.Spec : Prop :=
  ∀ n, P1247505034999209017.a n = A254675 (n + 1)

end A254675

/-! ## A254675.P6392509839577767113

`∑[A010684(n)*A080871(2*n)]`
-/

namespace A254675.P6392509839577767113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A080871 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254675.P6392509839577767113

namespace A254675

/-- `∑[A010684(n)*A080871(2*n)]` -/
def P6392509839577767113.Spec : Prop :=
  ∀ n, P6392509839577767113.a n = A254675 (n + 1)

end A254675

/-! ## A254675.P542475820732368563

`∑[A001091(n)*A010127(A002522(n))]`
-/

namespace A254675.P542475820732368563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001091 n * A010127 (A002522 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254675.P542475820732368563

namespace A254675

/-- `∑[A001091(n)*A010127(A002522(n))]` -/
def P542475820732368563.Spec : Prop :=
  ∀ n, P542475820732368563.a n = A254675 (n + 1)

end A254675

/-!
# A254676: Heptagonal numbers (A000566) which are also centered triangular numbers (A005448).

The programs for A254676, there is no canonical definition to state claims against.
-/

/-! ## A254676.P6362708180502852878

`A000566(A254674(n+1))`
-/

namespace A254676.P6362708180502852878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A254674 (n + 1)).toNat

end

end A254676.P6362708180502852878

/-!
# A254678: Primes p with the property that there are four consecutive integers less than p whose product is 1 mod p.

The programs for A254678, there is no canonical definition to state claims against.
-/

/-! ## A254678.P5227496695996675895

`A001132(lt[A306755(3*n), A061039(3*(n+1))])`
-/

namespace A254678.P5227496695996675895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306755 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061039 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A254678.P5227496695996675895

/-! ## A254678.P10026895446223033590

`∩[A001132(n+1), A004441(n+1)]`
-/

namespace A254678.P10026895446223033590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254678.P10026895446223033590

/-! ## A254678.P15040879080547958379

`∩[A049546(n+1), A091215(n+1)]`
-/

namespace A254678.P15040879080547958379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A254678.P15040879080547958379

/-! ## A254678.P1759529537164989822

`filter[A049546(n+2), A330887(#)]`
-/

namespace A254678.P1759529537164989822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049546 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A330887 (f1 j).toNat = 1) n)

end

end A254678.P1759529537164989822

/-!
# A254679: Irregular triangle read by rows: row n lists the divisors of n, ordered lexicographically in decimal representation.

The programs for A254679, there is no canonical definition to state claims against.
-/

/-! ## A254679.P15755559838520650800

`A027750(n+1)+A006983(A070914(n))`
-/

namespace A254679.P15755559838520650800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) + A006983 (A070914 n).toNat

end

end A254679.P15755559838520650800

/-! ## A254679.P483793686601421474

`A263730(n+2)+A045912(A154740(n))`
-/

namespace A254679.P483793686601421474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263730 (n + 2) + A045912 (A154740 n).toNat

end

end A254679.P483793686601421474

/-! ## A254679.P8602339244891361206

`A263730(n+2)+A180185(A185203(n))`
-/

namespace A254679.P8602339244891361206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263730 (n + 2) + A180185 (A185203 n).toNat

end

end A254679.P8602339244891361206

/-! ## A254679.P15978962911920928605

`A027750(∑[A268403(n+1)^A185237(n)])`
-/

namespace A254679.P15978962911920928605
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268403 (n + 1) : ℚ) ^ (A185237 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A254679.P15978962911920928605

/-! ## A254679.P5355079324725606409

`A027750(n+1)*A170817(A247026(n+1))`
-/

namespace A254679.P5355079324725606409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) * A170817 (A247026 (n + 1)).toNat

end

end A254679.P5355079324725606409

/-!
# A254681: Fifth partial sums of fourth powers (A000583).

The programs for A254681, the canonical program `A254681.P18400013960837086124` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254681 has offset 1).

The definition of A254681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254681.P6768662559666816535

`ogf((1+11x+11x^2+x^3)/(1-10x+45x^2-120x^3+210x^4-252x^5+210x^6-120x^7+45x^8-10x^9+x^10))`
-/

namespace A254681.P6768662559666816535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 11, 11, 1] [1, -10, 45, -120, 210, -252, 210, -120, 45, -10, 1] n

end

end A254681.P6768662559666816535

namespace A254681

/-- `ogf((1+11x+11x^2+x^3)/(1-10x+45x^2-120x^3+210x^4-252x^5+210x^6-120x^7+45x^8-10x^9+x^10))` -/
def P6768662559666816535.Spec : Prop :=
  ∀ n, P6768662559666816535.a n = A254681 (n + 1)

end A254681

/-! ## A254681.P18400013960837086124

`C(n+6, 6)*(n+1)*(n+6)*(2*(n+1)+5)/42`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254681

/-- `C(n+6, 6)*(n+1)*(n+6)*(2*(n+1)+5)/42` -/
def P18400013960837086124.Spec : Prop :=
  ∀ n, P18400013960837086124.a n = (A254681 (n + 1) : ℚ)

end A254681

/-! ## A254681.P11809829902757407518

`∑[∑[∑[∑[∑[(n+1)^4]]]]]`
-/

namespace A254681.P11809829902757407518
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 4

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254681.P11809829902757407518

namespace A254681

/-- `∑[∑[∑[∑[∑[(n+1)^4]]]]]` -/
def P11809829902757407518.Spec : Prop :=
  ∀ n, (P11809829902757407518.a n : ℤ) = A254681 (n + 1)

end A254681

/-! ## A254681.P17613202526695856765

`∑[∑[∑[∑[(n+1)²²]+a(n-1)]]]` with `a(0)=1`
-/

namespace A254681.P17613202526695856765
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  ∑ j ∈ Finset.range (n + 1), f4 j + f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254681.P17613202526695856765

namespace A254681

/-- `∑[∑[∑[∑[(n+1)²²]+a(n-1)]]]` -/
def P17613202526695856765.Spec : Prop :=
  ∀ n, (P17613202526695856765.a n : ℤ) = A254681 (n + 1)

end A254681

/-! ## A254681.P506293918163602176

`A254470(n+2)-(A254470(n+1)+A101091(n+2))`
-/

namespace A254681.P506293918163602176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254470 (n + 2) - (A254470 (n + 1) + A101091 (n + 2))

end

end A254681.P506293918163602176

namespace A254681

/-- `A254470(n+2)-(A254470(n+1)+A101091(n+2))` -/
def P506293918163602176.Spec : Prop :=
  ∀ n, P506293918163602176.a n = A254681 (n + 1)

end A254681

/-!
# A254682: Fifth partial sums of fifth powers (A000584).

The programs for A254682, the canonical program `A254682.P5778483325054395986` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254682 has offset 1).

The definition of A254682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254682.P5778483325054395986

`ogf((1+26x+66x^2+26x^3+x^4)/(1-11x+55x^2-165x^3+330x^4-462x^5+462x^6-330x^7+165x^8-55x^9+11x^10-x^11))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254682

/-- `ogf((1+26x+66x^2+26x^3+x^4)/(1-11x+55x^2-165x^3+330x^4-462x^5+462x^6-330x^7+165x^8-55x^9+11x^10-x^11))` -/
def P5778483325054395986.Spec : Prop :=
  ∀ n, P5778483325054395986.a n = A254682 (n + 1)

theorem P5778483325054395986.correct : P5778483325054395986.Spec := by
  intro n
  simp only [A254682, Nat.add_sub_cancel]

end A254682

/-! ## A254682.P16639422113198982365

`∑[∑[∑[∑[∑[(n+1)^5]]]]]`
-/

namespace A254682.P16639422113198982365
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254682.P16639422113198982365

namespace A254682

/-- `∑[∑[∑[∑[∑[(n+1)^5]]]]]` -/
def P16639422113198982365.Spec : Prop :=
  ∀ n, (P16639422113198982365.a n : ℤ) = A254682 (n + 1)

end A254682

/-! ## A254682.P9549289752144643348

`A254471(n+2)-(A254644(n+2)+A254471(n+1))`
-/

namespace A254682.P9549289752144643348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254471 (n + 2) - (A254644 (n + 2) + A254471 (n + 1))

end

end A254682.P9549289752144643348

namespace A254682

/-- `A254471(n+2)-(A254644(n+2)+A254471(n+1))` -/
def P9549289752144643348.Spec : Prop :=
  ∀ n, P9549289752144643348.a n = A254682 (n + 1)

end A254682

/-!
# A254683: Fifth partial sums of sixth powers (A001014).

The programs for A254683, the canonical program `A254683.P510546756468252224` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254683 has offset 1).

The definition of A254683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254683.P510546756468252224

`ogf((1+57x+302x^2+302x^3+57x^4+x^5)/(1-12x+66x^2-220x^3+495x^4-792x^5+924x^6-792x^7+495x^8-220x^9+66x^10-12x^11+x^12))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254683

/-- `ogf((1+57x+302x^2+302x^3+57x^4+x^5)/(1-12x+66x^2-220x^3+495x^4-792x^5+924x^6-792x^7+495x^8-220x^9+66x^10-12x^11+x^12))` -/
def P510546756468252224.Spec : Prop :=
  ∀ n, P510546756468252224.a n = A254683 (n + 1)

theorem P510546756468252224.correct : P510546756468252224.Spec := by
  intro n
  simp only [A254683, Nat.add_sub_cancel]

end A254683

/-! ## A254683.P6045802667025442844

`∑[∑[∑[∑[∑[(n+1)^6]]]]]`
-/

namespace A254683.P6045802667025442844
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 6

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254683.P6045802667025442844

namespace A254683

/-- `∑[∑[∑[∑[∑[(n+1)^6]]]]]` -/
def P6045802667025442844.Spec : Prop :=
  ∀ n, (P6045802667025442844.a n : ℤ) = A254683 (n + 1)

end A254683

/-! ## A254683.P8683184586952571416

`A254472(n+2)-(A254645(n+2)+A254472(n+1))`
-/

namespace A254683.P8683184586952571416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254472 (n + 2) - (A254645 (n + 2) + A254472 (n + 1))

end

end A254683.P8683184586952571416

namespace A254683

/-- `A254472(n+2)-(A254645(n+2)+A254472(n+1))` -/
def P8683184586952571416.Spec : Prop :=
  ∀ n, P8683184586952571416.a n = A254683 (n + 1)

end A254683

/-!
# A254684: Fifth partial sums of seventh powers (A001015).

The programs for A254684, the canonical program `A254684.P18342566408505968437` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254684 has offset 1).

The definition of A254684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254684.P18342566408505968437

`∑[∑[∑[∑[∑[(n+1)^7]]]]]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254684

/-- `∑[∑[∑[∑[∑[(n+1)^7]]]]]` -/
def P18342566408505968437.Spec : Prop :=
  ∀ n, (P18342566408505968437.a n : ℤ) = A254684 (n + 1)

theorem P18342566408505968437.correct : P18342566408505968437.Spec := by
  intro n
  simp only [A254684, Nat.add_sub_cancel]

end A254684

/-! ## A254684.P204440100207171507

`∑[2*A254646(n+1)]/2`
-/

namespace A254684.P204440100207171507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A254646 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A254684.P204440100207171507

namespace A254684

/-- `∑[2*A254646(n+1)]/2` -/
def P204440100207171507.Spec : Prop :=
  ∀ n, P204440100207171507.a n = (A254684 (n + 1) : ℚ)

end A254684

/-!
# A254685: Number of partially ordered partitions of n into parts less than or equal to 3, in which the order of adjacent 2's and 3's is unimportant.

The programs for A254685, the canonical program `A254685.P5088935715885700170` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254685 has offset 0).

The definition of A254685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254685.P9179463360640367750

`ogf(1/(1-x-x^2-x^3+x^5))`
-/

namespace A254685.P9179463360640367750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -1, -1, 0, 1] n

end

end A254685.P9179463360640367750

namespace A254685

/-- `ogf(1/(1-x-x^2-x^3+x^5))` -/
def P9179463360640367750.Spec : Prop :=
  ∀ n, P9179463360640367750.a n = A254685 n

end A254685

/-! ## A254685.P5088935715885700170

`a(n-1)+a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254685

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-5)` -/
def P5088935715885700170.Spec : Prop :=
  ∀ n, P5088935715885700170.a n = A254685 n

theorem P5088935715885700170.correct : P5088935715885700170.Spec := by
  intro n
  simp only [A254685]

end A254685

/-! ## A254685.P10195204953889436673

`A052977(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A254685.P10195204953889436673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A052977 n + a (n - 2)

end

end A254685.P10195204953889436673

namespace A254685

/-- `A052977(n)+a(n-2)` -/
def P10195204953889436673.Spec : Prop :=
  ∀ n, P10195204953889436673.a n = A254685 n

end A254685

/-! ## A254685.P5164616745935279122

`A052972(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A254685.P5164616745935279122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A052972 n + a (n - 3)

end

end A254685.P5164616745935279122

namespace A254685

/-- `A052972(n)+a(n-3)` -/
def P5164616745935279122.Spec : Prop :=
  ∀ n, P5164616745935279122.a n = A254685 n

end A254685

/-! ## A254685.P966746800369496505

`Δ[A052977(n+2)]-A052977(n)`
-/

namespace A254685.P966746800369496505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052977 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052977 n

end

end A254685.P966746800369496505

namespace A254685

/-- `Δ[A052977(n+2)]-A052977(n)` -/
def P966746800369496505.Spec : Prop :=
  ∀ n, P966746800369496505.a n = A254685 n

end A254685

/-! ## A254685.P3359272035904008403

`A199594(A020705(n))-∑[A052977(n)]`
-/

namespace A254685.P3359272035904008403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199594 (A020705 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254685.P3359272035904008403

namespace A254685

/-- `A199594(A020705(n))-∑[A052977(n)]` -/
def P3359272035904008403.Spec : Prop :=
  ∀ n, P3359272035904008403.a n = A254685 n

end A254685

/-! ## A254685.P6856049344273746351

`Δ[A298163(n+5)]-A298163(n+4)`
-/

namespace A254685.P6856049344273746351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298163 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A298163 (n + 4)

end

end A254685.P6856049344273746351

namespace A254685

/-- `Δ[A298163(n+5)]-A298163(n+4)` -/
def P6856049344273746351.Spec : Prop :=
  ∀ n, P6856049344273746351.a n = A254685 n

end A254685

/-!
# A254686: Number of ways to put n red and n blue balls into n indistinguishable boxes.

The programs for A254686, there is no canonical definition to state claims against.
-/

/-! ## A254686.P4546798905420071346

`A277239(∑[4*n])`
-/

namespace A254686.P4546798905420071346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277239 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254686.P4546798905420071346

/-! ## A254686.P15884447817183623458

`A256384(∑[n+3])`
-/

namespace A254686.P15884447817183623458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256384 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254686.P15884447817183623458

/-!
# A254687: Number of decompositions of 2n into sums of two primes p1 < p2 such that p2-p1-1 is also a prime.

The programs for A254687, there is no canonical definition to state claims against.
-/

/-! ## A254687.P4084929290362473505

`A187445(A187449(2*A000212(n)))`
-/

namespace A254687.P4084929290362473505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187445 (A187449 (2 * A000212 n).toNat).toNat

end

end A254687.P4084929290362473505

/-!
# A254688: Number of decompositions of 2n into sums of two primes p1 < p2 such that p2-p1+1 is also a prime.

The programs for A254688, there is no canonical definition to state claims against.
-/

/-! ## A254688.P5491760725976440134

`A276830((n+1)²)-A101264(n)`
-/

namespace A254688.P5491760725976440134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276830 ((n + 1) ^ 2) - A101264 n

end

end A254688.P5491760725976440134

/-! ## A254688.P636975673527011883

`A276806(or(2, A000712(n)))`
-/

namespace A254688.P636975673527011883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276806 (Int.lor 2 (A000712 n)).toNat

end

end A254688.P636975673527011883

/-! ## A254688.P5874804624901218585

`gcd(A220400(n), A328615(A225472(n)))`
-/

namespace A254688.P5874804624901218585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220400 n) (A328615 (A225472 n).toNat)

end

end A254688.P5874804624901218585

/-! ## A254688.P8910314481715048480

`A037815(A014739(n)-A010051(n+1))`
-/

namespace A254688.P8910314481715048480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037815 (A014739 n - A010051 (n + 1)).toNat

end

end A254688.P8910314481715048480

/-! ## A254688.P6419882803867846199

`A037897(A287080(n))`
-/

namespace A254688.P6419882803867846199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037897 (A287080 n).toNat

end

end A254688.P6419882803867846199

/-!
# A254691: Number of length n+4 0..1 arrays with every five consecutive terms having the maximum of some two terms equal to the minimum of the remaining three terms.

The programs for A254691, there is no canonical definition to state claims against.
-/

/-! ## A254691.P448150730032096313

`A254698(∑[n+1])`
-/

namespace A254691.P448150730032096313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254691.P448150730032096313

/-! ## A254691.P1762470389636521652

`record[root(A254698(n+1), A127893(n))]`
-/

namespace A254691.P1762470389636521652
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254698 (n + 1) : ℝ) ^ (1 / (A127893 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254691.P1762470389636521652

/-! ## A254691.P3364401613084660193

`record[gcd(A025581(n), A254698(n+1))]`
-/

namespace A254691.P3364401613084660193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A254698 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254691.P3364401613084660193

/-! ## A254691.P5731682520209925391

`record[A254698(A000217(A134478(n)))]`
-/

namespace A254691.P5731682520209925391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A000217 (A134478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254691.P5731682520209925391

/-! ## A254691.P5607139933146426647

`record[A254698(A000217(A156061(n+1)))]`
-/

namespace A254691.P5607139933146426647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A000217 (A156061 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254691.P5607139933146426647

/-! ## A254691.P13493663073907234221

`record[(2-A004736(n+1))*A254698(n+1)]`
-/

namespace A254691.P13493663073907234221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A004736 (n + 1)) * A254698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254691.P13493663073907234221

/-!
# A254692: Number of length n+4 0..2 arrays with every five consecutive terms having the maximum of some two terms equal to the minimum of the remaining three terms.

The programs for A254692, there is no canonical definition to state claims against.
-/

/-! ## A254692.P18175290125653523134

`A254698(∑[n+2])`
-/

namespace A254692.P18175290125653523134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254692.P18175290125653523134

/-! ## A254692.P11734707122864007477

`record[A254698(A000096(A003963(n+1)))]`
-/

namespace A254692.P11734707122864007477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254692.P11734707122864007477

/-! ## A254692.P9105841591441530849

`record[A254698(A000096(A004736(n+1)))]`
-/

namespace A254692.P9105841591441530849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254692.P9105841591441530849

/-! ## A254692.P17977981535874995066

`record[A254698(A000096(A032742(n+1)))]`
-/

namespace A254692.P17977981535874995066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254692.P17977981535874995066

/-! ## A254692.P5228066061158507715

`record[A254698(A000096(A079715(n+1)))]`
-/

namespace A254692.P5228066061158507715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A000096 (A079715 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254692.P5228066061158507715

/-! ## A254692.P2203757371000058860

`record[A254698(A000096(A000188(n+1)))]`
-/

namespace A254692.P2203757371000058860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A000096 (A000188 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254692.P2203757371000058860

/-! ## A254692.P10280570045288744173

`record[A254698(A000096(A175494(n+1)))]`
-/

namespace A254692.P10280570045288744173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A000096 (A175494 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254692.P10280570045288744173

/-!
# A254693: Number of length n+4 0..3 arrays with every five consecutive terms having the maximum of some two terms equal to the minimum of the remaining three terms.

The programs for A254693, there is no canonical definition to state claims against.
-/

/-! ## A254693.P14279855196593236708

`A254698(∑[n+3]+1)`
-/

namespace A254693.P14279855196593236708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254693.P14279855196593236708

/-! ## A254693.P15267938146692829502

`A254698(eq[2, A052509(n)])%A000108(n+8)`
-/

namespace A254693.P15267938146692829502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254698 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A000108 (n + 8))

end

end A254693.P15267938146692829502

/-!
# A254694: Number of length n+4 0..4 arrays with every five consecutive terms having the maximum of some two terms equal to the minimum of the remaining three terms.

The programs for A254694, there is no canonical definition to state claims against.
-/

/-! ## A254694.P5022581226448491351

`A254698(∑[n+4]+3)`
-/

namespace A254694.P5022581226448491351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A254694.P5022581226448491351

/-!
# A254695: Number of length n+4 0..5 arrays with every five consecutive terms having the maximum of some two terms equal to the minimum of the remaining three terms.

The programs for A254695, there is no canonical definition to state claims against.
-/

/-! ## A254695.P10251300019913160811

`A254698(Δ[A264443(n)])`
-/

namespace A254695.P10251300019913160811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (f1 (n + 1) - f1 n).toNat

end

end A254695.P10251300019913160811

/-!
# A254696: Number of length n+4 0..6 arrays with every five consecutive terms having the maximum of some two terms equal to the minimum of the remaining three terms.

The programs for A254696, there is no canonical definition to state claims against.
-/

/-! ## A254696.P5947200792274572058

`A254698(A052905(n+3))`
-/

namespace A254696.P5947200792274572058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A052905 (n + 3)).toNat

end

end A254696.P5947200792274572058

/-!
# A254697: Number of length n+4 0..7 arrays with every five consecutive terms having the maximum of some two terms equal to the minimum of the remaining three terms.

The programs for A254697, there is no canonical definition to state claims against.
-/

/-! ## A254697.P10041164911246931528

`A254698(A055999(n+4))`
-/

namespace A254697.P10041164911246931528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (A055999 (n + 4)).toNat

end

end A254697.P10041164911246931528

/-!
# A254699: Number of length 1+4 0..n arrays with every five consecutive terms having the maximum of some two terms equal to the minimum of the remaining three terms.

The programs for A254699, the canonical program `A254699.P12697951345263652245` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254699 has offset 1).

The definition of A254699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254699.P1075478640768368326

`Δ[Δ[n*∑[n]*C(n+2, 3)]]`
-/

namespace A254699.P1075478640768368326
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f3 j) * Nat.choose (n + 2) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A254699.P1075478640768368326

namespace A254699

/-- `Δ[Δ[n*∑[n]*C(n+2, 3)]]` -/
def P1075478640768368326.Spec : Prop :=
  ∀ n, P1075478640768368326.a n = A254699 (n + 1)

end A254699

/-! ## A254699.P4599492890567391591

`ogf((22+23x+19x^2-5x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A254699.P4599492890567391591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [22, 23, 19, -5, 1] [1, -5, 10, -10, 5, -1] n

end

end A254699.P4599492890567391591

namespace A254699

/-- `ogf((22+23x+19x^2-5x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P4599492890567391591.Spec : Prop :=
  ∀ n, P4599492890567391591.a n = A254699 (n + 1)

end A254699

/-! ## A254699.P12697951345263652245

`5/2*(n+1)^4+20/3*(n+1)^3+15/2*(n+1)²+13/3*(n+1)+1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A254699

/-- `5/2*(n+1)^4+20/3*(n+1)^3+15/2*(n+1)²+13/3*(n+1)+1` -/
def P12697951345263652245.Spec : Prop :=
  ∀ n, P12697951345263652245.a n = (A254699 (n + 1) : ℚ)

end A254699

/-! ## A254699.P14756646513096295902

`Δ[Δ[n²*∑[A000330(n)]]]`
-/

namespace A254699.P14756646513096295902
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A254699.P14756646513096295902

namespace A254699

/-- `Δ[Δ[n²*∑[A000330(n)]]]` -/
def P14756646513096295902.Spec : Prop :=
  ∀ n, P14756646513096295902.a n = A254699 (n + 1)

end A254699

/-! ## A254699.P9274952795766211593

`Δ[Δ[n*A004302(n)]]`
-/

namespace A254699.P9274952795766211593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004302 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A254699.P9274952795766211593

namespace A254699

/-- `Δ[Δ[n*A004302(n)]]` -/
def P9274952795766211593.Spec : Prop :=
  ∀ n, P9274952795766211593.a n = A254699 (n + 1)

end A254699

/-! ## A254699.P12618164271293273101

`Δ[Δ[A000292(n)*A002411(n)]]`
-/

namespace A254699.P12618164271293273101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n * A002411 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A254699.P12618164271293273101

namespace A254699

/-- `Δ[Δ[A000292(n)*A002411(n)]]` -/
def P12618164271293273101.Spec : Prop :=
  ∀ n, P12618164271293273101.a n = A254699 (n + 1)

end A254699

/-! ## A254699.P3939282799386503744

`Δ[Δ[n²*A002415(n+1)]]`
-/

namespace A254699.P3939282799386503744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A002415 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A254699.P3939282799386503744

namespace A254699

/-- `Δ[Δ[n²*A002415(n+1)]]` -/
def P3939282799386503744.Spec : Prop :=
  ∀ n, P3939282799386503744.a n = A254699 (n + 1)

end A254699

/-! ## A254699.P4771656848113153142

`A254698(∑[n]+1)`
-/

namespace A254699.P4771656848113153142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254698 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254699.P4771656848113153142

namespace A254699

/-- `A254698(∑[n]+1)` -/
def P4771656848113153142.Spec : Prop :=
  ∀ n, P4771656848113153142.a n = A254699 (n + 1)

end A254699

