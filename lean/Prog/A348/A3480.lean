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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A348001: Number of distinct values obtained when the unitary totient function (A047994) is applied to the unitary divisors of n.

The programs for A348001, there is no canonical definition to state claims against.
-/

/-! ## A348001.P555857810079709614

`A361923(A356194(n+1))`
-/

namespace A348001.P555857810079709614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361923 (A356194 (n + 1)).toNat

end

end A348001.P555857810079709614

/-! ## A348001.P8044591859952242173

`gcd(∏{e}[n+1, 2*(-1)^#], A181983(A065958(n+1)))`
-/

namespace A348001.P8044591859952242173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ p ∈ Nat.primeFactors (f1 n), 2 * (-1) ^ Nat.factorization (f1 n) p) (A181983 (A065958 (n + 1)).toNat)

end

end A348001.P8044591859952242173

/-! ## A348001.P4269952682196928315

`A000086(∏{p}[A079097(n), A002476(#)])`
-/

namespace A348001.P4269952682196928315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002476 p).toNat

end

end A348001.P4269952682196928315

/-! ## A348001.P9031587795771257903

`A000091(∏{p}[A079097(n), A002476(#)])`
-/

namespace A348001.P9031587795771257903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000091 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002476 p).toNat

end

end A348001.P9031587795771257903

/-! ## A348001.P10955871696056406959

`A034444(∏{p}[A079097(n), A002476(#)])`
-/

namespace A348001.P10955871696056406959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002476 p).toNat

end

end A348001.P10955871696056406959

/-! ## A348001.P9989109909131698453

`A037445(∏{p}[A079097(n), A002476(#)])`
-/

namespace A348001.P9989109909131698453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002476 p).toNat

end

end A348001.P9989109909131698453

/-! ## A348001.P12478905726015266417

`A061142(∏{p}[A079097(n), A002476(#)])`
-/

namespace A348001.P12478905726015266417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002476 p).toNat

end

end A348001.P12478905726015266417

/-! ## A348001.P10599865005644015665

`A160498(∏{p}[A079097(n), A002476(#)])`
-/

namespace A348001.P10599865005644015665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160498 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002476 p).toNat

end

end A348001.P10599865005644015665

/-! ## A348001.P14883505506548487788

`A086669(lcm(2, n+1)²)`
-/

namespace A348001.P14883505506548487788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086669 (Nat.lcm 2 (n + 1) ^ 2)

end

end A348001.P14883505506548487788

/-! ## A348001.P12453959129521100360

`A086669(A145109(n+1))`
-/

namespace A348001.P12453959129521100360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086669 (A145109 (n + 1)).toNat

end

end A348001.P12453959129521100360

/-!
# A348002: Numbers with a record number of distinct values of the unitary totient function applied to their unitary divisors (A348001).

The programs for A348002, there is no canonical definition to state claims against.
-/

/-! ## A348002.P5551023564922772937

`A351868(∏[comp[2^n-2]])`
-/

namespace A348002.P5551023564922772937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351868 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A348002.P5551023564922772937

/-! ## A348002.P6980312999913058319

`record[A319193(A084860(n))]`
-/

namespace A348002.P6980312999913058319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319193 (A084860 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348002.P6980312999913058319

/-!
# A348003: Indices k of records of low value of the ratios A348001(k)/A034444(k) between the number of distinct values of the unitary totient function applied to the unitary divisors of k and the number of unitary divisors of k.

The programs for A348003, there is no canonical definition to state claims against.
-/

/-! ## A348003.P9656414924054260167

`A348174(A348284(n+1)*A348289(n))`
-/

namespace A348003.P9656414924054260167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348174 (A348284 (n + 1) * A348289 n).toNat

end

end A348003.P9656414924054260167

/-! ## A348003.P12571953294715071415

`A348174(lcm(A348284(n+1), A348289(n)))`
-/

namespace A348003.P12571953294715071415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348174 (Int.lcm (A348284 (n + 1)) (A348289 n))

end

end A348003.P12571953294715071415

/-! ## A348003.P6394347035066539557

`A348174(lt[A348199(n+1), A348230(n)])`
-/

namespace A348003.P6394347035066539557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348174 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348003.P6394347035066539557

/-! ## A348003.P1072561924730803553

`A348174(lt[A348199(n+1), A348232(n)])`
-/

namespace A348003.P1072561924730803553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348174 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348003.P1072561924730803553

/-!
# A348004: Numbers whose unitary divisors have distinct values of the unitary totient function uphi (A047994).

The programs for A348004, the canonical program `A348004.P15506325115126856123` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348004 has offset 1).

The definition of A348004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7386 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348004.P7086262478560725743

`record[A348173(n+1)]`
-/

namespace A348004.P7086262478560725743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348004.P7086262478560725743

namespace A348004

/-- `record[A348173(n+1)]` -/
def P7086262478560725743.Spec : Prop :=
  ∀ n, P7086262478560725743.a n = A348004 (n + 1)

end A348004

/-! ## A348004.P15506325115126856123

`eq[1, A348264(n+1)+1]+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A348004

/-- `eq[1, A348264(n+1)+1]+1` -/
def P15506325115126856123.Spec : Prop :=
  ∀ n, (P15506325115126856123.a n : ℤ) = A348004 (n + 1)

theorem P15506325115126856123.correct : P15506325115126856123.Spec := by
  intro n
  simp only [A348004, Nat.add_sub_cancel]

end A348004

/-! ## A348004.P8983920956780716464

`eq[2, A283477(a(A348264(n)))]` with `a(0)=1`
-/

namespace A348004.P8983920956780716464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A283477 (f2 (A348264 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348004.P8983920956780716464

namespace A348004

/-- `eq[2, A283477(a(A348264(n)))]` -/
def P8983920956780716464.Spec : Prop :=
  ∀ n, (P8983920956780716464.a n : ℤ) = A348004 (n + 1)

end A348004

/-! ## A348004.P1884361017012481399

`eq[A000027(n+1), A348173(n+1)]+1`
-/

namespace A348004.P1884361017012481399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348173 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A348004.P1884361017012481399

namespace A348004

/-- `eq[A000027(n+1), A348173(n+1)]+1` -/
def P1884361017012481399.Spec : Prop :=
  ∀ n, (P1884361017012481399.a n : ℤ) = A348004 (n + 1)

end A348004

/-! ## A348004.P13197391431673612348

`A348173(eq[n+1, A348173(n+1)]+1)`
-/

namespace A348004.P13197391431673612348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A348004.P13197391431673612348

namespace A348004

/-- `A348173(eq[n+1, A348173(n+1)]+1)` -/
def P13197391431673612348.Spec : Prop :=
  ∀ n, P13197391431673612348.a n = A348004 (n + 1)

end A348004

/-! ## A348004.P301813494377434704

`record[n+1-A032831(n+1)*A348264(n+1)]`
-/

namespace A348004.P301813494377434704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A032831 (n + 1) * A348264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348004.P301813494377434704

namespace A348004

/-- `record[n+1-A032831(n+1)*A348264(n+1)]` -/
def P301813494377434704.Spec : Prop :=
  ∀ n, P301813494377434704.a n = A348004 (n + 1)

end A348004

/-! ## A348004.P13681829090495343771

`lt[1, A193067(3*n+4)]`
-/

namespace A348004.P13681829090495343771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193067 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A348004.P13681829090495343771

namespace A348004

/-- `lt[1, A193067(3*n+4)]` -/
def P13681829090495343771.Spec : Prop :=
  ∀ n, (P13681829090495343771.a n : ℤ) = A348004 (n + 1)

end A348004

/-! ## A348004.P3342933836308975527

`lt[A327517(n+4), A327491(n)²]`
-/

namespace A348004.P3342933836308975527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327517 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327491 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A348004.P3342933836308975527

namespace A348004

/-- `lt[A327517(n+4), A327491(n)²]` -/
def P3342933836308975527.Spec : Prop :=
  ∀ n, (P3342933836308975527.a n : ℤ) = A348004 (n + 1)

end A348004

/-!
# A348005: Positive even integers with an even number of even divisors.

The programs for A348005, the canonical program `A348005.P10549165759423692535` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348005 has offset 1).

The definition of A348005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A348005.P10549165759423692535

`2*A000037(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A348005

/-- `2*A000037(n+1)` -/
def P10549165759423692535.Spec : Prop :=
  ∀ n, P10549165759423692535.a n = A348005 (n + 1)

theorem P10549165759423692535.correct : P10549165759423692535.Spec := by
  intro n
  simp only [A348005, Nat.add_sub_cancel]

end A348005

/-! ## A348005.P7223109834146126521

`2*comp[n²]`
-/

namespace A348005.P7223109834146126521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A348005.P7223109834146126521

namespace A348005

/-- `2*comp[n²]` -/
def P7223109834146126521.Spec : Prop :=
  ∀ n, (P7223109834146126521.a n : ℤ) = A348005 (n + 1)

end A348005

/-! ## A348005.P17683012785764881090

`floor(2/acot(comp[n²]))`
-/

namespace A348005.P17683012785764881090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ)⌋

end

end A348005.P17683012785764881090

namespace A348005

/-- `floor(2/acot(comp[n²]))` -/
def P17683012785764881090.Spec : Prop :=
  ∀ n, P17683012785764881090.a n = A348005 (n + 1)

end A348005

/-! ## A348005.P10711231384661693225

`round(2/acot(comp[n²]))`
-/

namespace A348005.P10711231384661693225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ))

end

end A348005.P10711231384661693225

namespace A348005

/-- `round(2/acot(comp[n²]))` -/
def P10711231384661693225.Spec : Prop :=
  ∀ n, P10711231384661693225.a n = A348005 (n + 1)

end A348005

/-! ## A348005.P5493474449683753806

`2/tan(acot(comp[n²]))`
-/

namespace A348005.P5493474449683753806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 / Real.tan (SequenceMachineLib.acot (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ))

end

end A348005.P5493474449683753806

namespace A348005

/-- `2/tan(acot(comp[n²]))` -/
def P5493474449683753806.Spec : Prop :=
  ∀ n, P5493474449683753806.a n = (A348005 (n + 1) : ℝ)

end A348005

/-! ## A348005.P10997314437931361892

`comp[n²]/cot(atan(2))`
-/

namespace A348005.P10997314437931361892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) / Real.cot (Real.arctan (2 : ℝ))

end

end A348005.P10997314437931361892

namespace A348005

/-- `comp[n²]/cot(atan(2))` -/
def P10997314437931361892.Spec : Prop :=
  ∀ n, P10997314437931361892.a n = (A348005 (n + 1) : ℝ)

end A348005

/-! ## A348005.P11671365011522539114

`∑[2*(char[lcm(n, n+1)]+1)]`
-/

namespace A348005.P11671365011522539114
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348005.P11671365011522539114

namespace A348005

/-- `∑[2*(char[lcm(n, n+1)]+1)]` -/
def P11671365011522539114.Spec : Prop :=
  ∀ n, (P11671365011522539114.a n : ℤ) = A348005 (n + 1)

end A348005

/-! ## A348005.P13764191489980594500

`∑[2*(char[∑[2*n]]+1)!]`
-/

namespace A348005.P13764191489980594500
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.factorial ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348005.P13764191489980594500

namespace A348005

/-- `∑[2*(char[∑[2*n]]+1)!]` -/
def P13764191489980594500.Spec : Prop :=
  ∀ n, (P13764191489980594500.a n : ℤ) = A348005 (n + 1)

end A348005

/-! ## A348005.P13246700471130126735

`∑[2^dr(char[n²+n]+1)]`
-/

namespace A348005.P13246700471130126735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.digitalRoot (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348005.P13246700471130126735

namespace A348005

/-- `∑[2^dr(char[n²+n]+1)]` -/
def P13246700471130126735.Spec : Prop :=
  ∀ n, (P13246700471130126735.a n : ℤ) = A348005 (n + 1)

end A348005

/-! ## A348005.P12403157113816215588

`comp[∪[2*n+1, n*2*n]]`
-/

namespace A348005.P12403157113816215588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A348005.P12403157113816215588

namespace A348005

/-- `comp[∪[2*n+1, n*2*n]]` -/
def P12403157113816215588.Spec : Prop :=
  ∀ n, (P12403157113816215588.a n : ℤ) = A348005 (n + 1)

end A348005

/-! ## A348005.P17931625009969649759

`comp[(n-1)*gcd(1-n, floor(n/2))]`
-/

namespace A348005.P17931625009969649759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A348005.P17931625009969649759

namespace A348005

/-- `comp[(n-1)*gcd(1-n, floor(n/2))]` -/
def P17931625009969649759.Spec : Prop :=
  ∀ n, (P17931625009969649759.a n : ℤ) = A348005 (n + 1)

end A348005

/-! ## A348005.P14373674020436653005

`∑[A089800(n)+2]`
-/

namespace A348005.P14373674020436653005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089800 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348005.P14373674020436653005

namespace A348005

/-- `∑[A089800(n)+2]` -/
def P14373674020436653005.Spec : Prop :=
  ∀ n, P14373674020436653005.a n = A348005 (n + 1)

end A348005

/-! ## A348005.P17245912018508879840

`eq[2, A067694(2*n)]`
-/

namespace A348005.P17245912018508879840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067694 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348005.P17245912018508879840

namespace A348005

/-- `eq[2, A067694(2*n)]` -/
def P17245912018508879840.Spec : Prop :=
  ∀ n, (P17245912018508879840.a n : ℤ) = A348005 (n + 1)

end A348005

/-! ## A348005.P15800066955962123281

`A130829(n+1)+Δ[n²]`
-/

namespace A348005.P15800066955962123281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130829 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A348005.P15800066955962123281

namespace A348005

/-- `A130829(n+1)+Δ[n²]` -/
def P15800066955962123281.Spec : Prop :=
  ∀ n, P15800066955962123281.a n = A348005 (n + 1)

end A348005

/-! ## A348005.P13106586582122741908

`A001670(n+1)+2*(n+1)`
-/

namespace A348005.P13106586582122741908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001670 (n + 1) + (2 * (n + 1) : ℤ)

end

end A348005.P13106586582122741908

namespace A348005

/-- `A001670(n+1)+2*(n+1)` -/
def P13106586582122741908.Spec : Prop :=
  ∀ n, P13106586582122741908.a n = A348005 (n + 1)

end A348005

/-! ## A348005.P15553655308440421704

`A130821(n+1)+2*n+3`
-/

namespace A348005.P15553655308440421704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130821 (n + 1) + (2 * n + 3 : ℤ)

end

end A348005.P15553655308440421704

namespace A348005

/-- `A130821(n+1)+2*n+3` -/
def P15553655308440421704.Spec : Prop :=
  ∀ n, P15553655308440421704.a n = A348005 (n + 1)

end A348005

/-! ## A348005.P4921441698997105861

`A144396(n+1)+A130821(n+1)`
-/

namespace A348005.P4921441698997105861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1) + A130821 (n + 1)

end

end A348005.P4921441698997105861

namespace A348005

/-- `A144396(n+1)+A130821(n+1)` -/
def P4921441698997105861.Spec : Prop :=
  ∀ n, P4921441698997105861.a n = A348005 (n + 1)

end A348005

/-!
# A348006: Largest increment in the trajectory from n to 1 in the Collatz map (or 3x+1 problem), or -1 if no such trajectory exists.

The programs for A348006, there is no canonical definition to state claims against.
-/

/-! ## A348006.P15229615482880485349

`A226110((n+1)/2^val(n+1, 2))`
-/

namespace A348006.P15229615482880485349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226110 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A348006.P15229615482880485349

/-! ## A348006.P14104930634949261818

`A226110(floor(n/(xor(n, n+1)+1))+floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A348006.P14104930634949261818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226110 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1)).toNat

end

end A348006.P14104930634949261818

/-! ## A348006.P9858364757958432811

`A226110(A000265(n+1))`
-/

namespace A348006.P9858364757958432811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226110 (A000265 (n + 1)).toNat

end

end A348006.P9858364757958432811

/-! ## A348006.P14029354814574611854

`A213538(A087232(n+1))`
-/

namespace A348006.P14029354814574611854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213538 (A087232 (n + 1)).toNat

end

end A348006.P14029354814574611854

/-! ## A348006.P2912970051417163757

`A226110(A153733(n)+1)`
-/

namespace A348006.P2912970051417163757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226110 (A153733 n + 1).toNat

end

end A348006.P2912970051417163757

/-! ## A348006.P4568914536397755388

`A226110(A227140(n+1))`
-/

namespace A348006.P4568914536397755388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226110 (A227140 (n + 1)).toNat

end

end A348006.P4568914536397755388

/-! ## A348006.P7098108545341052202

`A226110(xor(1, A153733(n)))`
-/

namespace A348006.P7098108545341052202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226110 (Int.xor 1 (A153733 n)).toNat

end

end A348006.P7098108545341052202

/-! ## A348006.P3867396463416206048

`A062545(A087232(n+1)-1)`
-/

namespace A348006.P3867396463416206048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (A087232 (n + 1) - 1).toNat

end

end A348006.P3867396463416206048

/-! ## A348006.P3311268928650409942

`A226110(A028234(2*(n+1)))`
-/

namespace A348006.P3311268928650409942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226110 (A028234 (2 * (n + 1))).toNat

end

end A348006.P3311268928650409942

/-!
# A348008: Number of n-step self-avoiding walks on the upper two quadrants of a 2D square lattice where the walk cannot step to the smaller square ring of numbers than the ring it is currently on.

The programs for A348008, there is no canonical definition to state claims against.
-/

/-! ## A348008.P3034112055682857340

`A111439(A184513(n+1))`
-/

namespace A348008.P3034112055682857340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A184513 (n + 1)).toNat

end

end A348008.P3034112055682857340

/-! ## A348008.P17224499072611483573

`∑[record[A076228(A038075(n+1))]]`
-/

namespace A348008.P17224499072611483573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076228 (A038075 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A348008.P17224499072611483573

/-!
# A348009: Number of n-step self-avoiding walks on one quadrant of a 2D square lattice where the walk cannot step to the smaller square ring of numbers than the ring it is currently on.

The programs for A348009, there is no canonical definition to state claims against.
-/

/-! ## A348009.P12070878355200617125

`A226190(A245481(n+1)+A100227(n))`
-/

namespace A348009.P12070878355200617125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A245481 (n + 1) + A100227 n).toNat

end

end A348009.P12070878355200617125

/-! ## A348009.P13341011882186228318

`A289971(A303369(n+1))+A289207(n)`
-/

namespace A348009.P13341011882186228318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289971 (A303369 (n + 1)).toNat + A289207 n

end

end A348009.P13341011882186228318

/-! ## A348009.P14443490887456860934

`A348748(a(n-1))-1` with `a(0)=1`
-/

namespace A348009.P14443490887456860934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A348748 (a (n - 1)).toNat - 1

end

end A348009.P14443490887456860934

/-!
# A348010: Number of n-step self-avoiding walks on the upper half-plane of a 2D square lattice rotated by Pi/4.

The programs for A348010, there is no canonical definition to state claims against.
-/

/-! ## A348010.P6148183113817509348

`record[Δ[A323188(n+1)/8]]`
-/

namespace A348010.P6148183113817509348
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323188 (n + 1) : ℚ) / 8

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348010.P6148183113817509348

/-! ## A348010.P14882938837042737074

`record[(A323188(n+2)-A323188(n+1))/8]`
-/

namespace A348010.P14882938837042737074
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323188 (n + 2) - A323188 (n + 1) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348010.P14882938837042737074

/-! ## A348010.P13193497192089649246

`record[Δ[A003602(A323188(n+1))]]`
-/

namespace A348010.P13193497192089649246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A323188 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348010.P13193497192089649246

/-! ## A348010.P3893046627520958380

`A003602(A323188(2*(n+1)))-A003602(A323188(2*n+1))`
-/

namespace A348010.P3893046627520958380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A323188 (2 * (n + 1))).toNat - A003602 (A323188 (2 * n + 1)).toNat

end

end A348010.P3893046627520958380

/-!
# A348011: a(n) = phi(n^2) * Sum_{d|n} 2^omega(d) / d.

The programs for A348011, the canonical program `A348011.P10712634183778289058` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348011 has offset 1).

The definition of A348011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348011.P10712634183778289058

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A060648(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A348011

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A060648(n+1)` -/
def P10712634183778289058.Spec : Prop :=
  ∀ n, P10712634183778289058.a n = (A348011 (n + 1) : ℚ)

