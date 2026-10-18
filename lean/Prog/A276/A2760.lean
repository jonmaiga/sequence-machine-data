import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
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
# A276000: Least k such that n! divides phi(k!) (k > 0).

The programs for A276000, the canonical program `A276000.P16396236457092608332` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276000 has offset 1).

The definition of A276000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276000.P16396236457092608332

`A184985(n+1)+A175856(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A276000

/-- `A184985(n+1)+A175856(n+1)` -/
def P16396236457092608332.Spec : Prop :=
  ∀ n, P16396236457092608332.a n = A276000 (n + 1)

theorem P16396236457092608332.correct : P16396236457092608332.Spec := by
  intro n
  simp only [A276000, Nat.add_sub_cancel]

end A276000

/-! ## A276000.P6232084540381079147

`A001747(A000720(n+1)+1)-A000010(n+1)%2`
-/

namespace A276000.P6232084540381079147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (A000720 (n + 1) + 1).toNat - Int.tmod (A000010 (n + 1)) 2

end

end A276000.P6232084540381079147

namespace A276000

/-- `A001747(A000720(n+1)+1)-A000010(n+1)%2` -/
def P6232084540381079147.Spec : Prop :=
  ∀ n, P6232084540381079147.a n = A276000 (n + 1)

end A276000

/-! ## A276000.P14881098885210565993

`A001747(A000720(n+1)+1)-A002322(n+1)%2`
-/

namespace A276000.P14881098885210565993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (A000720 (n + 1) + 1).toNat - Int.tmod (A002322 (n + 1)) 2

end

end A276000.P14881098885210565993

namespace A276000

/-- `A001747(A000720(n+1)+1)-A002322(n+1)%2` -/
def P14881098885210565993.Spec : Prop :=
  ∀ n, P14881098885210565993.a n = A276000 (n + 1)

end A276000

/-! ## A276000.P12383176752045459827

`A275985(A136548(n+2))`
-/

namespace A276000.P12383176752045459827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275985 (A136548 (n + 2)).toNat

end

end A276000.P12383176752045459827

namespace A276000

/-- `A275985(A136548(n+2))` -/
def P12383176752045459827.Spec : Prop :=
  ∀ n, P12383176752045459827.a n = A276000 (n + 1)

end A276000

/-! ## A276000.P6014110168003580437

`2*A136548(n+2)-A329678(2*n)`
-/

namespace A276000.P6014110168003580437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136548 (n + 2) - A329678 (2 * n)

end

end A276000.P6014110168003580437

namespace A276000

/-- `2*A136548(n+2)-A329678(2*n)` -/
def P6014110168003580437.Spec : Prop :=
  ∀ n, P6014110168003580437.a n = A276000 (n + 1)

end A276000

/-! ## A276000.P6071015135551108393

`2*A006530((n+1)*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A276000.P6071015135551108393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * A006530 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A276000.P6071015135551108393

namespace A276000

/-- `2*A006530((n+1)*a(n-1))` -/
def P6071015135551108393.Spec : Prop :=
  ∀ n, P6071015135551108393.a n = A276000 (n + 1)

end A276000

/-! ## A276000.P5866344096462246431

`A026491(A006530(lcm(n+1, a(n-1))))-2` with `a(0)=1`
-/

namespace A276000.P5866344096462246431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026491 (A006530 (Int.lcm (n + 1 : ℤ) (a (n - 1)))).toNat - 2

end

end A276000.P5866344096462246431

namespace A276000

/-- `A026491(A006530(lcm(n+1, a(n-1))))-2` -/
def P5866344096462246431.Spec : Prop :=
  ∀ n, P5866344096462246431.a n = A276000 (n + 1)

end A276000

/-! ## A276000.P2595198623404325309

`A275985(A006530(A342766(n+1)))`
-/

namespace A276000.P2595198623404325309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275985 (A006530 (A342766 (n + 1)).toNat).toNat

end

end A276000.P2595198623404325309

namespace A276000

/-- `A275985(A006530(A342766(n+1)))` -/
def P2595198623404325309.Spec : Prop :=
  ∀ n, P2595198623404325309.a n = A276000 (n + 1)

end A276000

/-! ## A276000.P12668253962523254994

`A275985(A342766(n+1))`
-/

namespace A276000.P12668253962523254994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275985 (A342766 (n + 1)).toNat

end

end A276000.P12668253962523254994

namespace A276000

/-- `A275985(A342766(n+1))` -/
def P12668253962523254994.Spec : Prop :=
  ∀ n, P12668253962523254994.a n = A276000 (n + 1)

end A276000

/-! ## A276000.P13374431956901704930

`A316563(A094802(n+1))`
-/

namespace A276000.P13374431956901704930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316563 (A094802 (n + 1)).toNat

end

end A276000.P13374431956901704930

namespace A276000

/-- `A316563(A094802(n+1))` -/
def P13374431956901704930.Spec : Prop :=
  ∀ n, P13374431956901704930.a n = A276000 (n + 1)

end A276000

/-!
# A276001: Numbers n for which A060502(n) <= 1; numbers with at most one distinct slope in their factorial representation.

The programs for A276001, there is no canonical definition to state claims against.
-/

/-! ## A276001.P10091351570292593463

`lt[A060502(n), 2]`
-/

namespace A276001.P10091351570292593463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A276001.P10091351570292593463

/-! ## A276001.P13429958229266341358

`eq[A060130(n), A275811(n)]`
-/

namespace A276001.P13429958229266341358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276001.P13429958229266341358

/-! ## A276001.P2217858401217302997

`eq[A060502(n)², A060128(n)]`
-/

namespace A276001.P2217858401217302997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276001.P2217858401217302997

/-! ## A276001.P16653030312007621354

`eq[A060130(n)*A060502(n), A060130(n)]`
-/

namespace A276001.P16653030312007621354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n * A060502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276001.P16653030312007621354

/-! ## A276001.P15819576315484418923

`eq[A060502(n)*A275806(n), A275806(n)]`
-/

namespace A276001.P15819576315484418923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n * A275806 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276001.P15819576315484418923

/-! ## A276001.P12286468557696272218

`eq[A060502(n)*A276010(n), A276010(n)]`
-/

namespace A276001.P12286468557696272218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n * A276010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276001.P12286468557696272218

/-! ## A276001.P5579770480026879155

`eq[A057427(n), A060502(n)]`
-/

namespace A276001.P5579770480026879155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276001.P5579770480026879155

/-! ## A276001.P6836456087649751380

`eq[A060502(n)*A225901(n), A225901(n)]`
-/

namespace A276001.P6836456087649751380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n * A225901 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276001.P6836456087649751380

/-!
# A276002: Numbers n for which A060502(n) = 2; numbers with exactly two occupied slopes in their factorial representation.

The programs for A276002, there is no canonical definition to state claims against.
-/

/-! ## A276002.P11711029540605992249

`eq[2, A060502(n)]`
-/

namespace A276002.P11711029540605992249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276002.P11711029540605992249

/-! ## A276002.P16789153911335031324

`eq[2, A000120(A276010(n))]`
-/

namespace A276002.P16789153911335031324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A276010 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276002.P16789153911335031324

/-! ## A276002.P10284987181942349621

`eq[A060500(n)+2, A060129(n)]`
-/

namespace A276002.P10284987181942349621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060129 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276002.P10284987181942349621

/-! ## A276002.P18066374299209188524

`eq[2, A276004(n)+A060128(n)]`
-/

namespace A276002.P18066374299209188524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276004 n + A060128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276002.P18066374299209188524

/-! ## A276002.P7795476838150094238

`eq[2, A001221(A275734(n))]`
-/

namespace A276002.P7795476838150094238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A275734 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276002.P7795476838150094238

/-! ## A276002.P9499291043525219985

`eq[3, A006530(A278234(n))]`
-/

namespace A276002.P9499291043525219985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A278234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276002.P9499291043525219985

/-! ## A276002.P9803631612050058805

`eq[2, A275806(A225901(n))]`
-/

namespace A276002.P9803631612050058805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A225901 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276002.P9803631612050058805

/-!
# A276003: Numbers n for which A060502(n) = 3; numbers with exactly three occupied slopes in their factorial representation.

The programs for A276003, there is no canonical definition to state claims against.
-/

/-! ## A276003.P13415081942420822273

`eq[3, A060502(n)]`
-/

namespace A276003.P13415081942420822273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276003.P13415081942420822273

/-! ## A276003.P675317084382494729

`eq[3, A000120(A276010(n))]`
-/

namespace A276003.P675317084382494729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A276010 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276003.P675317084382494729

/-! ## A276003.P17824694203641709887

`eq[A060500(n)+3, A060129(n)]`
-/

namespace A276003.P17824694203641709887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060129 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276003.P17824694203641709887

/-! ## A276003.P4301868863454537499

`eq[3, A276004(n)+A060128(n)]`
-/

namespace A276003.P4301868863454537499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276004 n + A060128 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276003.P4301868863454537499

/-! ## A276003.P6768993407228679090

`eq[3, A001221(A275734(n))]`
-/

namespace A276003.P6768993407228679090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A275734 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276003.P6768993407228679090

/-! ## A276003.P14214202537012415052

`eq[5, A006530(A278234(n))]`
-/

namespace A276003.P14214202537012415052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A278234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276003.P14214202537012415052

/-! ## A276003.P3081369114795162009

`eq[3, A275806(A225901(n))]`
-/

namespace A276003.P3081369114795162009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (A225901 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276003.P3081369114795162009

/-!
# A276004: a(n) is the number of nonzero digits in the factorial-base representation of n that are matched by more significant digits from left; a(n) = A060502(n) - A060128(n).

The programs for A276004, there is no canonical definition to state claims against.
-/

/-! ## A276004.P9871111909170337496

`A060502(n)-A060128(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276004.P9871111909170337496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n - A060128 n

end

end A276004.P9871111909170337496

/-! ## A276004.P7385760213890125061

`A060130(n)-A060500(n)`
-/

namespace A276004.P7385760213890125061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n - A060500 n

end

end A276004.P7385760213890125061

/-! ## A276004.P12935307741073635478

`A060500(A060125(n))-A060128(n)`
-/

namespace A276004.P12935307741073635478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (A060125 n).toNat - A060128 n

end

end A276004.P12935307741073635478

/-! ## A276004.P12611499286797085843

`A060130(n)-A060502(A060125(n))`
-/

namespace A276004.P12611499286797085843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n - A060502 (A060125 n).toNat

end

end A276004.P12611499286797085843

/-! ## A276004.P2649302667227492315

`A060129(n)-(A060500(n)+A060128(n))`
-/

namespace A276004.P2649302667227492315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060129 n - (A060500 n + A060128 n)

end

end A276004.P2649302667227492315

/-! ## A276004.P17527338157160937929

`A060130(n)+A060502(n)-A060129(n)`
-/

namespace A276004.P17527338157160937929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n + (A060502 n - A060129 n)

end

end A276004.P17527338157160937929

/-! ## A276004.P2288447994293568133

`A060502(n)-A056170(A275725(n))`
-/

namespace A276004.P2288447994293568133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n - A056170 (A275725 n).toNat

end

end A276004.P2288447994293568133

/-!
# A276005: Numbers with hit-free factorial base representations; positions of zeros in A276004 & A276007.

The programs for A276005, there is no canonical definition to state claims against.
-/

/-! ## A276005.P867910934760415365

`eq[0, A276004(n)]`
-/

namespace A276005.P867910934760415365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276004 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276005.P867910934760415365

/-! ## A276005.P7874965126242599477

`eq[0, A276007(n)]`
-/

namespace A276005.P7874965126242599477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276005.P7874965126242599477

/-! ## A276005.P6705792723731051992

`eq[A060128(n), A060502(n)]`
-/

namespace A276005.P6705792723731051992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276005.P6705792723731051992

/-! ## A276005.P2607552557703045650

`eq[A060130(n), A060500(n)]`
-/

namespace A276005.P2607552557703045650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276005.P2607552557703045650

/-! ## A276005.P11481823272349912117

`lt[A275964(A275957(n)), 1]`
-/

namespace A276005.P11481823272349912117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275964 (A275957 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A276005.P11481823272349912117

/-!
# A276006: Numbers with at least one hit in their factorial base representations (see comments for the definition); positions of nonzeros in A276004 & A276007.

The programs for A276006, there is no canonical definition to state claims against.
-/

/-! ## A276006.P16180194725982157854

`comp[A276005(n)]`
-/

namespace A276006.P16180194725982157854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276005 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A276006.P16180194725982157854

/-! ## A276006.P1875851029475819178

`lt[0, A276004(n)]`
-/

namespace A276006.P1875851029475819178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276004 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A276006.P1875851029475819178

/-! ## A276006.P7438481112338810242

`lt[0, A276007(n)]`
-/

namespace A276006.P7438481112338810242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A276006.P7438481112338810242

/-! ## A276006.P12529835136014223972

`eq[1, A000194(a(A276004(n)))]` with `a(0)=3`
-/

namespace A276006.P12529835136014223972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000194 (f2 (A276004 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276006.P12529835136014223972

/-! ## A276006.P8704819830998447284

`eq[1, A033676(a(A276007(n))+1)]` with `a(0)=3`
-/

namespace A276006.P8704819830998447284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A033676 (f2 (A276007 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276006.P8704819830998447284

/-! ## A276006.P15882268387307567331

`eq[1, A342007(a(A276007(n))+1)]` with `a(0)=3`
-/

namespace A276006.P15882268387307567331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A342007 (f2 (A276007 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276006.P15882268387307567331

/-! ## A276006.P224509672917305771

`lt[0, A275964(A275957(n))]`
-/

namespace A276006.P224509672917305771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275964 (A275957 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A276006.P224509672917305771

/-!
# A276007: a(n) = number of nonzero digits in factorial base representation of n that hit less significant nonzero digits to the right. See comments for exact definition.

The programs for A276007, there is no canonical definition to state claims against.
-/

/-! ## A276007.P8515602318719016619

`A323514(A323523(n))+A276004(n)`
-/

namespace A276007.P8515602318719016619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323514 (A323523 n).toNat + A276004 n

end

end A276007.P8515602318719016619

/-! ## A276007.P7712072125169960255

`A060130(n)+A323514(A323523(n))-A060500(n)`
-/

namespace A276007.P7712072125169960255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n + (A323514 (A323523 n).toNat - A060500 n)

end

end A276007.P7712072125169960255

/-! ## A276007.P9915417390127449866

`A060502(n)+A323514(A323523(n))-A060128(n)`
-/

namespace A276007.P9915417390127449866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n + (A323514 (A323523 n).toNat - A060128 n)

end

end A276007.P9915417390127449866

/-! ## A276007.P4318149107994842557

`A276004(n)*A318498(A153515(n+1))`
-/

namespace A276007.P4318149107994842557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276004 n * A318498 (A153515 (n + 1)).toNat

end

end A276007.P4318149107994842557

/-! ## A276007.P17109638517528511665

`(A060130(n)-A060500(n))*A318498(A153515(n+1))`
-/

namespace A276007.P17109638517528511665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060130 n - A060500 n) * A318498 (A153515 (n + 1)).toNat

end

end A276007.P17109638517528511665

/-!
# A276008: Substitute ones for all nonzero digits in factorial base representation of n: a(n) = A059590(A275727(n)).

The programs for A276008, there is no canonical definition to state claims against.
-/

/-! ## A276008.P12117503499790347602

`A059590(A275727(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276008.P12117503499790347602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (A275727 n).toNat

end

end A276008.P12117503499790347602

/-!
# A276009: Decrement each nonzero digit by one in factorial base representation of n: a(n) = n - A276008(n).

The programs for A276009, there is no canonical definition to state claims against.
-/

/-! ## A276009.P5856038917368808478

`n-A276008(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276009.P5856038917368808478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276008 n

end

end A276009.P5856038917368808478

/-! ## A276009.P13529032098384675527

`A153880(A257684(n))`
-/

namespace A276009.P13529032098384675527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (A257684 n).toNat

end

end A276009.P13529032098384675527

/-! ## A276009.P4450070846694491850

`n-A059590(A275727(n))`
-/

namespace A276009.P4450070846694491850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A059590 (A275727 n).toNat

end

end A276009.P4450070846694491850

/-! ## A276009.P7019754271561397813

`n-A266123(A225901(n)+n)`
-/

namespace A276009.P7019754271561397813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A266123 (A225901 n + (n : ℤ)).toNat

end

end A276009.P7019754271561397813

/-! ## A276009.P6020123053453201852

`n-A266193(A225901(n)+n)`
-/

namespace A276009.P6020123053453201852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A266193 (A225901 n + (n : ℤ)).toNat

end

end A276009.P6020123053453201852

/-! ## A276009.P17155485312018694429

`A257684(A255411(n)-(A225901(n)+n))`
-/

namespace A276009.P17155485312018694429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (A255411 n - (A225901 n + (n : ℤ))).toNat

end

end A276009.P17155485312018694429

/-! ## A276009.P6028379699710419759

`A257684(A255411(n)-n-A225901(n))`
-/

namespace A276009.P6028379699710419759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (A255411 n - (n : ℤ) - A225901 n).toNat

end

end A276009.P6028379699710419759

/-! ## A276009.P4647626650248551200

`A276952(A225901(n)+n)-A225901(n)`
-/

namespace A276009.P4647626650248551200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276952 (A225901 n + (n : ℤ)).toNat - A225901 n

end

end A276009.P4647626650248551200

/-! ## A276009.P11244166228384303953

`A257684(A275846(A255411(n)))`
-/

namespace A276009.P11244166228384303953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (A275846 (A255411 n).toNat).toNat

end

end A276009.P11244166228384303953

/-! ## A276009.P8299765502888204623

`A257684(A225901(A255411(A225901(n))))`
-/

namespace A276009.P8299765502888204623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (A225901 (A255411 (A225901 n).toNat).toNat).toNat

end

end A276009.P8299765502888204623

/-! ## A276009.P3366895833933285623

`A257684(A275848(A255411(A275847(n))))`
-/

namespace A276009.P3366895833933285623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (A275848 (A255411 (A275847 n).toNat).toNat).toNat

end

end A276009.P3366895833933285623

/-! ## A276009.P5360344628380318566

`n-A276075(A275733(n))`
-/

namespace A276009.P5360344628380318566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276075 (A275733 n).toNat

end

end A276009.P5360344628380318566

/-!
# A276010: a(0) = 0, for n >= 1, a(n) = A275736(n) OR a(A257684(n)), where OR is given by A003986.

The programs for A276010, there is no canonical definition to state claims against.
-/

/-! ## A276010.P12256910944463858958

`A087207(A275734(n))`
-/

namespace A276010.P12256910944463858958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A275734 n).toNat

end

end A276010.P12256910944463858958

/-! ## A276010.P16341676662107132489

`∑{p}[A275734(n), A048675(#)]`
-/

namespace A276010.P16341676662107132489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 p

end

end A276010.P16341676662107132489

/-! ## A276010.P175414080324071526

`∑{p}[A275734(n), A248663(#)]`
-/

namespace A276010.P175414080324071526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A248663 p

end

end A276010.P175414080324071526

/-! ## A276010.P15747767322314786502

`or(a(A257684(n)), A275736(n))` with `a(0)=0`
-/

namespace A276010.P15747767322314786502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (a (A257684 n).toNat) (A275736 n)

end

end A276010.P15747767322314786502

/-! ## A276010.P5503687373157740961

`or(a(A257684(n)), A275808(n))` with `a(0)=0`
-/

namespace A276010.P5503687373157740961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (a (A257684 n).toNat) (A275808 n)

end

end A276010.P5503687373157740961

/-! ## A276010.P11718100675366077756

`A048675(∏{p}[A275734(n), #])`
-/

namespace A276010.P11718100675366077756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A276010.P11718100675366077756

/-! ## A276010.P14697692486902960303

`A248663(∏{p}[A275734(n), #])`
-/

namespace A276010.P14697692486902960303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A276010.P14697692486902960303

/-!
# A276011: Permutation of nonnegative integers: a(n) = A273662(A225901(A273670(n))).

The programs for A276011, there is no canonical definition to state claims against.
-/

/-! ## A276011.P8737927388129471222

`A273662(A225901(A273670(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276011.P8737927388129471222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273662 (A225901 (A273670 n).toNat).toNat

end

end A276011.P8737927388129471222

/-! ## A276011.P17161855234748936320

`A273662(A275954(A225901(n)))`
-/

namespace A276011.P17161855234748936320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273662 (A275954 (A225901 n).toNat).toNat

end

end A276011.P17161855234748936320

/-! ## A276011.P9214874732886068134

`A257682(A225901(A273670(n))-1)`
-/

namespace A276011.P9214874732886068134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257682 (A225901 (A273670 n).toNat - 1).toNat

end

end A276011.P9214874732886068134

/-! ## A276011.P6278045370231504528

`A273662(A225901(A275848(A256450(n))))`
-/

namespace A276011.P6278045370231504528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273662 (A225901 (A275848 (A256450 n).toNat).toNat).toNat

end

end A276011.P6278045370231504528

/-! ## A276011.P10359898236814424837

`A273662(A275954(A276012(A273662(A275954(n)))))`
-/

namespace A276011.P10359898236814424837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273662 (A275954 (A276012 (A273662 (A275954 n).toNat).toNat).toNat).toNat

end

end A276011.P10359898236814424837

/-! ## A276011.P3602738710297298721

`A225901(A275837(A275842(n)))`
-/

namespace A276011.P3602738710297298721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A275837 (A275842 n).toNat).toNat

end

end A276011.P3602738710297298721

/-! ## A276011.P18387315256215198801

`A273667(A275842(n))`
-/

namespace A276011.P18387315256215198801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273667 (A275842 n).toNat

end

end A276011.P18387315256215198801

/-!
# A276012: Permutation of nonnegative integers: a(n) = A273663(A225901(A256450(n))).

The programs for A276012, there is no canonical definition to state claims against.
-/

/-! ## A276012.P12187291090506064052

`A273663(A225901(A256450(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276012.P12187291090506064052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 (A225901 (A256450 n).toNat).toNat

end

end A276012.P12187291090506064052

/-! ## A276012.P1378956906384456288

`A273663(A275952(A225901(n)))`
-/

namespace A276012.P1378956906384456288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 (A275952 (A225901 n).toNat).toNat

end

end A276012.P1378956906384456288

/-! ## A276012.P18426165159413960155

`A276952(A225901(A256450(n))-1)`
-/

namespace A276012.P18426165159413960155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276952 (A225901 (A256450 n).toNat - 1).toNat

end

end A276012.P18426165159413960155

/-! ## A276012.P15172822802947415824

`A273663(A225901(eq[1, A257680(n)]))`
-/

namespace A276012.P15172822802947415824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 (A225901 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A276012.P15172822802947415824

/-! ## A276012.P4543370628986531546

`A273663(A225901(A275847(A273670(n))))`
-/

namespace A276012.P4543370628986531546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 (A225901 (A275847 (A273670 n).toNat).toNat).toNat

end

end A276012.P4543370628986531546

/-! ## A276012.P294948452332858842

`A273663(A275837(A273670(A273668(n))))`
-/

namespace A276012.P294948452332858842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 (A275837 (A273670 (A273668 n).toNat).toNat).toNat

end

end A276012.P294948452332858842

/-! ## A276012.P778843510490745767

`A273663(A275952(A276011(A273663(A275952(n)))))`
-/

namespace A276012.P778843510490745767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 (A275952 (A276011 (A273663 (A275952 n).toNat).toNat).toNat).toNat

end

end A276012.P778843510490745767

/-! ## A276012.P5865363406207731738

`A275841(A273668(n))`
-/

namespace A276012.P5865363406207731738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275841 (A273668 n).toNat

end

end A276012.P5865363406207731738

/-! ## A276012.P15556254363937680616

`A275841(A225901(A275836(n)))`
-/

namespace A276012.P15556254363937680616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275841 (A225901 (A275836 n).toNat).toNat

end

end A276012.P15556254363937680616

/-! ## A276012.P15057727426055593420

`A275841(A275838(A225901(A275838(A275837(n)))))`
-/

namespace A276012.P15057727426055593420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275841 (A275838 (A225901 (A275838 (A275837 n).toNat).toNat).toNat).toNat

end

end A276012.P15057727426055593420

/-! ## A276012.P3009094256925819768

`A275841(A275838(A273667(A275838(n))))`
-/

namespace A276012.P3009094256925819768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275841 (A275838 (A273667 (A275838 n).toNat).toNat).toNat

end

end A276012.P3009094256925819768

/-! ## A276012.P6983643475271631949

`A273663(A275952(A273668(A275835(n))))`
-/

namespace A276012.P6983643475271631949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273663 (A275952 (A273668 (A275835 n).toNat).toNat).toNat

end

end A276012.P6983643475271631949

/-!
# A276013: Diagonal of (1 - 9 x y) / ((1 - 3 y - 2 x + 3 y^2 + 8 x^2 y) * (1 - u - z) * (1 - v - w)).

The programs for A276013, there is no canonical definition to state claims against.
-/

/-! ## A276013.P7261905465701597513

`A145853(A171476(n))*A207646(n)`
-/

namespace A276013.P7261905465701597513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145853 (A171476 n).toNat * A207646 n

end

end A276013.P7261905465701597513

/-!
# A276014: Diagonal of (1 - 9 x y) / ((1 - 3 y - 2 x + 3 y^2 + 9 x^2 y) * (1 - u - v - z - w)).

The programs for A276014, there is no canonical definition to state claims against.
-/

/-! ## A276014.P710229322629406647

`A001448(n)*A002894(n)*A004987(n)`
-/

namespace A276014.P710229322629406647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001448 n * A002894 n * A004987 n

end

end A276014.P710229322629406647

/-! ## A276014.P1866615207302693339

`A002894(n)*A004987(n)*A000984(A005843(n))`
-/

namespace A276014.P1866615207302693339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002894 n * A004987 n * A000984 (A005843 n).toNat

end

end A276014.P1866615207302693339

/-! ## A276014.P11106321410420257249

`A004991(n)/A328399(A008458(n))*A008977(n)`
-/

namespace A276014.P11106321410420257249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004991 n : ℚ) / (A328399 (A008458 n).toNat : ℚ) * (A008977 n : ℚ)

end

end A276014.P11106321410420257249

/-! ## A276014.P13564987482020246646

`A000984(n)²*A004987(n)*A000984(A005843(n))`
-/

namespace A276014.P13564987482020246646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n ^ 2 * A004987 n * A000984 (A005843 n).toNat

end

end A276014.P13564987482020246646

/-!
# A276015: Diagonal of (1 - 9 x y) / ((1 - 3 y - 2 x + 3 y^2 + 9 x^2 y) * (1 - u - z - u z) * (1 - v - w)).

The programs for A276015, there is no canonical definition to state claims against.
-/

/-! ## A276015.P1181706411977809449

`A004987(n)*A268555(n)`
-/

namespace A276015.P1181706411977809449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004987 n * A268555 n

end

end A276015.P1181706411977809449

/-! ## A276015.P17035725659068114186

`A004117(n)*A125824(n)*A268555(n)`
-/

namespace A276015.P17035725659068114186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004117 n * A125824 n * A268555 n

end

end A276015.P17035725659068114186

/-! ## A276015.P6810236543366981541

`A004991(n)/A016777(n)*A268555(n)`
-/

namespace A276015.P6810236543366981541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004991 n : ℚ) / (A016777 n : ℚ) * (A268555 n : ℚ)

end

end A276015.P6810236543366981541

/-! ## A276015.P11784753448199807998

`A268549(n)/A002894(n)*A268555(n)`
-/

namespace A276015.P11784753448199807998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268549 n : ℚ) / (A002894 n : ℚ) * (A268555 n : ℚ)

end

end A276015.P11784753448199807998

/-! ## A276015.P10662963028603042410

`A268555(n)/A008977(n)*A276014(n)`
-/

namespace A276015.P10662963028603042410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268555 n : ℚ) / (A008977 n : ℚ) * (A276014 n : ℚ)

end

end A276015.P10662963028603042410

/-!
# A276016: Diagonal of (1 - 9 x y)/((1 - 3 y - 2 x + 3 y^2 + 9 x^2 y) * (1 - u - v - w)).

The programs for A276016, there is no canonical definition to state claims against.
-/

/-! ## A276016.P11952725756697444975

`A004987(n)*A006480(n)`
-/

namespace A276016.P11952725756697444975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004987 n * A006480 n

end

end A276016.P11952725756697444975

/-! ## A276016.P4713425712325242787

`A004988(n)*A276018(n)`
-/

namespace A276016.P4713425712325242787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004988 n * A276018 n

end

end A276016.P4713425712325242787

/-! ## A276016.P16930892107375521307

`(n+1)*A007004(n)*A004987(n)`
-/

namespace A276016.P16930892107375521307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007004 n * A004987 n

end

end A276016.P16930892107375521307

/-! ## A276016.P8986413719238436328

`(2*n+1)*A024486(n)*A004987(n)`
-/

namespace A276016.P8986413719238436328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A024486 n * A004987 n

end

end A276016.P8986413719238436328

/-! ## A276016.P1938877428801122159

`A097186(A000096(n))*A276018(n)`
-/

namespace A276016.P1938877428801122159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097186 (A000096 n).toNat * A276018 n

end

end A276016.P1938877428801122159

/-!
# A276017: Diagonal of (1 - 9 x y)/((1 - 3 y - 2 x + 3 y^2 + 8 x^2 y) * (1 - u - v - w)).

The programs for A276017, there is no canonical definition to state claims against.
-/

/-! ## A276017.P9926632660043595357

`A275047(n)/A184423(n)*A276013(n)`
-/

namespace A276017.P9926632660043595357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275047 n : ℚ) / (A184423 n : ℚ) * (A276013 n : ℚ)

end

end A276017.P9926632660043595357

/-!
# A276018: n^2 * a(n) = 3*(3*n-2)^2 * a(n-1), with a(0) = 1.

The programs for A276018, the canonical program `A276018.P889487982192807700` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276018 has offset 0).

The definition of A276018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276018.P889487982192807700

`3*(3*n-2)²/n²*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A276018

/-- `3*(3*n-2)²/n²*a(n-1)` -/
def P889487982192807700.Spec : Prop :=
  ∀ n, P889487982192807700.a n = (A276018 n : ℚ)

end A276018

/-! ## A276018.P3902790931459602551

`A004987(n)/A000244(n)*A004987(n)`
-/

namespace A276018.P3902790931459602551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004987 n : ℚ) / (A000244 n : ℚ) * (A004987 n : ℚ)

end

end A276018.P3902790931459602551

namespace A276018

/-- `A004987(n)/A000244(n)*A004987(n)` -/
def P3902790931459602551.Spec : Prop :=
  ∀ n, P3902790931459602551.a n = (A276018 n : ℚ)

end A276018

/-! ## A276018.P1525469430521121293

`A004987(n)/record[A125824(n)]*A004987(n)`
-/

namespace A276018.P1525469430521121293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125824 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004987 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) * (A004987 n : ℚ)

end

end A276018.P1525469430521121293

namespace A276018

/-- `A004987(n)/record[A125824(n)]*A004987(n)` -/
def P1525469430521121293.Spec : Prop :=
  ∀ n, P1525469430521121293.a n = (A276018 n : ℚ)

end A276018

/-! ## A276018.P16642108848278784384

`A004987(n)/A000142(n)*A007559(n)`
-/

namespace A276018.P16642108848278784384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004987 n : ℚ) / (A000142 n : ℚ) * (A007559 n : ℚ)

end

end A276018.P16642108848278784384

namespace A276018

/-- `A004987(n)/A000142(n)*A007559(n)` -/
def P16642108848278784384.Spec : Prop :=
  ∀ n, P16642108848278784384.a n = (A276018 n : ℚ)

end A276018

/-! ## A276018.P7620342521476469496

`A004987(n)²/A000244(n)`
-/

namespace A276018.P7620342521476469496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004987 n ^ 2 : ℚ) / (A000244 n : ℚ)

end

end A276018.P7620342521476469496

namespace A276018

/-- `A004987(n)²/A000244(n)` -/
def P7620342521476469496.Spec : Prop :=
  ∀ n, P7620342521476469496.a n = (A276018 n : ℚ)

end A276018

/-! ## A276018.P8764618147361290805

`A004987(n)²/record[A125824(n)]`
-/

namespace A276018.P8764618147361290805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125824 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004987 n ^ 2 : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A276018.P8764618147361290805

namespace A276018

/-- `A004987(n)²/record[A125824(n)]` -/
def P8764618147361290805.Spec : Prop :=
  ∀ n, P8764618147361290805.a n = (A276018 n : ℚ)

end A276018

/-!
# A276022: n^2 * a(n) = 3*(5*n^2 - 5*n + 2) * a(n-1) - 16*(5*n^2 - 10*n + 6) * a(n-2) + 36*(5*n^2 - 15*n + 12) * a(n-3) - 144*(n-2)^2 * a(n-4), with a(0)=1, a(1)=6, a(2)=30, a(3)=144.

The programs for A276022, there is no canonical definition to state claims against.
-/

/-! ## A276022.P7731018972969851429

`A028310((n+1)*A202834(n))`
-/

namespace A276022.P7731018972969851429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n + 1 : ℤ) * A202834 n).toNat

end

end A276022.P7731018972969851429

/-! ## A276022.P5038949585933416345

`A023443((n+1)*A202834(n)+1)`
-/

namespace A276022.P5038949585933416345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((n + 1 : ℤ) * A202834 n + 1).toNat

end

end A276022.P5038949585933416345

/-!
# A276024: Number of positive subset sums of integer partitions of n.

The programs for A276024, there is no canonical definition to state claims against.
-/

/-! ## A276024.P4520663832375583659

`A304792(n+1)-Δ[A000070(n)]`
-/

namespace A276024.P4520663832375583659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304792 (n + 1) - (f1 (n + 1) - f1 n)

end

end A276024.P4520663832375583659

/-! ## A276024.P7830205729927882223

`A304792(n+1)-record[A114099(n)]`
-/

namespace A276024.P7830205729927882223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304792 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276024.P7830205729927882223

/-! ## A276024.P11069680845503948706

`A304792(n+1)-A000041(n+1)`
-/

namespace A276024.P11069680845503948706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304792 (n + 1) - A000041 (n + 1)

end

end A276024.P11069680845503948706

/-! ## A276024.P6953988712678765443

`A304792(n+1)-∑[A187219(n+1)]`
-/

namespace A276024.P6953988712678765443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304792 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276024.P6953988712678765443

/-! ## A276024.P14216400425528182622

`A304792(n+1)-(A000065(n+1)+1)`
-/

namespace A276024.P14216400425528182622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304792 (n + 1) - (A000065 (n + 1) + 1)

end

end A276024.P14216400425528182622

/-!
# A276025: Next prime after concatenate of n, n times (A000461).

The programs for A276025, there is no canonical definition to state claims against.
-/

/-! ## A276025.P14424400960567951369

`A000040(A000720(A000461(n+1))+1)`
-/

namespace A276025.P14424400960567951369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A000461 (n + 1)).toNat + 1).toNat

end

end A276025.P14424400960567951369

/-!
# A276026: a(n) = Sum_{k=0..7} (n + k)^2.

The programs for A276026, the canonical program `A276026.P13383802828694250839` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276026 has offset 0).

The definition of A276026 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276026.P13383802828694250839

`8*n²+56*n+140`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A276026

/-- `8*n²+56*n+140` -/
def P13383802828694250839.Spec : Prop :=
  ∀ n, (P13383802828694250839.a n : ℤ) = A276026 n

theorem P13383802828694250839.correct : P13383802828694250839.Spec := by
  intro n
  simp only [A276026]

end A276026

/-! ## A276026.P12500648566994224331

`2*(A217776(n)+2)`
-/

namespace A276026.P12500648566994224331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A217776 n + 2)

end

end A276026.P12500648566994224331

namespace A276026

/-- `2*(A217776(n)+2)` -/
def P12500648566994224331.Spec : Prop :=
  ∀ n, P12500648566994224331.a n = A276026 n

end A276026

/-! ## A276026.P15319449819439814853

`2*(A250657(n+1)+n+31)`
-/

namespace A276026.P15319449819439814853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A250657 (n + 1) + (n + 31 : ℤ))

end

end A276026.P15319449819439814853

namespace A276026

/-- `2*(A250657(n+1)+n+31)` -/
def P15319449819439814853.Spec : Prop :=
  ∀ n, P15319449819439814853.a n = A276026 n

end A276026

/-! ## A276026.P11549801127776634614

`4*(A139570(n+3)-(3*n+n+1))`
-/

namespace A276026.P11549801127776634614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A139570 (n + 3) - (3 * n + (n + 1) : ℤ))

end

end A276026.P11549801127776634614

namespace A276026

/-- `4*(A139570(n+3)-(3*n+n+1))` -/
def P11549801127776634614.Spec : Prop :=
  ∀ n, P11549801127776634614.a n = A276026 n

end A276026

/-! ## A276026.P14889544192079739900

`2*A241851(2*n+7)`
-/

namespace A276026.P14889544192079739900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A241851 (2 * n + 7)

end

end A276026.P14889544192079739900

namespace A276026

/-- `2*A241851(2*n+7)` -/
def P14889544192079739900.Spec : Prop :=
  ∀ n, P14889544192079739900.a n = A276026 n

end A276026

/-! ## A276026.P2810297456662324220

`lcm(4, A241851(A020742(n)))`
-/

namespace A276026.P2810297456662324220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A241851 (A020742 n).toNat)

end

end A276026.P2810297456662324220

namespace A276026

/-- `lcm(4, A241851(A020742(n)))` -/
def P2810297456662324220.Spec : Prop :=
  ∀ n, (P2810297456662324220.a n : ℤ) = A276026 n

end A276026

/-! ## A276026.P3075959418551045336

`∑{digits}[A109177(n+1), (#+n)²]`
-/

namespace A276026.P3075959418551045336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109177 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x + n) ^ 2).sum

end

end A276026.P3075959418551045336

namespace A276026

/-- `∑{digits}[A109177(n+1), (#+n)²]` -/
def P3075959418551045336.Spec : Prop :=
  ∀ n, (P3075959418551045336.a n : ℤ) = A276026 n

end A276026

/-! ## A276026.P2031524083079892966

`A098502(∑[n+3]+6)`
-/

namespace A276026.P2031524083079892966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098502 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A276026.P2031524083079892966

namespace A276026

/-- `A098502(∑[n+3]+6)` -/
def P2031524083079892966.Spec : Prop :=
  ∀ n, P2031524083079892966.a n = A276026 n

end A276026

/-! ## A276026.P8548999157366922787

`4*A131098(∑[n+3]+7)`
-/

namespace A276026.P8548999157366922787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A131098 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A276026.P8548999157366922787

namespace A276026

/-- `4*A131098(∑[n+3]+7)` -/
def P8548999157366922787.Spec : Prop :=
  ∀ n, P8548999157366922787.a n = A276026 n

end A276026

/-! ## A276026.P6471371833994057311

`4*A086814(A052905(n)+9)`
-/

namespace A276026.P6471371833994057311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A086814 (A052905 n + 9).toNat

end

end A276026.P6471371833994057311

namespace A276026

/-- `4*A086814(A052905(n)+9)` -/
def P6471371833994057311.Spec : Prop :=
  ∀ n, P6471371833994057311.a n = A276026 n

end A276026

/-!
# A276027: Number of ways to transform a sequence of n ones to a single number by continually removing two numbers and replacing them with their sum modulo 3.

The programs for A276027, there is no canonical definition to state claims against.
-/

/-! ## A276027.P14924984507725412256

`A341141(A341143(∑[ceil(n/2)]))`
-/

namespace A276027.P14924984507725412256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341141 ((A341143 ((∑ j ∈ Finset.range (n + 1), f1 j).toNat + 22)).toNat + 10)

end

end A276027.P14924984507725412256

/-! ## A276027.P11479197654499614900

`A049905(n+1)-A007828(A049923(n+1))`
-/

namespace A276027.P11479197654499614900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049905 (n + 1) - A007828 (A049923 (n + 1)).toNat

end

end A276027.P11479197654499614900

/-! ## A276027.P12924702595300428468

`A126757(n+1)-A025581(A126748(n+1))`
-/

namespace A276027.P12924702595300428468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126757 (n + 1) - A025581 (A126748 (n + 1)).toNat

end

end A276027.P12924702595300428468

/-!
# A276028: Number of ways to transform a sequence of n zeros and n ones to a single number by continually removing two numbers and replacing them with their sum modulo 3.

The programs for A276028, there is no canonical definition to state claims against.
-/

/-! ## A276028.P8014154404935124527

`A057859(A037992(n)*A062355(n+1))`
-/

namespace A276028.P8014154404935124527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (A037992 n * A062355 (n + 1)).toNat

end

end A276028.P8014154404935124527

/-!
# A276029: Number of ways to transform a sequence of n ones and n twos to a single number by continually removing two numbers and replacing them with their sum modulo 3.

The programs for A276029, there is no canonical definition to state claims against.
-/

/-! ## A276029.P1357240587720292436

`A184776(A184776(ceil(10^n/9)))`
-/

namespace A276029.P1357240587720292436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184776 (A184776 ⌈(10 ^ n : ℚ) / 9⌉.toNat).toNat

end

end A276029.P1357240587720292436

/-!
# A276030: Primes p such that A272207(p) = p.

The programs for A276030, there is no canonical definition to state claims against.
-/

/-! ## A276030.P11833415331866690744

`record[gcd(A030078(n+1), A276664(n+1))]`
-/

namespace A276030.P11833415331866690744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030078 (n + 1)) (A276664 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276030.P11833415331866690744

/-! ## A276030.P901676772889986924

`record[gcd(A272207(n+1), A276695(n+1))]`
-/

namespace A276030.P901676772889986924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A272207 (n + 1)) (A276695 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276030.P901676772889986924

/-! ## A276030.P11757287171461265153

`record[gcd(A273163(n+1), A276730(n+1))]`
-/

namespace A276030.P11757287171461265153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A273163 (n + 1)) (A276730 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276030.P11757287171461265153

/-! ## A276030.P11619968380285813815

`p?[gcd(A273163(n+1)², A000040(n+1))]`
-/

namespace A276030.P11619968380285813815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A273163 (n + 1) ^ 2) (A000040 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276030.P11619968380285813815

/-! ## A276030.P16714083018871996528

`p?[(n+1)*(A030205(A142150(n))+1)]`
-/

namespace A276030.P16714083018871996528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A030205 (A142150 n).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276030.P16714083018871996528

/-!
# A276031: Number of edges in the graded poset of the partitions of n taken modulo 3, where a partition into k parts is joined to a partition into k+1 parts if the latter is a refinement of the former.

The programs for A276031, the canonical program `A276031.P2056995903806121082` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276031 has offset 1).

The definition of A276031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276031.P2056995903806121082

`floor(a(n-3)+(n+1)²/3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A276031

/-- `floor(a(n-3)+(n+1)²/3)` -/
def P2056995903806121082.Spec : Prop :=
  ∀ n, P2056995903806121082.a n = A276031 (n + 1)

theorem P2056995903806121082.correct : P2056995903806121082.Spec := by
  intro n
  simp only [A276031, Nat.add_sub_cancel]

end A276031

/-! ## A276031.P4879421399035486076

`∑[a(n-3)+2]+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A276031.P4879421399035486076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 3) + 2

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 3)

end

end A276031.P4879421399035486076

namespace A276031

/-- `∑[a(n-3)+2]+a(n-3)` -/
def P4879421399035486076.Spec : Prop :=
  ∀ n, (P4879421399035486076.a n : ℤ) = A276031 (n + 1)

end A276031

/-! ## A276031.P9680955869683398284

`∑[A006446(n+1)-A008611(n+1)]-1`
-/

namespace A276031.P9680955869683398284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (n + 1) - A008611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A276031.P9680955869683398284

namespace A276031

/-- `∑[A006446(n+1)-A008611(n+1)]-1` -/
def P9680955869683398284.Spec : Prop :=
  ∀ n, P9680955869683398284.a n = A276031 (n + 1)

end A276031

/-! ## A276031.P13442731406659001205

`∑[A006446(n+1)-A194960(n+1)]+n`
-/

namespace A276031.P13442731406659001205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (n + 1) - A194960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A276031.P13442731406659001205

namespace A276031

/-- `∑[A006446(n+1)-A194960(n+1)]+n` -/
def P13442731406659001205.Spec : Prop :=
  ∀ n, P13442731406659001205.a n = A276031 (n + 1)

end A276031

/-! ## A276031.P7748534120626985585

`A092353(n)-A008619(A092942(n))`
-/

namespace A276031.P7748534120626985585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092353 n - A008619 (A092942 n).toNat

end

end A276031.P7748534120626985585

namespace A276031

/-- `A092353(n)-A008619(A092942(n))` -/
def P7748534120626985585.Spec : Prop :=
  ∀ n, P7748534120626985585.a n = A276031 (n + 1)

end A276031

/-! ## A276031.P3413324443643459526

`A006446(n+1)+A092353(n)-A006446(n+2)`
-/

namespace A276031.P3413324443643459526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (n + 1) + (A092353 n - A006446 (n + 2))

end

end A276031.P3413324443643459526

namespace A276031

/-- `A006446(n+1)+A092353(n)-A006446(n+2)` -/
def P3413324443643459526.Spec : Prop :=
  ∀ n, P3413324443643459526.a n = A276031 (n + 1)

end A276031

/-! ## A276031.P11590857050819109684

`record[A066377(n+1)-A143101(n+1)]`
-/

namespace A276031.P11590857050819109684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066377 (n + 1) - A143101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276031.P11590857050819109684

namespace A276031

/-- `record[A066377(n+1)-A143101(n+1)]` -/
def P11590857050819109684.Spec : Prop :=
  ∀ n, P11590857050819109684.a n = A276031 (n + 1)

end A276031

/-!
# A276032: Number of refinements of the partition n^1 with all numbers taken modulo 2.

The programs for A276032, there is no canonical definition to state claims against.
-/

/-! ## A276032.P15917221352589431332

`∑[abs(∑[A099363(n+2)])]`
-/

namespace A276032.P15917221352589431332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099363 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276032.P15917221352589431332

/-! ## A276032.P9167913017398316607

`∑[abs(A126120(n+3)-1)]`
-/

namespace A276032.P9167913017398316607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A126120 (n + 3) - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276032.P9167913017398316607

/-! ## A276032.P8931466581497181539

`∑[abs(A210628(n+4)+1)]`
-/

namespace A276032.P8931466581497181539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210628 (n + 4) + 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276032.P8931466581497181539

/-! ## A276032.P1435701852750008878

`∑[abs(1-A097331(n+4))]`
-/

namespace A276032.P1435701852750008878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A097331 (n + 4)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276032.P1435701852750008878

/-! ## A276032.P6585562479061897666

`A110199(n+3)-(n%2+1)`
-/

namespace A276032.P6585562479061897666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110199 (n + 3) - ((n % 2 + 1 : ℕ) : ℤ)

end

end A276032.P6585562479061897666

/-!
# A276033: Number of generalizations of the partition 1^n with all elements taken modulo 2.

The programs for A276033, there is no canonical definition to state claims against.
-/

/-! ## A276033.P11485955706063146393

`∑[A008315(ceil(n/2)²+n)]`
-/

namespace A276033.P11485955706063146393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (⌈(n : ℚ) / 2⌉ ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276033.P11485955706063146393

/-! ## A276033.P5802233895598771606

`∑[A302764(∑[A266072(n)])]`
-/

namespace A276033.P5802233895598771606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266072 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302764 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276033.P5802233895598771606

/-! ## A276033.P10839331822742417316

`A036256(n)-A037951(n+1)`
-/

namespace A276033.P10839331822742417316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036256 n - A037951 (n + 1)

end

end A276033.P10839331822742417316

/-! ## A276033.P3311014881325082161

`∑[A026008(A004442(abs(1-n)))]`
-/

namespace A276033.P3311014881325082161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (A004442 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276033.P3311014881325082161

/-! ## A276033.P9861848346923017105

`∑[A001405(n)-Δ[A037951(n)]]`
-/

namespace A276033.P9861848346923017105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276033.P9861848346923017105

/-!
# A276034: a(n) is the number of decompositions of 2n into an unordered sum of two primes in A274987.

The programs for A276034, there is no canonical definition to state claims against.
-/

/-! ## A276034.P12486964730259254478

`A276520(2*(n+1))`
-/

namespace A276034.P12486964730259254478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276520 (2 * (n + 1))

end

end A276034.P12486964730259254478

/-! ## A276034.P5416568434029467406

`lcm(A033999(n), A276520(A103517(n)))`
-/

namespace A276034.P5416568434029467406
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A276520 (A103517 n).toNat)

end

end A276034.P5416568434029467406

/-! ## A276034.P5435092406215409089

`and(A057428(n), A276520(A103517(n)))`
-/

namespace A276034.P5435092406215409089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A276520 (A103517 n).toNat)

end

end A276034.P5435092406215409089

/-! ## A276034.P7840960090344236998

`A033999(2*n)*A276520(A103517(n))`
-/

namespace A276034.P7840960090344236998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A276520 (A103517 n).toNat

end

end A276034.P7840960090344236998

/-! ## A276034.P7060642233685017027

`and(A000225(A000194(n)), A276520(A103517(n)))`
-/

namespace A276034.P7060642233685017027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A000194 n).toNat) (A276520 (A103517 n).toNat)