end A348011

/-! ## A348011.P17635250551958868045

`Δ[A002088(n)]*A060648(n+1)`
-/

namespace A348011.P17635250551958868045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A060648 (n + 1)

end

end A348011.P17635250551958868045

namespace A348011

/-- `Δ[A002088(n)]*A060648(n+1)` -/
def P17635250551958868045.Spec : Prop :=
  ∀ n, P17635250551958868045.a n = A348011 (n + 1)

end A348011

/-! ## A348011.P13658950855211699289

`Δ[A005728(n)]*A060648(n+1)`
-/

namespace A348011.P13658950855211699289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A060648 (n + 1)

end

end A348011.P13658950855211699289

namespace A348011

/-- `Δ[A005728(n)]*A060648(n+1)` -/
def P13658950855211699289.Spec : Prop :=
  ∀ n, P13658950855211699289.a n = A348011 (n + 1)

end A348011

/-! ## A348011.P8562348239447471077

`A000010(n+1)*A060648(n+1)`
-/

namespace A348011.P8562348239447471077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A060648 (n + 1)

end

end A348011.P8562348239447471077

namespace A348011

/-- `A000010(n+1)*A060648(n+1)` -/
def P8562348239447471077.Spec : Prop :=
  ∀ n, P8562348239447471077.a n = A348011 (n + 1)

end A348011

/-! ## A348011.P7304258320454429810

`A000010(n+1)*∑{d}[n+1, A001615(#)]`
-/

namespace A348011.P7304258320454429810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * (∑ d ∈ Nat.divisors (f1 n), A001615 d)

end

end A348011.P7304258320454429810

namespace A348011

/-- `A000010(n+1)*∑{d}[n+1, A001615(#)]` -/
def P7304258320454429810.Spec : Prop :=
  ∀ n, P7304258320454429810.a n = A348011 (n + 1)

end A348011

/-! ## A348011.P1807386647757074257

`∑{d}[n+1, A000010(#)*A191414((n+1)/#)]`
-/

namespace A348011.P1807386647757074257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A191414 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348011.P1807386647757074257

namespace A348011

/-- `∑{d}[n+1, A000010(#)*A191414((n+1)/#)]` -/
def P1807386647757074257.Spec : Prop :=
  ∀ n, P1807386647757074257.a n = A348011 (n + 1)

end A348011

/-! ## A348011.P2249726069368016957

`A007434(n+1)/A001615(n+1)*A060648(n+1)`
-/

namespace A348011.P2249726069368016957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ) * (A060648 (n + 1) : ℚ)

end

end A348011.P2249726069368016957

namespace A348011

/-- `A007434(n+1)/A001615(n+1)*A060648(n+1)` -/
def P2249726069368016957.Spec : Prop :=
  ∀ n, P2249726069368016957.a n = (A348011 (n + 1) : ℚ)

end A348011

/-! ## A348011.P15962097399830955970

`A059377(n+1)*A060648(n+1)/A160891(n+1)`
-/

namespace A348011.P15962097399830955970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059377 (n + 1) * A060648 (n + 1) : ℚ) / (A160891 (n + 1) : ℚ)

end

end A348011.P15962097399830955970

namespace A348011

/-- `A059377(n+1)*A060648(n+1)/A160891(n+1)` -/
def P15962097399830955970.Spec : Prop :=
  ∀ n, P15962097399830955970.a n = (A348011 (n + 1) : ℚ)

end A348011

/-! ## A348011.P17617356287046520148

`A000010(n+1)*A216621(∑[n+1])`
-/

namespace A348011.P17617356287046520148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A216621 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A348011.P17617356287046520148

namespace A348011

/-- `A000010(n+1)*A216621(∑[n+1])` -/
def P17617356287046520148.Spec : Prop :=
  ∀ n, P17617356287046520148.a n = A348011 (n + 1)

end A348011

/-! ## A348011.P2832676984070597743

`A000010(n+1)*A055155((n+1)²)`
-/

namespace A348011.P2832676984070597743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A055155 ((n + 1) ^ 2)

end

end A348011.P2832676984070597743

namespace A348011

/-- `A000010(n+1)*A055155((n+1)²)` -/
def P2832676984070597743.Spec : Prop :=
  ∀ n, P2832676984070597743.a n = A348011 (n + 1)

end A348011

/-! ## A348011.P8363509120861321915

`A000010(n+1)*∑{d}[(n+1)², A000188(#)]`
-/

namespace A348011.P8363509120861321915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * (∑ d ∈ Nat.divisors (f1 n), A000188 d)

end

end A348011.P8363509120861321915

namespace A348011

/-- `A000010(n+1)*∑{d}[(n+1)², A000188(#)]` -/
def P8363509120861321915.Spec : Prop :=
  ∀ n, P8363509120861321915.a n = A348011 (n + 1)

end A348011

/-!
# A348012: Invert transform of A037952.

The programs for A348012, there is no canonical definition to state claims against.
-/

/-! ## A348012.P17630046362338925708

`Δ[A230555(n)%(3^n)]`
-/

namespace A348012.P17630046362338925708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230555 n) (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348012.P17630046362338925708

/-! ## A348012.P2726158667810201827

`A000007(n)+Δ[A230555(n)]`
-/

namespace A348012.P2726158667810201827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A348012.P2726158667810201827

/-! ## A348012.P74089653237808811

`Δ[A230555(n)+A057427(n)]`
-/

namespace A348012.P74089653237808811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230555 n + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A348012.P74089653237808811

/-! ## A348012.P1416641879786296815

`A088156(n)+Δ[A230555(n)]`
-/

namespace A348012.P1416641879786296815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088156 n + (f1 (n + 1) - f1 n)

end

end A348012.P1416641879786296815

/-!
# A348013: Triangle by rows: T(n,k) is the number of n-step Dyck paths with k catastrophes.

The programs for A348013, there is no canonical definition to state claims against.
-/

/-! ## A348013.P11561872494562695274

`A208153(n)+A178780(A222730(n))`
-/

namespace A348013.P11561872494562695274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208153 n + A178780 (A222730 n).toNat

end

end A348013.P11561872494562695274

/-! ## A348013.P15157681950944545883

`A208153(n)+A181340(A208152(n+1))`
-/

namespace A348013.P15157681950944545883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208153 n + A181340 (A208152 (n + 1)).toNat

end

end A348013.P15157681950944545883

/-! ## A348013.P13689691326966884236

`A208153(n)-A178780(2*A222730(n))`
-/

namespace A348013.P13689691326966884236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208153 n - A178780 (2 * A222730 n).toNat

end

end A348013.P13689691326966884236

/-! ## A348013.P1286435114585914120

`xor(A228336(n), A328981(A249844(n+1)))`
-/

namespace A348013.P1286435114585914120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A228336 n) (A328981 (A249844 (n + 1)).toNat)

end

end A348013.P1286435114585914120

/-!
# A348015: Number of periodic n X n matrices over GF(2).

The programs for A348015, there is no canonical definition to state claims against.
-/

/-! ## A348015.P12013067961992794645

`C(2^n, 2)*a(n-1)+1` with `a(0)=1`
-/

namespace A348015.P12013067961992794645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (2 ^ n) 2 * a (n - 1) + 1

end

end A348015.P12013067961992794645

/-! ## A348015.P14823502071205885570

`or(1, C(2^n, 2)*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A348015.P14823502071205885570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.lor 1 (Nat.choose (2 ^ n) 2 * a (n - 1))

end

end A348015.P14823502071205885570

/-! ## A348015.P8094364133912004915

`xor(1, C(2^n, 2)*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A348015.P8094364133912004915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 1 (Nat.choose (2 ^ n) 2 * a (n - 1))

end

end A348015.P8094364133912004915

/-! ## A348015.P17217027329080289003

`(4^n-2^n)/2*a(n-1)+1` with `a(0)=1`
-/

namespace A348015.P17217027329080289003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((4 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 2 * a (n - 1) + 1

end

end A348015.P17217027329080289003

/-! ## A348015.P15121281970552392395

`or(1, (4^n-2^n)/2*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A348015.P15121281970552392395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.lor 1 (SequenceMachineLib.roundAway (((4 ^ n : ℤ) - (2 ^ n : ℤ) : ℚ) / 2 * (a (n - 1) : ℚ)))

end

end A348015.P15121281970552392395

/-!
# A348016: Record the number of terms with no proper divisors, then the number with one proper divisor, then two, three, etc., until reaching a zero term. After each zero term, repeat the count as before.

The programs for A348016, there is no canonical definition to state claims against.
-/

/-! ## A348016.P6486719500335075022

`A353092(A252943(A174376(n))+n)`
-/

namespace A348016.P6486719500335075022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353092 (A252943 (A174376 n).toNat + (n : ℤ)).toNat

end

end A348016.P6486719500335075022

/-! ## A348016.P13366015223427047182

`A353092(n)-A185264(A027336(n))`
-/

namespace A348016.P13366015223427047182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353092 n - A185264 (A027336 n).toNat

end

end A348016.P13366015223427047182

/-! ## A348016.P14840190610862097798

`A353092(n)-A238403(A164141(n))`
-/

namespace A348016.P14840190610862097798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353092 n - A238403 (A164141 n).toNat

end

end A348016.P14840190610862097798

/-! ## A348016.P12480174491297514027

`A353092(lcm(n, A008683(A115098(n))))`
-/

namespace A348016.P12480174491297514027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353092 (Int.lcm (n : ℤ) (A008683 (A115098 n).toNat))

end

end A348016.P12480174491297514027

/-! ## A348016.P2554133408443312191

`C(A353092(n), A109004(A143569(n)))`
-/

namespace A348016.P2554133408443312191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A353092 n).toNat (A109004 (A143569 n).toNat).toNat

end

end A348016.P2554133408443312191

/-!
# A348018: a(n) is the index of A064549(n) = n * Product_{p prime|n} p in the sequence of powerful numbers (A001694).

The programs for A348018, the canonical program `A348018.P14022618652793817197` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348018 has offset 1).

The definition of A348018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348018.P14022618652793817197

`A217038((n+1)*∏{p}[n+1, #]+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A348018

/-- `A217038((n+1)*∏{p}[n+1, #]+1)` -/
def P14022618652793817197.Spec : Prop :=
  ∀ n, P14022618652793817197.a n = A348018 (n + 1)

theorem P14022618652793817197.correct : P14022618652793817197.Spec := by
  intro n
  simp only [A348018, Nat.add_sub_cancel]

end A348018

/-! ## A348018.P14909862574518062939

`A217038((n+1)/∏{p}[n+1, 1/#]+1)`
-/

namespace A348018.P14909862574518062939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), 1 / (p : ℚ)) + 1)).toNat

end

end A348018.P14909862574518062939

namespace A348018

/-- `A217038((n+1)/∏{p}[n+1, 1/#]+1)` -/
def P14909862574518062939.Spec : Prop :=
  ∀ n, P14909862574518062939.a n = A348018 (n + 1)

end A348018

/-! ## A348018.P8390423377256181492

`A217038((n+1)*2^∑{p}[n+1, log2(#)]+1)`
-/

namespace A348018.P8390423377256181492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (SequenceMachineLib.roundAway ((n + 1 : ℝ) * (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ)) + 1)).toNat

end

end A348018.P8390423377256181492

namespace A348018

/-- `A217038((n+1)*2^∑{p}[n+1, log2(#)]+1)` -/
def P8390423377256181492.Spec : Prop :=
  ∀ n, P8390423377256181492.a n = A348018 (n + 1)

end A348018

/-! ## A348018.P457872589525568057

`A217038(A078310(n+1))`
-/

namespace A348018.P457872589525568057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A078310 (n + 1)).toNat

end

end A348018.P457872589525568057

namespace A348018

/-- `A217038(A078310(n+1))` -/
def P457872589525568057.Spec : Prop :=
  ∀ n, P457872589525568057.a n = A348018 (n + 1)

end A348018

/-! ## A348018.P7041085732774069933

`A217038(A064549(n+1)+1)`
-/

namespace A348018.P7041085732774069933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A064549 (n + 1) + 1).toNat

end

end A348018.P7041085732774069933

namespace A348018

/-- `A217038(A064549(n+1)+1)` -/
def P7041085732774069933.Spec : Prop :=
  ∀ n, P7041085732774069933.a n = A348018 (n + 1)

end A348018

/-! ## A348018.P14680740818154579805

`A217038(A007913(n+1)²*A011264(n+1)+1)`
-/

namespace A348018.P14680740818154579805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A007913 (n + 1) ^ 2 * A011264 (n + 1) + 1).toNat

end

end A348018.P14680740818154579805

namespace A348018

/-- `A217038(A007913(n+1)²*A011264(n+1)+1)` -/
def P14680740818154579805.Spec : Prop :=
  ∀ n, P14680740818154579805.a n = A348018 (n + 1)

end A348018

/-!
# A348020: a(n) is the minimum number of unit resistors in a circuit with resistance R = A007305(n)/A007306(n).

The programs for A348020, there is no canonical definition to state claims against.
-/

/-! ## A348020.P4411836497259287496

`A240465(A038764(n))+A070939(2*n+1)`
-/

namespace A348020.P4411836497259287496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240465 (A038764 n).toNat + A070939 (2 * n + 1)

end

end A348020.P4411836497259287496

/-! ## A348020.P3816776595157891035

`A070941(n)+A010815(A005899(n+4))`
-/

namespace A348020.P3816776595157891035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n + A010815 (A005899 (n + 4)).toNat

end

end A348020.P3816776595157891035

/-! ## A348020.P6964373784783184129

`A070939(2*n-A375199(2*(n+1)))`
-/

namespace A348020.P6964373784783184129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 ((2 * n : ℤ) - A375199 (2 * (n + 1))).toNat

end

end A348020.P6964373784783184129

/-! ## A348020.P1911033641638813261

`A070941(n)-and(A111332(n), A181712(2*n+1))`
-/

namespace A348020.P1911033641638813261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n - Int.land (A111332 n) (A181712 (2 * n + 1))

end

end A348020.P1911033641638813261

/-! ## A348020.P6940830160240579816

`A047999(A330234(2*(n+1)))+A029837(n+1)`
-/

namespace A348020.P6940830160240579816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A330234 (2 * (n + 1))).toNat + A029837 (n + 1)

end

end A348020.P6940830160240579816

/-!
# A348023: a(n) = [x^n] Product_{k=0..2*n-1} (x + (-1)^k * k).

The programs for A348023, there is no canonical definition to state claims against.
-/

/-! ## A348023.P9644874977629640670

`A047991(2*n²)`
-/

namespace A348023.P9644874977629640670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047991 (2 * n ^ 2)

end

end A348023.P9644874977629640670

/-! ## A348023.P15916650233974702187

`or(1, A047991(A001105(n)))`
-/

namespace A348023.P15916650233974702187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047991 (A001105 n).toNat)

end

end A348023.P15916650233974702187

/-! ## A348023.P4778126649999783890

`A047991(A001105(n))+A000038(n+1)`
-/

namespace A348023.P4778126649999783890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047991 (A001105 n).toNat + A000038 (n + 1)

end

end A348023.P4778126649999783890

/-! ## A348023.P10861516537572261153

`and(A047991(A001105(n)), A153881(n+1))`
-/

namespace A348023.P10861516537572261153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A047991 (A001105 n).toNat) (A153881 (n + 1))

end

end A348023.P10861516537572261153

/-!
# A348024: a(n) = [x^n] Product_{k=1..2*n} (x + (-1)^k * k).

The programs for A348024, there is no canonical definition to state claims against.
-/

/-! ## A348024.P11252333825736090570

`A047991(∑[4*n])`
-/

namespace A348024.P11252333825736090570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047991 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A348024.P11252333825736090570

/-! ## A348024.P107848427761697703

`or(1, A047991(A046092(n)))`
-/

namespace A348024.P107848427761697703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047991 (A046092 n).toNat)

end

end A348024.P107848427761697703

/-! ## A348024.P6951895458177814596

`A047991(A046092(n))+char[A000108(n+5)]`
-/

namespace A348024.P6951895458177814596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047991 (A046092 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A348024.P6951895458177814596

/-! ## A348024.P400432436170260412

`A000108(C(2, n+2))*A047991(A046092(n))`
-/

namespace A348024.P400432436170260412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A047991 (A046092 n).toNat

end

end A348024.P400432436170260412

/-! ## A348024.P9297292275510176224

`A007318(C(2, n+2))*A047991(A046092(n))`
-/

namespace A348024.P9297292275510176224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A047991 (A046092 n).toNat

end

end A348024.P9297292275510176224

/-!
# A348027: Dirichlet convolution of Euler phi with A324198.

The programs for A348027, there is no canonical definition to state claims against.
-/

/-! ## A348027.P2945314168316257082

`∑{d}[n+1, A000010(#)*A324198((n+1)/#)]`
-/

namespace A348027.P2945314168316257082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A324198 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348027.P2945314168316257082

/-!
# A348028: Greatest common divisor of A003415 (arithmetic derivative) and sigma, the sum of divisors function.

The programs for A348028, the canonical program `A348028.P15876439047741039466` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348028 has offset 1).

The definition of A348028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348028.P9290303526700502933

`gcd(∑{d}[n+1, #], A003415(n+1))`
-/

namespace A348028.P9290303526700502933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A003415 (n + 1))

end

end A348028.P9290303526700502933

namespace A348028

/-- `gcd(∑{d}[n+1, #], A003415(n+1))` -/
def P9290303526700502933.Spec : Prop :=
  ∀ n, (P9290303526700502933.a n : ℤ) = A348028 (n + 1)

end A348028

/-! ## A348028.P7390418703401077309

`gcd(A000203(n+1), ∑[A258057(n)])`
-/

namespace A348028.P7390418703401077309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A348028.P7390418703401077309

namespace A348028

/-- `gcd(A000203(n+1), ∑[A258057(n)])` -/
def P7390418703401077309.Spec : Prop :=
  ∀ n, (P7390418703401077309.a n : ℤ) = A348028 (n + 1)

end A348028

/-! ## A348028.P9497475094057637748

`gcd(Δ[A160664(n)], A003415(n+1))`
-/

namespace A348028.P9497475094057637748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A003415 (n + 1))

end

end A348028.P9497475094057637748

namespace A348028

/-- `gcd(Δ[A160664(n)], A003415(n+1))` -/
def P9497475094057637748.Spec : Prop :=
  ∀ n, (P9497475094057637748.a n : ℤ) = A348028 (n + 1)

end A348028

/-! ## A348028.P1517609134321019825

`gcd(A143348(n+1), A348497(n+1))`
-/

namespace A348028.P1517609134321019825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143348 (n + 1)) (A348497 (n + 1))

end

end A348028.P1517609134321019825

namespace A348028

/-- `gcd(A143348(n+1), A348497(n+1))` -/
def P1517609134321019825.Spec : Prop :=
  ∀ n, (P1517609134321019825.a n : ℤ) = A348028 (n + 1)

end A348028

/-! ## A348028.P15876439047741039466

`gcd(sqrt(A072861(n+1)), A343224(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A348028

/-- `gcd(sqrt(A072861(n+1)), A343224(n+1))` -/
def P15876439047741039466.Spec : Prop :=
  ∀ n, (P15876439047741039466.a n : ℤ) = A348028 (n + 1)

theorem P15876439047741039466.correct : P15876439047741039466.Spec := by
  intro n
  simp only [A348028, Nat.add_sub_cancel]

end A348028

/-!
# A348029: a(n) = A003959(n) - sigma(n), where A003959 is multiplicative with a(p^e) = (p+1)^e and sigma is the sum of divisors.

The programs for A348029, the canonical program `A348029.P15301953817482989203` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348029 has offset 1).

The definition of A348029 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348029.P15301953817482989203

`A003959(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348029

/-- `A003959(n+1)-A000203(n+1)` -/
def P15301953817482989203.Spec : Prop :=
  ∀ n, P15301953817482989203.a n = A348029 (n + 1)

theorem P15301953817482989203.correct : P15301953817482989203.Spec := by
  intro n
  simp only [A348029, Nat.add_sub_cancel]

end A348029

/-! ## A348029.P5068188567658236483

`∑{d}[n+1, A348030(#)]`
-/

namespace A348029.P5068188567658236483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A348030 d

end

end A348029.P5068188567658236483

namespace A348029

/-- `∑{d}[n+1, A348030(#)]` -/
def P5068188567658236483.Spec : Prop :=
  ∀ n, P5068188567658236483.a n = A348029 (n + 1)

end A348029

/-! ## A348029.P974774301772261076

`A003959(n+1)-Δ[A160664(n)]`
-/

namespace A348029.P974774301772261076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - (f1 (n + 1) - f1 n)

end

end A348029.P974774301772261076

namespace A348029

/-- `A003959(n+1)-Δ[A160664(n)]` -/
def P974774301772261076.Spec : Prop :=
  ∀ n, P974774301772261076.a n = A348029 (n + 1)

end A348029

/-! ## A348029.P6714787237974206641

`A348508(n+1)+A033879(n+1)`
-/

namespace A348029.P6714787237974206641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348508 (n + 1) + A033879 (n + 1)

end

end A348029.P6714787237974206641

namespace A348029

/-- `A348508(n+1)+A033879(n+1)` -/
def P6714787237974206641.Spec : Prop :=
  ∀ n, P6714787237974206641.a n = A348029 (n + 1)

end A348029

/-! ## A348029.P16246006150021231205

`A348970(n+1)+A211991(n+1)`
-/

namespace A348029.P16246006150021231205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348970 (n + 1) + A211991 (n + 1)

end

end A348029.P16246006150021231205

namespace A348029

/-- `A348970(n+1)+A211991(n+1)` -/
def P16246006150021231205.Spec : Prop :=
  ∀ n, P16246006150021231205.a n = A348029 (n + 1)

end A348029

/-! ## A348029.P10296430351838834493

`A348507(n+1)-A001065(n+1)`
-/

namespace A348029.P10296430351838834493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (n + 1) - A001065 (n + 1)

end

end A348029.P10296430351838834493

namespace A348029

/-- `A348507(n+1)-A001065(n+1)` -/
def P10296430351838834493.Spec : Prop :=
  ∀ n, P10296430351838834493.a n = A348029 (n + 1)

end A348029

/-! ## A348029.P12935266316475357413

`A348508(n+1)-A033880(n+1)`
-/

namespace A348029.P12935266316475357413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348508 (n + 1) - A033880 (n + 1)

end

end A348029.P12935266316475357413

namespace A348029

/-- `A348508(n+1)-A033880(n+1)` -/
def P12935266316475357413.Spec : Prop :=
  ∀ n, P12935266316475357413.a n = A348029 (n + 1)

end A348029

/-! ## A348029.P7297573026516068474

`A348732(n+1)-A048146(n+1)`
-/

namespace A348029.P7297573026516068474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348732 (n + 1) - A048146 (n + 1)

end

end A348029.P7297573026516068474

namespace A348029

/-- `A348732(n+1)-A048146(n+1)` -/
def P7297573026516068474.Spec : Prop :=
  ∀ n, P7297573026516068474.a n = A348029 (n + 1)

end A348029

/-! ## A348029.P17455197260748897585

`A003959(n+1)-abs(Δ[A330725(n)])`
-/

namespace A348029.P17455197260748897585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - |f1 (n + 1) - f1 n|

end

end A348029.P17455197260748897585

namespace A348029

/-- `A003959(n+1)-abs(Δ[A330725(n)])` -/
def P17455197260748897585.Spec : Prop :=
  ∀ n, P17455197260748897585.a n = A348029 (n + 1)

end A348029

/-! ## A348029.P18215230377127861604

`A003959(n+1)+1-A088580(n+1)`
-/

namespace A348029.P18215230377127861604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) + (1 - A088580 (n + 1))

end

end A348029.P18215230377127861604

namespace A348029

/-- `A003959(n+1)+1-A088580(n+1)` -/
def P18215230377127861604.Spec : Prop :=
  ∀ n, P18215230377127861604.a n = A348029 (n + 1)

end A348029

/-! ## A348029.P422883282061133650

`A048146(n+1)+2*A348945(n+1)`
-/

namespace A348029.P422883282061133650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1) + 2 * A348945 (n + 1)

end

end A348029.P422883282061133650

namespace A348029

/-- `A048146(n+1)+2*A348945(n+1)` -/
def P422883282061133650.Spec : Prop :=
  ∀ n, P422883282061133650.a n = A348029 (n + 1)

end A348029

/-! ## A348029.P103500840976478177

`A003959(n+1)-(A001065(n+1)+n+1)`
-/

namespace A348029.P103500840976478177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - (A001065 (n + 1) + (n + 1 : ℤ))

end

end A348029.P103500840976478177

namespace A348029

/-- `A003959(n+1)-(A001065(n+1)+n+1)` -/
def P103500840976478177.Spec : Prop :=
  ∀ n, P103500840976478177.a n = A348029 (n + 1)

end A348029

/-! ## A348029.P16967678367887909752

`∏{d}[n+1, A000203(A014963(#))]-A000203(n+1)`
-/

namespace A348029.P16967678367887909752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000203 (A014963 d).toNat - A000203 (n + 1)

end

end A348029.P16967678367887909752

namespace A348029

/-- `∏{d}[n+1, A000203(A014963(#))]-A000203(n+1)` -/
def P16967678367887909752.Spec : Prop :=
  ∀ n, P16967678367887909752.a n = A348029 (n + 1)

end A348029

/-! ## A348029.P1616820645504274626

`A003959(n+1)-(A048146(n+1)+A034448(n+1))`
-/

namespace A348029.P1616820645504274626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - (A048146 (n + 1) + A034448 (n + 1))

end

end A348029.P1616820645504274626

namespace A348029

/-- `A003959(n+1)-(A048146(n+1)+A034448(n+1))` -/
def P1616820645504274626.Spec : Prop :=
  ∀ n, P1616820645504274626.a n = A348029 (n + 1)

end A348029

/-! ## A348029.P8894859558655646002

`A003959(n+1)-(A162296(n+1)+A048250(n+1))`
-/

namespace A348029.P8894859558655646002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - (A162296 (n + 1) + A048250 (n + 1))

end

end A348029.P8894859558655646002

namespace A348029

/-- `A003959(n+1)-(A162296(n+1)+A048250(n+1))` -/
def P8894859558655646002.Spec : Prop :=
  ∀ n, P8894859558655646002.a n = A348029 (n + 1)

end A348029

/-! ## A348029.P15440986578682232193

`A003959(n+1)+A211991(n+1)-A129283(n+1)`
-/

namespace A348029.P15440986578682232193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) + (A211991 (n + 1) - A129283 (n + 1))

end

end A348029.P15440986578682232193

namespace A348029

/-- `A003959(n+1)+A211991(n+1)-A129283(n+1)` -/
def P15440986578682232193.Spec : Prop :=
  ∀ n, P15440986578682232193.a n = A348029 (n + 1)

end A348029

/-! ## A348029.P14249230821258202756

`A348507(n+1)-(A048146(n+1)+A034460(n+1))`
-/

namespace A348029.P14249230821258202756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (n + 1) - (A048146 (n + 1) + A034460 (n + 1))

end

end A348029.P14249230821258202756

namespace A348029

/-- `A348507(n+1)-(A048146(n+1)+A034460(n+1))` -/
def P14249230821258202756.Spec : Prop :=
  ∀ n, P14249230821258202756.a n = A348029 (n + 1)

end A348029

/-! ## A348029.P194399979222142826

`A003959(n+1)-(A325974(n+1)+A325973(n+1))`
-/

namespace A348029.P194399979222142826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - (A325974 (n + 1) + A325973 (n + 1))

end

end A348029.P194399979222142826

namespace A348029

/-- `A003959(n+1)-(A325974(n+1)+A325973(n+1))` -/
def P194399979222142826.Spec : Prop :=
  ∀ n, P194399979222142826.a n = A348029 (n + 1)

end A348029

/-! ## A348029.P10740180766450261792

`A003959(n+1)+A348945(n+1)-A348944(n+1)`
-/

namespace A348029.P10740180766450261792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) + (A348945 (n + 1) - A348944 (n + 1))

end

end A348029.P10740180766450261792

namespace A348029

/-- `A003959(n+1)+A348945(n+1)-A348944(n+1)` -/
def P10740180766450261792.Spec : Prop :=
  ∀ n, P10740180766450261792.a n = A348029 (n + 1)

end A348029

/-! ## A348029.P12473133069090257563

`A348944(n+1)+A348945(n+1)-A034448(n+1)`
-/

namespace A348029.P12473133069090257563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348944 (n + 1) + (A348945 (n + 1) - A034448 (n + 1))

end

end A348029.P12473133069090257563

namespace A348029

/-- `A348944(n+1)+A348945(n+1)-A034448(n+1)` -/
def P12473133069090257563.Spec : Prop :=
  ∀ n, P12473133069090257563.a n = A348029 (n + 1)

end A348029

/-!
# A348030: a(n) = A003968(n) - n, where A003968 is multiplicative with a(p^e) = p*(p+1)^(e-1).

The programs for A348030, the canonical program `A348030.P17211473318799311416` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348030 has offset 1).

The definition of A348030 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003968, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348030.P17211473318799311416

`A003968(n+1)-(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348030

/-- `A003968(n+1)-(n+1)` -/
def P17211473318799311416.Spec : Prop :=
  ∀ n, P17211473318799311416.a n = A348030 (n + 1)

theorem P17211473318799311416.correct : P17211473318799311416.Spec := by
  intro n
  simp only [A348030, Nat.add_sub_cancel]

end A348030

/-! ## A348030.P2042601095566148712

`A348971(n+1)-A051953(n+1)`
-/

namespace A348030.P2042601095566148712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348971 (n + 1) - A051953 (n + 1)

end

end A348030.P2042601095566148712

namespace A348030

/-- `A348971(n+1)-A051953(n+1)` -/
def P2042601095566148712.Spec : Prop :=
  ∀ n, P2042601095566148712.a n = A348030 (n + 1)

end A348030

/-! ## A348030.P366950489473160525

`A348971(n+1)-(A219428(n+1)+1)`
-/

namespace A348030.P366950489473160525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348971 (n + 1) - (A219428 (n + 1) + 1)

end

end A348030.P366950489473160525

namespace A348030

/-- `A348971(n+1)-(A219428(n+1)+1)` -/
def P366950489473160525.Spec : Prop :=
  ∀ n, P366950489473160525.a n = A348030 (n + 1)

end A348030

/-! ## A348030.P3031976573279435554

`A007947(n+1)*A327564(n+1)-(n+1)`
-/

namespace A348030.P3031976573279435554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A327564 (n + 1) - (n + 1 : ℤ)

end

end A348030.P3031976573279435554

namespace A348030

/-- `A007947(n+1)*A327564(n+1)-(n+1)` -/
def P3031976573279435554.Spec : Prop :=
  ∀ n, P3031976573279435554.a n = A348030 (n + 1)

end A348030

/-! ## A348030.P12984212024892436828

`∑{d}[n+1, A008683(#)*A348029((n+1)/#)]`
-/

namespace A348030.P12984212024892436828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A348029 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348030.P12984212024892436828

namespace A348030

/-- `∑{d}[n+1, A008683(#)*A348029((n+1)/#)]` -/
def P12984212024892436828.Spec : Prop :=
  ∀ n, P12984212024892436828.a n = A348030 (n + 1)

end A348030

/-! ## A348030.P4105887364486032422

`∑{d}[n+1, A008683(#)*A003959((n+1)/#)]-(n+1)`
-/

namespace A348030.P4105887364486032422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A003959 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - (n + 1 : ℤ)

end

end A348030.P4105887364486032422

namespace A348030

/-- `∑{d}[n+1, A008683(#)*A003959((n+1)/#)]-(n+1)` -/
def P4105887364486032422.Spec : Prop :=
  ∀ n, P4105887364486032422.a n = A348030 (n + 1)

end A348030

/-! ## A348030.P5803921908731978787

`A003959(A003557(n+1))*A007947(n+1)-(n+1)`
-/

namespace A348030.P5803921908731978787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A003557 (n + 1)).toNat * A007947 (n + 1) - (n + 1 : ℤ)

end

end A348030.P5803921908731978787

namespace A348030

/-- `A003959(A003557(n+1))*A007947(n+1)-(n+1)` -/
def P5803921908731978787.Spec : Prop :=
  ∀ n, P5803921908731978787.a n = A348030 (n + 1)

end A348030

/-! ## A348030.P9923913972521859067

`(A348038(n+1)-A348037(n+1))*A348036(n+1)`
-/

namespace A348030.P9923913972521859067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A348038 (n + 1) - A348037 (n + 1)) * A348036 (n + 1)

end

end A348030.P9923913972521859067

namespace A348030

/-- `(A348038(n+1)-A348037(n+1))*A348036(n+1)` -/
def P9923913972521859067.Spec : Prop :=
  ∀ n, P9923913972521859067.a n = A348030 (n + 1)

end A348030

/-!
# A348031: Multiply-perfect numbers k that have a divisor d such that sigma(d)*d = k.

The programs for A348031, there is no canonical definition to state claims against.
-/

/-! ## A348031.P4535503950137246725

`A007691(lt[A351976(n), A071831(n)])`
-/

namespace A348031.P4535503950137246725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351976 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348031.P4535503950137246725

/-! ## A348031.P12220532131809433457

`A007691(lt[A067661(n), A003573(n)])`
-/

namespace A348031.P12220532131809433457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348031.P12220532131809433457

/-! ## A348031.P10628214814690770633

`A007691(lt[A325702(n), A093545(n)])`
-/

namespace A348031.P10628214814690770633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325702 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348031.P10628214814690770633

/-! ## A348031.P12384934203874043082

`A007691(lt[A325325(n), A003044(n+1)])`
-/

namespace A348031.P12384934203874043082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325325 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348031.P12384934203874043082

/-! ## A348031.P8859669453481408591

`A007691(lt[A289769(n), A362211(n+1)])`
-/

namespace A348031.P8859669453481408591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289769 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348031.P8859669453481408591

/-!
# A348032: Multiply-perfect numbers k that do not have a divisor d such that sigma(d)*d = k.

The programs for A348032, there is no canonical definition to state claims against.
-/

/-! ## A348032.P16857410133242908024

`A282775(lt[7, A160595(n+1)])`
-/

namespace A348032.P16857410133242908024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A348032.P16857410133242908024

/-!
# A348033: Number of unitary divisors d of n such that sigma(d)*d is equal to n.

The programs for A348033, there is no canonical definition to state claims against.
-/

/-! ## A348033.P7146520128536153188

`char[A348034(n+1)-1]`
-/

namespace A348033.P7146520128536153188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348034 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A348033.P7146520128536153188

/-! ## A348033.P7622438811142424724

`C(A327153(n+1), A351014(A077609(n+1)))`
-/

namespace A348033.P7622438811142424724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A327153 (n + 1)).toNat (A351014 (A077609 (n + 1)).toNat).toNat

end

end A348033.P7622438811142424724

/-! ## A348033.P8943648552135946755

`and(A085731(A006532(n+1)), A327153(n+1))`
-/

namespace A348033.P8943648552135946755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085731 (A006532 (n + 1)).toNat) (A327153 (n + 1))

end

end A348033.P8943648552135946755

/-! ## A348033.P6632921173871514587

`char[n*∑{d}[n, #]-1]*A334946(A008284(n+1))`
-/

namespace A348033.P6632921173871514587
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ d ∈ Nat.divisors (f2 n), d) : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A334946 (A008284 (n + 1)).toNat

end

end A348033.P6632921173871514587

/-! ## A348033.P13547499340683962818

`A071038(A283122(3*n+1))*A327153(n+1)`
-/

namespace A348033.P13547499340683962818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071038 (A283122 (3 * n + 1)).toNat * A327153 (n + 1)

end

end A348033.P13547499340683962818

/-! ## A348033.P9961576138931134118

`and(A059894(A003005(n+1)), A327153(n+1))`
-/

namespace A348033.P9961576138931134118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059894 (A003005 (n + 1)).toNat) (A327153 (n + 1))

end

end A348033.P9961576138931134118

/-! ## A348033.P7974328415444052109

`and(A050278(A033220(n+1)), A327153(n+1))`
-/

namespace A348033.P7974328415444052109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050278 (A033220 (n + 1)).toNat) (A327153 (n + 1))

end

end A348033.P7974328415444052109

/-! ## A348033.P9813245190970199334

`and(A003052(A007318(n)), A327153(n+1))`
-/

namespace A348033.P9813245190970199334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003052 (A007318 n).toNat) (A327153 (n + 1))

end

end A348033.P9813245190970199334

/-! ## A348033.P17887918603578145946

`A114000(A007318(n+3))*A327153(n+1)`
-/

namespace A348033.P17887918603578145946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114000 (A007318 (n + 3)).toNat * A327153 (n + 1)

end

end A348033.P17887918603578145946

/-! ## A348033.P17273556542616101026

`and(A327069(A025431(n)), A327153(n+1))`
-/

namespace A348033.P17273556542616101026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A327069 (A025431 n).toNat) (A327153 (n + 1))

end

end A348033.P17273556542616101026

/-! ## A348033.P16748006327030738663

`A010060(A035343(n)*A327153(n+1))`
-/

namespace A348033.P16748006327030738663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A035343 n * A327153 (n + 1)).toNat

end

end A348033.P16748006327030738663

/-! ## A348033.P10230444001603753840

`A327144(A327153(n+1)*A327155(n+1))`
-/

namespace A348033.P10230444001603753840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327144 (A327153 (n + 1) * A327155 (n + 1)).toNat

end

end A348033.P10230444001603753840

/-! ## A348033.P629963443492036867

`A327153(n+1)*A373791(A214249(n))`
-/

namespace A348033.P629963443492036867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327153 (n + 1) * A373791 (A214249 n).toNat

end

end A348033.P629963443492036867

/-! ## A348033.P1752153455003509397

`C(A327153(n+1), A373127(A068118(2*n+1)))`
-/

namespace A348033.P1752153455003509397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A327153 (n + 1)).toNat (A373127 (A068118 (2 * n + 1)).toNat).toNat

end

end A348033.P1752153455003509397

/-!
# A348034: Numbers k that have at least one unitary divisor d such that sigma(d)*d is equal to k.

The programs for A348034, there is no canonical definition to state claims against.
-/

/-! ## A348034.P12534288862425551413

`filter[A327165(n+1), A348033(#)]`
-/

namespace A348034.P12534288862425551413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348033 (f1 j).toNat = 1) n)

end

end A348034.P12534288862425551413

/-! ## A348034.P12327050951805834646

`filter[A339472(n+1), A348033(#)]`
-/

namespace A348034.P12327050951805834646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348033 (f1 j).toNat = 1) n)

end

end A348034.P12327050951805834646

/-! ## A348034.P12845229319479508752

`eq[1, A348033(n+1)]+1`
-/

namespace A348034.P12845229319479508752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348033 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348034.P12845229319479508752

/-! ## A348034.P4833312003968604735

`filter[A071562(n+1), A348033(#)]`
-/

namespace A348034.P4833312003968604735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348033 (f1 j).toNat = 1) n)

end

end A348034.P4833312003968604735

/-! ## A348034.P5997557194679633484

`filter[A387941(n+1), A348033(#)]`
-/

namespace A348034.P5997557194679633484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348033 (f1 j).toNat = 1) n)

end

end A348034.P5997557194679633484

/-! ## A348034.P5517278196508647728

`filter[A092671(n+1), A348033(#)]`
-/

namespace A348034.P5517278196508647728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348033 (f1 j).toNat = 1) n)

end

end A348034.P5517278196508647728

/-!
# A348035: Multiply-perfect numbers k that have a unitary divisor d such that sigma(d)*d = k.

The programs for A348035, there is no canonical definition to state claims against.
-/

/-! ## A348035.P8173176339824262907

`∑{d}[A328265(n+1), #*A328265(n+1)]`
-/

namespace A348035.P8173176339824262907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A328265 (n + 1)

end

end A348035.P8173176339824262907

/-! ## A348035.P11318508619674377791

`A000203(A328265(n+1))*A328265(n+1)`
-/

namespace A348035.P11318508619674377791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A328265 (n + 1)).toNat * A328265 (n + 1)

end

end A348035.P11318508619674377791

/-! ## A348035.P1880081983016704541

`A064987(A328265(n+1))`
-/

namespace A348035.P1880081983016704541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (A328265 (n + 1)).toNat