end

end A276034.P7060642233685017027

/-! ## A276034.P12523642286457927388

`and(A000225(A000196(n)), A276520(A103517(n)))`
-/

namespace A276034.P12523642286457927388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A000196 n).toNat) (A276520 (A103517 n).toNat)

end

end A276034.P12523642286457927388

/-! ## A276034.P2106803919043623188

`A276520(A103517(n))/A033999(A276520(n+1))²`
-/

namespace A276034.P2106803919043623188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276520 (A103517 n).toNat : ℚ) / (A033999 (A276520 (n + 1)).toNat ^ 2 : ℚ)

end

end A276034.P2106803919043623188

/-! ## A276034.P4340489767135754357

`and(A000225(A285106(n)), A276520(A103517(n)))`
-/

namespace A276034.P4340489767135754357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (A285106 n).toNat) (A276520 (A103517 n).toNat)

end

end A276034.P4340489767135754357

/-! ## A276034.P4281038288845068370

`and(A276520(A103517(n)), A286865(n))`
-/

namespace A276034.P4281038288845068370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A276520 (A103517 n).toNat) (A286865 n)

end

end A276034.P4281038288845068370

/-! ## A276034.P2056232665057743419

`and(A000225(n), A276520(A103517(n)))`
-/

namespace A276034.P2056232665057743419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A276520 (A103517 n).toNat)