end

end A348035.P1880081983016704541

/-! ## A348035.P6773321570028350721

`A348031(record[A333226(n+1)])`
-/

namespace A348035.P6773321570028350721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348031 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348035.P6773321570028350721

/-! ## A348035.P6172821286389852877

`∩[A091321(n+1), A216793(n+1)]`
-/

namespace A348035.P6172821286389852877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348035.P6172821286389852877

/-!
# A348036: a(n) = gcd(n, A003968(n)), where A003968 is multiplicative with a(p^e) = p*(p+1)^(e-1).

The programs for A348036, the canonical program `A348036.P9346987634214526733` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348036 has offset 1).

The definition of A348036 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003968, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348036.P13377547927118801298

`(n+1)/A348037(n+1)`
-/

namespace A348036.P13377547927118801298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A348037 (n + 1) : ℚ)

end

end A348036.P13377547927118801298

namespace A348036

/-- `(n+1)/A348037(n+1)` -/
def P13377547927118801298.Spec : Prop :=
  ∀ n, P13377547927118801298.a n = (A348036 (n + 1) : ℚ)

end A348036

/-! ## A348036.P9346987634214526733

`gcd(n+1, A003968(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348036

/-- `gcd(n+1, A003968(n+1))` -/
def P9346987634214526733.Spec : Prop :=
  ∀ n, (P9346987634214526733.a n : ℤ) = A348036 (n + 1)

theorem P9346987634214526733.correct : P9346987634214526733.Spec := by
  intro n
  simp only [A348036, Nat.add_sub_cancel]

end A348036

/-! ## A348036.P2253025098775887470

`A007947(n+1)*A348039(n+1)`
-/

namespace A348036.P2253025098775887470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A348039 (n + 1)

end

end A348036.P2253025098775887470

namespace A348036

/-- `A007947(n+1)*A348039(n+1)` -/
def P2253025098775887470.Spec : Prop :=
  ∀ n, P2253025098775887470.a n = A348036 (n + 1)

end A348036

/-! ## A348036.P7474583337392770092

`A003968(n+1)/A348038(n+1)`
-/

namespace A348036.P7474583337392770092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003968 (n + 1) : ℚ) / (A348038 (n + 1) : ℚ)

end

end A348036.P7474583337392770092

namespace A348036

/-- `A003968(n+1)/A348038(n+1)` -/
def P7474583337392770092.Spec : Prop :=
  ∀ n, P7474583337392770092.a n = (A348036 (n + 1) : ℚ)

end A348036

/-! ## A348036.P11046210873654005444

`gcd(A061019(n+1), A348030(n+1))`
-/

namespace A348036.P11046210873654005444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061019 (n + 1)) (A348030 (n + 1))

end

end A348036.P11046210873654005444

namespace A348036

/-- `gcd(A061019(n+1), A348030(n+1))` -/
def P11046210873654005444.Spec : Prop :=
  ∀ n, (P11046210873654005444.a n : ℤ) = A348036 (n + 1)

end A348036

/-! ## A348036.P1112668315649019839

`abs(A062953(n+1)*A348039(n+1))`
-/

namespace A348036.P1112668315649019839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062953 (n + 1) * A348039 (n + 1)|

end

end A348036.P1112668315649019839

namespace A348036

/-- `abs(A062953(n+1)*A348039(n+1))` -/
def P1112668315649019839.Spec : Prop :=
  ∀ n, P1112668315649019839.a n = A348036 (n + 1)

end A348036

/-! ## A348036.P17926671782788080216

`gcd(n*A348030(n+1), A072356(n+1))`
-/

namespace A348036.P17926671782788080216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A348030 (n + 1)) (A072356 (n + 1))

end

end A348036.P17926671782788080216

namespace A348036

/-- `gcd(n*A348030(n+1), A072356(n+1))` -/
def P17926671782788080216.Spec : Prop :=
  ∀ n, (P17926671782788080216.a n : ℤ) = A348036 (n + 1)

end A348036

/-! ## A348036.P11240487631832985258

`∏{d}[n+1, A089026(#)]*A348039(n+1)`
-/

namespace A348036.P11240487631832985258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n), A089026 d) * A348039 (n + 1)

end

end A348036.P11240487631832985258

namespace A348036

/-- `∏{d}[n+1, A089026(#)]*A348039(n+1)` -/
def P11240487631832985258.Spec : Prop :=
  ∀ n, P11240487631832985258.a n = A348036 (n + 1)

end A348036

/-! ## A348036.P17079118038115191034

`A003968(n+1)/A327564(n+1)*A348039(n+1)`
-/

namespace A348036.P17079118038115191034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003968 (n + 1) : ℚ) / (A327564 (n + 1) : ℚ) * (A348039 (n + 1) : ℚ)

end

end A348036.P17079118038115191034

namespace A348036

/-- `A003968(n+1)/A327564(n+1)*A348039(n+1)` -/
def P17079118038115191034.Spec : Prop :=
  ∀ n, P17079118038115191034.a n = (A348036 (n + 1) : ℚ)

end A348036

/-! ## A348036.P15227648246797807087

`A007947(n+1)*A327564(n+1)/A348038(n+1)`
-/

namespace A348036.P15227648246797807087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) * A327564 (n + 1) : ℚ) / (A348038 (n + 1) : ℚ)

end

end A348036.P15227648246797807087

namespace A348036

/-- `A007947(n+1)*A327564(n+1)/A348038(n+1)` -/
def P15227648246797807087.Spec : Prop :=
  ∀ n, P15227648246797807087.a n = (A348036 (n + 1) : ℚ)

end A348036

/-! ## A348036.P2809856567163718467

`A083346(A003557(n+1)*A083346(n+1))*A348039(n+1)`
-/

namespace A348036.P2809856567163718467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (A003557 (n + 1) * A083346 (n + 1)).toNat * A348039 (n + 1)

end

end A348036.P2809856567163718467

namespace A348036

/-- `A083346(A003557(n+1)*A083346(n+1))*A348039(n+1)` -/
def P2809856567163718467.Spec : Prop :=
  ∀ n, P2809856567163718467.a n = A348036 (n + 1)

end A348036

/-! ## A348036.P4284007602162303350

`gcd(A072356(n+1), A348030(A072356(n+1)))`
-/

namespace A348036.P4284007602162303350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072356 (n + 1)) (A348030 (A072356 (n + 1)).toNat)

end

end A348036.P4284007602162303350

namespace A348036

/-- `gcd(A072356(n+1), A348030(A072356(n+1)))` -/
def P4284007602162303350.Spec : Prop :=
  ∀ n, (P4284007602162303350.a n : ℤ) = A348036 (n + 1)

end A348036

/-! ## A348036.P9660190465397328102

`A003557(A064549(n+1))/A237517(A003557(n+1))`
-/

namespace A348036.P9660190465397328102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (A064549 (n + 1)).toNat : ℚ) / (A237517 (A003557 (n + 1)).toNat : ℚ)

end

end A348036.P9660190465397328102

namespace A348036

/-- `A003557(A064549(n+1))/A237517(A003557(n+1))` -/
def P9660190465397328102.Spec : Prop :=
  ∀ n, P9660190465397328102.a n = (A348036 (n + 1) : ℚ)

end A348036

/-! ## A348036.P2368880943094703772

`A003557(A007947(n+1)²)*A126795(A003557(n+1))`
-/

namespace A348036.P2368880943094703772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A007947 (n + 1) ^ 2).toNat * A126795 (A003557 (n + 1)).toNat

end

end A348036.P2368880943094703772

namespace A348036

/-- `A003557(A007947(n+1)²)*A126795(A003557(n+1))` -/
def P2368880943094703772.Spec : Prop :=
  ∀ n, P2368880943094703772.a n = A348036 (n + 1)

end A348036

/-! ## A348036.P4523574530406209871

`A064549(A064549(n+1)*A348039(n+1))/A064549(n+1)`
-/

namespace A348036.P4523574530406209871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (A064549 (n + 1) * A348039 (n + 1)).toNat : ℚ) / (A064549 (n + 1) : ℚ)

end

end A348036.P4523574530406209871

namespace A348036

/-- `A064549(A064549(n+1)*A348039(n+1))/A064549(n+1)` -/
def P4523574530406209871.Spec : Prop :=
  ∀ n, P4523574530406209871.a n = (A348036 (n + 1) : ℚ)

end A348036

/-!
# A348037: a(n) = n / gcd(n, A003968(n)), where A003968 is multiplicative with a(p^e) = p*(p+1)^(e-1).

The programs for A348037, the canonical program `A348037.P6839173858251422796` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348037 has offset 1).

The definition of A348037 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003557, A348039, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348037.P8940608076054143361

`(n+1)/A348036(n+1)`
-/

namespace A348037.P8940608076054143361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A348036 (n + 1) : ℚ)

end

end A348037.P8940608076054143361

namespace A348037

/-- `(n+1)/A348036(n+1)` -/
def P8940608076054143361.Spec : Prop :=
  ∀ n, P8940608076054143361.a n = (A348037 (n + 1) : ℚ)

end A348037

/-! ## A348037.P12854476592269797643

`(n+1)/gcd(n+1, A003968(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348037.P12854476592269797643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A003968 (n + 1)) : ℚ)

end

end A348037.P12854476592269797643

namespace A348037

/-- `(n+1)/gcd(n+1, A003968(n+1))` -/
def P12854476592269797643.Spec : Prop :=
  ∀ n, P12854476592269797643.a n = (A348037 (n + 1) : ℚ)

end A348037

/-! ## A348037.P6839173858251422796

`A003557(n+1)/A348039(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348037

/-- `A003557(n+1)/A348039(n+1)` -/
def P6839173858251422796.Spec : Prop :=
  ∀ n, P6839173858251422796.a n = (A348037 (n + 1) : ℚ)

end A348037

/-! ## A348037.P5848944884697785785

`(n+1)/(A007947(n+1)*A348039(n+1))`
-/

namespace A348037.P5848944884697785785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007947 (n + 1) * A348039 (n + 1) : ℚ)

end

end A348037.P5848944884697785785

namespace A348037

/-- `(n+1)/(A007947(n+1)*A348039(n+1))` -/
def P5848944884697785785.Spec : Prop :=
  ∀ n, P5848944884697785785.a n = (A348037 (n + 1) : ℚ)

end A348037

/-! ## A348037.P6854587683774024613

`A003557(n+1)/A327564(n+1)*A348038(n+1)`
-/

namespace A348037.P6854587683774024613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℚ) / (A327564 (n + 1) : ℚ) * (A348038 (n + 1) : ℚ)

end

end A348037.P6854587683774024613

namespace A348037

/-- `A003557(n+1)/A327564(n+1)*A348038(n+1)` -/
def P6854587683774024613.Spec : Prop :=
  ∀ n, P6854587683774024613.a n = (A348037 (n + 1) : ℚ)

end A348037

/-! ## A348037.P16736394589262860772

`A001615(n+1)/gcd(A001615(n+1), A003959(n+1))`
-/

namespace A348037.P16736394589262860772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (Int.gcd (A001615 (n + 1)) (A003959 (n + 1)) : ℚ)

end

end A348037.P16736394589262860772

namespace A348037

/-- `A001615(n+1)/gcd(A001615(n+1), A003959(n+1))` -/
def P16736394589262860772.Spec : Prop :=
  ∀ n, P16736394589262860772.a n = (A348037 (n + 1) : ℚ)

end A348037

/-! ## A348037.P258158221780218277

`A003557(n+1)/A003557(A003968(n+1)/A348038(n+1))`
-/

namespace A348037.P258158221780218277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℚ) / (A003557 (SequenceMachineLib.roundAway ((A003968 (n + 1) : ℚ) / (A348038 (n + 1) : ℚ))).toNat : ℚ)

end

end A348037.P258158221780218277

namespace A348037

/-- `A003557(n+1)/A003557(A003968(n+1)/A348038(n+1))` -/
def P258158221780218277.Spec : Prop :=
  ∀ n, P258158221780218277.a n = (A348037 (n + 1) : ℚ)

end A348037

/-! ## A348037.P7949213325045452079

`A089026(A102439(n))*A237517(A003557(n+1))`
-/

namespace A348037.P7949213325045452079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A102439 n).toNat * A237517 (A003557 (n + 1)).toNat

end

end A348037.P7949213325045452079

namespace A348037

/-- `A089026(A102439(n))*A237517(A003557(n+1))` -/
def P7949213325045452079.Spec : Prop :=
  ∀ n, P7949213325045452079.a n = A348037 (n + 1)

end A348037

/-! ## A348037.P4662438253464739654

`A237517(A003557(n+1))/A089026(A064549(n+1))`
-/

namespace A348037.P4662438253464739654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237517 (A003557 (n + 1)).toNat : ℚ) / (A089026 (A064549 (n + 1)).toNat : ℚ)

end

end A348037.P4662438253464739654

namespace A348037

/-- `A237517(A003557(n+1))/A089026(A064549(n+1))` -/
def P4662438253464739654.Spec : Prop :=
  ∀ n, P4662438253464739654.a n = (A348037 (n + 1) : ℚ)

end A348037

/-! ## A348037.P908256213228099145

`gcd(A242926(n), A381431(n+1))`
-/

namespace A348037.P908256213228099145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A242926 n) (A381431 (n + 1))

end

end A348037.P908256213228099145

namespace A348037

/-- `gcd(A242926(n), A381431(n+1))` -/
def P908256213228099145.Spec : Prop :=
  ∀ n, (P908256213228099145.a n : ℤ) = A348037 (n + 1)

end A348037

/-!
# A348038: a(n) = A003968(n) / gcd(n, A003968(n)), where A003968 is multiplicative with a(p^e) = p*(p+1)^(e-1).

The programs for A348038, the canonical program `A348038.P10301194583297864518` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348038 has offset 1).

The definition of A348038 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003968, A348036, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348038.P10301194583297864518

`A003968(n+1)/A348036(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348038

/-- `A003968(n+1)/A348036(n+1)` -/
def P10301194583297864518.Spec : Prop :=
  ∀ n, P10301194583297864518.a n = (A348038 (n + 1) : ℚ)

end A348038

/-! ## A348038.P6132408297034239959

`A327564(n+1)/A348039(n+1)`
-/

namespace A348038.P6132408297034239959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327564 (n + 1) : ℚ) / (A348039 (n + 1) : ℚ)

end

end A348038.P6132408297034239959

namespace A348038

/-- `A327564(n+1)/A348039(n+1)` -/
def P6132408297034239959.Spec : Prop :=
  ∀ n, P6132408297034239959.a n = (A348038 (n + 1) : ℚ)

end A348038

/-! ## A348038.P3372179648605123938

`A003968(n+1)/gcd(n+1, A003968(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A348038.P3372179648605123938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003968 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A003968 (n + 1)) : ℚ)

end

end A348038.P3372179648605123938

namespace A348038

/-- `A003968(n+1)/gcd(n+1, A003968(n+1))` -/
def P3372179648605123938.Spec : Prop :=
  ∀ n, P3372179648605123938.a n = (A348038 (n + 1) : ℚ)

end A348038

/-! ## A348038.P13764561388406794831

`A003968(n+1)/(n+1)*A348037(n+1)`
-/

namespace A348038.P13764561388406794831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003968 (n + 1) : ℚ) / (n + 1 : ℚ) * (A348037 (n + 1) : ℚ)

end

end A348038.P13764561388406794831

namespace A348038

/-- `A003968(n+1)/(n+1)*A348037(n+1)` -/
def P13764561388406794831.Spec : Prop :=
  ∀ n, P13764561388406794831.a n = (A348038 (n + 1) : ℚ)

end A348038

/-! ## A348038.P11476063111750163009

`A327564(n+1)/A003557(A348036(n+1))`
-/

namespace A348038.P11476063111750163009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327564 (n + 1) : ℚ) / (A003557 (A348036 (n + 1)).toNat : ℚ)

end

end A348038.P11476063111750163009

namespace A348038

/-- `A327564(n+1)/A003557(A348036(n+1))` -/
def P11476063111750163009.Spec : Prop :=
  ∀ n, P11476063111750163009.a n = (A348038 (n + 1) : ℚ)

end A348038

/-! ## A348038.P10210466938051501901

`A348037(n+1)+A348030(n+1)/A348036(n+1)`
-/

namespace A348038.P10210466938051501901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348037 (n + 1) : ℚ) + (A348030 (n + 1) : ℚ) / (A348036 (n + 1) : ℚ)

end

end A348038.P10210466938051501901

namespace A348038

/-- `A348037(n+1)+A348030(n+1)/A348036(n+1)` -/
def P10210466938051501901.Spec : Prop :=
  ∀ n, P10210466938051501901.a n = (A348038 (n + 1) : ℚ)

end A348038

/-! ## A348038.P7925096068478385960

`A003968(n+1)/(A007947(n+1)*A348039(n+1))`
-/

namespace A348038.P7925096068478385960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003968 (n + 1) : ℚ) / (A007947 (n + 1) * A348039 (n + 1) : ℚ)

end

end A348038.P7925096068478385960

namespace A348038

/-- `A003968(n+1)/(A007947(n+1)*A348039(n+1))` -/
def P7925096068478385960.Spec : Prop :=
  ∀ n, P7925096068478385960.a n = (A348038 (n + 1) : ℚ)

end A348038

/-! ## A348038.P16389659731735531597

`A327564(n+1)/A003557(n+1)*A348037(n+1)`
-/

namespace A348038.P16389659731735531597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327564 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ) * (A348037 (n + 1) : ℚ)

end

end A348038.P16389659731735531597

namespace A348038

/-- `A327564(n+1)/A003557(n+1)*A348037(n+1)` -/
def P16389659731735531597.Spec : Prop :=
  ∀ n, P16389659731735531597.a n = (A348038 (n + 1) : ℚ)

end A348038

/-! ## A348038.P7055744182260990005

`A007947(n+1)*A327564(n+1)/A348036(n+1)`
-/

namespace A348038.P7055744182260990005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) * A327564 (n + 1) : ℚ) / (A348036 (n + 1) : ℚ)

end

end A348038.P7055744182260990005

namespace A348038

/-- `A007947(n+1)*A327564(n+1)/A348036(n+1)` -/
def P7055744182260990005.Spec : Prop :=
  ∀ n, P7055744182260990005.a n = (A348038 (n + 1) : ℚ)

end A348038

/-! ## A348038.P10923384735513012720

`A003959(n+1)/gcd(A001615(n+1), A003959(n+1))`
-/

namespace A348038.P10923384735513012720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (Int.gcd (A001615 (n + 1)) (A003959 (n + 1)) : ℚ)

end

end A348038.P10923384735513012720

namespace A348038

/-- `A003959(n+1)/gcd(A001615(n+1), A003959(n+1))` -/
def P10923384735513012720.Spec : Prop :=
  ∀ n, P10923384735513012720.a n = (A348038 (n + 1) : ℚ)

end A348038

/-!
# A348039: a(n) = gcd(A003557(n), A327564(n)).

The programs for A348039, the canonical program `A348039.P15874517280542451460` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348039 has offset 1).

The definition of A348039 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A348036, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348039.P18277916684400264075

`A003557(n+1)/A348037(n+1)`
-/

namespace A348039.P18277916684400264075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) : ℚ) / (A348037 (n + 1) : ℚ)

end

end A348039.P18277916684400264075

namespace A348039

/-- `A003557(n+1)/A348037(n+1)` -/
def P18277916684400264075.Spec : Prop :=
  ∀ n, P18277916684400264075.a n = (A348039 (n + 1) : ℚ)

end A348039

/-! ## A348039.P15874517280542451460