end

end A276034.P2056232665057743419

/-! ## A276034.P4057561047107167873

`and(A276520(A103517(n)), A289370(n))`
-/

namespace A276034.P4057561047107167873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A276520 (A103517 n).toNat) (A289370 n)

end

end A276034.P4057561047107167873

/-! ## A276034.P5028552095615469164

`and(A126646(n), A276520(A103517(n)))`
-/

namespace A276034.P5028552095615469164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A276520 (A103517 n).toNat)

end

end A276034.P5028552095615469164

/-!
# A276035: Least k such that n divides phi(k^k) (k > 0).

The programs for A276035, there is no canonical definition to state claims against.
-/

/-! ## A276035.P8882929529629886659

`A275823(A038388(n+1)%A003459(n+1))`
-/

namespace A276035.P8882929529629886659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275823 (Int.tmod (A038388 (n + 1)) (A003459 (n + 1))).toNat

end

end A276035.P8882929529629886659

/-! ## A276035.P14251935241007138525

`gcd(A181811(A001748(n+1)), A295126(n+1))`
-/

namespace A276035.P14251935241007138525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A181811 (A001748 (n + 1)).toNat) (A295126 (n + 1))

end

end A276035.P14251935241007138525

/-! ## A276035.P16105653669804660190

`A038388(A003459(n+1)*A275823(n+1))/A003459(n+1)`
-/

namespace A276035.P16105653669804660190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038388 (A003459 (n + 1) * A275823 (n + 1)).toNat : ℚ) / (A003459 (n + 1) : ℚ)

end

end A276035.P16105653669804660190

/-! ## A276035.P13606364087748428977

`A109395(n+1)*A115362(A182522(n))`
-/

namespace A276035.P13606364087748428977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109395 (n + 1) * A115362 (A182522 n).toNat

end

end A276035.P13606364087748428977

/-! ## A276035.P2912857880758747381

`A001511(A005246(n))*A109395(n+1)`
-/

namespace A276035.P2912857880758747381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A005246 n).toNat * A109395 (n + 1)

end

end A276035.P2912857880758747381

/-!
# A276036: Numbers on the North-South axis of A274640 in order of appearance.

The programs for A276036, there is no canonical definition to state claims against.
-/

/-! ## A276036.P12911498584525423053

`A274640(∑[comp[or(2, n)-1]])`
-/

namespace A276036.P12911498584525423053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276036.P12911498584525423053

/-! ## A276036.P9775153610720639939

`A274640(∑[n%2+2*n])`
-/

namespace A276036.P9775153610720639939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276036.P9775153610720639939

/-! ## A276036.P12845697788835943305

`A274640(∑[lt[or(2, n-1), n]])`
-/

namespace A276036.P12845697788835943305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n : ℤ) - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A276036.P12845697788835943305

/-! ## A276036.P4606863601820403876

`A274640(∑[2*n]+ceil(n/2))`
-/

namespace A276036.P4606863601820403876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274640 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈(n : ℚ) / 2⌉).toNat

end

end A276036.P4606863601820403876

/-! ## A276036.P17607065508458926449

`A274641(A156859(n))+1`
-/

namespace A276036.P17607065508458926449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (A156859 n).toNat + 1

end

end A276036.P17607065508458926449

/-! ## A276036.P18056336893420349155

`A274641(∑[A014601(n)])+1`
-/

namespace A276036.P18056336893420349155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A276036.P18056336893420349155

/-!
# A276037: Numbers using only digits 1 and 5.

The programs for A276037, there is no canonical definition to state claims against.
-/

/-! ## A276037.P14443411784552221359

`A284921(n+1)-A007931(n+1)`
-/

namespace A276037.P14443411784552221359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284921 (n + 1) - A007931 (n + 1)

end

end A276037.P14443411784552221359

/-! ## A276037.P17868102676107182144

`A284923(n+1)-A032822(n+1)`
-/

namespace A276037.P17868102676107182144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284923 (n + 1) - A032822 (n + 1)

end

end A276037.P17868102676107182144

/-! ## A276037.P8098714772177044495

`A284963(n+1)-A032810(n+1)`
-/

namespace A276037.P8098714772177044495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284963 (n + 1) - A032810 (n + 1)

end

end A276037.P8098714772177044495

/-! ## A276037.P3166346441476548600

`A284973(n+1)-A032834(n+1)`
-/

namespace A276037.P3166346441476548600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284973 (n + 1) - A032834 (n + 1)

end

end A276037.P3166346441476548600

/-! ## A276037.P14477030888345161665

`A284922(n+1)-A032917(n+1)`
-/

namespace A276037.P14477030888345161665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284922 (n + 1) - A032917 (n + 1)

end

end A276037.P14477030888345161665

/-! ## A276037.P10199409158247924241

`A284632(n+1)-A256077(n+1)`
-/

namespace A276037.P10199409158247924241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284632 (n + 1) - A256077 (n + 1)

end

end A276037.P10199409158247924241

/-! ## A276037.P5260249068748442532

`A284964(n+1)-A284920(n+1)`
-/

namespace A276037.P5260249068748442532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284964 (n + 1) - A284920 (n + 1)

end

end A276037.P5260249068748442532

/-! ## A276037.P1832412498322473246

`2*A032822(n+1)-A032917(n+1)`
-/

namespace A276037.P1832412498322473246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032822 (n + 1) - A032917 (n + 1)

end

end A276037.P1832412498322473246

/-! ## A276037.P8600226020791171939

`2*A032917(n+1)-A256077(n+1)`
-/

namespace A276037.P8600226020791171939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032917 (n + 1) - A256077 (n + 1)

end

end A276037.P8600226020791171939

/-! ## A276037.P9483186963249609136

`A284964(n+1)-2*A007931(n+1)`
-/

namespace A276037.P9483186963249609136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284964 (n + 1) - 2 * A007931 (n + 1)

end

end A276037.P9483186963249609136

/-! ## A276037.P11586801298655725798

`(A276039(n+1)+A032917(n+1))/2`
-/

namespace A276037.P11586801298655725798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276039 (n + 1) + A032917 (n + 1) : ℚ) / 2

end

end A276037.P11586801298655725798

/-! ## A276037.P10463265048887712510

`(A284293(n+1)+A032822(n+1))/2`
-/

namespace A276037.P10463265048887712510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284293 (n + 1) + A032822 (n + 1) : ℚ) / 2

end

end A276037.P10463265048887712510

/-! ## A276037.P7772583919049737688

`2*A072961(n+1)-A284379(n+1)`
-/

namespace A276037.P7772583919049737688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072961 (n + 1) - A284379 (n + 1)

end

end A276037.P7772583919049737688

/-! ## A276037.P6810580395653784956

`A143967(n+1)-2*A256077(n+1)`
-/

namespace A276037.P6810580395653784956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143967 (n + 1) - 2 * A256077 (n + 1)

end

end A276037.P6810580395653784956

/-! ## A276037.P4564399804626690870

`2*A284632(n+1)-A143967(n+1)`
-/

namespace A276037.P4564399804626690870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284632 (n + 1) - A143967 (n + 1)

end

end A276037.P4564399804626690870

/-! ## A276037.P5174679337069307622

`2*A284293(n+1)-A276039(n+1)`
-/

namespace A276037.P5174679337069307622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284293 (n + 1) - A276039 (n + 1)

end

end A276037.P5174679337069307622

/-! ## A276037.P3921507019174765275

`2*A284921(n+1)-A284964(n+1)`
-/

namespace A276037.P3921507019174765275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284921 (n + 1) - A284964 (n + 1)

end

end A276037.P3921507019174765275

/-! ## A276037.P9306231839418564327

`2*A284971(n+1)-A285011(n+1)`
-/

namespace A276037.P9306231839418564327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284971 (n + 1) - A285011 (n + 1)

end

end A276037.P9306231839418564327

/-! ## A276037.P8274911336005170035

`A284922(n+1)-A284632(n+1)/2`
-/

namespace A276037.P8274911336005170035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284922 (n + 1) : ℚ) - (A284632 (n + 1) : ℚ) / 2

end

end A276037.P8274911336005170035

/-! ## A276037.P7850022329538146352

`A284973(n+1)-A284635(n+1)/2`
-/

namespace A276037.P7850022329538146352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284973 (n + 1) : ℚ) - (A284635 (n + 1) : ℚ) / 2

end

end A276037.P7850022329538146352

/-!
# A276038: Numbers n such that product of digits of n is a power of 6.

The programs for A276038, the canonical program `A276038.P2474071255086564491` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276038 has offset 1).

The definition of A276038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276038.P17602674204510804301

`eq[1, A030105(A007954(n))]`
-/

namespace A276038.P17602674204510804301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030105 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276038.P17602674204510804301

namespace A276038

/-- `eq[1, A030105(A007954(n))]` -/
def P17602674204510804301.Spec : Prop :=
  ∀ n, (P17602674204510804301.a n : ℤ) = A276038 (n + 1)

end A276038

/-! ## A276038.P10326058650283668970

`eq[A053827(A007954(n)), A054977(n)]`
-/

namespace A276038.P10326058650283668970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276038.P10326058650283668970

namespace A276038

/-- `eq[A053827(A007954(n)), A054977(n)]` -/
def P10326058650283668970.Spec : Prop :=
  ∀ n, (P10326058650283668970.a n : ℤ) = A276038 (n + 1)

end A276038

/-! ## A276038.P3246432648307161083

`eq[A053827(A051801(n)), A168046(n)]`
-/

namespace A276038.P3246432648307161083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276038.P3246432648307161083

namespace A276038

/-- `eq[A053827(A051801(n)), A168046(n)]` -/
def P3246432648307161083.Spec : Prop :=
  ∀ n, (P3246432648307161083.a n : ℤ) = A276038 (n + 1)

end A276038

/-! ## A276038.P2474071255086564491

`eq[A007954(n), A234959(A051801(n))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A276038

/-- `eq[A007954(n), A234959(A051801(n))]` -/
def P2474071255086564491.Spec : Prop :=
  ∀ n, (P2474071255086564491.a n : ℤ) = A276038 (n + 1)

theorem P2474071255086564491.correct : P2474071255086564491.Spec := by
  intro n
  simp only [A276038, Nat.add_sub_cancel]

end A276038

/-! ## A276038.P2705281513357357982

`eq[1, A053827(A007954(n)²)]`
-/

namespace A276038.P2705281513357357982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (A007954 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276038.P2705281513357357982

namespace A276038

/-- `eq[1, A053827(A007954(n)²)]` -/
def P2705281513357357982.Spec : Prop :=
  ∀ n, (P2705281513357357982.a n : ℤ) = A276038 (n + 1)

end A276038

/-!
# A276039: Numbers using only digits 1 and 7.

The programs for A276039, there is no canonical definition to state claims against.
-/

/-! ## A276039.P14875658410677841981

`A284923(n+1)-A007931(n+1)`
-/

namespace A276039.P14875658410677841981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284923 (n + 1) - A007931 (n + 1)

end

end A276039.P14875658410677841981

/-! ## A276039.P7322044538355732393

`A284922(n+1)-A256077(n+1)`
-/

namespace A276039.P7322044538355732393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284922 (n + 1) - A256077 (n + 1)

end

end A276039.P7322044538355732393

/-! ## A276039.P4822729452251786441

`2*A032822(n+1)-A256077(n+1)`
-/

namespace A276039.P4822729452251786441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032822 (n + 1) - A256077 (n + 1)

end

end A276039.P4822729452251786441

/-! ## A276039.P11238107763577755988

`2*A276037(n+1)-A032917(n+1)`
-/

namespace A276039.P11238107763577755988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276037 (n + 1) - A032917 (n + 1)

end

end A276039.P11238107763577755988

/-! ## A276039.P452015118900529616

`2*A143967(n+1)-A284380(n+1)`
-/

namespace A276039.P452015118900529616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143967 (n + 1) - A284380 (n + 1)

end

end A276039.P452015118900529616

/-! ## A276039.P2606161881635268407

`A284964(n+1)-2*A256077(n+1)`
-/

namespace A276039.P2606161881635268407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284964 (n + 1) - 2 * A256077 (n + 1)

end

end A276039.P2606161881635268407

/-! ## A276039.P12904174709007053974

`2*A284293(n+1)-A276037(n+1)`
-/

namespace A276039.P12904174709007053974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284293 (n + 1) - A276037 (n + 1)

end

end A276039.P12904174709007053974

/-! ## A276039.P4778382111191728165

`A284923(n+1)-A284920(n+1)/2`
-/

namespace A276039.P4778382111191728165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284923 (n + 1) : ℚ) - (A284920 (n + 1) : ℚ) / 2

end

end A276039.P4778382111191728165

/-! ## A276039.P1624037292442069156

`7*A007931(n+1)-A256292(n+1)`
-/

namespace A276039.P1624037292442069156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A007931 (n + 1) - A256292 (n + 1)

end

end A276039.P1624037292442069156

/-! ## A276039.P16002892260319144872

`A007931(n+1)+A213084(n+1)-A032917(n+1)`
-/

namespace A276039.P16002892260319144872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + (A213084 (n + 1) - A032917 (n + 1))

end

end A276039.P16002892260319144872

/-! ## A276039.P10934976346213256460

`A032917(n+1)+A284293(n+1)-A007931(n+1)`
-/

namespace A276039.P10934976346213256460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1) + (A284293 (n + 1) - A007931 (n + 1))

end

end A276039.P10934976346213256460

/-! ## A276039.P4685072085126583479

`A007931(n+1)+A284922(n+1)-A032810(n+1)`
-/

namespace A276039.P4685072085126583479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1) + (A284922 (n + 1) - A032810 (n + 1))

end

end A276039.P4685072085126583479

/-! ## A276039.P867058234416350637

`A032822(n+1)+A284632(n+1)-A032810(n+1)`
-/

namespace A276039.P867058234416350637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1) + (A284632 (n + 1) - A032810 (n + 1))

end

end A276039.P867058234416350637

/-! ## A276039.P1806649545925434271

`A032917(n+1)+A284963(n+1)-A032834(n+1)`
-/

namespace A276039.P1806649545925434271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1) + (A284963 (n + 1) - A032834 (n + 1))

end

end A276039.P1806649545925434271

/-! ## A276039.P17940205492888577615

`A032822(n+1)+A284922(n+1)-A072961(n+1)`
-/

namespace A276039.P17940205492888577615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1) + (A284922 (n + 1) - A072961 (n + 1))

end

end A276039.P17940205492888577615

/-! ## A276039.P14148025685491752347

`A032822(n+1)+A213084(n+1)-A276037(n+1)`
-/

namespace A276039.P14148025685491752347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1) + (A213084 (n + 1) - A276037 (n + 1))

end

end A276039.P14148025685491752347

/-! ## A276039.P3037207374920354381

`A032822(n+1)+A284972(n+1)-A256290(n+1)`
-/

namespace A276039.P3037207374920354381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1) + (A284972 (n + 1) - A256290 (n + 1))

end

end A276039.P3037207374920354381

/-! ## A276039.P16798608153517067858

`A276037(n+1)+A284293(n+1)-A032822(n+1)`
-/

namespace A276039.P16798608153517067858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276037 (n + 1) + (A284293 (n + 1) - A032822 (n + 1))

end

end A276039.P16798608153517067858

/-! ## A276039.P18156868511047541705

`A032917(n+1)+A284964(n+1)-A284379(n+1)`
-/

namespace A276039.P18156868511047541705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (n + 1) + (A284964 (n + 1) - A284379 (n + 1))

end

end A276039.P18156868511047541705

/-! ## A276039.P11804925076405395266

`A032822(n+1)+A284973(n+1)-A284634(n+1)`
-/

namespace A276039.P11804925076405395266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (n + 1) + (A284973 (n + 1) - A284634 (n + 1))

end

end A276039.P11804925076405395266

/-!
# A276040: Least k such that n^n divides phi(k^k) (k > 0).

The programs for A276040, there is no canonical definition to state claims against.
-/

/-! ## A276040.P14481612740089657699

`A117657(A103517(n))%A332339(2*n+3)`
-/

namespace A276040.P14481612740089657699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117657 (A103517 n).toNat) (A332339 (2 * n + 3))

end

end A276040.P14481612740089657699

/-! ## A276040.P1355950404020103322

`C(A117657(2*(n+1)), A161974(A340518(n+1)))`
-/

namespace A276040.P1355950404020103322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A117657 (2 * (n + 1))).toNat (A161974 (A340518 (n + 1)).toNat).toNat

end

end A276040.P1355950404020103322

/-! ## A276040.P1075719347914589260

`A020639(A120963(n))*A117656(n+1)`
-/

namespace A276040.P1075719347914589260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A120963 n).toNat * A117656 (n + 1)

end

end A276040.P1075719347914589260

/-! ## A276040.P14601152150220658820

`A020639(A336662(n))*A117656(n+1)`
-/

namespace A276040.P14601152150220658820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A336662 n).toNat * A117656 (n + 1)

end

end A276040.P14601152150220658820

/-! ## A276040.P6346540345917884107

`A020639(A093968(n+1))*A117656(n+1)`
-/

namespace A276040.P6346540345917884107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A093968 (n + 1)).toNat * A117656 (n + 1)

end

end A276040.P6346540345917884107

/-!
# A276041: Exponential convolution of odd numbers (A005408) with themselves.

The programs for A276041, the canonical program `A276041.P12024100711514901460` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276041 has offset 0).

The definition of A276041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276041.P12024100711514901460

`2^n*(n²+n+1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A276041

/-- `2^n*(n²+n+1)` -/
def P12024100711514901460.Spec : Prop :=
  ∀ n, (P12024100711514901460.a n : ℤ) = A276041 n

theorem P12024100711514901460.correct : P12024100711514901460.Spec := by
  intro n
  simp only [A276041]

end A276041

/-! ## A276041.P13829591814842778576

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=6, a(2)=28`
-/

namespace A276041.P13829591814842778576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 28] fun n a =>
  6 * a (n - 1) - 12 * a (n - 2) + 8 * a (n - 3)

end

end A276041.P13829591814842778576

namespace A276041

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P13829591814842778576.Spec : Prop :=
  ∀ n, P13829591814842778576.a n = A276041 n

theorem P13829591814842778576.correct : P13829591814842778576.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A276041, Nat.add_sub_cancel, A276041.P13829591814842778576.a, A276041.P12024100711514901460.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A276041, Nat.add_sub_cancel, A276041.P13829591814842778576.a, A276041.P12024100711514901460.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A276041

/-! ## A276041.P4367561025724580709

`lcm(2^n, or(1, ∑[2*n]))`
-/

namespace A276041.P4367561025724580709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ n) (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A276041.P4367561025724580709

namespace A276041

/-- `lcm(2^n, or(1, ∑[2*n]))` -/
def P4367561025724580709.Spec : Prop :=
  ∀ n, (P4367561025724580709.a n : ℤ) = A276041 n

end A276041

/-! ## A276041.P8855212982460745298

`xor(2^n*∑[2*n], 2^n)`
-/

namespace A276041.P8855212982460745298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)) (2 ^ n)

end

end A276041.P8855212982460745298

namespace A276041

/-- `xor(2^n*∑[2*n], 2^n)` -/
def P8855212982460745298.Spec : Prop :=
  ∀ n, (P8855212982460745298.a n : ℤ) = A276041 n

end A276041

/-! ## A276041.P18015949540944249844

`or(2^n*or(1, ∑[2*n]), 2^n)`
-/

namespace A276041.P18015949540944249844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 ^ n * Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)) (2 ^ n)

end

end A276041.P18015949540944249844

namespace A276041

/-- `or(2^n*or(1, ∑[2*n]), 2^n)` -/
def P18015949540944249844.Spec : Prop :=
  ∀ n, (P18015949540944249844.a n : ℤ) = A276041 n

end A276041

/-! ## A276041.P16959798855683334333

`2*a(n-1)+n*2^(n+1)` with `a(0)=1`
-/

namespace A276041.P16959798855683334333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + n * 2 ^ (n + 1)

end

end A276041.P16959798855683334333

namespace A276041

/-- `2*a(n-1)+n*2^(n+1)` -/
def P16959798855683334333.Spec : Prop :=
  ∀ n, (P16959798855683334333.a n : ℤ) = A276041 n

theorem P16959798855683334333.correct : P16959798855683334333.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A276041, Nat.add_sub_cancel, A276041.P16959798855683334333.a, A276041.P12024100711514901460.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A276041, Nat.add_sub_cancel, A276041.P16959798855683334333.a, A276041.P12024100711514901460.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A276041

/-! ## A276041.P11279109876830159178

`A100381(n+1)+2^n`
-/

namespace A276041.P11279109876830159178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100381 (n + 1) + (2 ^ n : ℤ)

end

end A276041.P11279109876830159178

namespace A276041

/-- `A100381(n+1)+2^n` -/
def P11279109876830159178.Spec : Prop :=
  ∀ n, P11279109876830159178.a n = A276041 n

end A276041

/-! ## A276041.P9510925844953600713

`A052481(n+1)-2^n`
-/

namespace A276041.P9510925844953600713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052481 (n + 1) - (2 ^ n : ℤ)

end

end A276041.P9510925844953600713

namespace A276041

/-- `A052481(n+1)-2^n` -/
def P9510925844953600713.Spec : Prop :=
  ∀ n, P9510925844953600713.a n = A276041 n

end A276041

/-! ## A276041.P17240677606184856948

`lcm(n²+1+n, A000079(n))`
-/

namespace A276041.P17240677606184856948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n ^ 2 + 1 + n : ℤ) (A000079 n)

end

end A276041.P17240677606184856948

namespace A276041

/-- `lcm(n²+1+n, A000079(n))` -/
def P17240677606184856948.Spec : Prop :=
  ∀ n, (P17240677606184856948.a n : ℤ) = A276041 n

end A276041

/-! ## A276041.P1830399219174426615

`∑[((n+1)²+n)*A011782(n)]`
-/

namespace A276041.P1830399219174426615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + n : ℤ) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276041.P1830399219174426615

namespace A276041

/-- `∑[((n+1)²+n)*A011782(n)]` -/
def P1830399219174426615.Spec : Prop :=
  ∀ n, P1830399219174426615.a n = A276041 n

end A276041

/-! ## A276041.P7730524737323829247

`abs((∑[2*n]+1)*Δ[A000225(n)])`
-/

namespace A276041.P7730524737323829247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * (f2 (n + 1) - f2 n)|

end

end A276041.P7730524737323829247

namespace A276041

/-- `abs((∑[2*n]+1)*Δ[A000225(n)])` -/
def P7730524737323829247.Spec : Prop :=
  ∀ n, P7730524737323829247.a n = A276041 n

end A276041

/-! ## A276041.P17850868188776165208

`2^n+(n+1)*2*A001787(n)`
-/

namespace A276041.P17850868188776165208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (n + 1 : ℤ) * (2 * A001787 n)

end

end A276041.P17850868188776165208

namespace A276041

/-- `2^n+(n+1)*2*A001787(n)` -/
def P17850868188776165208.Spec : Prop :=
  ∀ n, P17850868188776165208.a n = A276041 n

end A276041

/-! ## A276041.P17075697884010449136

`∑[∑[A001793(n+1)]]-(2^n-1)`
-/

namespace A276041.P17075697884010449136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((2 ^ n : ℤ) - 1)

end

end A276041.P17075697884010449136

namespace A276041

/-- `∑[∑[A001793(n+1)]]-(2^n-1)` -/
def P17075697884010449136.Spec : Prop :=
  ∀ n, P17075697884010449136.a n = A276041 n

end A276041

/-! ## A276041.P16964704266244921613

`A128796(n)+A014480(n)`
-/

namespace A276041.P16964704266244921613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128796 n + A014480 n

end

end A276041.P16964704266244921613

namespace A276041

/-- `A128796(n)+A014480(n)` -/
def P16964704266244921613.Spec : Prop :=
  ∀ n, P16964704266244921613.a n = A276041 n

end A276041

/-! ## A276041.P14634880330490760641

`A196508(n)+A048497(n)`
-/

namespace A276041.P14634880330490760641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196508 n + A048497 n

end

end A276041.P14634880330490760641

namespace A276041

/-- `A196508(n)+A048497(n)` -/
def P14634880330490760641.Spec : Prop :=
  ∀ n, P14634880330490760641.a n = A276041 n

end A276041

/-! ## A276041.P7803077196338999273

`A248917(n)+A087323(n)`
-/

namespace A276041.P7803077196338999273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248917 n + A087323 n

end

end A276041.P7803077196338999273

namespace A276041

/-- `A248917(n)+A087323(n)` -/
def P7803077196338999273.Spec : Prop :=
  ∀ n, P7803077196338999273.a n = A276041 n

end A276041

/-! ## A276041.P17237933429650823160

`A295288(n)+A084899(n)`
-/

namespace A276041.P17237933429650823160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295288 n + A084899 n

end

end A276041.P17237933429650823160

namespace A276041

/-- `A295288(n)+A084899(n)` -/
def P17237933429650823160.Spec : Prop :=
  ∀ n, P17237933429650823160.a n = A276041 n

end A276041

/-! ## A276041.P16295121323083408764

`A014477(n)-A036289(n)`
-/

namespace A276041.P16295121323083408764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014477 n - A036289 n

end

end A276041.P16295121323083408764

namespace A276041

/-- `A014477(n)-A036289(n)` -/
def P16295121323083408764.Spec : Prop :=
  ∀ n, P16295121323083408764.a n = A276041 n

end A276041

/-! ## A276041.P5845348993201806487

`A055580(n)-A000225(n)`
-/

namespace A276041.P5845348993201806487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055580 n - A000225 n

end

end A276041.P5845348993201806487

namespace A276041

/-- `A055580(n)-A000225(n)` -/
def P5845348993201806487.Spec : Prop :=
  ∀ n, P5845348993201806487.a n = A276041 n

end A276041

/-! ## A276041.P13023673325502340203

`A007758(n)+A001787(n+1)`
-/

namespace A276041.P13023673325502340203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007758 n + A001787 (n + 1)

end

end A276041.P13023673325502340203

namespace A276041

/-- `A007758(n)+A001787(n+1)` -/
def P13023673325502340203.Spec : Prop :=
  ∀ n, P13023673325502340203.a n = A276041 n

end A276041

/-!
# A276042: Exponential convolution of central polygonal numbers (A000124) with themselves.

The programs for A276042, the canonical program `A276042.P3030039750749181331` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276042 has offset 0).

The definition of A276042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276042.P3030039750749181331

`2^(n-6)*(n^4+2*n^3+19*n²+42*n+64)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A276042

/-- `2^(n-6)*(n^4+2*n^3+19*n²+42*n+64)` -/
def P3030039750749181331.Spec : Prop :=
  ∀ n, P3030039750749181331.a n = (A276042 n : ℚ)

end A276042

/-! ## A276042.P7219081765756024963

`A384243(n)+A383778(n+1)`
-/

namespace A276042.P7219081765756024963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384243 n + A383778 (n + 1)

end

end A276042.P7219081765756024963

namespace A276042

/-- `A384243(n)+A383778(n+1)` -/
def P7219081765756024963.Spec : Prop :=
  ∀ n, P7219081765756024963.a n = A276042 n

end A276042

/-!
# A276043: Least k such that n divides d(sigma(k)) (d = A000005).

The programs for A276043, there is no canonical definition to state claims against.
-/

/-! ## A276043.P1239718006996920316

`A000374(A035513(n+1)*A058389(n))`
-/

namespace A276043.P1239718006996920316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (A035513 (n + 1) * A058389 n).toNat

end

end A276043.P1239718006996920316

/-! ## A276043.P1701046693005390510

`A365543(lcm(A008619(n), A334774(n+1)))`
-/

namespace A276043.P1701046693005390510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365543 (Int.lcm (A008619 n) (A334774 (n + 1)))

end

end A276043.P1701046693005390510

/-! ## A276043.P11936590640309146975

`A220906(3*n+4)*A353843(A000079(n))`
-/

namespace A276043.P11936590640309146975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220906 (3 * n + 4) * A353843 (A000079 n).toNat

end

end A276043.P11936590640309146975

/-!
# A276044: Least k such that phi(k) has exactly n divisors.

The programs for A276044, there is no canonical definition to state claims against.
-/

/-! ## A276044.P7914584185373390769

`A049283(A037019(A043320(n+1)))`
-/

namespace A276044.P7914584185373390769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A037019 (A043320 (n + 1)).toNat).toNat

end

end A276044.P7914584185373390769

/-! ## A276044.P361965829967885563

`A049283(A037019(n+1)^A043567(n))`
-/

namespace A276044.P361965829967885563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (SequenceMachineLib.roundAway ((A037019 (n + 1) : ℚ) ^ (A043567 n : ℤ))).toNat

end

end A276044.P361965829967885563

/-! ## A276044.P9519524903629261283

`A049283(A037019(n+1))*A328569(2^(n+1))`
-/

namespace A276044.P9519524903629261283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A037019 (n + 1)).toNat * A328569 (2 ^ (n + 1))

end

end A276044.P9519524903629261283

/-! ## A276044.P17191177581948689181

`A001222(A236513(n+1))*A049283(A037019(n+1))`
-/

namespace A276044.P17191177581948689181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A236513 (n + 1)).toNat * A049283 (A037019 (n + 1)).toNat

end

end A276044.P17191177581948689181

/-! ## A276044.P12679818828234717937

`A049283(A037019(n+1))%A000040(A018020(n))`
-/

namespace A276044.P12679818828234717937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049283 (A037019 (n + 1)).toNat) (A000040 (A018020 n).toNat)

end

end A276044.P12679818828234717937

/-!
# A276045: Primes p such that d(p*(2p+1)) = 8 where d(n) is the number of divisors of n (A000005).

The programs for A276045, there is no canonical definition to state claims against.
-/

/-! ## A276045.P14979458988998396880

`∪[A182348(n+1), A234095(n+1)]`
-/

namespace A276045.P14979458988998396880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A276045.P14979458988998396880

/-! ## A276045.P8184551227653000638

`record[A006530(A039832(n+1))]`
-/

namespace A276045.P8184551227653000638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A039832 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276045.P8184551227653000638

/-! ## A276045.P10211618881084004333

`eq[n, A006530(2*(n+2)-A000005(2*n+1))]`
-/