`A348036(n+1)/A007947(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348039

/-- `A348036(n+1)/A007947(n+1)` -/
def P15874517280542451460.Spec : Prop :=
  ∀ n, P15874517280542451460.a n = (A348039 (n + 1) : ℚ)

end A348039

/-! ## A348039.P6186257335486170345

`A327564(n+1)/A348038(n+1)`
-/

namespace A348039.P6186257335486170345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327564 (n + 1) : ℚ) / (A348038 (n + 1) : ℚ)

end

end A348039.P6186257335486170345

namespace A348039

/-- `A327564(n+1)/A348038(n+1)` -/
def P6186257335486170345.Spec : Prop :=
  ∀ n, P6186257335486170345.a n = (A348039 (n + 1) : ℚ)

end A348039

/-! ## A348039.P6115771587653436614

`A003557(A348036(n+1))`
-/

namespace A348039.P6115771587653436614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A348036 (n + 1)).toNat

end

end A348039.P6115771587653436614

namespace A348039

/-- `A003557(A348036(n+1))` -/
def P6115771587653436614.Spec : Prop :=
  ∀ n, P6115771587653436614.a n = A348039 (n + 1)

end A348039

/-! ## A348039.P6716528307002715858

`abs(A348036(n+1)/A062953(n+1))`
-/

namespace A348039.P6716528307002715858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A348036 (n + 1) : ℚ) / (A062953 (n + 1) : ℚ)|

end

end A348039.P6716528307002715858

namespace A348039

/-- `abs(A348036(n+1)/A062953(n+1))` -/
def P6716528307002715858.Spec : Prop :=
  ∀ n, P6716528307002715858.a n = (A348039 (n + 1) : ℚ)

end A348039

/-! ## A348039.P12783403297177724248

`gcd(A000190(A003968(n+1)), A003557(n+1))`
-/

namespace A348039.P12783403297177724248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000190 (A003968 (n + 1)).toNat) (A003557 (n + 1))

end

end A348039.P12783403297177724248

namespace A348039

/-- `gcd(A000190(A003968(n+1)), A003557(n+1))` -/
def P12783403297177724248.Spec : Prop :=
  ∀ n, (P12783403297177724248.a n : ℤ) = A348039 (n + 1)

end A348039

/-! ## A348039.P10133431221057624271

`A330751(A334730(n+1))`
-/

namespace A348039.P10133431221057624271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330751 (A334730 (n + 1)).toNat

end

end A348039.P10133431221057624271

namespace A348039

/-- `A330751(A334730(n+1))` -/
def P10133431221057624271.Spec : Prop :=
  ∀ n, P10133431221057624271.a n = A348039 (n + 1)

end A348039

/-! ## A348039.P13974124277090371448

`A108916(A001842(A089861(n)))!`
-/

namespace A348039.P13974124277090371448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A108916 (A001842 (A089861 n).toNat).toNat).toNat

end

end A348039.P13974124277090371448

namespace A348039

/-- `A108916(A001842(A089861(n)))!` -/
def P13974124277090371448.Spec : Prop :=
  ∀ n, (P13974124277090371448.a n : ℤ) = A348039 (n + 1)

end A348039

/-! ## A348039.P10904514673638200283

`A152845(A025428(Δ[A109827(n)]))`
-/

namespace A348039.P10904514673638200283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152845 (A025428 (f1 (n + 1) - f1 n).toNat).toNat

end

end A348039.P10904514673638200283

namespace A348039

/-- `A152845(A025428(Δ[A109827(n)]))` -/
def P10904514673638200283.Spec : Prop :=
  ∀ n, P10904514673638200283.a n = A348039 (n + 1)

end A348039

/-! ## A348039.P2972213855577913937

`A137278(A064645(A064645(A064645(n+2))))`
-/

namespace A348039.P2972213855577913937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137278 (A064645 (A064645 (A064645 (n + 2)).toNat).toNat).toNat

end

end A348039.P2972213855577913937

namespace A348039

/-- `A137278(A064645(A064645(A064645(n+2))))` -/
def P2972213855577913937.Spec : Prop :=
  ∀ n, P2972213855577913937.a n = A348039 (n + 1)

end A348039

/-!
# A348040: Square array A(n,k) = the length of the common prefix in binary expansions of A156552(n) and A156552(k), read by antidiagonals.

The programs for A348040, there is no canonical definition to state claims against.
-/

/-! ## A348040.P11874539096781554608

`ceil(A348041(n+1)/2)%A348041(n+1)`
-/

namespace A348040.P11874539096781554608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A348041 (n + 1) : ℚ) / 2⌉ (A348041 (n + 1))

end

end A348040.P11874539096781554608

/-! ## A348040.P12368199742224814039

`A230980(and(A140683(n), A348041(n+1)))`
-/

namespace A348040.P12368199742224814039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.land (A140683 n) (A348041 (n + 1))).toNat

end

end A348040.P12368199742224814039

/-! ## A348040.P9851644565109790647

`A000720(A348041(n+1)^A019427(2*n))`
-/

namespace A348040.P9851644565109790647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A348041 (n + 1) : ℚ) ^ (A019427 (2 * n) : ℤ))).toNat

end

end A348040.P9851644565109790647

/-! ## A348040.P5825635790589567183

`A000720(C(A348041(n+1), A019427(2*n)))`
-/

namespace A348040.P5825635790589567183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Nat.choose (A348041 (n + 1)).toNat (A019427 (2 * n)).toNat)

end

end A348040.P5825635790589567183

/-! ## A348040.P1947329490567074226

`A056239(A348041(n+1)+A127648(3*n+1))`
-/

namespace A348040.P1947329490567074226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A348041 (n + 1) + A127648 (3 * n + 1)).toNat

end

end A348040.P1947329490567074226

/-! ## A348040.P17537629005044496560

`A056239(A001511(2*n+5)*A348041(n+1))`
-/

namespace A348040.P17537629005044496560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A001511 (2 * n + 5) * A348041 (n + 1)).toNat

end

end A348040.P17537629005044496560

/-!
# A348041: Square array read by antidiagonals. A(n,k) is the nearest common ancestor of n and k in the Doudna tree (A005940).

The programs for A348041, there is no canonical definition to state claims against.
-/

/-! ## A348041.P387497772925171664

`A082858(n)+A057427(A353851(n))`
-/

namespace A348041.P387497772925171664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 n + A057427 (A353851 n).toNat

end

end A348041.P387497772925171664

/-! ## A348041.P16811708858898785660

`A000005(A038371(n)^A082858(n))`
-/

namespace A348041.P16811708858898785660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A038371 n : ℚ) ^ (A082858 n : ℤ))).toNat

end

end A348041.P16811708858898785660

/-! ## A348041.P16305993459468358620

`A082858(n)+A057427(A008277(n+1))`
-/

namespace A348041.P16305993459468358620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 n + A057427 (A008277 (n + 1)).toNat

end

end A348041.P16305993459468358620

/-! ## A348041.P10685164758423134691

`A082858(n)+A057427(A104511(n+1))`
-/

namespace A348041.P10685164758423134691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 n + A057427 (A104511 (n + 1)).toNat

end

end A348041.P10685164758423134691

/-! ## A348041.P8505389371483960229

`A352780(A324009(n+2))+A082858(n)`
-/

namespace A348041.P8505389371483960229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352780 (A324009 (n + 2)).toNat + A082858 n

end

end A348041.P8505389371483960229

/-!
# A348042: Square array A(n,k) = the nearest common ancestor of n, k and n*k in Doudna tree (A005940).

The programs for A348042, there is no canonical definition to state claims against.
-/

/-! ## A348042.P5458438220618314691

`A348043(A348041(n+1)+A057944(n))`
-/

namespace A348042.P5458438220618314691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348043 (A348041 (n + 1) + A057944 n).toNat

end

end A348042.P5458438220618314691

/-! ## A348042.P12870441738704504929

`A165413(3*A081581(n))`
-/

namespace A348042.P12870441738704504929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165413 (3 * A081581 n).toNat

end

end A348042.P12870441738704504929

/-! ## A348042.P561476070052624725

`and(7, A050292(A174546(n)))`
-/

namespace A348042.P561476070052624725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A050292 (A174546 n).toNat)

end

end A348042.P561476070052624725

/-!
# A348043: Square array A(n,k) = the nearest common ancestor of n and n*k in Doudna tree (A005940).

The programs for A348043, there is no canonical definition to state claims against.
-/

/-! ## A348043.P14781420540969611436

`ceil(root(A002260(n+1), A291634(n+1)))`
-/

namespace A348043.P14781420540969611436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002260 (n + 1) : ℝ) ^ (1 / (A291634 (n + 1) : ℝ))⌉

end

end A348043.P14781420540969611436

/-! ## A348043.P5190106296243352368

`round(A002260(n+1)/A000034(A187429(n)))`
-/

namespace A348043.P5190106296243352368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002260 (n + 1) : ℚ) / (A000034 (A187429 n).toNat : ℚ))

end

end A348043.P5190106296243352368

/-! ## A348043.P15638560030145636722

`A000005(gcd(A010893(2*n+3), A059268(n)))`
-/

namespace A348043.P15638560030145636722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A010893 (2 * n + 3 + 13)) (A059268 n))

end

end A348043.P15638560030145636722

/-! ## A348043.P10158322499438836059

`A002260(n+1)-A309785(A113413(n))`
-/

namespace A348043.P10158322499438836059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A309785 (A113413 n).toNat

end

end A348043.P10158322499438836059

/-! ## A348043.P1197773673111985025

`A000005(A059268(n))-A086937(A208879(n))`
-/

namespace A348043.P1197773673111985025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat - A086937 (A208879 n).toNat

end

end A348043.P1197773673111985025

/-!
# A348044: The nearest common ancestor of n and n^2 in the Doudna tree (A005940).

The programs for A348044, the canonical program `A348044.P16442243223472547548` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348044 has offset 1).

The definition of A348044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348044.P6426399093742066575

`2^A071178(n+1)`
-/

namespace A348044.P6426399093742066575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A071178 (n + 1) : ℤ)

end

end A348044.P6426399093742066575

namespace A348044

/-- `2^A071178(n+1)` -/
def P6426399093742066575.Spec : Prop :=
  ∀ n, P6426399093742066575.a n = (A348044 (n + 1) : ℚ)

end A348044

/-! ## A348044.P5547185988412242166

`2^val(n+1, A006530(2*(n+1)))`
-/

namespace A348044.P5547185988412242166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) (A006530 (2 * (n + 1))).toNat

end

end A348044.P5547185988412242166

namespace A348044

/-- `2^val(n+1, A006530(2*(n+1)))` -/
def P5547185988412242166.Spec : Prop :=
  ∀ n, (P5547185988412242166.a n : ℤ) = A348044 (n + 1)

end A348044

/-! ## A348044.P16442243223472547548

`A000079(A071178(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A348044

/-- `A000079(A071178(n+1))` -/
def P16442243223472547548.Spec : Prop :=
  ∀ n, P16442243223472547548.a n = A348044 (n + 1)

theorem P16442243223472547548.correct : P16442243223472547548.Spec := by
  intro n
  simp only [A348044, Nat.add_sub_cancel]

end A348044

/-! ## A348044.P13254377401474744382

`A046523(A053585(n+1))`
-/

namespace A348044.P13254377401474744382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A053585 (n + 1)).toNat

end

end A348044.P13254377401474744382

namespace A348044

/-- `A046523(A053585(n+1))` -/
def P13254377401474744382.Spec : Prop :=
  ∀ n, P13254377401474744382.a n = A348044 (n + 1)

end A348044

/-! ## A348044.P13383781105974720820

`A011782(A071178(n+1)+1)`
-/

namespace A348044.P13383781105974720820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A071178 (n + 1) + 1).toNat

end

end A348044.P13383781105974720820

namespace A348044

/-- `A011782(A071178(n+1)+1)` -/
def P13383781105974720820.Spec : Prop :=
  ∀ n, P13383781105974720820.a n = A348044 (n + 1)

end A348044

/-! ## A348044.P11670045631592384242

`A046523((n+1)/A051119(n+1))`
-/

namespace A348044.P11670045631592384242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A051119 (n + 1) : ℚ))).toNat

end

end A348044.P11670045631592384242

namespace A348044

/-- `A046523((n+1)/A051119(n+1))` -/
def P11670045631592384242.Spec : Prop :=
  ∀ n, P11670045631592384242.a n = A348044 (n + 1)

end A348044

/-! ## A348044.P16316596226254008735

`A348717((n+1)/A051119(n+1))`
-/

namespace A348044.P16316596226254008735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A051119 (n + 1) : ℚ))).toNat

end

end A348044.P16316596226254008735

namespace A348044

/-- `A348717((n+1)/A051119(n+1))` -/
def P16316596226254008735.Spec : Prop :=
  ∀ n, P16316596226254008735.a n = A348044 (n + 1)

end A348044

/-! ## A348044.P16424776532675403514

`A000079(val(n+1, A006530(2*(n+1))))`
-/

namespace A348044.P16424776532675403514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.valuation (n + 1) (A006530 (2 * (n + 1))).toNat)

end

end A348044.P16424776532675403514

namespace A348044

/-- `A000079(val(n+1, A006530(2*(n+1))))` -/
def P16424776532675403514.Spec : Prop :=
  ∀ n, P16424776532675403514.a n = A348044 (n + 1)

end A348044

/-! ## A348044.P196008941634585738

`A122111(A020639(A329607(n+1)))`
-/

namespace A348044.P196008941634585738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A020639 (A329607 (n + 1)).toNat).toNat

end

end A348044.P196008941634585738

namespace A348044

/-- `A122111(A020639(A329607(n+1)))` -/
def P196008941634585738.Spec : Prop :=
  ∀ n, P196008941634585738.a n = A348044 (n + 1)

end A348044

/-! ## A348044.P4516773974154989240

`and(A051904(n+1)-A137502(n+1), A137502(n+1))`
-/

namespace A348044.P4516773974154989240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051904 (n + 1) - A137502 (n + 1)) (A137502 (n + 1))

end

end A348044.P4516773974154989240

namespace A348044

/-- `and(A051904(n+1)-A137502(n+1), A137502(n+1))` -/
def P4516773974154989240.Spec : Prop :=
  ∀ n, P4516773974154989240.a n = A348044 (n + 1)

end A348044

/-! ## A348044.P2858678764984810574

`gcd(A000079(n), A137502(n+1))`
-/

namespace A348044.P2858678764984810574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A137502 (n + 1))

end

end A348044.P2858678764984810574

namespace A348044

/-- `gcd(A000079(n), A137502(n+1))` -/
def P2858678764984810574.Spec : Prop :=
  ∀ n, (P2858678764984810574.a n : ℤ) = A348044 (n + 1)

end A348044

/-! ## A348044.P10230339999432834855

`A006519(A137502(n+1))`
-/

namespace A348044.P10230339999432834855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A137502 (n + 1)).toNat

end

end A348044.P10230339999432834855

namespace A348044

/-- `A006519(A137502(n+1))` -/
def P10230339999432834855.Spec : Prop :=
  ∀ n, P10230339999432834855.a n = A348044 (n + 1)

end A348044

/-! ## A348044.P17850031698819138422

`A304181(A329600(n+1))`
-/

namespace A348044.P17850031698819138422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304181 (A329600 (n + 1)).toNat

end

end A348044.P17850031698819138422

namespace A348044

/-- `A304181(A329600(n+1))` -/
def P17850031698819138422.Spec : Prop :=
  ∀ n, P17850031698819138422.a n = A348044 (n + 1)

end A348044

/-! ## A348044.P959548911557718506

`A074206(A053585(n+1)²)/A074206(A053585(n+1))`
-/

namespace A348044.P959548911557718506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074206 (A053585 (n + 1) ^ 2).toNat : ℚ) / (A074206 (A053585 (n + 1)).toNat : ℚ)

end

end A348044.P959548911557718506

namespace A348044

/-- `A074206(A053585(n+1)²)/A074206(A053585(n+1))` -/
def P959548911557718506.Spec : Prop :=
  ∀ n, P959548911557718506.a n = (A348044 (n + 1) : ℚ)

end A348044

/-!
# A348045: Möbius transform of A252463, where A252463 shifts the prime factorization of odd numbers one step towards smaller primes and divides even numbers by two.

The programs for A348045, the canonical program `A348045.P7900663578448149259` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348045 has offset 1).

The definition of A348045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348045.P7900663578448149259

`∑{d}[n+1, A008683(#)*A252463((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A348045

/-- `∑{d}[n+1, A008683(#)*A252463((n+1)/#)]` -/
def P7900663578448149259.Spec : Prop :=
  ∀ n, P7900663578448149259.a n = A348045 (n + 1)

theorem P7900663578448149259.correct : P7900663578448149259.Spec := by
  intro n
  simp only [A348045, Nat.add_sub_cancel]

end A348045

/-! ## A348045.P9707996263985886456

`∑{d}[n+1, A000010(#)*A349437((n+1)/#)]`
-/

namespace A348045.P9707996263985886456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A349437 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A348045.P9707996263985886456

namespace A348045

/-- `∑{d}[n+1, A000010(#)*A349437((n+1)/#)]` -/
def P9707996263985886456.Spec : Prop :=
  ∀ n, P9707996263985886456.a n = A348045 (n + 1)

end A348045

/-!
# A348046: Positions of 2's in A348045.

The programs for A348046, there is no canonical definition to state claims against.
-/

/-! ## A348046.P9680326673450349170

`eq[2, A348045(n+1)]+1`
-/

namespace A348046.P9680326673450349170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348045 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A348046.P9680326673450349170

/-! ## A348046.P17840126142894496573

`eq[2, A348045(A028310(n))]`
-/

namespace A348046.P17840126142894496573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348045 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348046.P17840126142894496573

/-! ## A348046.P18341577673388785165

`eq[2, A348045(A065033(2*n))]`
-/

namespace A348046.P18341577673388785165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348045 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348046.P18341577673388785165

/-! ## A348046.P9442966457258308146

`eq[2, A348045(A123108(2*n))]`
-/

namespace A348046.P9442966457258308146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348045 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348046.P9442966457258308146

/-! ## A348046.P18177653851827006028

`eq[2, A348045(A000007(n)+n)]`
-/

namespace A348046.P18177653851827006028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348045 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348046.P18177653851827006028

/-!
# A348047: a(n) = gcd(sigma(n), A003959(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and sigma is the sum of divisors function.

The programs for A348047, the canonical program `A348047.P7887878475414206480` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348047 has offset 1).

The definition of A348047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348047.P11968886802977243876

`A000203(n+1)/A348048(n+1)`
-/

namespace A348047.P11968886802977243876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A348048 (n + 1) : ℚ)

end

end A348047.P11968886802977243876

namespace A348047

/-- `A000203(n+1)/A348048(n+1)` -/
def P11968886802977243876.Spec : Prop :=
  ∀ n, P11968886802977243876.a n = (A348047 (n + 1) : ℚ)

end A348047

/-! ## A348047.P1153899256916044998

`A003959(n+1)/A348049(n+1)`
-/

namespace A348047.P1153899256916044998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A348049 (n + 1) : ℚ)

end

end A348047.P1153899256916044998

namespace A348047

/-- `A003959(n+1)/A348049(n+1)` -/
def P1153899256916044998.Spec : Prop :=
  ∀ n, P1153899256916044998.a n = (A348047 (n + 1) : ℚ)

end A348047

/-! ## A348047.P7887878475414206480