namespace A276045.P10211618881084004333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((2 * (n + 2) : ℤ) - A000005 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276045.P10211618881084004333

/-! ## A276045.P14180665323783189242

`record[A006530(A005237(n+2))]`
-/

namespace A276045.P14180665323783189242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005237 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276045.P14180665323783189242

/-! ## A276045.P14004190221526896596

`record[A006530(A140128(n+4))]`
-/

namespace A276045.P14004190221526896596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A140128 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276045.P14004190221526896596

/-! ## A276045.P7460998286333452976

`p?[n*A049820(A000005(2*n+1))]`
-/

namespace A276045.P7460998286333452976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A049820 (A000005 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276045.P7460998286333452976

/-! ## A276045.P5628833350124405255

`p?[eq[4, A000005(2*n+1)]]`
-/

namespace A276045.P5628833350124405255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276045.P5628833350124405255

/-! ## A276045.P17820505756423803526

`record[A006530(eq[4, A000005(2*n+1)])]`
-/

namespace A276045.P17820505756423803526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276045.P17820505756423803526

/-! ## A276045.P6884481473518509394

`record[A020639(eq[4, A000005(2*n+1)])]`
-/

namespace A276045.P6884481473518509394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276045.P6884481473518509394

/-! ## A276045.P10003188576519968859

`p?[n*A213181(A329385(2*n+1))]`
-/

namespace A276045.P10003188576519968859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A213181 (A329385 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276045.P10003188576519968859

/-! ## A276045.P12128938172817432450

`p?[eq[4, A099774(n+1)]]`
-/

namespace A276045.P12128938172817432450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099774 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276045.P12128938172817432450

/-! ## A276045.P10776225396812245432

`p?[n*(A193773(n)-1)]`
-/

namespace A276045.P10776225396812245432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A193773 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276045.P10776225396812245432

/-! ## A276045.P11675779162870238187

`eq[A005127(n), A359290(n+1)]`
-/

namespace A276045.P11675779162870238187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276045.P11675779162870238187

/-! ## A276045.P12137858830664238700

`eq[A005128(n), A359290(n+1)]`
-/

namespace A276045.P12137858830664238700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276045.P12137858830664238700

/-! ## A276045.P9943173575863777168

`eq[A062830(n), A359290(n+1)]`
-/

namespace A276045.P9943173575863777168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276045.P9943173575863777168

/-! ## A276045.P724664278245122789

`eq[A322366(n), A359290(n+1)]`
-/

namespace A276045.P724664278245122789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322366 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276045.P724664278245122789

/-! ## A276045.P863006153579803300

`eq[A341982(n+2), A359290(n+1)]`
-/

namespace A276045.P863006153579803300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341982 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276045.P863006153579803300

/-! ## A276045.P15629108449988811015

`record[A014963(eq[4, A000005(2*n+1)])]`
-/

namespace A276045.P15629108449988811015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276045.P15629108449988811015

/-! ## A276045.P329251457772508763

`eq[A359290(n+1)², A323161(n+1)]`
-/

namespace A276045.P329251457772508763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359290 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276045.P329251457772508763

/-! ## A276045.P3524046790729195834

`p?[eq[A226602(2*n+1), A226602(2*n)]]`
-/

namespace A276045.P3524046790729195834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (2 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A276045.P3524046790729195834

/-!
# A276047: Numbers k such that 4*10^k + 21 is prime.

The programs for A276047, there is no canonical definition to state claims against.
-/

/-! ## A276047.P16224845518422445730

`record[A253889(A344607(2*n))%A001358(n+3)]`
-/

namespace A276047.P16224845518422445730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253889 (A344607 (2 * n)).toNat) (A001358 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276047.P16224845518422445730

/-!
# A276048: Sequence associated with the functional equation of the Riemann zeta zero spectrum (see formulas).

The programs for A276048, there is no canonical definition to state claims against.
-/

/-! ## A276048.P852948338981530326

`A020500(n+1)^A049559(n+1)`
-/

namespace A276048.P852948338981530326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020500 (n + 1) : ℚ) ^ (A049559 (n + 1) : ℤ)

end

end A276048.P852948338981530326

/-! ## A276048.P10867404228170639764

`A020500(n+1)^A173557(n+1)`
-/

namespace A276048.P10867404228170639764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020500 (n + 1) : ℚ) ^ (A173557 (n + 1) : ℤ)

end

end A276048.P10867404228170639764

/-! ## A276048.P9508495829608701441

`A000169(A014963(n+1))*A178487(n)`
-/

namespace A276048.P9508495829608701441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (A014963 (n + 1)).toNat * A178487 n

end

end A276048.P9508495829608701441

/-! ## A276048.P3711234631740995755

`A020500(n+1)^A000010(ratio[A003418(n)])`
-/

namespace A276048.P3711234631740995755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020500 (n + 1) : ℚ) ^ (A000010 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat : ℤ)

end

end A276048.P3711234631740995755

/-! ## A276048.P2847198603176769016

`A020500(n+1)^A000010(A007947(n+1))`
-/

namespace A276048.P2847198603176769016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020500 (n + 1) : ℚ) ^ (A000010 (A007947 (n + 1)).toNat : ℤ)

end

end A276048.P2847198603176769016

/-!
# A276049: Isolated deficient numbers that are prime.

The programs for A276049, the canonical program `A276049.P10431965570969386100` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276049 has offset 1).

The definition of A276049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2649 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276049.P10431965570969386100

`p?[(n+1)*A294936(n-A294936(n+2)+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A276049

/-- `p?[(n+1)*A294936(n-A294936(n+2)+1)]` -/
def P10431965570969386100.Spec : Prop :=
  ∀ n, P10431965570969386100.a n = A276049 (n + 1)

theorem P10431965570969386100.correct : P10431965570969386100.Spec := by
  intro n
  simp only [A276049, Nat.add_sub_cancel]

end A276049

/-! ## A276049.P7056786963018582032

`p?[A005100(A023196(n+1)-n+1)-2]`
-/

namespace A276049.P7056786963018582032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (A023196 (n + 1) - (n : ℤ) + 1).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276049.P7056786963018582032

namespace A276049

/-- `p?[A005100(A023196(n+1)-n+1)-2]` -/
def P7056786963018582032.Spec : Prop :=
  ∀ n, P7056786963018582032.a n = A276049 (n + 1)

end A276049

/-! ## A276049.P11328485489948350240

`p?[A274849(n+1)]`
-/

namespace A276049.P11328485489948350240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276049.P11328485489948350240

namespace A276049

/-- `p?[A274849(n+1)]` -/
def P11328485489948350240.Spec : Prop :=
  ∀ n, P11328485489948350240.a n = A276049 (n + 1)

end A276049

/-! ## A276049.P14422656894928470542

`filter[A274849(n+1), A010051(#)]`
-/

namespace A276049.P14422656894928470542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A276049.P14422656894928470542

namespace A276049

/-- `filter[A274849(n+1), A010051(#)]` -/
def P14422656894928470542.Spec : Prop :=
  ∀ n, P14422656894928470542.a n = A276049 (n + 1)

end A276049

/-! ## A276049.P1103174588367622152

`filter[A274849(n+1), A323152(#)]`
-/

namespace A276049.P1103174588367622152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A276049.P1103174588367622152

namespace A276049

/-- `filter[A274849(n+1), A323152(#)]` -/
def P1103174588367622152.Spec : Prop :=
  ∀ n, P1103174588367622152.a n = A276049 (n + 1)

end A276049

/-! ## A276049.P3360357936836942384

`filter[A274849(n+1), A323153(#)]`
-/

namespace A276049.P3360357936836942384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A276049.P3360357936836942384

namespace A276049

/-- `filter[A274849(n+1), A323153(#)]` -/
def P3360357936836942384.Spec : Prop :=
  ∀ n, P3360357936836942384.a n = A276049 (n + 1)

end A276049

/-! ## A276049.P3139124449404696278

`filter[A274849(n+1), A327861(#)]`
-/

namespace A276049.P3139124449404696278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A276049.P3139124449404696278

namespace A276049

/-- `filter[A274849(n+1), A327861(#)]` -/
def P3139124449404696278.Spec : Prop :=
  ∀ n, P3139124449404696278.a n = A276049 (n + 1)

end A276049

/-! ## A276049.P6659501394644256367

`record[A006530(A274849(A008620(n)))]`
-/

namespace A276049.P6659501394644256367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A274849 (A008620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276049.P6659501394644256367

namespace A276049

/-- `record[A006530(A274849(A008620(n)))]` -/
def P6659501394644256367.Spec : Prop :=
  ∀ n, P6659501394644256367.a n = A276049 (n + 1)

end A276049

/-! ## A276049.P13922827597585382049

`record[A006530(A274849(A000027(n+1)))]`
-/

namespace A276049.P13922827597585382049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A274849 (A000027 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276049.P13922827597585382049

namespace A276049

/-- `record[A006530(A274849(A000027(n+1)))]` -/
def P13922827597585382049.Spec : Prop :=
  ∀ n, P13922827597585382049.a n = A276049 (n + 1)

end A276049

/-! ## A276049.P7542572644034708650

`p?[A064429(A023196(n+1))]`
-/

namespace A276049.P7542572644034708650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A023196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A276049.P7542572644034708650

namespace A276049

/-- `p?[A064429(A023196(n+1))]` -/
def P7542572644034708650.Spec : Prop :=
  ∀ n, P7542572644034708650.a n = A276049 (n + 1)

end A276049

/-! ## A276049.P5633000837362479772

`filter[A274849(n+1), A080339(#)]`
-/

namespace A276049.P5633000837362479772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A276049.P5633000837362479772

namespace A276049

/-- `filter[A274849(n+1), A080339(#)]` -/
def P5633000837362479772.Spec : Prop :=
  ∀ n, P5633000837362479772.a n = A276049 (n + 1)

end A276049

/-! ## A276049.P6956783898126459002

`filter[A274849(n+1), A080545(#)]`
-/

namespace A276049.P6956783898126459002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A276049.P6956783898126459002

namespace A276049

/-- `filter[A274849(n+1), A080545(#)]` -/
def P6956783898126459002.Spec : Prop :=
  ∀ n, P6956783898126459002.a n = A276049 (n + 1)

end A276049

/-! ## A276049.P289884873033560140

`filter[A274849(n+1), A171387(#)]`
-/

namespace A276049.P289884873033560140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A276049.P289884873033560140

namespace A276049

/-- `filter[A274849(n+1), A171387(#)]` -/
def P289884873033560140.Spec : Prop :=
  ∀ n, P289884873033560140.a n = A276049 (n + 1)

end A276049

/-! ## A276049.P14403174779322469784

`record[A014963(A274849(A005378(n)))]`
-/

namespace A276049.P14403174779322469784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A274849 (A005378 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276049.P14403174779322469784

namespace A276049

/-- `record[A014963(A274849(A005378(n)))]` -/
def P14403174779322469784.Spec : Prop :=
  ∀ n, P14403174779322469784.a n = A276049 (n + 1)

end A276049

/-! ## A276049.P14558593175097868202

`record[A014963(A274849(A008619(n)))]`
-/

namespace A276049.P14558593175097868202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A274849 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276049.P14558593175097868202

namespace A276049

/-- `record[A014963(A274849(A008619(n)))]` -/
def P14558593175097868202.Spec : Prop :=
  ∀ n, P14558593175097868202.a n = A276049 (n + 1)

end A276049

/-! ## A276049.P1984031877318602539

`A014963(record[A014963(A274849(n+1))])`
-/

namespace A276049.P1984031877318602539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A274849 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A276049.P1984031877318602539

namespace A276049

/-- `A014963(record[A014963(A274849(n+1))])` -/
def P1984031877318602539.Spec : Prop :=
  ∀ n, P1984031877318602539.a n = A276049 (n + 1)

end A276049

/-! ## A276049.P7679540983535953515

`∩[A060254(n+1), A274849(n+1)]`
-/

namespace A276049.P7679540983535953515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276049.P7679540983535953515

namespace A276049

/-- `∩[A060254(n+1), A274849(n+1)]` -/
def P7679540983535953515.Spec : Prop :=
  ∀ n, (P7679540983535953515.a n : ℤ) = A276049 (n + 1)

end A276049

/-! ## A276049.P9107829064225191961

`∩[A034849(n+1), A274849(n+1)]`
-/

namespace A276049.P9107829064225191961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276049.P9107829064225191961

namespace A276049

/-- `∩[A034849(n+1), A274849(n+1)]` -/
def P9107829064225191961.Spec : Prop :=
  ∀ n, (P9107829064225191961.a n : ℤ) = A276049 (n + 1)

end A276049

/-! ## A276049.P3563345103901428282

`∩[A000040(n+1), A274849(n+1)]`
-/

namespace A276049.P3563345103901428282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276049.P3563345103901428282

namespace A276049

/-- `∩[A000040(n+1), A274849(n+1)]` -/
def P3563345103901428282.Spec : Prop :=
  ∀ n, (P3563345103901428282.a n : ℤ) = A276049 (n + 1)

end A276049

/-! ## A276049.P12550200622229791738

`∩[A004139(n+1), A274849(n+1)]`
-/

namespace A276049.P12550200622229791738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276049.P12550200622229791738

namespace A276049

/-- `∩[A004139(n+1), A274849(n+1)]` -/
def P12550200622229791738.Spec : Prop :=
  ∀ n, (P12550200622229791738.a n : ℤ) = A276049 (n + 1)

end A276049

/-!
# A276050: Isolated deficient numbers that are composite.

The programs for A276050, the canonical program `A276050.P4598829443769848170` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276050 has offset 1).

The definition of A276050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276050.P4598829443769848170

`filter[A274849(n+1), A005171(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A276050

/-- `filter[A274849(n+1), A005171(#)]` -/
def P4598829443769848170.Spec : Prop :=
  ∀ n, P4598829443769848170.a n = A276050 (n + 1)

theorem P4598829443769848170.correct : P4598829443769848170.Spec := by
  intro n
  simp only [A276050, Nat.add_sub_cancel]

end A276050

/-! ## A276050.P1061681972386483541

`filter[A274849(n+1), A066247(#)]`
-/

namespace A276050.P1061681972386483541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A276050.P1061681972386483541

namespace A276050

/-- `filter[A274849(n+1), A066247(#)]` -/
def P1061681972386483541.Spec : Prop :=
  ∀ n, P1061681972386483541.a n = A276050 (n + 1)

end A276050

/-! ## A276050.P7284581605435328497

`filter[A274849(n+1), A202238(#)]`
-/

namespace A276050.P7284581605435328497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A276050.P7284581605435328497

namespace A276050

/-- `filter[A274849(n+1), A202238(#)]` -/
def P7284581605435328497.Spec : Prop :=
  ∀ n, P7284581605435328497.a n = A276050 (n + 1)

end A276050

/-! ## A276050.P13338578062623968139

`filter[A274849(n+1), A292438(#)]`
-/

namespace A276050.P13338578062623968139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A276050.P13338578062623968139

namespace A276050

/-- `filter[A274849(n+1), A292438(#)]` -/
def P13338578062623968139.Spec : Prop :=
  ∀ n, P13338578062623968139.a n = A276050 (n + 1)

end A276050

/-! ## A276050.P15410624084691589521

`filter[A274849(n+1), A323162(#)]`
-/

namespace A276050.P15410624084691589521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A276050.P15410624084691589521

namespace A276050

/-- `filter[A274849(n+1), A323162(#)]` -/
def P15410624084691589521.Spec : Prop :=
  ∀ n, P15410624084691589521.a n = A276050 (n + 1)

end A276050

/-! ## A276050.P10949361046568395178

`∩[A151740(n+1), A274849(n+1)]`
-/

namespace A276050.P10949361046568395178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276050.P10949361046568395178

namespace A276050

/-- `∩[A151740(n+1), A274849(n+1)]` -/
def P10949361046568395178.Spec : Prop :=
  ∀ n, (P10949361046568395178.a n : ℤ) = A276050 (n + 1)

end A276050

/-! ## A276050.P13495141945601504529

`∩[A167611(n+1), A274849(n+1)]`
-/

namespace A276050.P13495141945601504529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276050.P13495141945601504529

namespace A276050

/-- `∩[A167611(n+1), A274849(n+1)]` -/
def P13495141945601504529.Spec : Prop :=
  ∀ n, (P13495141945601504529.a n : ℤ) = A276050 (n + 1)

end A276050

/-! ## A276050.P1084845609336092286

`∩[A067800(n+1), A274849(n+1)]`
-/

namespace A276050.P1084845609336092286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276050.P1084845609336092286

namespace A276050

/-- `∩[A067800(n+1), A274849(n+1)]` -/
def P1084845609336092286.Spec : Prop :=
  ∀ n, (P1084845609336092286.a n : ℤ) = A276050 (n + 1)

end A276050

/-! ## A276050.P7827847462662866498

`∩[A067887(n+1), A274849(n+1)]`
-/

namespace A276050.P7827847462662866498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276050.P7827847462662866498

namespace A276050

/-- `∩[A067887(n+1), A274849(n+1)]` -/
def P7827847462662866498.Spec : Prop :=
  ∀ n, (P7827847462662866498.a n : ℤ) = A276050 (n + 1)

end A276050

/-! ## A276050.P9459056993044187923

`∩[A274849(n+1), A333039(n+1)]`
-/

namespace A276050.P9459056993044187923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276050.P9459056993044187923

namespace A276050

/-- `∩[A274849(n+1), A333039(n+1)]` -/
def P9459056993044187923.Spec : Prop :=
  ∀ n, (P9459056993044187923.a n : ℤ) = A276050 (n + 1)

end A276050

/-! ## A276050.P1035725263126657486

`∩[A014076(n+1), A274849(n+1)]`
-/

namespace A276050.P1035725263126657486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276050.P1035725263126657486

namespace A276050

/-- `∩[A014076(n+1), A274849(n+1)]` -/
def P1035725263126657486.Spec : Prop :=
  ∀ n, (P1035725263126657486.a n : ℤ) = A276050 (n + 1)

end A276050

/-! ## A276050.P1753268253542892797

`∩[A071904(n+1), A274849(n+1)]`
-/

namespace A276050.P1753268253542892797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276050.P1753268253542892797

namespace A276050

/-- `∩[A071904(n+1), A274849(n+1)]` -/
def P1753268253542892797.Spec : Prop :=
  ∀ n, (P1753268253542892797.a n : ℤ) = A276050 (n + 1)

end A276050

/-! ## A276050.P7288815310829601059

`∩[A270574(n+1), A274849(n+1)]`
-/

namespace A276050.P7288815310829601059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276050.P7288815310829601059

namespace A276050

/-- `∩[A270574(n+1), A274849(n+1)]` -/
def P7288815310829601059.Spec : Prop :=
  ∀ n, (P7288815310829601059.a n : ℤ) = A276050 (n + 1)

end A276050

/-! ## A276050.P13392742932574422824

`∩[A078505(n+1), A274849(n+1)]`
-/

namespace A276050.P13392742932574422824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276050.P13392742932574422824

namespace A276050

/-- `∩[A078505(n+1), A274849(n+1)]` -/
def P13392742932574422824.Spec : Prop :=
  ∀ n, (P13392742932574422824.a n : ℤ) = A276050 (n + 1)

end A276050

/-! ## A276050.P17302722561135240371

`∩[A109290(n+1), A274849(n+1)]`
-/

namespace A276050.P17302722561135240371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A276050.P17302722561135240371

namespace A276050

/-- `∩[A109290(n+1), A274849(n+1)]` -/
def P17302722561135240371.Spec : Prop :=
  ∀ n, (P17302722561135240371.a n : ℤ) = A276050 (n + 1)

end A276050

/-!
# A276051: a(n) is the number of top arches with length =1 for all semi meander solutions with n top arches.

The programs for A276051, there is no canonical definition to state claims against.
-/

/-! ## A276051.P17846390526174533808

`floor(3^(n-1))+1-A075120(2^n)`
-/

namespace A276051.P17846390526174533808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1 - A075120 (2 ^ n)

end

end A276051.P17846390526174533808

/-! ## A276051.P9785926512946092837

`floor(3^(n-1))-A008683(4^n+6^n+1)`
-/

namespace A276051.P9785926512946092837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A008683 (4 ^ n + (6 ^ n + 1))

end

end A276051.P9785926512946092837

/-! ## A276051.P3144267655630016093

`floor(3^(n-1))+1-A073610(floor(∑[5^n/3])+1)`
-/

namespace A276051.P3144267655630016093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1 - A073610 (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1).toNat

end

end A276051.P3144267655630016093

/-!
# A276052: Least k > 1 such that phi(k*n-1) = phi(k*n+1), or -1 if no such k exists.

The programs for A276052, there is no canonical definition to state claims against.
-/

/-! ## A276052.P17419115214971256628

`A105706(a(n-1))` with `a(0)=5, a(1)=4, a(2)=3, a(3)=2`
-/

namespace A276052.P17419115214971256628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 4, 3, 2] fun n a =>
  A105706 (a (n - 1)).toNat

end

end A276052.P17419115214971256628

/-! ## A276052.P17830433162235516571

`abs(A122853(A001683(n+2))+1-n)+1`
-/

namespace A276052.P17830433162235516571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122853 (A001683 (n + 2)).toNat + 1 - (n : ℤ)| + 1

end

end A276052.P17830433162235516571

/-!
# A276053: Triangle read by rows: T(n,k) is the number of compositions of n with parts in {1,2,4,6,8,10,...} and having asymmetry degree equal to k (n>=0; 0<=k<=floor(n/3)).

The programs for A276053, there is no canonical definition to state claims against.
-/

/-! ## A276053.P9062871418301658348

`A195082(A028304(n))+A049600(n)`
-/

namespace A276053.P9062871418301658348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195082 (A028304 n).toNat + A049600 n

end

end A276053.P9062871418301658348

/-!
# A276054: Sum of the asymmetry degrees of all compositions of n with parts in {1,2,4,6,8,10,...}.

The programs for A276054, there is no canonical definition to state claims against.
-/

/-! ## A276054.P13261825247925683835

`2*A292836(A008930(n))`
-/

namespace A276054.P13261825247925683835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292836 (A008930 n).toNat

end

end A276054.P13261825247925683835

/-! ## A276054.P7151429778380515368

`A185173(A025049(n))-1`
-/

namespace A276054.P7151429778380515368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185173 (A025049 n).toNat - 1

end

end A276054.P7151429778380515368

/-! ## A276054.P6158163374498699733

`2*A007149(A284904(n))`
-/

namespace A276054.P6158163374498699733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007149 (A284904 n).toNat

end

end A276054.P6158163374498699733

/-! ## A276054.P12900803668287574698

`and(A014486(A062709(n)), A081156(n))`
-/

namespace A276054.P12900803668287574698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014486 (A062709 n).toNat) (A081156 n)

end

end A276054.P12900803668287574698

/-! ## A276054.P5375785815754996682

`and(A043516(n+1), A185173(A025049(n)))`
-/

namespace A276054.P5375785815754996682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043516 (n + 1)) (A185173 (A025049 n).toNat)

end

end A276054.P5375785815754996682

/-!
# A276055: Number of palindromic compositions of n with parts in {1,2,4,6,8,10,...}.

The programs for A276055, the canonical program `A276055.P8454000691251205862` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276055 has offset 0).

The definition of A276055 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 782 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276055.P8454000691251205862

`A006053(A052938(n+1))-A187065(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276055

/-- `A006053(A052938(n+1))-A187065(n)` -/
def P8454000691251205862.Spec : Prop :=
  ∀ n, P8454000691251205862.a n = A276055 n

theorem P8454000691251205862.correct : P8454000691251205862.Spec := by
  intro n
  simp only [A276055]

end A276055

/-! ## A276055.P4666010667854891860

`A187067(A014681(n+3))-A265755(n+1)`
-/

namespace A276055.P4666010667854891860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (A014681 (n + 3)).toNat - A265755 (n + 1)

end

end A276055.P4666010667854891860

namespace A276055

/-- `A187067(A014681(n+3))-A265755(n+1)` -/
def P4666010667854891860.Spec : Prop :=
  ∀ n, P4666010667854891860.a n = A276055 n

end A276055

/-! ## A276055.P190538973122217689

`A187067(A000007(n)+n)+A006053(A179820(n))`
-/

namespace A276055.P190538973122217689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (A000007 n + (n : ℤ)).toNat + A006053 (A179820 n).toNat

end

end A276055.P190538973122217689

namespace A276055

/-- `A187067(A000007(n)+n)+A006053(A179820(n))` -/
def P190538973122217689.Spec : Prop :=
  ∀ n, P190538973122217689.a n = A276055 n

end A276055

/-! ## A276055.P11118373793866790980

`A265755(A014681(n+1))+A265755(A014681(n+3))`
-/

namespace A276055.P11118373793866790980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 (A014681 (n + 1)).toNat + A265755 (A014681 (n + 3)).toNat

end

end A276055.P11118373793866790980

namespace A276055

/-- `A265755(A014681(n+1))+A265755(A014681(n+3))` -/
def P11118373793866790980.Spec : Prop :=
  ∀ n, P11118373793866790980.a n = A276055 n

end A276055

/-! ## A276055.P10033952879282955078

`A187067(1-A057427(n)+n)+A006053(A179820(n))`
-/

namespace A276055.P10033952879282955078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (1 - A057427 n + (n : ℤ)).toNat + A006053 (A179820 n).toNat

end

end A276055.P10033952879282955078

namespace A276055

/-- `A187067(1-A057427(n)+n)+A006053(A179820(n))` -/
def P10033952879282955078.Spec : Prop :=
  ∀ n, P10033952879282955078.a n = A276055 n

end A276055

/-!
# A276056: Triangle read by rows: T(n,k) is the number of compositions of n with parts in {1,3} and having asymmetry degree equal to k, (n>=0; 0<=k<=floor(n/4)).

The programs for A276056, there is no canonical definition to state claims against.
-/

/-! ## A276056.P4512549350797461152

`A050320(n+1)*A160093(A129912(n+1))`
-/

namespace A276056.P4512549350797461152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (n + 1) * A160093 (A129912 (n + 1)).toNat

end

end A276056.P4512549350797461152

/-! ## A276056.P3976502668117005167

`A055640(A129912(n+1))*A345926(n+1)`
-/

namespace A276056.P3976502668117005167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A129912 (n + 1)).toNat * A345926 (n + 1)

end

end A276056.P3976502668117005167

/-! ## A276056.P11682555733454845684

`A081206(A187829(n+1))*A108514(A093803(n+1))`
-/

namespace A276056.P11682555733454845684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081206 (A187829 (n + 1)).toNat * A108514 (A093803 (n + 1)).toNat

end

end A276056.P11682555733454845684

/-! ## A276056.P5336223797405206328

`A081206(A187829(n+1))*A173557(A032742(n+1))`
-/

namespace A276056.P5336223797405206328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081206 (A187829 (n + 1)).toNat * A173557 (A032742 (n + 1)).toNat

end

end A276056.P5336223797405206328

/-! ## A276056.P7320594903698128776

`A000005(A146879(A103517(n+2)+A097140(n+3)))`
-/

namespace A276056.P7320594903698128776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A146879 (A103517 (n + 2) + A097140 (n + 3)).toNat).toNat

end

end A276056.P7320594903698128776

/-!
# A276057: Sum of the asymmetry degrees of all compositions of n with parts in {1,3}.

The programs for A276057, there is no canonical definition to state claims against.
-/

/-! ## A276057.P12670229438240819698

`A156726(A191786(n))`
-/

namespace A276057.P12670229438240819698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156726 (A191786 n).toNat

end

end A276057.P12670229438240819698

/-! ## A276057.P10837043036005064370

`A357587(A000041(n))%A000041(n)`
-/

namespace A276057.P10837043036005064370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357587 (A000041 n).toNat) (A000041 n)

end

end A276057.P10837043036005064370

/-! ## A276057.P14119446306864599833

`and(A290325(A153417(n+1)), A327019(n))`
-/

namespace A276057.P14119446306864599833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290325 (A153417 (n + 1)).toNat) (A327019 n)

end

end A276057.P14119446306864599833

/-! ## A276057.P6525061867737591344

`and(A290325(A256103(2*(n+1))), A327019(n))`
-/

namespace A276057.P6525061867737591344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290325 (A256103 (2 * (n + 1))).toNat) (A327019 n)

end

end A276057.P6525061867737591344

/-!
# A276058: Triangle read by rows: T(n,k) is the number of compositions of n with parts in {3,4,5,6,...} and having asymmetry degree equal to k (n>=0; 0<=k<=floor(n/7)).

The programs for A276058, there is no canonical definition to state claims against.
-/

/-! ## A276058.P1888418413712498550

`or(A276060(n), A339861(A141539(3*(n+1))))`
-/

namespace A276058.P1888418413712498550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A276060 n) (A339861 (A141539 (3 * (n + 1))).toNat)

end

end A276058.P1888418413712498550

/-! ## A276058.P15621920759464239739

`A276060(n^floor(sqrt(sqrt(n))))`
-/

namespace A276058.P15621920759464239739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276060 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.sqrt (Real.sqrt (n : ℝ))⌋ : ℤ))).toNat

end

end A276058.P15621920759464239739

/-! ## A276058.P5859673281619597860

`A276060(n)%A180425(n+1)`
-/

namespace A276058.P5859673281619597860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276060 n) (A180425 (n + 1))

end

end A276058.P5859673281619597860

/-! ## A276058.P12380506161377692523

`gcd(A189686(n+1), A276060(n))`
-/

namespace A276058.P12380506161377692523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A189686 (n + 1)) (A276060 n)

end

end A276058.P12380506161377692523

/-! ## A276058.P1953139855462486297

`A057427(A112841(n))*A276060(n)`
-/

namespace A276058.P1953139855462486297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A112841 n).toNat * A276060 n

end

end A276058.P1953139855462486297

/-!
# A276059: Sum of the asymmetry degrees of all compositions of n with parts in {3,4,5,6, ...}.

The programs for A276059, there is no canonical definition to state claims against.
-/

/-! ## A276059.P10406836286864430666

`2*A259361(A275073(n))`
-/

namespace A276059.P10406836286864430666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259361 (A275073 n).toNat

end

end A276059.P10406836286864430666

/-! ## A276059.P4207685195763418831

`A008611(A294564(n))-A008611(A294533(n))`
-/

namespace A276059.P4207685195763418831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A294564 n).toNat - A008611 (A294533 n).toNat

end

end A276059.P4207685195763418831

/-!
# A276060: Triangle read by rows: T(n,k) is the number of compositions of n into parts congruent to 1 mod 3 and having asymmetry degree equal to k (n>=0; 0<=k<=floor(n/5)).

The programs for A276060, there is no canonical definition to state claims against.
-/

/-! ## A276060.P11992667406540513510

`A265523(A187829(A276058(n)))`
-/

namespace A276060.P11992667406540513510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265523 (A187829 (A276058 n).toNat).toNat

end

end A276060.P11992667406540513510

/-! ## A276060.P14814638557172724351

`and(A139252(A276058(n)²), A276058(n))`
-/

namespace A276060.P14814638557172724351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139252 (A276058 n ^ 2).toNat) (A276058 n)

end

end A276060.P14814638557172724351

/-! ## A276060.P1360742794757034790

`A265523(A276058(n))^A001221(A000079(n))`
-/

namespace A276060.P1360742794757034790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265523 (A276058 n).toNat : ℚ) ^ (A001221 (A000079 n).toNat : ℤ)

end

end A276060.P1360742794757034790

/-!
# A276062: Triangle read by rows: T(n,k) is the number of compositions of n with parts in {1,4} and having asymmetry degree equal to k (n>=0; 0<=k<=floor(n/4)).

The programs for A276062, there is no canonical definition to state claims against.
-/

/-! ## A276062.P8532581826931516977

`A333749(A078510(2*n+1)^A333749(n+2))`
-/

namespace A276062.P8532581826931516977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333749 (SequenceMachineLib.roundAway ((A078510 (2 * n + 1) : ℚ) ^ (A333749 (n + 2) : ℤ))).toNat

end

end A276062.P8532581826931516977

/-! ## A276062.P9881912259405593947

`A048858(A167928(n)+A049723(n))`
-/

namespace A276062.P9881912259405593947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048858 (A167928 n + A049723 n).toNat

end

end A276062.P9881912259405593947

/-! ## A276062.P1095035277349236617

`gcd(A258565(A258566(n+1)), A258615(n+1))`
-/

namespace A276062.P1095035277349236617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A258565 (A258566 (n + 1)).toNat) (A258615 (n + 1))

end

end A276062.P1095035277349236617

/-!
# A276063: Sum of the asymmetry degrees of all compositions of n with parts in {1,4}.

The programs for A276063, there is no canonical definition to state claims against.
-/

/-! ## A276063.P15036658528989099813

`A156726(A280240(n)+1)`
-/

namespace A276063.P15036658528989099813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156726 (A280240 n + 1).toNat

end

end A276063.P15036658528989099813

/-! ## A276063.P5317401271986503920

`A156726(A276061(n)+∑[char[3*n]])`
-/

namespace A276063.P5317401271986503920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156726 (A276061 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A276063.P5317401271986503920

/-!
# A276064: Triangle read by rows: T(n,k) is the number of compositions of n with parts in {1,5} and having asymmetry degree equal to k (n>=0; 0<=k<=floor(n/6)).

The programs for A276064, there is no canonical definition to state claims against.
-/

/-! ## A276064.P1472023929213794782

`p?[A048669(A045683(n))]-1`
-/

namespace A276064.P1472023929213794782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048669 (A045683 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A276064.P1472023929213794782

/-! ## A276064.P4680481931344591715

`A029578(p?[A048669(A045683(n))])`
-/

namespace A276064.P4680481931344591715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048669 (A045683 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A276064.P4680481931344591715

/-! ## A276064.P13144440424148779172

`A353755(A135530(n)+A000225(n))`
-/

namespace A276064.P13144440424148779172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353755 (A135530 n + A000225 n).toNat

end

end A276064.P13144440424148779172

/-! ## A276064.P10036767969308170865

`A001300(n)/A046951(A081668(n))`
-/

namespace A276064.P10036767969308170865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001300 n : ℚ) / (A046951 (A081668 n).toNat : ℚ)

end

end A276064.P10036767969308170865

/-! ## A276064.P8124550645340994233

`A001306(n)/A046951(A081668(n))`
-/

namespace A276064.P8124550645340994233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001306 n : ℚ) / (A046951 (A081668 n).toNat : ℚ)

end

end A276064.P8124550645340994233

/-!
# A276066: Triangle read by rows: T(n,k) is the number of bargraphs of semiperimeter n having a total of k double rises and double falls (n>=2,k>=0). A double rise (fall) in a bargraph is any pair of adjacent up (down) steps.

The programs for A276066, there is no canonical definition to state claims against.
-/

/-! ## A276066.P3754813101296919633

`A145895(gcd(n+1, A051767(n+1)))`
-/

namespace A276066.P3754813101296919633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145895 (Int.gcd (n + 1 : ℤ) (A051767 (n + 1)))

end

end A276066.P3754813101296919633

/-! ## A276066.P9841480623387500896

`A283431(A114503(n+1)^A114525(n))`
-/

namespace A276066.P9841480623387500896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (SequenceMachineLib.roundAway ((A114503 (n + 1) : ℚ) ^ (A114525 n : ℤ))).toNat

end

end A276066.P9841480623387500896

/-! ## A276066.P16836028325828225166

`gcd(A145895(n+1), A185284(A038207(n)))`
-/

namespace A276066.P16836028325828225166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145895 (n + 1)) (A185284 (A038207 n).toNat)

end

end A276066.P16836028325828225166

/-! ## A276066.P4804214443284971742

`A112603(A112664(n+1)*A112761(n+1))`
-/

namespace A276066.P4804214443284971742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112603 (A112664 (n + 1) * A112761 (n + 1)).toNat

end

end A276066.P4804214443284971742

/-! ## A276066.P12649338694837896204

`A179764(A189507(n+1))`
-/

namespace A276066.P12649338694837896204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179764 (A189507 (n + 1)).toNat

end

end A276066.P12649338694837896204

/-!
# A276067: Triangle read by rows: T(n,k) is the number of bargraphs of semiperimeter n having length of first descent k (n>=2, 1<=k<=n-1). A descent is a maximal sequence of consecutive down steps.

The programs for A276067, there is no canonical definition to state claims against.
-/

/-! ## A276067.P436569923645472700

`A125177(n)-A321936(A130321(n))`
-/

namespace A276067.P436569923645472700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125177 n - A321936 (A130321 n).toNat

end

end A276067.P436569923645472700

/-! ## A276067.P1991472359011888397

`A125177(n)-A212619(∑[A353416(n+1)])`
-/

namespace A276067.P1991472359011888397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125177 n - A212619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A276067.P1991472359011888397

/-! ## A276067.P2607926913957504705

`A125177(n)-A327153(A325337(3*(n+1)))`
-/

namespace A276067.P2607926913957504705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125177 n - A327153 (A325337 (3 * (n + 1))).toNat

end

end A276067.P2607926913957504705

/-!
# A276068: Sum of the lengths of the first descents in all bargraphs having semiperimeter n (n>=2). A descent is a maximal sequence of consecutive down steps.

The programs for A276068, there is no canonical definition to state claims against.
-/

/-! ## A276068.P17301897337867829841

`Δ[A086581(n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A276068.P17301897337867829841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086581 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 1)

end

end A276068.P17301897337867829841

/-! ## A276068.P16934122694175540322

`Δ[A025242(n+2)+2*a(n-1)]` with `a(0)=0`
-/

namespace A276068.P16934122694175540322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A025242 (n + 2) + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276068.P16934122694175540322

/-! ## A276068.P16251642636032176794

`Δ[A082582(n+1)]+2*a(n-1)` with `a(0)=1`
-/

namespace A276068.P16251642636032176794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 1)

end

end A276068.P16251642636032176794

/-! ## A276068.P7048127834757003578

`Δ[A273342(∑[n]+2)]+2*a(n-1)` with `a(0)=1`
-/

namespace A276068.P7048127834757003578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273342 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 1)

end

end A276068.P7048127834757003578

/-!
# A276069: Zero terms of A276034.

The programs for A276069, there is no canonical definition to state claims against.
-/

/-! ## A276069.P5861727205051912963

`eq[0, A276034(n+1)]+1`
-/

namespace A276069.P5861727205051912963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276034 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A276069.P5861727205051912963

/-! ## A276069.P17737706753041386467

`lt[A276520(2*(n+1)), 1]+1`
-/

namespace A276069.P17737706753041386467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276520 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A276069.P17737706753041386467

/-! ## A276069.P7795930352533214180

`record[A032742(A276522(n+1))]`
-/

namespace A276069.P7795930352533214180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A276522 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276069.P7795930352533214180

/-! ## A276069.P11978461200726240159

`record[A025480(A276522(n+2))]`
-/

namespace A276069.P11978461200726240159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A276522 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276069.P11978461200726240159

/-! ## A276069.P8031076152732162174

`record[A057979(A276522(n+1)+1)]`
-/

namespace A276069.P8031076152732162174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A276522 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276069.P8031076152732162174

/-!
# A276071: n^3 followed by n^2 followed by n^4 followed by n.

The programs for A276071, the canonical program `A276071.P2380363936540344839` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276071 has offset 0).