`gcd(A000203(n+1), A003959(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348047

/-- `gcd(A000203(n+1), A003959(n+1))` -/
def P7887878475414206480.Spec : Prop :=
  ∀ n, (P7887878475414206480.a n : ℤ) = A348047 (n + 1)

theorem P7887878475414206480.correct : P7887878475414206480.Spec := by
  intro n
  simp only [A348047, Nat.add_sub_cancel]

end A348047

/-! ## A348047.P8995655101477883020

`gcd(A143348(n+1), A166642(n+1))`
-/

namespace A348047.P8995655101477883020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143348 (n + 1)) (A166642 (n + 1))

end

end A348047.P8995655101477883020

namespace A348047

/-- `gcd(A143348(n+1), A166642(n+1))` -/
def P8995655101477883020.Spec : Prop :=
  ∀ n, (P8995655101477883020.a n : ℤ) = A348047 (n + 1)

end A348047

/-! ## A348047.P3436274757887662315

`gcd(A166644(n+1), A272211(n+1))`
-/

namespace A348047.P3436274757887662315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166644 (n + 1)) (A272211 (n + 1))

end

end A348047.P3436274757887662315

namespace A348047

/-- `gcd(A166644(n+1), A272211(n+1))` -/
def P3436274757887662315.Spec : Prop :=
  ∀ n, (P3436274757887662315.a n : ℤ) = A348047 (n + 1)

end A348047

/-! ## A348047.P17407026554766434605

`(A048146(n+1)+A034448(n+1))/A348048(n+1)`
-/

namespace A348047.P17407026554766434605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048146 (n + 1) + A034448 (n + 1) : ℚ) / (A348048 (n + 1) : ℚ)

end

end A348047.P17407026554766434605

namespace A348047

/-- `(A048146(n+1)+A034448(n+1))/A348048(n+1)` -/
def P17407026554766434605.Spec : Prop :=
  ∀ n, P17407026554766434605.a n = (A348047 (n + 1) : ℚ)

end A348047

/-! ## A348047.P3269549673839400686

`(A162296(n+1)+A048250(n+1))/A348048(n+1)`
-/

namespace A348047.P3269549673839400686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162296 (n + 1) + A048250 (n + 1) : ℚ) / (A348048 (n + 1) : ℚ)

end

end A348047.P3269549673839400686

namespace A348047

/-- `(A162296(n+1)+A048250(n+1))/A348048(n+1)` -/
def P3269549673839400686.Spec : Prop :=
  ∀ n, P3269549673839400686.a n = (A348047 (n + 1) : ℚ)

end A348047

/-! ## A348047.P12465142605368848255

`(A348029(n+1)+A000203(n+1))/A348049(n+1)`
-/

namespace A348047.P12465142605368848255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348029 (n + 1) + A000203 (n + 1) : ℚ) / (A348049 (n + 1) : ℚ)

end

end A348047.P12465142605368848255

namespace A348047

/-- `(A348029(n+1)+A000203(n+1))/A348049(n+1)` -/
def P12465142605368848255.Spec : Prop :=
  ∀ n, P12465142605368848255.a n = (A348047 (n + 1) : ℚ)

end A348047

/-! ## A348047.P13096528594740176616

`(A003959(n+1)-A348029(n+1))/A348048(n+1)`
-/

namespace A348047.P13096528594740176616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) - A348029 (n + 1) : ℚ) / (A348048 (n + 1) : ℚ)

end

end A348047.P13096528594740176616

namespace A348047

/-- `(A003959(n+1)-A348029(n+1))/A348048(n+1)` -/
def P13096528594740176616.Spec : Prop :=
  ∀ n, P13096528594740176616.a n = (A348047 (n + 1) : ℚ)

end A348047

/-! ## A348047.P1468335090769950338

`A348503(n+1)/A348048(n+1)*A348504(n+1)`
-/

namespace A348047.P1468335090769950338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348503 (n + 1) : ℚ) / (A348048 (n + 1) : ℚ) * (A348504 (n + 1) : ℚ)

end

end A348047.P1468335090769950338

namespace A348047

/-- `A348503(n+1)/A348048(n+1)*A348504(n+1)` -/
def P1468335090769950338.Spec : Prop :=
  ∀ n, P1468335090769950338.a n = (A348047 (n + 1) : ℚ)

end A348047

/-! ## A348047.P2236952634680408208

`A348984(A000188((n+1)²))`
-/

namespace A348047.P2236952634680408208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348984 (A000188 ((n + 1) ^ 2)).toNat

end

end A348047.P2236952634680408208

namespace A348047

/-- `A348984(A000188((n+1)²))` -/
def P2236952634680408208.Spec : Prop :=
  ∀ n, P2236952634680408208.a n = A348047 (n + 1)

end A348047

/-! ## A348047.P12335453187314435165

`A348984(A000196((n+1)²))`
-/

namespace A348047.P12335453187314435165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348984 (A000196 ((n + 1) ^ 2)).toNat

end

end A348047.P12335453187314435165

namespace A348047

/-- `A348984(A000196((n+1)²))` -/
def P12335453187314435165.Spec : Prop :=
  ∀ n, P12335453187314435165.a n = A348047 (n + 1)

end A348047

/-!
# A348048: a(n) = sigma(n) / gcd(sigma(n), A003959(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and sigma is the sum of divisors function.

The programs for A348048, the canonical program `A348048.P5323458610393115278` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348048 has offset 1).

The definition of A348048 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A348047, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348048.P5323458610393115278

`A000203(n+1)/A348047(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348048

/-- `A000203(n+1)/A348047(n+1)` -/
def P5323458610393115278.Spec : Prop :=
  ∀ n, P5323458610393115278.a n = (A348048 (n + 1) : ℚ)

end A348048

/-! ## A348048.P13393147280294706295

`(A048146(n+1)+A034448(n+1))/A348047(n+1)`
-/

namespace A348048.P13393147280294706295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048146 (n + 1) + A034448 (n + 1) : ℚ) / (A348047 (n + 1) : ℚ)

end

end A348048.P13393147280294706295

namespace A348048

/-- `(A048146(n+1)+A034448(n+1))/A348047(n+1)` -/
def P13393147280294706295.Spec : Prop :=
  ∀ n, P13393147280294706295.a n = (A348048 (n + 1) : ℚ)

end A348048

/-! ## A348048.P4474688473649259342

`(A003959(n+1)-A348029(n+1))/A348047(n+1)`
-/

namespace A348048.P4474688473649259342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) - A348029 (n + 1) : ℚ) / (A348047 (n + 1) : ℚ)

end

end A348048.P4474688473649259342

namespace A348048

/-- `(A003959(n+1)-A348029(n+1))/A348047(n+1)` -/
def P4474688473649259342.Spec : Prop :=
  ∀ n, P4474688473649259342.a n = (A348048 (n + 1) : ℚ)

end A348048

/-! ## A348048.P6061733064237356575

`A348049(n+1)-A348029(n+1)/A348047(n+1)`
-/

namespace A348048.P6061733064237356575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348049 (n + 1) : ℚ) - (A348029 (n + 1) : ℚ) / (A348047 (n + 1) : ℚ)

end

end A348048.P6061733064237356575

namespace A348048

/-- `A348049(n+1)-A348029(n+1)/A348047(n+1)` -/
def P6061733064237356575.Spec : Prop :=
  ∀ n, P6061733064237356575.a n = (A348048 (n + 1) : ℚ)

end A348048

/-! ## A348048.P14549196712407390059

`A000203(n+1)/A003959(n+1)*A348049(n+1)`
-/

namespace A348048.P14549196712407390059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A003959 (n + 1) : ℚ) * (A348049 (n + 1) : ℚ)

end

end A348048.P14549196712407390059

namespace A348048

/-- `A000203(n+1)/A003959(n+1)*A348049(n+1)` -/
def P14549196712407390059.Spec : Prop :=
  ∀ n, P14549196712407390059.a n = (A348048 (n + 1) : ℚ)

end A348048

/-! ## A348048.P14798712720636119032

`A348503(n+1)/A348047(n+1)*A348504(n+1)`
-/

namespace A348048.P14798712720636119032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348503 (n + 1) : ℚ) / (A348047 (n + 1) : ℚ) * (A348504 (n + 1) : ℚ)

end

end A348048.P14798712720636119032

namespace A348048

/-- `A348503(n+1)/A348047(n+1)*A348504(n+1)` -/
def P14798712720636119032.Spec : Prop :=
  ∀ n, P14798712720636119032.a n = (A348048 (n + 1) : ℚ)

end A348048

/-! ## A348048.P1039410634042170652

`A348946(n+1)/A348047(n+1)*A348948(n+1)`
-/

namespace A348048.P1039410634042170652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348946 (n + 1) : ℚ) / (A348047 (n + 1) : ℚ) * (A348948 (n + 1) : ℚ)

end

end A348048.P1039410634042170652

namespace A348048

/-- `A348946(n+1)/A348047(n+1)*A348948(n+1)` -/
def P1039410634042170652.Spec : Prop :=
  ∀ n, P1039410634042170652.a n = (A348048 (n + 1) : ℚ)

end A348048

/-! ## A348048.P14019196414063631035

`and(A086827(n+1), A348985(n+1))`
-/

namespace A348048.P14019196414063631035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A348985 (n + 1))

end

end A348048.P14019196414063631035

namespace A348048

/-- `and(A086827(n+1), A348985(n+1))` -/
def P14019196414063631035.Spec : Prop :=
  ∀ n, P14019196414063631035.a n = A348048 (n + 1)

end A348048

/-! ## A348048.P16829598769183934717

`A348985(A000188((n+1)²))`
-/

namespace A348048.P16829598769183934717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348985 (A000188 ((n + 1) ^ 2)).toNat

end

end A348048.P16829598769183934717

namespace A348048

/-- `A348985(A000188((n+1)²))` -/
def P16829598769183934717.Spec : Prop :=
  ∀ n, P16829598769183934717.a n = A348048 (n + 1)

end A348048

/-! ## A348048.P2526072471983144856

`A348985(A000196((n+1)²))`
-/

namespace A348048.P2526072471983144856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348985 (A000196 ((n + 1) ^ 2)).toNat

end

end A348048.P2526072471983144856

namespace A348048

/-- `A348985(A000196((n+1)²))` -/
def P2526072471983144856.Spec : Prop :=
  ∀ n, P2526072471983144856.a n = A348048 (n + 1)

end A348048

/-! ## A348048.P17664793694038531575

`gcd(A180491(n+1), A348985(n+1))`
-/

namespace A348048.P17664793694038531575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180491 (n + 1)) (A348985 (n + 1))

end

end A348048.P17664793694038531575

namespace A348048

/-- `gcd(A180491(n+1), A348985(n+1))` -/
def P17664793694038531575.Spec : Prop :=
  ∀ n, (P17664793694038531575.a n : ℤ) = A348048 (n + 1)

end A348048

/-!
# A348049: a(n) = A003959(n) / gcd(sigma(n), A003959(n)), where A003959 is multiplicative with a(p^e) = (p+1)^e and sigma is the sum of divisors function.

The programs for A348049, the canonical program `A348049.P10382415433581504005` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348049 has offset 1).

The definition of A348049 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003959, A348047, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A348049.P10382415433581504005

`A003959(n+1)/A348047(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A348049

/-- `A003959(n+1)/A348047(n+1)` -/
def P10382415433581504005.Spec : Prop :=
  ∀ n, P10382415433581504005.a n = (A348049 (n + 1) : ℚ)

end A348049

/-! ## A348049.P6187518128800816704

`(A348029(n+1)+A000203(n+1))/A348047(n+1)`
-/

namespace A348049.P6187518128800816704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348029 (n + 1) + A000203 (n + 1) : ℚ) / (A348047 (n + 1) : ℚ)

end

end A348049.P6187518128800816704

namespace A348049

/-- `(A348029(n+1)+A000203(n+1))/A348047(n+1)` -/
def P6187518128800816704.Spec : Prop :=
  ∀ n, P6187518128800816704.a n = (A348049 (n + 1) : ℚ)

end A348049

/-! ## A348049.P7307387856911818184

`(A348732(n+1)+A034448(n+1))/A348047(n+1)`
-/

namespace A348049.P7307387856911818184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348732 (n + 1) + A034448 (n + 1) : ℚ) / (A348047 (n + 1) : ℚ)

end

end A348049.P7307387856911818184

namespace A348049

/-- `(A348732(n+1)+A034448(n+1))/A348047(n+1)` -/
def P7307387856911818184.Spec : Prop :=
  ∀ n, P7307387856911818184.a n = (A348049 (n + 1) : ℚ)

end A348049

/-! ## A348049.P17877903659896190038

`A348048(n+1)+A348029(n+1)/A348047(n+1)`
-/

namespace A348049.P17877903659896190038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348048 (n + 1) : ℚ) + (A348029 (n + 1) : ℚ) / (A348047 (n + 1) : ℚ)

end

end A348049.P17877903659896190038

namespace A348049

/-- `A348048(n+1)+A348029(n+1)/A348047(n+1)` -/
def P17877903659896190038.Spec : Prop :=
  ∀ n, P17877903659896190038.a n = (A348049 (n + 1) : ℚ)

end A348049

/-! ## A348049.P1039967434536205157

`A003959(n+1)/A000203(n+1)*A348048(n+1)`
-/

namespace A348049.P1039967434536205157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A348048 (n + 1) : ℚ)

end

end A348049.P1039967434536205157

namespace A348049

/-- `A003959(n+1)/A000203(n+1)*A348048(n+1)` -/
def P1039967434536205157.Spec : Prop :=
  ∀ n, P1039967434536205157.a n = (A348049 (n + 1) : ℚ)

end A348049

/-! ## A348049.P5889306312016263294

`A167344(n+1)/(A003958(n+1)*A348047(n+1))`
-/

namespace A348049.P5889306312016263294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167344 (n + 1) : ℚ) / (A003958 (n + 1) * A348047 (n + 1) : ℚ)

end

end A348049.P5889306312016263294

namespace A348049

/-- `A167344(n+1)/(A003958(n+1)*A348047(n+1))` -/
def P5889306312016263294.Spec : Prop :=
  ∀ n, P5889306312016263294.a n = (A348049 (n + 1) : ℚ)

end A348049

/-! ## A348049.P17233648884642672963

`A166642(n+1)/(A061142(n+1)*A348047(n+1))`
-/

namespace A348049.P17233648884642672963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166642 (n + 1) : ℚ) / (A061142 (n + 1) * A348047 (n + 1) : ℚ)

end

end A348049.P17233648884642672963

namespace A348049

/-- `A166642(n+1)/(A061142(n+1)*A348047(n+1))` -/
def P17233648884642672963.Spec : Prop :=
  ∀ n, P17233648884642672963.a n = (A348049 (n + 1) : ℚ)

end A348049

/-! ## A348049.P4993420403980994526

`A166643(n+1)/(A165824(n+1)*A348047(n+1))`
-/

namespace A348049.P4993420403980994526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166643 (n + 1) : ℚ) / (A165824 (n + 1) * A348047 (n + 1) : ℚ)

end

end A348049.P4993420403980994526

namespace A348049

/-- `A166643(n+1)/(A165824(n+1)*A348047(n+1))` -/
def P4993420403980994526.Spec : Prop :=
  ∀ n, P4993420403980994526.a n = (A348049 (n + 1) : ℚ)

end A348049

/-! ## A348049.P15218129966445754466

`A166644(n+1)/(A165825(n+1)*A348047(n+1))`
-/

namespace A348049.P15218129966445754466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166644 (n + 1) : ℚ) / (A165825 (n + 1) * A348047 (n + 1) : ℚ)

end

end A348049.P15218129966445754466

namespace A348049

/-- `A166644(n+1)/(A165825(n+1)*A348047(n+1))` -/
def P15218129966445754466.Spec : Prop :=
  ∀ n, P15218129966445754466.a n = (A348049 (n + 1) : ℚ)

end A348049

/-! ## A348049.P17179865187839944084

`A166645(n+1)/(A165826(n+1)*A348047(n+1))`
-/

namespace A348049.P17179865187839944084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166645 (n + 1) : ℚ) / (A165826 (n + 1) * A348047 (n + 1) : ℚ)

end

end A348049.P17179865187839944084

namespace A348049

/-- `A166645(n+1)/(A165826(n+1)*A348047(n+1))` -/
def P17179865187839944084.Spec : Prop :=
  ∀ n, P17179865187839944084.a n = (A348049 (n + 1) : ℚ)

end A348049

/-! ## A348049.P13840120001446364793

`A166646(n+1)/(A165827(n+1)*A348047(n+1))`
-/

namespace A348049.P13840120001446364793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166646 (n + 1) : ℚ) / (A165827 (n + 1) * A348047 (n + 1) : ℚ)

end

end A348049.P13840120001446364793

namespace A348049

/-- `A166646(n+1)/(A165827(n+1)*A348047(n+1))` -/
def P13840120001446364793.Spec : Prop :=
  ∀ n, P13840120001446364793.a n = (A348049 (n + 1) : ℚ)

end A348049

/-! ## A348049.P15980329028563963491

`A166647(n+1)/(A165828(n+1)*A348047(n+1))`
-/

namespace A348049.P15980329028563963491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166647 (n + 1) : ℚ) / (A165828 (n + 1) * A348047 (n + 1) : ℚ)

end

end A348049.P15980329028563963491

namespace A348049

/-- `A166647(n+1)/(A165828(n+1)*A348047(n+1))` -/
def P15980329028563963491.Spec : Prop :=
  ∀ n, P15980329028563963491.a n = (A348049 (n + 1) : ℚ)

end A348049

/-! ## A348049.P9647577893628065312

`A166649(n+1)/(A165830(n+1)*A348047(n+1))`
-/

namespace A348049.P9647577893628065312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166649 (n + 1) : ℚ) / (A165830 (n + 1) * A348047 (n + 1) : ℚ)

end

end A348049.P9647577893628065312

namespace A348049

/-- `A166649(n+1)/(A165830(n+1)*A348047(n+1))` -/
def P9647577893628065312.Spec : Prop :=
  ∀ n, P9647577893628065312.a n = (A348049 (n + 1) : ℚ)

end A348049

/-! ## A348049.P5933949243564274030

`A166650(n+1)/(A165831(n+1)*A348047(n+1))`
-/

namespace A348049.P5933949243564274030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166650 (n + 1) : ℚ) / (A165831 (n + 1) * A348047 (n + 1) : ℚ)

end

end A348049.P5933949243564274030

namespace A348049

/-- `A166650(n+1)/(A165831(n+1)*A348047(n+1))` -/
def P5933949243564274030.Spec : Prop :=
  ∀ n, P5933949243564274030.a n = (A348049 (n + 1) : ℚ)

end A348049

/-!
# A348050: Palindromes setting a new record of their number of prime divisors A001222.

The programs for A348050, there is no canonical definition to state claims against.
-/

/-! ## A348050.P12599526530341780360

`A076886(lt[A076886(n), A076907(n+2)])`
-/

namespace A348050.P12599526530341780360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076886 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076907 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076886 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348050.P12599526530341780360

/-! ## A348050.P2678905587595613254

`A076886(lt[A076886(n), A330630(n+1)])`
-/

namespace A348050.P2678905587595613254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076886 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076886 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348050.P2678905587595613254

/-! ## A348050.P17697803894565164114

`A076886(lt[A076886(n), A026756(n+3)])`
-/

namespace A348050.P17697803894565164114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076886 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026756 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076886 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348050.P17697803894565164114

/-! ## A348050.P14015928348886591627

`A076886(lt[A076886(n), A023186(n+1)])`
-/

namespace A348050.P14015928348886591627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076886 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076886 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348050.P14015928348886591627

/-! ## A348050.P11615500352839021321

`A076886(lt[A076886(n), A213537(n+1)])`
-/

namespace A348050.P11615500352839021321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076886 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076886 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A348050.P11615500352839021321

/-!
# A348055: Number of positive integers with n digits that are the product of two integers ending with 7.

The programs for A348055, there is no canonical definition to state claims against.
-/

/-! ## A348055.P11243316207384186302

`A348546(n+1)+A348547(n+1)-A346952(n+1)`
-/

namespace A348055.P11243316207384186302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348546 (n + 1) + (A348547 (n + 1) - A346952 (n + 1))

end

end A348055.P11243316207384186302

/-!
# A348056: Numbers k where the d(j)-th digit is j for d(j) and j > 0 and d(j) = 0 if and only if j is not a digit of k.

The programs for A348056, there is no canonical definition to state claims against.
-/

/-! ## A348056.P10487906162380174399

`A014418(n)+A007949(A023007(n))`
-/

namespace A348056.P10487906162380174399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014418 n + A007949 (A023007 n).toNat

end

end A348056.P10487906162380174399

/-! ## A348056.P6688362067971205661

`A317204(n)+A037800(A063378(n))`
-/

namespace A348056.P6688362067971205661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317204 n + A037800 (A063378 n).toNat

end

end A348056.P6688362067971205661

/-! ## A348056.P8663456111477179775

`A322389(A099572(n))+A014418(n)`
-/

namespace A348056.P8663456111477179775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322389 (A099572 n).toNat + A014418 n

end

end A348056.P8663456111477179775

/-!
# A348057: Number of n-step self-avoiding walks on three quadrants of a 2D square lattice.

The programs for A348057, there is no canonical definition to state claims against.
-/

/-! ## A348057.P11227593167086137458

`A123621(ceil(exp(n+1))+1)`
-/

namespace A348057.P11227593167086137458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (⌈Real.exp (n + 1 : ℝ)⌉ + 1).toNat

end

end A348057.P11227593167086137458

/-! ## A348057.P7134453338180860192

`A087844(A150810(n+1))`
-/

namespace A348057.P7134453338180860192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087844 (A150810 (n + 1)).toNat

end

end A348057.P7134453338180860192

/-!
# A348059: a(n) = Min {k > n : A235137(k) == -n (mod k)}, or -1 if no such minimum exists.

The programs for A348059, there is no canonical definition to state claims against.
-/

/-! ## A348059.P15037430691774772375

`A003963(A271235(n)+A228578(n+1))`
-/

namespace A348059.P15037430691774772375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A271235 n + A228578 (n + 1)).toNat

end

end A348059.P15037430691774772375

/-! ## A348059.P16258448546525933007

`A275735(A098929(3*n+4)^A081290(n))`
-/

namespace A348059.P16258448546525933007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275735 (SequenceMachineLib.roundAway ((A098929 (3 * n + 4) : ℚ) ^ (A081290 n : ℤ))).toNat

end

end A348059.P16258448546525933007

/-!
# A348062: Primes p such that the length of the (eventual) period of the sequence {2^(2^k) mod p: k >= 0} is odd.

The programs for A348062, there is no canonical definition to state claims against.
-/

/-! ## A348062.P4971226835101155426

`p?[(n+1)*A000035(A256607(n+1))]`
-/

namespace A348062.P4971226835101155426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000035 (A256607 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A348062.P4971226835101155426

/-! ## A348062.P11276883401273587815

`eq[A003415(n), A006519(A256607(n^(n%2)))]`
-/

namespace A348062.P11276883401273587815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A256607 (n ^ (n % 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348062.P11276883401273587815

/-! ## A348062.P9349379947112847805

`eq[A000035(A256607(n+1)), A001222(n+1)]+1`
-/

namespace A348062.P9349379947112847805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A256607 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A348062.P9349379947112847805

/-! ## A348062.P8803446484899349900

`A000040(eq[A124766(3*(n+1)), A373953(n)])`
-/

namespace A348062.P8803446484899349900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A348062.P8803446484899349900

/-!
# A348063: Coefficient of x^2 in expansion of n!* Sum_{k=0..n} binomial(x,k).

The programs for A348063, there is no canonical definition to state claims against.
-/

/-! ## A348063.P16766022002969190325

`A054651(∑[n+3])`
-/

namespace A348063.P16766022002969190325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054651 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A348063.P16766022002969190325

/-! ## A348063.P2894239028224707262

`abs(A054651(A027379(n+1)))`
-/

namespace A348063.P2894239028224707262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054651 (A027379 (n + 1)).toNat|

end

end A348063.P2894239028224707262

/-! ## A348063.P1290817386418546897

`abs(A054651(A055998(n+1)))`
-/

namespace A348063.P1290817386418546897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054651 (A055998 (n + 1)).toNat|

end

end A348063.P1290817386418546897

/-! ## A348063.P10372158680632266970

`A190782(∑[n+2]+3)`
-/

namespace A348063.P10372158680632266970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A348063.P10372158680632266970

/-! ## A348063.P7251910262024207747

`abs(A190782(A238531(n+3)))`
-/

namespace A348063.P7251910262024207747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A190782 (A238531 (n + 3)).toNat|

end

end A348063.P7251910262024207747

/-!
# A348064: Coefficient of x^3 in expansion of n!* Sum_{k=0..n} binomial(x,k).

The programs for A348064, there is no canonical definition to state claims against.
-/

/-! ## A348064.P7158269449102473579

`A054651(∑[n+3]+n+3)`
-/

namespace A348064.P7158269449102473579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054651 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A348064.P7158269449102473579

/-! ## A348064.P8351530688817247930

`A190782(A167614(n+2))`
-/

namespace A348064.P8351530688817247930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (A167614 (n + 2)).toNat

end

end A348064.P8351530688817247930

/-! ## A348064.P10536315267068864778

`A190782(A052905(n)+8)`
-/

namespace A348064.P10536315267068864778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (A052905 n + 8).toNat

end

end A348064.P10536315267068864778

/-! ## A348064.P11164726445455422805

`A190782(A055999(n)+9)`
-/

namespace A348064.P11164726445455422805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (A055999 n + 9).toNat

end

end A348064.P11164726445455422805

/-! ## A348064.P16143502351265334615

`A190782(A000217(n+3)+3)`
-/

namespace A348064.P16143502351265334615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (A000217 (n + 3) + 3).toNat

end

end A348064.P16143502351265334615

/-!
# A348065: Coefficient of x^4 in expansion of n!* Sum_{k=0..n} binomial(x,k).

The programs for A348065, there is no canonical definition to state claims against.
-/

/-! ## A348065.P13653216897519427146

`A054651(∑[n+5]+5)`
-/

namespace A348065.P13653216897519427146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054651 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A348065.P13653216897519427146

/-! ## A348065.P3282169180759934065

`A190782(eq[4, A002262(n)])`
-/

namespace A348065.P3282169180759934065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A348065.P3282169180759934065

/-! ## A348065.P9721229130915036882

`A190782(eq[16, A059268(n)])`
-/

namespace A348065.P9721229130915036882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A348065.P9721229130915036882

/-! ## A348065.P16158664841115021425

`A190782(A000124(n+4)+3)`
-/

namespace A348065.P16158664841115021425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (A000124 (n + 4) + 3).toNat

end

end A348065.P16158664841115021425

/-! ## A348065.P5964371883034978281

`A190782(A000096(n+3)+5)`
-/

namespace A348065.P5964371883034978281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (A000096 (n + 3) + 5).toNat

end

end A348065.P5964371883034978281

/-!
# A348066: Matula-Goebel tree number of tree n with all duplicate sibling subtrees reduced to one copy of each.

The programs for A348066, there is no canonical definition to state claims against.
-/

/-! ## A348066.P9157721249148042449

`∏{p}[A067911(n+1), A096894(#)]`
-/

namespace A348066.P9157721249148042449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A096894 p

end

end A348066.P9157721249148042449

/-! ## A348066.P14878062763094098697

`∏{p}[n+1, A096894(A187829(#))]`
-/

namespace A348066.P14878062763094098697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A096894 (A187829 p).toNat

end

end A348066.P14878062763094098697

/-! ## A348066.P8518468408087504320

`∏{p}[n+1, A259764(A259764(#))]`
-/

namespace A348066.P8518468408087504320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A259764 (A259764 p).toNat

end

end A348066.P8518468408087504320

/-! ## A348066.P17980699350693164018

`∏{p}[n+1, A006530(A248576(C(#, 2)))]`
-/

namespace A348066.P17980699350693164018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A006530 (A248576 (Nat.choose p 2)).toNat

end

end A348066.P17980699350693164018

/-! ## A348066.P14529128780093854475

`∏{p}[n+1, #]%A110759(A000961(2*n+3))`
-/

namespace A348066.P14529128780093854475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A110759 (A000961 (2 * n + 3)).toNat)

end

end A348066.P14529128780093854475

/-!
# A348067: Matula-Goebel tree number of tree n with a new leaf added below each existing vertex.

The programs for A348067, there is no canonical definition to state claims against.
-/

/-! ## A348067.P8562424298520965204

`A330029(A083439(n+1))`
-/

namespace A348067.P8562424298520965204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330029 (A083439 (n + 1)).toNat

end

end A348067.P8562424298520965204

/-!
# A348068: Coefficient of x^5 in expansion of n!* Sum_{k=0..n} binomial(x,k).

The programs for A348068, there is no canonical definition to state claims against.
-/

/-! ## A348068.P17732541429074451985

`A054651(A055999(n+3))`
-/

namespace A348068.P17732541429074451985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054651 (A055999 (n + 3)).toNat

end

end A348068.P17732541429074451985

/-! ## A348068.P17543939225726368448

`A054651(eq[6, A004736(n+1)])`
-/

namespace A348068.P17543939225726368448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A348068.P17543939225726368448

/-! ## A348068.P11156745070015376113

`A190782(eq[5, A002262(n)])`
-/

namespace A348068.P11156745070015376113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A348068.P11156745070015376113

/-! ## A348068.P17823316125677386133

`A190782(eq[5, A144328(n+1)])`
-/

namespace A348068.P17823316125677386133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A348068.P17823316125677386133

/-! ## A348068.P8093691246077490654

`A190782(eq[6, A002260(n+1)])`
-/

namespace A348068.P8093691246077490654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A348068.P8093691246077490654

/-!
# A348070: Triangular array read by rows: T(n,k) is the number of undirected 2-regular labeled graphs whose largest connected component has exactly k nodes; n >= 1, 1 <= k <= n.

The programs for A348070, there is no canonical definition to state claims against.
-/

/-! ## A348070.P5494853019570730076

`A348071(n+1)*A358839(A231753(n+1))`
-/

namespace A348070.P5494853019570730076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348071 (n + 1) * A358839 (A231753 (n + 1)).toNat

end

end A348070.P5494853019570730076

/-! ## A348070.P11143117763174450047

`A348071(A056963(n+1))`
-/

namespace A348070.P11143117763174450047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348071 (A056963 (n + 1)).toNat

end

end A348070.P11143117763174450047

/-! ## A348070.P7603961785164396576

`A097448(A348071(n+1))`
-/

namespace A348070.P7603961785164396576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A348071 (n + 1)).toNat