The definition of A276071 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276071.P2380363936540344839

`A002265(n)^A056699(A000032(and(3, -n)))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276071

/-- `A002265(n)^A056699(A000032(and(3, -n)))` -/
def P2380363936540344839.Spec : Prop :=
  ∀ n, P2380363936540344839.a n = (A276071 n : ℚ)

end A276071

/-! ## A276071.P6719500765517648773

`floor(n/4)^A070352(∑[3-gcd(4, n+2)])`
-/

namespace A276071.P6719500765517648773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.gcd 4 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℚ) / 4⌋ : ℚ) ^ (A070352 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℤ)

end

end A276071.P6719500765517648773

namespace A276071

/-- `floor(n/4)^A070352(∑[3-gcd(4, n+2)])` -/
def P6719500765517648773.Spec : Prop :=
  ∀ n, P6719500765517648773.a n = (A276071 n : ℚ)

end A276071

/-! ## A276071.P15476673294581888526

`A002265(n)^A269591(Δ[A072708(n+1)])`
-/

namespace A276071.P15476673294581888526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072708 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002265 n : ℚ) ^ (A269591 (f1 (n + 1) - f1 n).toNat : ℤ)

end

end A276071.P15476673294581888526

namespace A276071

/-- `A002265(n)^A269591(Δ[A072708(n+1)])` -/
def P15476673294581888526.Spec : Prop :=
  ∀ n, P15476673294581888526.a n = (A276071 n : ℚ)

end A276071

/-! ## A276071.P16799022309760041110

`A002265(n)^Δ[A187331(n+1)]`
-/

namespace A276071.P16799022309760041110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187331 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002265 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A276071.P16799022309760041110

namespace A276071

/-- `A002265(n)^Δ[A187331(n+1)]` -/
def P16799022309760041110.Spec : Prop :=
  ∀ n, P16799022309760041110.a n = (A276071 n : ℚ)

end A276071

/-! ## A276071.P14034688145582895624

`A004526(A004526(n))^Δ[A187331(n+1)]`
-/

namespace A276071.P14034688145582895624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187331 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004526 (A004526 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A276071.P14034688145582895624

namespace A276071

/-- `A004526(A004526(n))^Δ[A187331(n+1)]` -/
def P14034688145582895624.Spec : Prop :=
  ∀ n, P14034688145582895624.a n = (A276071 n : ℚ)

end A276071

/-!
# A276072: Radius of the outer Soddy circle (or the longest side) of primitive Heronian triangles whose outer Soddy center lies on its longest side.

The programs for A276072, there is no canonical definition to state claims against.
-/

/-! ## A276072.P12345832877160594296

`∑[A141276(A141076(2*(n+1)))]`
-/

namespace A276072.P12345832877160594296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141276 (A141076 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A276072.P12345832877160594296

/-!
# A276073: A276076-polynomials evaluated at x=2: a(n) = A048675(A276076(n)).

The programs for A276073, there is no canonical definition to state claims against.
-/

/-! ## A276073.P348741265867794582

`A275727(n)+a(A276009(n))` with `a(0)=0`
-/

namespace A276073.P348741265867794582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A275727 n + a (A276009 n).toNat

end

end A276073.P348741265867794582

/-! ## A276073.P17431318456806225866

`A087808(A277012(n))`
-/

namespace A276073.P17431318456806225866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (A277012 n).toNat

end

end A276073.P17431318456806225866

/-! ## A276073.P892018079841382713

`A028897(A007623(n))`
-/

namespace A276073.P892018079841382713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (A007623 n).toNat

end

end A276073.P892018079841382713

/-! ## A276073.P10577337786981255496

`A275727(n)+A048675(A351577(n))`
-/

namespace A276073.P10577337786981255496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275727 n + A048675 (A351577 n).toNat

end

end A276073.P10577337786981255496

/-! ## A276073.P3607587767445357220

`2*n-A004396(A153883(n))`
-/

namespace A276073.P3607587767445357220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A004396 (A153883 n).toNat

end

end A276073.P3607587767445357220

/-! ## A276073.P11621299967811641592

`A005408(n)-A133310(A153883(n))`
-/

namespace A276073.P11621299967811641592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A133310 (A153883 n).toNat

end

end A276073.P11621299967811641592

/-! ## A276073.P3565500421022937990

`A004273(n+1)-A133310(A153883(n))`
-/

namespace A276073.P3565500421022937990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1) - A133310 (A153883 n).toNat

end

end A276073.P3565500421022937990

/-!
# A276074: A276076-polynomials evaluated at X=2 over the field GF(2): a(n) = A248663(A276076(n)).

The programs for A276074, there is no canonical definition to state claims against.
-/

/-! ## A276074.P14614660862569696331

`A275727(n)-a(A276009(n))` with `a(0)=0`
-/

namespace A276074.P14614660862569696331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A275727 n - a (A276009 n).toNat

end

end A276074.P14614660862569696331

/-! ## A276074.P4341480656345486670

`A248663(A276076(n))`
-/

namespace A276074.P4341480656345486670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A276076 n).toNat

end

end A276074.P4341480656345486670

/-! ## A276074.P930038922300960299

`A248663(A276086(n))`
-/

namespace A276074.P930038922300960299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A276086 n).toNat

end

end A276074.P930038922300960299

/-!
# A276075: a(1) = 0, a(n) = (e1*i1! + e2*i2! + ... + ez*iz!) for n = prime(i1)^e1 * prime(i2)^e2 * ... * prime(iz)^ez, where prime(k) is the k-th prime, A000040(k).

The programs for A276075, there is no canonical definition to state claims against.
-/

/-! ## A276075.P16285277205891807601

`a(A028234(n+1)-1)+A067029(n+1)*A000142(A055396(n+1))` with `a(0)=0, a(1)=1`
-/

namespace A276075.P16285277205891807601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A028234 (n + 1) - 1).toNat + A067029 (n + 1) * A000142 (A055396 (n + 1)).toNat

end

end A276075.P16285277205891807601

/-! ## A276075.P5451033048312691405

`∑{e}[A181821(n+1), #!]`
-/

namespace A276075.P5451033048312691405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p)