end

end A348070.P7603961785164396576

/-! ## A348070.P12790758488932123568

`A000196(A348071(n+1)²)`
-/

namespace A348070.P12790758488932123568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A348071 (n + 1) ^ 2).toNat

end

end A348070.P12790758488932123568

/-! ## A348070.P704610735436893555

`A000196(A348071(n+1)^2)`
-/

namespace A348070.P704610735436893555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A348071 (n + 1) ^ 2).toNat

end

end A348070.P704610735436893555

/-!
# A348072: Numbers k such that omega(k) = 8.

The programs for A348072, there is no canonical definition to state claims against.
-/

/-! ## A348072.P11708980393630137041

`A272599(n+1)/4`
-/

namespace A348072.P11708980393630137041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272599 (n + 1) : ℚ) / 4

end

end A348072.P11708980393630137041

/-!
# A348074: a(n) = A035327(n) if n is even, 3n + 1 if n is odd.

The programs for A348074, there is no canonical definition to state claims against.
-/

/-! ## A348074.P16492448237100439028

`A036044(A056539(n+1))+(2*n)^and(1, n)`
-/

namespace A348074.P16492448237100439028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A056539 (n + 1)).toNat + ((2 * n) ^ Nat.land 1 n : ℤ)

end

end A348074.P16492448237100439028

/-! ## A348074.P9834143933192726989

`A266437(n)+A030101(A056539(n))`
-/

namespace A348074.P9834143933192726989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 n + A030101 (A056539 n).toNat

end

end A348074.P9834143933192726989

/-! ## A348074.P7679542116136331475

`A266303(n)+A036044(A056539(n+1))`
-/

namespace A348074.P7679542116136331475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n + A036044 (A056539 (n + 1)).toNat

end

end A348074.P7679542116136331475

/-! ## A348074.P332451282612386364

`A266437(n)-A030101(A056539(n))*A057428(n)`
-/

namespace A348074.P332451282612386364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 n - A030101 (A056539 n).toNat * A057428 n

end

end A348074.P332451282612386364

/-!
# A348075: Triangular array read by rows: T(n,k) is the number of derangements whose shortest cycle has exactly k nodes; n >= 1, 1 <= k <= n.

The programs for A348075, there is no canonical definition to state claims against.
-/

/-! ## A348075.P4101833621173667567

`char[comp[∑[n]]]*A145877(n+1)`
-/

namespace A348075.P4101833621173667567
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A145877 (n + 1)

end

end A348075.P4101833621173667567

/-! ## A348075.P7335896978285131484

`A145877(n+1)%A059039(n)`
-/

namespace A348075.P7335896978285131484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145877 (n + 1)) (A059039 n)

end

end A348075.P7335896978285131484

/-! ## A348075.P7334389058146082979

`lcm(A002262(n), A145877(n+1))`
-/

namespace A348075.P7334389058146082979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002262 n) (A145877 (n + 1))

end

end A348075.P7334389058146082979

/-! ## A348075.P2067203587116766917

`and(-A053616(n), A145877(n+1))`
-/

namespace A348075.P2067203587116766917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A053616 n) (A145877 (n + 1))

end

end A348075.P2067203587116766917

/-! ## A348075.P4728266637034302616

`and(A010054(n)-1, A145877(n+1))`
-/

namespace A348075.P4728266637034302616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010054 n - 1) (A145877 (n + 1))

end

end A348075.P4728266637034302616

/-! ## A348075.P8321719636451292466

`A145877(n+1)*A157928(A208921(n+1))`
-/

namespace A348075.P8321719636451292466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145877 (n + 1) * A157928 (A208921 (n + 1)).toNat

end

end A348075.P8321719636451292466

/-! ## A348075.P11250287138698502535

`A145877(n+1)*A157928(A200057(n+1))`
-/

namespace A348075.P11250287138698502535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145877 (n + 1) * A157928 (A200057 (n + 1)).toNat

end

end A348075.P11250287138698502535

/-!
# A348076: Number k such that k and k+1 both have an equal number of even and odd exponents in their prime factorization (A187039).

The programs for A348076, the canonical program `A348076.P15700061850166642476` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348076 has offset 1).

The definition of A348076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348076.P13066808747567233881

`∩[A187039(n+1)-1, A187039(n+1)]`
-/

namespace A348076.P13066808747567233881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348076.P13066808747567233881

namespace A348076

/-- `∩[A187039(n+1)-1, A187039(n+1)]` -/
def P13066808747567233881.Spec : Prop :=
  ∀ n, (P13066808747567233881.a n : ℤ) = A348076 (n + 1)

end A348076

/-! ## A348076.P15700061850166642476

`A187039(eq[1, A187039(n+2)-A187039(n+1)]+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A348076

/-- `A187039(eq[1, A187039(n+2)-A187039(n+1)]+1)` -/
def P15700061850166642476.Spec : Prop :=
  ∀ n, P15700061850166642476.a n = A348076 (n + 1)

theorem P15700061850166642476.correct : P15700061850166642476.Spec := by
  intro n
  simp only [A348076, Nat.add_sub_cancel]

end A348076

/-! ## A348076.P10410195632257479836

`∩[A187039(n+1), A023443(A187039(n+1))]`
-/

namespace A348076.P10410195632257479836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A187039 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348076.P10410195632257479836

namespace A348076

/-- `∩[A187039(n+1), A023443(A187039(n+1))]` -/
def P10410195632257479836.Spec : Prop :=
  ∀ n, (P10410195632257479836.a n : ℤ) = A348076 (n + 1)

end A348076

/-! ## A348076.P3723192740830150037

`A348098(record[A347710(n)])`
-/

namespace A348076.P3723192740830150037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348098 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A348076.P3723192740830150037

namespace A348076

/-- `A348098(record[A347710(n)])` -/
def P3723192740830150037.Spec : Prop :=
  ∀ n, P3723192740830150037.a n = A348076 (n + 1)

end A348076

/-! ## A348076.P16024349645214579213

`∩[A360554(n+1)-1, A360554(n+1)]`
-/

namespace A348076.P16024349645214579213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360554 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348076.P16024349645214579213

namespace A348076

/-- `∩[A360554(n+1)-1, A360554(n+1)]` -/
def P16024349645214579213.Spec : Prop :=
  ∀ n, (P16024349645214579213.a n : ℤ) = A348076 (n + 1)

end A348076

/-!
# A348077: Starts of runs of 3 consecutive numbers that have an equal number of even and odd exponents in their prime factorization (A187039).

The programs for A348077, the canonical program `A348077.P4273143389917239204` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348077 has offset 1).

The definition of A348077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348077.P4273143389917239204

`∩[A348076(n+1)-1, A348076(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A348077

/-- `∩[A348076(n+1)-1, A348076(n+1)]` -/
def P4273143389917239204.Spec : Prop :=
  ∀ n, (P4273143389917239204.a n : ℤ) = A348077 (n + 1)

theorem P4273143389917239204.correct : P4273143389917239204.Spec := by
  intro n
  simp only [A348077, Nat.add_sub_cancel]

end A348077

/-! ## A348077.P3221800285585554864

`∩[A348076(n+1), A023443(A348076(n+1))]`
-/

namespace A348077.P3221800285585554864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A348076 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348077.P3221800285585554864

namespace A348077

/-- `∩[A348076(n+1), A023443(A348076(n+1))]` -/
def P3221800285585554864.Spec : Prop :=
  ∀ n, (P3221800285585554864.a n : ℤ) = A348077 (n + 1)

end A348077

/-!
# A348078: Starts of runs of 4 consecutive numbers that have an equal number of even and odd exponents in their prime factorization (A187039).

The programs for A348078, there is no canonical definition to state claims against.
-/

/-! ## A348078.P12454873825879697415

`∩[A348077(n+1)-1, A348077(n+1)]`
-/

namespace A348078.P12454873825879697415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348077 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348078.P12454873825879697415

/-!
# A348081: a(n) = [x^n] Product_{k=1..2*n} 1/(1 - k^2 * x).

The programs for A348081, there is no canonical definition to state claims against.
-/

/-! ## A348081.P3683787832542578245

`A394582(A081585(n))`
-/

namespace A348081.P3683787832542578245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394582 (A081585 n).toNat

end

end A348081.P3683787832542578245

/-! ## A348081.P13395876128435893690

`A008957(A276819(n))`
-/

namespace A348081.P13395876128435893690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008957 (A276819 n).toNat

end

end A348081.P13395876128435893690

/-! ## A348081.P11334043135224515533

`A008957(A022266(n)+1)`
-/

namespace A348081.P11334043135224515533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008957 (A022266 n + 1).toNat

end

end A348081.P11334043135224515533

/-! ## A348081.P5235710414521771059

`A269945(A062725(n)+n)`
-/

namespace A348081.P5235710414521771059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 (A062725 n + (n : ℤ)).toNat

end

end A348081.P5235710414521771059

/-! ## A348081.P18200594860533764378

`A269945(eq[A059268(n), A262616(n)])`
-/

namespace A348081.P18200594860533764378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269945 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A348081.P18200594860533764378

/-!
# A348082: a(n) = [x^n] Product_{k=1..2*n} 1/(1 - (2*k-1)^2 * x).

The programs for A348082, there is no canonical definition to state claims against.
-/

/-! ## A348082.P16764415293792180409

`A008958(A022266(n))`
-/

namespace A348082.P16764415293792180409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008958 (A022266 n).toNat

end

end A348082.P16764415293792180409

/-! ## A348082.P5590284580842002171

`A160562(eq[A131818(n+1), A185782(n+1)])`
-/

namespace A348082.P5590284580842002171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160562 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A348082.P5590284580842002171

/-!
# A348084: a(n) = [x^n] Product_{k=1..2*n} 1/(1 - k * x).

The programs for A348084, there is no canonical definition to state claims against.
-/

/-! ## A348084.P10880358746907748426

`A106800(A062725(n))`
-/

namespace A348084.P10880358746907748426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A062725 n).toNat

end

end A348084.P10880358746907748426

/-! ## A348084.P5444434121096153437

`A008278(A276819(n))`
-/

namespace A348084.P5444434121096153437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A276819 n).toNat

end

end A348084.P5444434121096153437

/-! ## A348084.P10543141742858427176

`A008278(A022266(n)+1)`
-/

namespace A348084.P10543141742858427176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A022266 n + 1).toNat

end

end A348084.P10543141742858427176

/-! ## A348084.P11313435424467789581

`A106800(A062728(n)-n)`
-/

namespace A348084.P11313435424467789581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (A062728 n - (n : ℤ)).toNat

end

end A348084.P11313435424467789581

/-! ## A348084.P18222427171667655733

`A048993(A062728(n))`
-/

namespace A348084.P18222427171667655733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A062728 n).toNat

end

end A348084.P18222427171667655733

/-!
# A348085: a(n) = [x^n] Product_{k=1..2*n} 1/(1 - (2*k-1) * x).

The programs for A348085, there is no canonical definition to state claims against.
-/

/-! ## A348085.P3433684984592283235

`A039756(C(3*n+1, 2)-2*n)`
-/

namespace A348085.P3433684984592283235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039756 (Nat.choose (3 * n + 1) 2 - 2 * n)

end

end A348085.P3433684984592283235

/-! ## A348085.P15404798542261147357

`A039756(A022266(n))`
-/

namespace A348085.P15404798542261147357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039756 (A022266 n).toNat

end

end A348085.P15404798542261147357

/-! ## A348085.P2675274248980186976

`A039756(A276819(n)-1)`
-/