end

end A276075.P5451033048312691405

/-! ## A276075.P15088915592809849344

`∑{e}[A181821(n+1), A000142(#)]`
-/

namespace A276075.P15088915592809849344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000142 (Nat.factorization (f1 n).natAbs p)

end

end A276075.P15088915592809849344

/-! ## A276075.P8615593121754438785

`∑{e}[A181821(n+1), A233543(A141214(#))]`
-/

namespace A276075.P8615593121754438785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A233543 (A141214 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A276075.P8615593121754438785

/-! ## A276075.P7903170166278321461

`∑{e}[A122111(n+1)*A124859(A331188(n+1)), #!]`
-/

namespace A276075.P7903170166278321461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1) * A124859 (A331188 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p)

end

end A276075.P7903170166278321461

/-!
# A276076: Factorial base exp-function: digits in factorial base representation of n become the exponents of successive prime factors whose product a(n) is.

The programs for A276076, there is no canonical definition to state claims against.
-/

/-! ## A276076.P5260685233464652193

`A275733(n)*a(A276009(n))` with `a(0)=1`
-/

namespace A276076.P5260685233464652193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A275733 n * a (A276009 n).toNat

end

end A276076.P5260685233464652193

/-! ## A276076.P16932078029529274812

`A276086(A351576(n))`
-/

namespace A276076.P16932078029529274812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A351576 n).toNat

end

end A276076.P16932078029529274812

/-! ## A276076.P3334101440932661439

`A275733(n)*A351577(n)`
-/

namespace A276076.P3334101440932661439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275733 n * A351577 n

end

end A276076.P3334101440932661439

/-! ## A276076.P4789290199756040719

`A275733(n)*A328572(A351576(n))`
-/

namespace A276076.P4789290199756040719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275733 n * A328572 (A351576 n).toNat

end

end A276076.P4789290199756040719

/-! ## A276076.P17919836142909111553

`A005940(A277012(n)+1)`
-/

namespace A276076.P17919836142909111553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A277012 n + 1).toNat

end

end A276076.P17919836142909111553

/-! ## A276076.P3530025104066314663

`A054842(A007623(n))`
-/

namespace A276076.P3530025104066314663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054842 (A007623 n).toNat

end

end A276076.P3530025104066314663

/-!
# A276078: 

The programs for A276078, there is no canonical definition to state claims against.
-/

/-! ## A276078.P16144825775812524341

`record[A392877(n+1)]`
-/

namespace A276078.P16144825775812524341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276078.P16144825775812524341

/-! ## A276078.P2583713601828339962

`record[A380085(n+1)]`
-/

namespace A276078.P2583713601828339962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276078.P2583713601828339962

/-! ## A276078.P4706592103811317606

`record[A058035(12*(n+1))/12]`
-/

namespace A276078.P4706592103811317606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058035 (12 * (n + 1)) : ℚ) / 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276078.P4706592103811317606

/-!
# A276080: a(n) = A276075(A206296(n)).

The programs for A276080, there is no canonical definition to state claims against.
-/

/-! ## A276080.P10069755326918886954

`record[Δ[A259859(floor(n/2))]]`
-/

namespace A276080.P10069755326918886954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259859 ⌊(n : ℚ) / 2⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276080.P10069755326918886954

/-! ## A276080.P8578823168391517149

`Δ[A259859(A259361(n²))]`
-/

namespace A276080.P8578823168391517149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259859 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276080.P8578823168391517149

/-! ## A276080.P3381642898781153188

`Δ[A259859(log2(A011782(n)))]`
-/

namespace A276080.P3381642898781153188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259859 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276080.P3381642898781153188

/-! ## A276080.P18196031831228536708

`Δ[A259859(A289207(n+1))]`
-/

namespace A276080.P18196031831228536708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259859 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276080.P18196031831228536708

/-! ## A276080.P14100864493603594998

`Δ[A259859(A289207(2*n)/2)]`
-/

namespace A276080.P14100864493603594998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259859 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276080.P14100864493603594998

/-! ## A276080.P11772744747850677640

`A259859(n)-A259859(log2(A011782(n)))`
-/

namespace A276080.P11772744747850677640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259859 n - A259859 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A276080.P11772744747850677640

/-!
# A276081: a(n) = A276075(A260443(n)).

The programs for A276081, there is no canonical definition to state claims against.
-/

/-! ## A276081.P16526202840730432059

`A277011(A277020(n))`
-/

namespace A276081.P16526202840730432059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (A277020 n).toNat

end

end A276081.P16526202840730432059

/-! ## A276081.P1734479074147624585

`A276075(A260443(n))`
-/

namespace A276081.P1734479074147624585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276075 (A260443 n).toNat

end

end A276081.P1734479074147624585

/-!
# A276082: a(0) = 0, a(2n) = A153880(a(n)), a(2n+1) = 1+A255411(a(n)).

The programs for A276082, there is no canonical definition to state claims against.
-/

/-! ## A276082.P12972369781729004281

`A225901(A276083(n))`
-/

namespace A276082.P12972369781729004281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A276083 n).toNat

end

end A276082.P12972369781729004281

/-! ## A276082.P11101167771340344037

`A059590(n)+A276091(n)-A276083(n)`
-/

namespace A276082.P11101167771340344037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n + (A276091 n - A276083 n)

end

end A276082.P11101167771340344037

/-! ## A276082.P6617379565035977816

`A059590(2*n)-A276083(n)`
-/

namespace A276082.P6617379565035977816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (2 * n) - A276083 n

end

end A276082.P6617379565035977816

/-! ## A276082.P6155481936660032743

`A059590(2*n)+A008683(A062584(n))*A276083(n)`
-/

namespace A276082.P6155481936660032743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (2 * n) + A008683 (A062584 n).toNat * A276083 n

end

end A276082.P6155481936660032743

/-! ## A276082.P16762063050656557164

`A153880(A059590(n))-A276083(n)`
-/

namespace A276082.P16762063050656557164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (A059590 n).toNat - A276083 n

end

end A276082.P16762063050656557164

/-! ## A276082.P690357572382837033

`A276091(n)-A276009(A276083(n))`
-/

namespace A276082.P690357572382837033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276091 n - A276009 (A276083 n).toNat

end

end A276082.P690357572382837033

/-! ## A276082.P14071839710747595002

`A153880(∑{p}[A019565(n), A321898(#)])-A276083(n)`
-/

namespace A276082.P14071839710747595002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A321898 p).toNat - A276083 n

end

end A276082.P14071839710747595002

/-! ## A276082.P6545846402090511267

`A277011(A124108(n))-A276083(n)`
-/

namespace A276082.P6545846402090511267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (A124108 n).toNat - A276083 n

end

end A276082.P6545846402090511267

/-! ## A276082.P7799966365925032424

`A276008(A276083(2*n))-A276083(n)`
-/

namespace A276082.P7799966365925032424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 (A276083 (2 * n)).toNat - A276083 n

end

end A276082.P7799966365925032424

/-!
# A276083: a(0) = 0, a(2n) = A255411(a(n)), a(2n+1) = 1+A153880(a(n)).

The programs for A276083, there is no canonical definition to state claims against.
-/

/-! ## A276083.P12009482816222718144

`A225901(A276082(n))`
-/

namespace A276083.P12009482816222718144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A276082 n).toNat

end

end A276083.P12009482816222718144

/-! ## A276083.P15108261591984518670

`A059590(n)+A276091(n)-A276082(n)`
-/

namespace A276083.P15108261591984518670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n + (A276091 n - A276082 n)

end

end A276083.P15108261591984518670

/-! ## A276083.P8262625965303343371

`A059590(2*n)-A276082(n)`
-/

namespace A276083.P8262625965303343371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (2 * n) - A276082 n

end

end A276083.P8262625965303343371

/-! ## A276083.P16612702921879008246

`A059590(Δ[n²])-(A276082(n)+1)`
-/

namespace A276083.P16612702921879008246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (A276082 n + 1)

end

end A276083.P16612702921879008246

/-! ## A276083.P7136444607907263515

`A276091(n)-A276009(A276082(n))`
-/

namespace A276083.P7136444607907263515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276091 n - A276009 (A276082 n).toNat

end

end A276083.P7136444607907263515

/-! ## A276083.P6480139567869774834

`A153880(A059590(n))-A276082(n)`
-/

namespace A276083.P6480139567869774834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (A059590 n).toNat - A276082 n

end

end A276083.P6480139567869774834

/-! ## A276083.P17587545351742241139

`A153880(∑{p}[A019565(n), A321898(#)])-A276082(n)`
-/

namespace A276083.P17587545351742241139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153880 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A321898 p).toNat - A276082 n

end

end A276083.P17587545351742241139

/-! ## A276083.P17208139384834640909

`A277011(A124108(n))-A276082(n)`
-/

namespace A276083.P17208139384834640909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (A124108 n).toNat - A276082 n

end

end A276083.P17208139384834640909

/-! ## A276083.P1291721590719513120

`A276008(A276082(2*n))-A276082(n)`
-/

namespace A276083.P1291721590719513120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276008 (A276082 (2 * n)).toNat - A276082 n

end

end A276083.P1291721590719513120

/-!
# A276084: a(n) = Number of trailing zeros in primorial base representation of n (A049345); largest k such that A002110(k) divides n.

The programs for A276084, there is no canonical definition to state claims against.
-/

/-! ## A276084.P15799807898370521007

`A257993(n+1)-1`
-/

namespace A276084.P15799807898370521007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (n + 1) - 1

end

end A276084.P15799807898370521007

/-!
# A276085: Primorial base log-function: fully additive with a(p) = p#/p, where p# = A034386(p).

The programs for A276085, there is no canonical definition to state claims against.
-/

/-! ## A276085.P15454204715786806768

`a(A028234(n+1)-1)+A067029(n+1)*A002110(A055396(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A276085.P15454204715786806768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A028234 (n + 1) - 1).toNat + A067029 (n + 1) * A002110 (A055396 (n + 1) - 1).toNat

end

end A276085.P15454204715786806768

/-! ## A276085.P7033427621820129792

`A376413(A372575(n+1))`
-/

namespace A276085.P7033427621820129792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376413 (A372575 (n + 1)).toNat

end

end A276085.P7033427621820129792

/-! ## A276085.P711531554318208770

`∑{d}[n+1, A328768(A014963(#))]`
-/

namespace A276085.P711531554318208770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328768 (A014963 d).toNat

end

end A276085.P711531554318208770

/-! ## A276085.P1061426093615566984

`A373146(n+1)+A003415(n+1)`
-/

namespace A276085.P1061426093615566984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373146 (n + 1) + A003415 (n + 1)

end

end A276085.P1061426093615566984

/-! ## A276085.P16744932932030510963

`A346105(n+1)-A346105(A064989(n+1))`
-/

namespace A276085.P16744932932030510963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346105 (n + 1) - A346105 (A064989 (n + 1)).toNat

end

end A276085.P16744932932030510963

/-! ## A276085.P16705767318586730243

`A346105(n+1)-A346105(A200746(n+1)/(n+1))`
-/

namespace A276085.P16705767318586730243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346105 (n + 1) - A346105 (SequenceMachineLib.roundAway ((A200746 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A276085.P16705767318586730243

/-! ## A276085.P8452329542154263780

`A328769(n+1)/(n+1)`
-/

namespace A276085.P8452329542154263780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328769 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A276085.P8452329542154263780

/-! ## A276085.P5639483049195324386

`∑{e}[A181821(n+1), A181811(A000040(#))]`
-/

namespace A276085.P5639483049195324386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A181811 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A276085.P5639483049195324386

/-!
# A276086: Primorial base exp-function: digits in primorial base representation of n become the exponents of successive prime factors whose product a(n) is.

The programs for A276086, there is no canonical definition to state claims against.
-/

/-! ## A276086.P16376435112952255847

`A328843(n)+A328844(n)`
-/

namespace A276086.P16376435112952255847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328843 n + A328844 n

end

end A276086.P16376435112952255847

/-! ## A276086.P4351643754915515951

`A328571(n)*A328572(n)`
-/

namespace A276086.P4351643754915515951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 n * A328572 n

end

end A276086.P4351643754915515951

/-! ## A276086.P8190667130756961270

`A053669(n)*a(A276151(n))` with `a(0)=1`
-/

namespace A276086.P8190667130756961270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053669 n * a (A276151 n).toNat

end

end A276086.P8190667130756961270

/-! ## A276086.P10743079812309748346

`A053669(n)^A276088(n)*a(A276093(n))` with `a(0)=1`
-/

namespace A276086.P10743079812309748346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A053669 n : ℚ) ^ (A276088 n : ℤ) * a (A276093 n).toNat

end

end A276086.P10743079812309748346

/-! ## A276086.P11644507634906729508

`A328476(n)+A328580(n)`
-/

namespace A276086.P11644507634906729508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328476 n + A328580 n

end

end A276086.P11644507634906729508

/-! ## A276086.P16538477446351293454

`A328475(n)*A328580(n)`
-/

namespace A276086.P16538477446351293454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328475 n * A328580 n

end

end A276086.P16538477446351293454

/-! ## A276086.P14827251430168324982

`A351225(n)+n`
-/

namespace A276086.P14827251430168324982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351225 n + (n : ℤ)

end

end A276086.P14827251430168324982

/-! ## A276086.P6467955569596968547

`A373849(n)+A003415(n)`
-/

namespace A276086.P6467955569596968547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373849 n + A003415 n

end

end A276086.P6467955569596968547

/-! ## A276086.P3773204090533008239

`A358764(n)+A324895(n)`
-/

namespace A276086.P3773204090533008239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358764 n + A324895 n

end

end A276086.P3773204090533008239

/-! ## A276086.P1377426238133839884

`A327860(n)-A342016(n)`
-/

namespace A276086.P1377426238133839884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 n - A342016 n

end

end A276086.P1377426238133839884

/-! ## A276086.P12144631302559027135

`A348949(n)-A348950(n)`
-/

namespace A276086.P12144631302559027135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348949 n - A348950 n

end

end A276086.P12144631302559027135

/-! ## A276086.P9845571659365266817

`A324198(n)*A351251(n)`
-/

namespace A276086.P9845571659365266817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 n * A351251 n

end

end A276086.P9845571659365266817

/-! ## A276086.P9433627748273641439

`A327858(n)*A351231(n)`
-/

namespace A276086.P9433627748273641439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327858 n * A351231 n

end

end A276086.P9433627748273641439

/-! ## A276086.P8905364677855622302

`lcm(A324895(n), A351251(n))`
-/

namespace A276086.P8905364677855622302
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A324895 n) (A351251 n)

end

end A276086.P8905364677855622302

/-! ## A276086.P17015243229486495085

`A168036(n)+A373849(n)+n`
-/

namespace A276086.P17015243229486495085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n + (A373849 n + (n : ℤ))

end

end A276086.P17015243229486495085

/-! ## A276086.P3504723319822667474

`A328572(n)*A342002(n)-A342016(n)`
-/

namespace A276086.P3504723319822667474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n * A342002 n - A342016 n

end

end A276086.P3504723319822667474

/-! ## A276086.P17885128002292595555

`A328572(n)*A328573(n)*A328580(n)`
-/

namespace A276086.P17885128002292595555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328572 n * A328573 n * A328580 n

end

end A276086.P17885128002292595555

/-! ## A276086.P18092080321071865508

`A346101(A289234(n))`
-/

namespace A276086.P18092080321071865508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346101 (A289234 n).toNat

end

end A276086.P18092080321071865508

/-! ## A276086.P17151603157186856553

`A328627(A328625(n))`
-/

namespace A276086.P17151603157186856553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328627 (A328625 n).toNat

end

end A276086.P17151603157186856553

/-! ## A276086.P13285992606302457011

`A328624(A328626(n))`
-/

namespace A276086.P13285992606302457011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328624 (A328626 n).toNat

end

end A276086.P13285992606302457011

/-!
# A276087: a(n) = A276086(A276086(n)), where A276086 is the primorial base exp-function.

The programs for A276087, there is no canonical definition to state claims against.
-/

/-! ## A276087.P17592427309525219855

`A276086(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276087.P17592427309525219855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A276086 n).toNat

end

end A276087.P17592427309525219855

/-! ## A276087.P50787749694187532

`A346101(A289234(A346101(A289234(n))))`
-/

namespace A276087.P50787749694187532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346101 (A289234 (A346101 (A289234 n).toNat).toNat).toNat

end

end A276087.P50787749694187532

/-! ## A276087.P3310082233099250776

`A328475(A328844(n))*A328571(A328843(n))`
-/

namespace A276087.P3310082233099250776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328475 (A328844 n).toNat * A328571 (A328843 n).toNat

end

end A276087.P3310082233099250776

/-! ## A276087.P4562894191005210903

`A326810(n)*A328475(A328476(n))`
-/

namespace A276087.P4562894191005210903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326810 n * A328475 (A328476 n).toNat

end

end A276087.P4562894191005210903

/-! ## A276087.P17352550336555702238

`A328627(A328625(A328627(A328625(n))))`
-/

namespace A276087.P17352550336555702238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328627 (A328625 (A328627 (A328625 n).toNat).toNat).toNat

end

end A276087.P17352550336555702238

/-!
# A276088: The least significant nonzero digit in primorial base representation of n: a(n) = A276094(n) / A002110(A276084(n)) (with a(0) = 0).

The programs for A276088, there is no canonical definition to state claims against.
-/

/-! ## A276088.P8594442091125071337

`A067029(A276086(n))`
-/

namespace A276088.P8594442091125071337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A276086 n).toNat

end

end A276088.P8594442091125071337

/-! ## A276088.P8856343366404835018

`gcd(n%2, A351567((n+1)/2^val(n+1, 2)))`
-/

namespace A276088.P8856343366404835018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 : ℕ) : ℤ) (A351567 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat)

end

end A276088.P8856343366404835018

/-! ## A276088.P9051829029977129327

`A276150(A276094(n))`
-/

namespace A276088.P9051829029977129327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A276094 n).toNat

end

end A276088.P9051829029977129327

/-! ## A276088.P11989569996169005336

`A351567(A294178(n))`
-/

namespace A276088.P11989569996169005336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351567 (A294178 n).toNat

end

end A276088.P11989569996169005336

/-! ## A276088.P4034388050580072244

`A328114(lcm(2, A276094(n)))`
-/

namespace A276088.P4034388050580072244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (Int.lcm 2 (A276094 n))

end

end A276088.P4034388050580072244

/-! ## A276088.P9672666801681262920

`A255326(n-A276093(n))`
-/

namespace A276088.P9672666801681262920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 ((n : ℤ) - A276093 n).toNat

end

end A276088.P9672666801681262920

/-! ## A276088.P17369049877288708694

`A328114(A276094(char[1]+n))`
-/

namespace A276088.P17369049877288708694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A276094 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A276088.P17369049877288708694

/-! ## A276088.P17440883262933377317

`A328114(A276094(n))%A328576(n)`
-/

namespace A276088.P17440883262933377317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328114 (A276094 n).toNat) (A328576 n)

end

end A276088.P17440883262933377317

/-! ## A276088.P5584791619333368755

`A328114(∑{d}[A276094(n), A000010(#)])`
-/

namespace A276088.P5584791619333368755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A276088.P5584791619333368755

/-! ## A276088.P14462202775551316540

`∑{d}[A278226(A276094(n)), A276084(#)]`
-/

namespace A276088.P14462202775551316540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 (A276094 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A276084 d

end

end A276088.P14462202775551316540

/-! ## A276088.P2532649434266820143

`A328114(2*A276094(n)-A276094(n))`
-/

namespace A276088.P2532649434266820143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (2 * A276094 n - A276094 n).toNat

end

end A276088.P2532649434266820143

/-! ## A276088.P2033036738108109666

`gcd(A276084(n+1), A328114(A276094(n)))`
-/

namespace A276088.P2033036738108109666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276084 (n + 1)) (A328114 (A276094 n).toNat)

end

end A276088.P2033036738108109666

/-! ## A276088.P12161116714385011907

`A351567(A261671(n+1))`
-/

namespace A276088.P12161116714385011907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351567 (A261671 (n + 1)).toNat

end

end A276088.P12161116714385011907

/-! ## A276088.P17638684360399715905

`A328114(A276094(2*n+1)*A276094(n))`
-/

namespace A276088.P17638684360399715905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A276094 (2 * n + 1) * A276094 n).toNat

end

end A276088.P17638684360399715905

/-! ## A276088.P18326827812102777905

`A351567(A394497(n+1))`
-/

namespace A276088.P18326827812102777905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351567 (A394497 (n + 1)).toNat

end

end A276088.P18326827812102777905

/-! ## A276088.P15254543702057596432

`val(A276086(n), A053669(A328613(n)))`
-/

namespace A276088.P15254543702057596432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A276086 n).toNat (A053669 (A328613 n).toNat).toNat

end

end A276088.P15254543702057596432

/-! ## A276088.P6403816263525409507

`A089309(A277022(n))`
-/

namespace A276088.P6403816263525409507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A277022 n).toNat

end

end A276088.P6403816263525409507

/-!
# A276089: Factorial base representation of n is aerated (and then converted back to decimal): for n = sum_{i=1..} digit(i)*i! (with each digit(i) <= i), a(n) = sum_{i=1..} digit(i)*(2i-1)!.

The programs for A276089, there is no canonical definition to state claims against.
-/

/-! ## A276089.P15125924825312826793

`eq[A275735(n), A275735(A276090(n))]`
-/

namespace A276089.P15125924825312826793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275735 (A276090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276089.P15125924825312826793

/-! ## A276089.P17850404840509935436

`eq[A034968(n), A034968(A276090(n))]`
-/

namespace A276089.P17850404840509935436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A276090 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276089.P17850404840509935436

/-! ## A276089.P7495255180379567114

`A225901(n)+A008616(A287742(n))`
-/

namespace A276089.P7495255180379567114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 n + A008616 (A287742 n).toNat

end

end A276089.P7495255180379567114

/-!
# A276090: Left inverse of A276089: For n = sum_{i=1..} d(i)*i! (with each d(i) <= i), a(n) = sum_{j=1..} d(2j-1)*j!.

The programs for A276090, the canonical program `A276090.P6791826420892158713` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276090 has offset 0).

The definition of A276090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A276090.P6791826420892158713

`A133872(n*(n-2)+2)+and(6, A002264(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276090

/-- `A133872(n*(n-2)+2)+and(6, A002264(n))` -/
def P6791826420892158713.Spec : Prop :=
  ∀ n, P6791826420892158713.a n = A276090 n

theorem P6791826420892158713.correct : P6791826420892158713.Spec := by
  intro n
  simp only [A276090]

end A276090

/-! ## A276090.P10661126397919716246

`val(A064553(A276076(n)), 2)`
-/

namespace A276090.P10661126397919716246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A064553 (A276076 n).toNat).toNat 2

end

end A276090.P10661126397919716246

namespace A276090

/-- `val(A064553(A276076(n)), 2)` -/
def P10661126397919716246.Spec : Prop :=
  ∀ n, (P10661126397919716246.a n : ℤ) = A276090 n

end A276090

/-! ## A276090.P18418202685518698902

`xor(floor(n/3), A022003(round(2/3*(n+1)^3)))`
-/

namespace A276090.P18418202685518698902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(n : ℚ) / 3⌋ (A022003 (SequenceMachineLib.roundAway ((2 : ℚ) / 3 * ((n + 1) ^ 3 : ℚ))).toNat)

end

end A276090.P18418202685518698902

namespace A276090

/-- `xor(floor(n/3), A022003(round(2/3*(n+1)^3)))` -/
def P18418202685518698902.Spec : Prop :=
  ∀ n, P18418202685518698902.a n = A276090 n

end A276090

/-! ## A276090.P8955312852626769043

`∑[A033999(Δ[A004695(n)])]-1`
-/

namespace A276090.P8955312852626769043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A276090.P8955312852626769043

namespace A276090

/-- `∑[A033999(Δ[A004695(n)])]-1` -/
def P8955312852626769043.Spec : Prop :=
  ∀ n, P8955312852626769043.a n = A276090 n

end A276090

/-! ## A276090.P17421963113183595318

`A252736(Δ[record[A331788(n+1)]])`
-/

namespace A276090.P17421963113183595318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331788 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (f1 (n + 1) - f1 n).toNat

end

end A276090.P17421963113183595318

namespace A276090

/-- `A252736(Δ[record[A331788(n+1)]])` -/
def P17421963113183595318.Spec : Prop :=
  ∀ n, P17421963113183595318.a n = A276090 n

end A276090

/-!
# A276091: Numbers obtained by reinterpreting base-2 representation of n in A001563-base (A276326): a(n) = Sum_{k>=0} A030308(n,k)*A001563(k+1).

The programs for A276091, there is no canonical definition to state claims against.
-/

/-! ## A276091.P14866349880898578552

`A225901(A059590(n))`
-/

namespace A276091.P14866349880898578552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225901 (A059590 n).toNat

end

end A276091.P14866349880898578552

/-! ## A276091.P7958812688676094112

`A276090(A275959(n))`
-/

namespace A276091.P7958812688676094112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276090 (A275959 n).toNat

end

end A276091.P7958812688676094112

/-! ## A276091.P1026714810223137060

`A276082(n)+A276083(n)-A059590(n)`
-/

namespace A276091.P1026714810223137060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276082 n + (A276083 n - A059590 n)

end

end A276091.P1026714810223137060

/-! ## A276091.P15901378325674090375

`A059590(2*n)-A059590(n)`
-/

namespace A276091.P15901378325674090375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (2 * n) - A059590 n

end

end A276091.P15901378325674090375

/-! ## A276091.P5620679375824861619

`record[A059590(n)-A059590(A110654(n))]`
-/

namespace A276091.P5620679375824861619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n - A059590 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276091.P5620679375824861619

/-! ## A276091.P11930989129929743582

`record[A059590(A153733(n))]-A059590(n)`
-/

namespace A276091.P11930989129929743582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A059590 n

end

end A276091.P11930989129929743582

/-! ## A276091.P8653476717891940787

`record[A059590(n)-A059590(A001281(n))]`
-/

namespace A276091.P8653476717891940787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n - A059590 (A001281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A276091.P8653476717891940787

/-! ## A276091.P8082307756891508729

`A276083(n)+A276009(A276082(n))`
-/

namespace A276091.P8082307756891508729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276083 n + A276009 (A276082 n).toNat

end

end A276091.P8082307756891508729

/-! ## A276091.P7338443751706807163

`lt[A276010(n), 2]`
-/

namespace A276091.P7338443751706807163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276010 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A276091.P7338443751706807163

/-! ## A276091.P9167474633989611054

`eq[A060130(n), A275728(n)]`
-/

namespace A276091.P9167474633989611054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276091.P9167474633989611054

/-! ## A276091.P13519902322866266389

`eq[A060128(n), A276010(n)]`
-/

namespace A276091.P13519902322866266389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276091.P13519902322866266389

/-! ## A276091.P14201082728783364510

`eq[A060500(n), A275728(n)]`
-/

namespace A276091.P14201082728783364510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276091.P14201082728783364510

/-! ## A276091.P3720067274078394472

`eq[A060130(n), A276146(n)]`
-/

namespace A276091.P3720067274078394472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276146 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276091.P3720067274078394472

/-! ## A276091.P452678072916090547

`eq[A060502(n), A276010(n)]`
-/

namespace A276091.P452678072916090547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276010 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276091.P452678072916090547

/-! ## A276091.P9094172253930199309

`eq[A060500(n), A276146(n)]`
-/

namespace A276091.P9094172253930199309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276146 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276091.P9094172253930199309

/-! ## A276091.P3108869357389101469

`eq[A275806(n), A276146(n)]`
-/

namespace A276091.P3108869357389101469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276146 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276091.P3108869357389101469

/-! ## A276091.P393653986667231101

`eq[2, A014430(A276010(n)+1)]`
-/

namespace A276091.P393653986667231101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 (A276010 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A276091.P393653986667231101

/-!
# A276092: a(n) = Product_{i=1..n} prime(i)^(prime(i)-1), a(0)=1.

The programs for A276092, there is no canonical definition to state claims against.
-/

/-! ## A276092.P7817842246287188744

`∏[record[∏{d}[n+1, #^(#-n)]^n]]`
-/

namespace A276092.P7817842246287188744
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f3 n), (d : ℚ) ^ ((d : ℤ) - (n : ℤ) : ℤ)) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A276092.P7817842246287188744

/-! ## A276092.P3032078070814858414

`∏[record[ceil((n+1)/∏{p}[n+1, (n+1)/#])^n]]`
-/

namespace A276092.P3032078070814858414
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f3 n), (n + 1 : ℚ) / (p : ℚ))⌉ ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A276092.P3032078070814858414

/-! ## A276092.P12551409729087064231

`∏[record[A036879(n+1)]]`
-/

namespace A276092.P12551409729087064231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A276092.P12551409729087064231

/-! ## A276092.P7295374574527624976

`∏[record[A073904(n+1)]]`
-/

namespace A276092.P7295374574527624976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073904 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A276092.P7295374574527624976

/-! ## A276092.P15605127455044948035

`∏[record[A020639(n+1)^n]]`
-/

namespace A276092.P15605127455044948035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A276092.P15605127455044948035

/-!
# A276093: The least significant nonzero digit in primorial base is replaced with zero: a(n) = n - A276094(n), a(0) = 0.

The programs for A276093, there is no canonical definition to state claims against.
-/

/-! ## A276093.P10515150108157822473

`n-A276094(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276093.P10515150108157822473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276094 n

end

end A276093.P10515150108157822473

/-! ## A276093.P14698520178816960093

`abs(A276094(n)+A001489(n))`
-/

namespace A276093.P14698520178816960093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A276094 n + A001489 n|

end

end A276093.P14698520178816960093

/-! ## A276093.P8461623499158179988

`A057428(n)*A276094(n)+n`
-/

namespace A276093.P8461623499158179988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A276094 n + (n : ℤ)

end

end A276093.P8461623499158179988

/-! ## A276093.P9439528793171585549

`(n*(A276094(n)+1))%A000027(n+1)`
-/

namespace A276093.P9439528793171585549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * (A276094 n + 1)) (A000027 (n + 1))

end

end A276093.P9439528793171585549

/-! ## A276093.P6538742610249814082

`(A007204(n)+n)%(A276094(n)+A007204(n))`
-/

namespace A276093.P6538742610249814082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007204 n + (n : ℤ)) (A276094 n + A007204 n)

end

end A276093.P6538742610249814082

/-! ## A276093.P7884298652221160868

`(A000040(n+1)+n)%(A276094(n)+A000040(n+1))`
-/

namespace A276093.P7884298652221160868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) + (n : ℤ)) (A276094 n + A000040 (n + 1))

end

end A276093.P7884298652221160868

/-! ## A276093.P3996050547809328434

`(A204651(n+1)+n)%(A276094(n)+A204651(n+1))`
-/

namespace A276093.P3996050547809328434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204651 (n + 1) + (n : ℤ)) (A276094 n + A204651 (n + 1))

end

end A276093.P3996050547809328434

/-! ## A276093.P2530583869528432761

`A025581(A276094(n)+∑[n])`
-/

namespace A276093.P2530583869528432761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A276094 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A276093.P2530583869528432761

/-! ## A276093.P16061586660218233149

`A196199(A276094(n)²)+n`
-/

namespace A276093.P16061586660218233149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A276094 n ^ 2).toNat + (n : ℤ)

end

end A276093.P16061586660218233149

/-! ## A276093.P3347058756658889677

`A372576(A392858(n))`
-/

namespace A276093.P3347058756658889677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372576 (A392858 n).toNat

end

end A276093.P3347058756658889677

/-!
# A276094: a(n) = n modulo A002110(A257993(n)), a(0) = 0.

The programs for A276094, there is no canonical definition to state claims against.
-/

/-! ## A276094.P1592037271509669162

`n-A276093(n)`
-/

namespace A276094.P1592037271509669162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276093 n

end

end A276094.P1592037271509669162

/-! ## A276094.P15591208654835177633

`n%A276152((n-1)%(n+1)+1)`
-/

namespace A276094.P15591208654835177633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A276152 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) + 1).toNat)

end

end A276094.P15591208654835177633

/-! ## A276094.P11812229225147939496

`(n*(A276093(n)+A178334(A178334(n))))%(n+1)`
-/

namespace A276094.P11812229225147939496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * (A276093 n + A178334 (A178334 n).toNat)) (n + 1 : ℤ)

end

end A276094.P11812229225147939496

/-! ## A276094.P7633073218158778063

`Δ[A276093(n)]^(A277330(n)%2)`
-/

namespace A276094.P7633073218158778063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276093 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (Int.tmod (A277330 n) 2 : ℤ)

end

end A276094.P7633073218158778063

/-! ## A276094.P17173755724520040038

`Δ[A276093(n)]^Δ[A123108(n+1)]`
-/

namespace A276094.P17173755724520040038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276093 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

end

end A276094.P17173755724520040038

/-!
# A276095: A nonlinear recurrence of order 4: a(1)=a(2)=a(3)=a(4)=1; a(n)=(a(n-1)+a(n-2)+a(n-3))^2/a(n-4).

The programs for A276095, the canonical program `A276095.P7997153681006801748` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276095 has offset 1).

The definition of A276095 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276095.P7997153681006801748

`A072878(n+1)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276095

/-- `A072878(n+1)²` -/
def P7997153681006801748.Spec : Prop :=
  ∀ n, P7997153681006801748.a n = A276095 (n + 1)

theorem P7997153681006801748.correct : P7997153681006801748.Spec := by
  intro n
  simp only [A276095, Nat.add_sub_cancel]

end A276095

/-! ## A276095.P17467361961117896585

`(a(n-1)+a(n-2)+a(n-3))²/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A276095.P17467361961117896585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  (a (n - 1) + (a (n - 2) + a (n - 3))) ^ 2 / a (n - 4)

end

end A276095.P17467361961117896585

namespace A276095

/-- `(a(n-1)+a(n-2)+a(n-3))²/a(n-4)` -/
def P17467361961117896585.Spec : Prop :=
  ∀ n, P17467361961117896585.a n = (A276095 (n + 1) : ℚ)

end A276095

/-! ## A276095.P14284433716880502047

`(A061292(n)/2)²`
-/

namespace A276095.P14284433716880502047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A061292 n : ℚ) / 2) ^ 2

end

end A276095.P14284433716880502047

namespace A276095

/-- `(A061292(n)/2)²` -/
def P14284433716880502047.Spec : Prop :=
  ∀ n, P14284433716880502047.a n = (A276095 (n + 1) : ℚ)

end A276095

/-! ## A276095.P9532001214563318029

`A072878(n+1)^A001222(A030664(n))`
-/

namespace A276095.P9532001214563318029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072878 (n + 1) : ℚ) ^ (A001222 (A030664 n).toNat : ℤ)

end

end A276095.P9532001214563318029

namespace A276095

/-- `A072878(n+1)^A001222(A030664(n))` -/
def P9532001214563318029.Spec : Prop :=
  ∀ n, P9532001214563318029.a n = (A276095 (n + 1) : ℚ)

end A276095

/-! ## A276095.P5455155821243031547

`A072878(n+1)^A000032(A064458(n))`
-/

namespace A276095.P5455155821243031547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072878 (n + 1) : ℚ) ^ (A000032 (A064458 n).toNat : ℤ)

end

end A276095.P5455155821243031547

namespace A276095

/-- `A072878(n+1)^A000032(A064458(n))` -/
def P5455155821243031547.Spec : Prop :=
  ∀ n, P5455155821243031547.a n = (A276095 (n + 1) : ℚ)

end A276095

/-!
# A276097: A nonlinear recurrence of order 5: a(1)=a(2)=a(3)=a(4)=a(5)=1; a(n)=(a(n-1)+a(n-2)+a(n-3)+a(n-4))^2/a(n-5).

The programs for A276097, the canonical program `A276097.P18322687685694777596` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A276097 has offset 1).

The definition of A276097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A276097.P18322687685694777596

`A072879(n+1)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A276097

/-- `A072879(n+1)²` -/
def P18322687685694777596.Spec : Prop :=
  ∀ n, P18322687685694777596.a n = A276097 (n + 1)

theorem P18322687685694777596.correct : P18322687685694777596.Spec := by
  intro n
  simp only [A276097, Nat.add_sub_cancel]

end A276097

/-! ## A276097.P9779428157287712007

`(a(n-1)+a(n-2)+a(n-3)+a(n-4))²/a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A276097.P9779428157287712007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  (a (n - 1) + (a (n - 2) + (a (n - 3) + a (n - 4)))) ^ 2 / a (n - 5)

end

end A276097.P9779428157287712007

namespace A276097

/-- `(a(n-1)+a(n-2)+a(n-3)+a(n-4))²/a(n-5)` -/
def P9779428157287712007.Spec : Prop :=
  ∀ n, P9779428157287712007.a n = (A276097 (n + 1) : ℚ)

end A276097

/-! ## A276097.P12078487295210297883

`A072879(n+1)^A014963(A001316(n))`
-/

namespace A276097.P12078487295210297883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072879 (n + 1) : ℚ) ^ (A014963 (A001316 n).toNat : ℤ)

end

end A276097.P12078487295210297883

namespace A276097

/-- `A072879(n+1)^A014963(A001316(n))` -/
def P12078487295210297883.Spec : Prop :=
  ∀ n, P12078487295210297883.a n = (A276097 (n + 1) : ℚ)

end A276097

/-! ## A276097.P10005346688892164200

`A072879(n+1)^A020639(A029613(n))`
-/

namespace A276097.P10005346688892164200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072879 (n + 1) : ℚ) ^ (A020639 (A029613 n).toNat : ℤ)

end

end A276097.P10005346688892164200

namespace A276097

/-- `A072879(n+1)^A020639(A029613(n))` -/
def P10005346688892164200.Spec : Prop :=
  ∀ n, P10005346688892164200.a n = (A276097 (n + 1) : ℚ)

end A276097

/-! ## A276097.P15795410986674328970

`A072879(n+1)^A020639(A045655(n))`
-/

namespace A276097.P15795410986674328970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072879 (n + 1) : ℚ) ^ (A020639 (A045655 n).toNat : ℤ)

end

end A276097.P15795410986674328970

namespace A276097

/-- `A072879(n+1)^A020639(A045655(n))` -/
def P15795410986674328970.Spec : Prop :=
  ∀ n, P15795410986674328970.a n = (A276097 (n + 1) : ℚ)

end A276097

/-!
# A276098: a(n) = (7*n)!*(3/2*n)!/((7*n/2)!*(3*n)!*(2*n)!).

The programs for A276098, there is no canonical definition to state claims against.
-/

/-! ## A276098.P3152726517826201887

`A091496(n)/A091527(n)*A262733(n)`
-/

namespace A276098.P3152726517826201887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091496 n : ℚ) / (A091527 n : ℚ) * (A262733 n : ℚ)

end

end A276098.P3152726517826201887

/-! ## A276098.P2284817346066270014

`A262732(n)/A000984(n)*A262733(n)`
-/

namespace A276098.P2284817346066270014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262732 n : ℚ) / (A000984 n : ℚ) * (A262733 n : ℚ)

end

end A276098.P2284817346066270014

/-! ## A276098.P6357954657189365068

`A091496(n)/A275652(n)*A352652(n)`
-/

namespace A276098.P6357954657189365068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091496 n : ℚ) / (A275652 n : ℚ) * (A352652 n : ℚ)

end

end A276098.P6357954657189365068

/-! ## A276098.P13514966265737755701

`A054335(A139276(n)+A062725(n))`
-/

namespace A276098.P13514966265737755701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054335 (A139276 n + A062725 n).toNat

end

end A276098.P13514966265737755701

/-!
# A276099: a(n) = (9*n)!*(5/2*n)!/((9*n/2)!*(5*n)!*(2*n)!).

The programs for A276099, there is no canonical definition to state claims against.
-/

/-! ## A276099.P7559114987038767049

`A005809(n)/A091496(n)*A347858(n)`
-/

namespace A276099.P7559114987038767049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005809 n : ℚ) / (A091496 n : ℚ) * (A347858 n : ℚ)

end

end A276099.P7559114987038767049