namespace A348085.P2675274248980186976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039756 (A276819 n - 1).toNat

end

end A348085.P2675274248980186976

/-! ## A348085.P2094523832824244113

`A039755(A096038(2*n²+1))`
-/

namespace A348085.P2094523832824244113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 (A096038 (2 * n ^ 2 + 1)).toNat

end

end A348085.P2094523832824244113

/-! ## A348085.P2904944245166817456

`A039755(eq[A131818(n+1), A185782(n+1)])`
-/

namespace A348085.P2904944245166817456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A348085.P2904944245166817456

/-!
# A348087: a(n) = [x^n] Product_{k=1..n} 1/(1 - (2*k-1) * x).

The programs for A348087, there is no canonical definition to state claims against.
-/

/-! ## A348087.P12411345564154032822

`A039756(2*n²)`
-/

namespace A348087.P12411345564154032822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039756 (2 * n ^ 2)

end

end A348087.P12411345564154032822

/-! ## A348087.P2577523321266321662

`A039755(abs(1-2*n²))`
-/

namespace A348087.P2577523321266321662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039755 |1 - (2 * n ^ 2 : ℤ)|.toNat

end

end A348087.P2577523321266321662

/-! ## A348087.P6643744869609458378

`A039756(A001105(n))^(1-char[1])`
-/

namespace A348087.P6643744869609458378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039756 (A001105 n).toNat : ℚ) ^ (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A348087.P6643744869609458378

/-! ## A348087.P11372560628307759220

`gcd(A000038(n), A039756(A001105(n)))`
-/

namespace A348087.P11372560628307759220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A039756 (A001105 n).toNat)

end

end A348087.P11372560628307759220

/-! ## A348087.P11437838899360136413

`lcm(A033999(n), A039756(A001105(n)))`
-/

namespace A348087.P11437838899360136413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A039756 (A001105 n).toNat)

end

end A348087.P11437838899360136413

/-!
# A348088: a(n) = [x^n] Product_{k=1..n} 1/(1 - (2*k-1)^2 * x).

The programs for A348088, there is no canonical definition to state claims against.
-/

/-! ## A348088.P4433476257115075653

`A008958(2*n²)`
-/

namespace A348088.P4433476257115075653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008958 (2 * n ^ 2)

end

end A348088.P4433476257115075653

/-! ## A348088.P10901098085382199569

`A160562(A004273(n²))`
-/

namespace A348088.P10901098085382199569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160562 (A004273 (n ^ 2)).toNat

end

end A348088.P10901098085382199569

/-! ## A348088.P12023683346645392043

`A160562(A061579(2*n²))`
-/

namespace A348088.P12023683346645392043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160562 (A061579 (2 * n ^ 2)).toNat

end

end A348088.P12023683346645392043

/-! ## A348088.P11686615157907410754

`A160562(A056220(A000007(n)+n))`
-/

namespace A348088.P11686615157907410754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160562 (A056220 (A000007 n + (n : ℤ)).toNat).toNat

end

end A348088.P11686615157907410754

/-! ## A348088.P15114174243971956936

`A160562(A001844(n)-A103517(n))`
-/

namespace A348088.P15114174243971956936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160562 (A001844 n - A103517 n).toNat

end

end A348088.P15114174243971956936

/-!
# A348089: Number of 1's required to build n using +, -, *, /, and ^.

The programs for A348089, there is no canonical definition to state claims against.
-/

/-! ## A348089.P17465915529848891388

`A091334(n+1)-A010051(A329853(n+1))`
-/

namespace A348089.P17465915529848891388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091334 (n + 1) - A010051 (A329853 (n + 1)).toNat

end

end A348089.P17465915529848891388

/-! ## A348089.P7397934268294980007

`A091334(n+1)-A326291(A333159(n))`
-/

namespace A348089.P7397934268294980007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091334 (n + 1) - A326291 (A333159 n).toNat

end

end A348089.P7397934268294980007

/-!
# A348090: Place the numbers 1 to n on a square grid and sum both numbers in all created orthogonally adjacent pairs; a(n) gives the maximum possible value of the sum of all pair sums.

The programs for A348090, there is no canonical definition to state claims against.
-/

/-! ## A348090.P5101172835606366361

`C(2*n+1, 2)-A001221(A174073(n))`
-/

namespace A348090.P5101172835606366361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) 2 : ℤ) - A001221 (A174073 n).toNat

end

end A348090.P5101172835606366361

/-! ## A348090.P2876999161862404965

`A014105(n)-A001221(A174073(n))`
-/

namespace A348090.P2876999161862404965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n - A001221 (A174073 n).toNat

end

end A348090.P2876999161862404965

/-! ## A348090.P14163720712631329277

`A014105(n)-A251138(A279567(n))`
-/

namespace A348090.P14163720712631329277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n - A251138 (A279567 n).toNat

end

end A348090.P14163720712631329277

/-! ## A348090.P2255964479738526659

`A008000(n)-A353352(A056277(n+1))`
-/

namespace A348090.P2255964479738526659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A353352 (A056277 (n + 1)).toNat

end

end A348090.P2255964479738526659

/-! ## A348090.P3820150677451548330

`A008000(n)-A070879(A288005(2*n+1))`
-/

namespace A348090.P3820150677451548330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A070879 (A288005 (2 * n + 1)).toNat

end

end A348090.P3820150677451548330

/-!
# A348091: For any positive number n, let f(n) be the infinite matrix (m_{i, j}, i, j > 0) with values in GF(2) encoding the Fermi-Dirac prime factors of n (n = Product_{i, j > 0} (prime(i)^2^(j-1))^m_{i, j}); let g be the inverse of f; a(n) = g(f(n)^2).

The programs for A348091, there is no canonical definition to state claims against.
-/

/-! ## A348091.P4102656344424832150

`A108371(A048155(n+2)+2)`
-/

namespace A348091.P4102656344424832150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108371 (A048155 (n + 2) + 2).toNat

end

end A348091.P4102656344424832150

/-! ## A348091.P11717810194919916891

`gcd(A085079(n+1), A143348(A019466(n)))`
-/

namespace A348091.P11717810194919916891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085079 (n + 1)) (A143348 (A019466 n).toNat)

end

end A348091.P11717810194919916891

/-! ## A348091.P14466872636592230979

`gcd(A105119(n+1), A262888(A282153(n)))`
-/

namespace A348091.P14466872636592230979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105119 (n + 1)) (A262888 (A282153 n).toNat)

end

end A348091.P14466872636592230979

/-! ## A348091.P2059793813973160266

`gcd(A072356(n+1), A329332(A072356(2*(n+1))))`
-/

namespace A348091.P2059793813973160266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072356 (n + 1)) (A329332 (A072356 (2 * (n + 1))).toNat)

end

end A348091.P2059793813973160266

/-!
# A348092: Unique values, or record values, of A343743.

The programs for A348092, there is no canonical definition to state claims against.
-/

/-! ## A348092.P14772598012238468085

`record[A343743(A028920(n))]`
-/

namespace A348092.P14772598012238468085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343743 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348092.P14772598012238468085

/-! ## A348092.P1161729771442479262

`record[A343743(A109785(n))]`
-/

namespace A348092.P1161729771442479262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343743 (A109785 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348092.P1161729771442479262

/-! ## A348092.P2155736647431475973

`record[A343743(A133310(n))]`
-/

namespace A348092.P2155736647431475973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343743 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348092.P2155736647431475973

/-! ## A348092.P9618792606081906994

`record[A343743(A134478(n))]`
-/

namespace A348092.P9618792606081906994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343743 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348092.P9618792606081906994

/-! ## A348092.P16349739518842108985

`record[A343743(A141256(n))]`
-/

namespace A348092.P16349739518842108985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343743 (A141256 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348092.P16349739518842108985

/-!
# A348093: Numbers k >= 1 such that there is no pair (x,y) such that x - d(x) = k or y + d(y) = k, where d = A000005 = number of divisors.

The programs for A348093, the canonical program `A348093.P4410502798466718450` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348093 has offset 1).

The definition of A348093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3651 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348093.P4410502798466718450

`∩[A036434(n+1), A045765(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A348093

/-- `∩[A036434(n+1), A045765(n+1)]` -/
def P4410502798466718450.Spec : Prop :=
  ∀ n, (P4410502798466718450.a n : ℤ) = A348093 (n + 1)

theorem P4410502798466718450.correct : P4410502798466718450.Spec := by
  intro n
  simp only [A348093, Nat.add_sub_cancel]

end A348093

/-! ## A348093.P9291197106762198456

`eq[A036431(A028310(n)), A082284(n)]`
-/

namespace A348093.P9291197106762198456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036431 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348093.P9291197106762198456

namespace A348093

/-- `eq[A036431(A028310(n)), A082284(n)]` -/
def P9291197106762198456.Spec : Prop :=
  ∀ n, (P9291197106762198456.a n : ℤ) = A348093 (n + 1)

end A348093

/-! ## A348093.P7331843824863737887

`eq[A036431(A266116(n)), A082284(n)]`
-/

namespace A348093.P7331843824863737887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036431 (A266116 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348093.P7331843824863737887

namespace A348093

/-- `eq[A036431(A266116(n)), A082284(n)]` -/
def P7331843824863737887.Spec : Prop :=
  ∀ n, (P7331843824863737887.a n : ℤ) = A348093 (n + 1)

end A348093

/-! ## A348093.P5773916610927308491

`eq[A036431(A082284(n)+n), A082284(n)]`
-/

namespace A348093.P5773916610927308491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036431 (A082284 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348093.P5773916610927308491

namespace A348093

/-- `eq[A036431(A082284(n)+n), A082284(n)]` -/
def P5773916610927308491.Spec : Prop :=
  ∀ n, (P5773916610927308491.a n : ℤ) = A348093 (n + 1)

end A348093

/-!
# A348094: If the Collatz trajectory of n reaches 1, say after k steps, and there is an integer m > n such that T^i(m) and T^i(n) have the same parity for i = 0..k (where T^i denotes the i-th iterate of the Collatz map A006370), then a(n) is the least such m, otherwise a(n) is -1.

The programs for A348094, there is no canonical definition to state claims against.
-/

/-! ## A348094.P2264852696113013344

`n+1+2^A006666(n+1)`
-/

namespace A348094.P2264852696113013344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (2 : ℚ) ^ (A006666 (n + 1) : ℤ)

end

end A348094.P2264852696113013344

/-! ## A348094.P3469960389782017252

`A000051(A006666(n+1))+n`
-/

namespace A348094.P3469960389782017252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A006666 (n + 1)).toNat + (n : ℤ)

end

end A348094.P3469960389782017252

/-! ## A348094.P18425713922575250365

`A011782(A064433(n+2))+n+1`
-/

namespace A348094.P18425713922575250365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A064433 (n + 2)).toNat + (n + 1 : ℤ)

end

end A348094.P18425713922575250365

/-! ## A348094.P11244350342041384651

`A011782(A006666(n+1)+1)+n+1`
-/

namespace A348094.P11244350342041384651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A006666 (n + 1) + 1).toNat + (n + 1 : ℤ)

end

end A348094.P11244350342041384651

/-! ## A348094.P10428184841971169201

`A016116(2*A006666(n+1))+n+1`
-/

namespace A348094.P10428184841971169201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A006666 (n + 1)).toNat + (n + 1 : ℤ)

end

end A348094.P10428184841971169201

/-!
# A348095: Number of free n-polysticks embedded in the square lattice with at least one cycle.

The programs for A348095, there is no canonical definition to state claims against.
-/

/-! ## A348095.P7990214330839674683

`A019988(n+1)-A056841(n+2)`
-/

namespace A348095.P7990214330839674683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019988 (n + 1) - A056841 (n + 2)

end

end A348095.P7990214330839674683

/-! ## A348095.P15538788542698628431

`A019988(n+1)%A056841(A020725(n+1))`
-/

namespace A348095.P15538788542698628431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019988 (n + 1)) (A056841 (A020725 (n + 1)).toNat)

end

end A348095.P15538788542698628431

/-! ## A348095.P3693186367886076211

`A019988(A032563(n+1))%A056841(n+2)`
-/

namespace A348095.P3693186367886076211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019988 (A032563 (n + 1)).toNat) (A056841 (n + 2))

end

end A348095.P3693186367886076211

/-!
# A348096: Array A(n,s) read by rows: the free n-polysticks of the square lattice with symmetry group of order 2^s.

The programs for A348096, there is no canonical definition to state claims against.
-/

/-! ## A348096.P5649100571917862867

`A004248(val(A222389(n+1), 8))`
-/

namespace A348096.P5649100571917862867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 (SequenceMachineLib.valuation (A222389 (n + 1)).toNat 8)

end

end A348096.P5649100571917862867

/-! ## A348096.P4454616195558021844

`A000045(A343930(n+5)%((n+1)/2^val(n+1, 2)))`
-/

namespace A348096.P4454616195558021844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A343930 (n + 5)) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat

end

end A348096.P4454616195558021844

/-! ## A348096.P17797848620368089929

`A001878(A280526(n)+A008619(n))`
-/

namespace A348096.P17797848620368089929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (A280526 n + A008619 n).toNat

end

end A348096.P17797848620368089929

/-! ## A348096.P15807202539525598381

`A148559(n)%A005811(A129519(n))`
-/

namespace A348096.P15807202539525598381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148559 n) (A005811 (A129519 n).toNat)

end

end A348096.P15807202539525598381

/-!
# A348097: Numbers having equally many unitary and nonunitary prime divisors.

The programs for A348097, the canonical program `A348097.P16199017349381684825` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348097 has offset 1).

The definition of A348097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1459 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348097.P10228690031531780915

`eq[1, a(A064989(n))-A056594(n)]` with `a(0)=2, a(1)=1`
-/

namespace A348097.P10228690031531780915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  f2 (A064989 n).toNat - A056594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A348097.P10228690031531780915

namespace A348097

/-- `eq[1, a(A064989(n))-A056594(n)]` -/
def P10228690031531780915.Spec : Prop :=
  ∀ n, (P10228690031531780915.a n : ℤ) = A348097 (n + 1)

end A348097

/-! ## A348097.P16199017349381684825

`eq[A056169(n+1), A056170(n+1)]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A348097

/-- `eq[A056169(n+1), A056170(n+1)]+1` -/
def P16199017349381684825.Spec : Prop :=
  ∀ n, (P16199017349381684825.a n : ℤ) = A348097 (n + 1)

theorem P16199017349381684825.correct : P16199017349381684825.Spec := by
  intro n
  simp only [A348097, Nat.add_sub_cancel]

end A348097

/-! ## A348097.P3956704955712490596

`eq[A063958(n+1), A240086(n+1)]+1`
-/

namespace A348097.P3956704955712490596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A348097.P3956704955712490596

namespace A348097

/-- `eq[A063958(n+1), A240086(n+1)]+1` -/
def P3956704955712490596.Spec : Prop :=
  ∀ n, (P3956704955712490596.a n : ℤ) = A348097 (n + 1)

end A348097

/-! ## A348097.P10133257536105561287

`eq[A056671(n+1), A323308(n+1)]+1`
-/

namespace A348097.P10133257536105561287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323308 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A348097.P10133257536105561287

namespace A348097

/-- `eq[A056671(n+1), A323308(n+1)]+1` -/
def P10133257536105561287.Spec : Prop :=
  ∀ n, (P10133257536105561287.a n : ℤ) = A348097 (n + 1)

end A348097

/-! ## A348097.P16392501960159450134

`eq[A001221(A000188(n+1)), A056169(n+1)]+1`
-/

namespace A348097.P16392501960159450134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000188 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A348097.P16392501960159450134

namespace A348097

/-- `eq[A001221(A000188(n+1)), A056169(n+1)]+1` -/
def P16392501960159450134.Spec : Prop :=
  ∀ n, (P16392501960159450134.a n : ℤ) = A348097 (n + 1)

end A348097

/-! ## A348097.P7041729385685225476

`eq[A056170(A233583(n+1)), A286852(n)]`
-/

namespace A348097.P7041729385685225476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A348097.P7041729385685225476

namespace A348097

/-- `eq[A056170(A233583(n+1)), A286852(n)]` -/
def P7041729385685225476.Spec : Prop :=
  ∀ n, (P7041729385685225476.a n : ℤ) = A348097 (n + 1)

end A348097

/-! ## A348097.P7417946219737795979

`record[A008683(A073184(n+1))*A096458(n+1)]`
-/

namespace A348097.P7417946219737795979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A073184 (n + 1)).toNat * A096458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A348097.P7417946219737795979

namespace A348097

/-- `record[A008683(A073184(n+1))*A096458(n+1)]` -/
def P7417946219737795979.Spec : Prop :=
  ∀ n, P7417946219737795979.a n = A348097 (n + 1)

end A348097

/-!
# A348098: Number k such that k and k+1 both have an equal number of unitary and nonunitary prime divisors (A348097).

The programs for A348098, the canonical program `A348098.P9969083464390464746` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348098 has offset 1).

The definition of A348098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348098.P5261499611069716895

`∩[A348097(n+1)-1, A348097(n+1)]`
-/

namespace A348098.P5261499611069716895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348097 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348098.P5261499611069716895

namespace A348098

/-- `∩[A348097(n+1)-1, A348097(n+1)]` -/
def P5261499611069716895.Spec : Prop :=
  ∀ n, (P5261499611069716895.a n : ℤ) = A348098 (n + 1)

end A348098

/-! ## A348098.P9969083464390464746

`A348097(eq[1, A348097(n+2)-A348097(n+1)]+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A348098

/-- `A348097(eq[1, A348097(n+2)-A348097(n+1)]+1)` -/
def P9969083464390464746.Spec : Prop :=
  ∀ n, P9969083464390464746.a n = A348098 (n + 1)

theorem P9969083464390464746.correct : P9969083464390464746.Spec := by
  intro n
  simp only [A348098, Nat.add_sub_cancel]

end A348098

/-! ## A348098.P11233262856916326442

`∩[A345381(n+1), A233583(A345381(n+1))]`
-/

namespace A348098.P11233262856916326442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A345381 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348098.P11233262856916326442

namespace A348098

/-- `∩[A345381(n+1), A233583(A345381(n+1))]` -/
def P11233262856916326442.Spec : Prop :=
  ∀ n, (P11233262856916326442.a n : ℤ) = A348098 (n + 1)

end A348098

/-! ## A348098.P9835259272657547450

`∩[A348097(n+1), A233583(A348097(n+1))]`
-/

namespace A348098.P9835259272657547450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A348097 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348098.P9835259272657547450

namespace A348098

/-- `∩[A348097(n+1), A233583(A348097(n+1))]` -/
def P9835259272657547450.Spec : Prop :=
  ∀ n, (P9835259272657547450.a n : ℤ) = A348098 (n + 1)

end A348098

/-! ## A348098.P7455193005088419013

`∩[A383113(n+1), A023443(A383113(n+1))]`
-/

namespace A348098.P7455193005088419013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A383113 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348098.P7455193005088419013

namespace A348098

/-- `∩[A383113(n+1), A023443(A383113(n+1))]` -/
def P7455193005088419013.Spec : Prop :=
  ∀ n, (P7455193005088419013.a n : ℤ) = A348098 (n + 1)

end A348098

/-!
# A348099: Starts of runs of 3 consecutive numbers that have an equal number of unitary and nonunitary prime divisors (A348097).

The programs for A348099, the canonical program `A348099.P214831151036935053` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A348099 has offset 1).

The definition of A348099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A348099.P214831151036935053

`∩[A348098(n+1)-1, A348098(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A348099

/-- `∩[A348098(n+1)-1, A348098(n+1)]` -/
def P214831151036935053.Spec : Prop :=
  ∀ n, (P214831151036935053.a n : ℤ) = A348099 (n + 1)

theorem P214831151036935053.correct : P214831151036935053.Spec := by
  intro n
  simp only [A348099, Nat.add_sub_cancel]

end A348099

/-! ## A348099.P15982418612326569337

`∩[A348098(n+1), A023443(A348098(n+1))]`
-/

namespace A348099.P15982418612326569337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A348098 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A348099.P15982418612326569337

namespace A348099

/-- `∩[A348098(n+1), A023443(A348098(n+1))]` -/
def P15982418612326569337.Spec : Prop :=
  ∀ n, (P15982418612326569337.a n : ℤ) = A348099 (n + 1)

end A348099

