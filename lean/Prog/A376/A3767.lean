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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A376700: The values of i in primes of the form 2^i*3^j - 1 (A005105) in the order of their appearance.

The programs for A376700, there is no canonical definition to state claims against.
-/

/-! ## A376700.P642535570796207746

`A007814(A005105(n+1)+1)`
-/

namespace A376700.P642535570796207746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005105 (n + 1) + 1).toNat

end

end A376700.P642535570796207746

/-! ## A376700.P9932960260010392176

`A022328(A376699(n+1))`
-/

namespace A376700.P9932960260010392176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022328 (A376699 (n + 1)).toNat

end

end A376700.P9932960260010392176

/-! ## A376700.P18291860993145942837

`val(A000203(A063524(3*n)+A005105(n+1)), 2)`
-/

namespace A376700.P18291860993145942837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (A063524 (3 * n) + A005105 (n + 1)).toNat).toNat 2

end

end A376700.P18291860993145942837

/-! ## A376700.P16902438866861283596

`A336937(A005105(n+1))`
-/

namespace A376700.P16902438866861283596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336937 (A005105 (n + 1)).toNat

end

end A376700.P16902438866861283596

/-! ## A376700.P17865768118517158841

`val(A007088(A005105(n+1)+1), 2)`
-/

namespace A376700.P17865768118517158841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007088 (A005105 (n + 1) + 1).toNat).toNat 2

end

end A376700.P17865768118517158841

/-!
# A376701: The values of j in primes of the form 2^i*3^j - 1 (A005105) in the order of their appearance.

The programs for A376701, there is no canonical definition to state claims against.
-/

/-! ## A376701.P9748635031121970183

`A007949(A005105(n+1)+1)`
-/

namespace A376701.P9748635031121970183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A005105 (n + 1) + 1).toNat

end

end A376701.P9748635031121970183

/-! ## A376701.P14111521470071936010

`A022329(A376699(n+1))`
-/

namespace A376701.P14111521470071936010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (A376699 (n + 1)).toNat

end

end A376701.P14111521470071936010

/-! ## A376701.P291376060683532877

`A331410(lcm(2, A005105(n+1)+1)/2)`
-/

namespace A376701.P291376060683532877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331410 (SequenceMachineLib.roundAway ((Int.lcm 2 (A005105 (n + 1) + 1) : ℚ) / 2)).toNat

end

end A376701.P291376060683532877

/-! ## A376701.P18085428406576183464

`A336928(A005105(n+1))`
-/

namespace A376701.P18085428406576183464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336928 (A005105 (n + 1)).toNat

end

end A376701.P18085428406576183464

/-! ## A376701.P8930608641381249241

`A087436(A005105(n+1)+1)`
-/

namespace A376701.P8930608641381249241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A005105 (n + 1) + 1).toNat

end

end A376701.P8930608641381249241

/-!
# A376703: 3-brilliant numbers: numbers which are the product of three primes having the same number of decimal digits.

The programs for A376703, there is no canonical definition to state claims against.
-/

/-! ## A376703.P17969951834485643703

`∩[A014612(n+1), A162421(n+1)]`
-/

namespace A376703.P17969951834485643703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376703.P17969951834485643703

/-! ## A376703.P4872430433184170617

`∩[A014612(n+1), A199009(n+1)]`
-/

namespace A376703.P4872430433184170617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376703.P4872430433184170617

/-! ## A376703.P7532829888257516180

`∩[A298207(n+1), A199009(n+1)]`
-/

namespace A376703.P7532829888257516180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376703.P7532829888257516180

/-! ## A376703.P1910243607173363544

`filter[A162421(n+1), A101605(#)]`
-/

namespace A376703.P1910243607173363544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162421 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A376703.P1910243607173363544

/-! ## A376703.P3676353964684311311

`filter[A199009(n+1), A101605(#)]`
-/

namespace A376703.P3676353964684311311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A376703.P3676353964684311311

/-!
# A376704: 4-brilliant numbers: numbers which are the product of four primes having the same number of decimal digits.

The programs for A376704, there is no canonical definition to state claims against.
-/

/-! ## A376704.P8596102115940193630

`filter[A199009(n+1), A101637(#)]`
-/

namespace A376704.P8596102115940193630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101637 (f1 j).toNat = 1) n)

end

end A376704.P8596102115940193630

/-! ## A376704.P13794335500015922173

`∩[A014613(n+1), A162421(n+1)]`
-/

namespace A376704.P13794335500015922173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376704.P13794335500015922173

/-! ## A376704.P16070386243397895234

`∩[A014613(n+1), A199009(n+1)]`
-/

namespace A376704.P16070386243397895234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376704.P16070386243397895234

/-! ## A376704.P11073977642708317481

`∩[A046370(n+1), A162421(n+1)]`
-/

namespace A376704.P11073977642708317481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376704.P11073977642708317481

/-! ## A376704.P11218079267842178266

`∩[A046370(n+1), A199009(n+1)]`
-/

namespace A376704.P11218079267842178266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376704.P11218079267842178266

/-!
# A376707: G.f.: Sum_{k>=0} x^(k*(k+1)/2) * Product_{j=1..k} 1/(1 - x^j)^3.

The programs for A376707, there is no canonical definition to state claims against.
-/

/-! ## A376707.P8099941436042854552

`A003056(A051424(n)*A280541(n))`
-/

namespace A376707.P8099941436042854552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A051424 n * A280541 n).toNat

end

end A376707.P8099941436042854552

/-! ## A376707.P322336071250807740

`A118199(2*n+3)+A083893(A266695(n))`
-/

namespace A376707.P322336071250807740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118199 (2 * n + 3) + A083893 (A266695 n).toNat

end

end A376707.P322336071250807740

/-!
# A376708: G.f.: Sum_{k>=0} x^(k*(k+1)) * Product_{j=1..k} 1/(1 - x^j)^3.

The programs for A376708, there is no canonical definition to state claims against.
-/

/-! ## A376708.P1245931825064223640

`A112318(A065475(a(n-1)+2*a(n-2)+2))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A376708.P1245931825064223640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A112318 (A065475 (a (n - 1) + 2 * a (n - 2) + 2).toNat).toNat

end

end A376708.P1245931825064223640

/-! ## A376708.P18403147475702391663

`A107742(n)-A341591(A027914(n))`
-/

namespace A376708.P18403147475702391663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107742 n - A341591 (A027914 n).toNat

end

end A376708.P18403147475702391663

/-! ## A376708.P16890921128887464751

`A096569(n+1)+A034968(A002740(n))`
-/

namespace A376708.P16890921128887464751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096569 (n + 1) + A034968 (A002740 n).toNat

end

end A376708.P16890921128887464751

/-! ## A376708.P15524188362031407733

`A035382(3*n)-A299203(A134810(n+1))`
-/

namespace A376708.P15524188362031407733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035382 (3 * n) - A299203 (A134810 (n + 1)).toNat

end

end A376708.P15524188362031407733

/-! ## A376708.P17318197777951612780

`A353430(2*n+3)-A353414(A353441(n+1))`
-/

namespace A376708.P17318197777951612780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353430 (2 * n + 3) - A353414 (A353441 (n + 1)).toNat

end

end A376708.P17318197777951612780

/-!
# A376709: G.f.: Sum_{k>=0} x^(k^2) * Product_{j=1..k} 1/(1 - x^j)^3.

The programs for A376709, there is no canonical definition to state claims against.
-/

/-! ## A376709.P12011243621099750961

`A325343(n+1)+A118759(A067659(3*n))`
-/

namespace A376709.P12011243621099750961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325343 (n + 1) + A118759 (A067659 (3 * n)).toNat

end

end A376709.P12011243621099750961

/-! ## A376709.P43155535318375728

`A240467(A002571(n+1))+A237757(3*n+4)`
-/

namespace A376709.P43155535318375728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240467 (A002571 (n + 1)).toNat + A237757 (3 * n + 4)

end

end A376709.P43155535318375728

/-! ## A376709.P15362248410537279487

`A336835(A144932(n+1))+A237757(3*n+4)`
-/

namespace A376709.P15362248410537279487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (A144932 (n + 1)).toNat + A237757 (3 * n + 4)

end

end A376709.P15362248410537279487

/-! ## A376709.P2418379965104122118

`A354140(A274174(n))`
-/

namespace A376709.P2418379965104122118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354140 (A274174 n).toNat

end

end A376709.P2418379965104122118

/-! ## A376709.P2776146752582330901

`A335433(A023596(n+1))`
-/

namespace A376709.P2776146752582330901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335433 (A023596 (n + 1)).toNat

end

end A376709.P2776146752582330901

/-!
# A376711: G.f.: Sum_{k>=0} x^(k*(k+1)) * Product_{j=1..k} 1/(1 - x^j)^4.

The programs for A376711, there is no canonical definition to state claims against.
-/

/-! ## A376711.P5472412845326223044

`A015754(3*n+1)-A080342(A026534(n+1))`
-/

namespace A376711.P5472412845326223044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015754 (3 * n + 1) - A080342 (A026534 (n + 1)).toNat

end

end A376711.P5472412845326223044

/-!
# A376712: G.f.: Sum_{k>=0} x^(k^2) * Product_{j=1..k} 1/(1 - x^j)^4.

The programs for A376712, there is no canonical definition to state claims against.
-/

/-! ## A376712.P9958099393153019476

`A238866(2*n)-A285972(A000984(n))`
-/

namespace A376712.P9958099393153019476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238866 (2 * n) - A285972 (A000984 n).toNat

end

end A376712.P9958099393153019476

/-!
# A376713: a(n) is the minimum number with exactly n triples (u,m,v) of divisors such that u < v and m^2 is the harmonic mean of u^2 and v^2.

The programs for A376713, there is no canonical definition to state claims against.
-/

/-! ## A376713.P10354272927638344697

`5*A008589(A005179(n+1))`
-/

namespace A376713.P10354272927638344697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A008589 (A005179 (n + 1)).toNat

end

end A376713.P10354272927638344697

/-! ## A376713.P12646396981841987977

`A000027(35*A005179(n+1))`
-/

namespace A376713.P12646396981841987977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (35 * A005179 (n + 1)).toNat

end

end A376713.P12646396981841987977

/-! ## A376713.P13805337700629717790

`A119416(5*A005179(n+1))`
-/

namespace A376713.P13805337700629717790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119416 (5 * A005179 (n + 1)).toNat

end

end A376713.P13805337700629717790

/-! ## A376713.P2967307775396205204

`A008587(7*A005179(n+1))`
-/

namespace A376713.P2967307775396205204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (7 * A005179 (n + 1)).toNat

end

end A376713.P2967307775396205204

/-! ## A376713.P6481976145015629678

`A008706(7*A005179(n+1))`
-/

namespace A376713.P6481976145015629678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (7 * A005179 (n + 1)).toNat

end

end A376713.P6481976145015629678

/-!
# A376714: Sum of squares of the decimal digits of the n-th prime.

The programs for A376714, the canonical program `A376714.P15979935111988966873` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376714 has offset 1).

The definition of A376714 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A376714.P15979935111988966873

`A003132(A000040(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A376714

/-- `A003132(A000040(n+1))` -/
def P15979935111988966873.Spec : Prop :=
  ∀ n, P15979935111988966873.a n = A376714 (n + 1)

theorem P15979935111988966873.correct : P15979935111988966873.Spec := by
  intro n
  simp only [A376714, Nat.add_sub_cancel]

end A376714

/-! ## A376714.P3212986102327006482

`∑{digits}[Δ[A007504(n)], #²]`
-/

namespace A376714.P3212986102327006482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A376714.P3212986102327006482

namespace A376714

/-- `∑{digits}[Δ[A007504(n)], #²]` -/
def P3212986102327006482.Spec : Prop :=
  ∀ n, (P3212986102327006482.a n : ℤ) = A376714 (n + 1)

end A376714

/-! ## A376714.P15496714813113012132

`∑{digits}[Δ[A008348(n)], #²]`
-/

namespace A376714.P15496714813113012132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A376714.P15496714813113012132

namespace A376714

/-- `∑{digits}[Δ[A008348(n)], #²]` -/
def P15496714813113012132.Spec : Prop :=
  ∀ n, (P15496714813113012132.a n : ℤ) = A376714 (n + 1)

end A376714

/-! ## A376714.P8015408339016602157

`∑{digits}[p?[A259153(n)], #²]`
-/

namespace A376714.P8015408339016602157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A376714.P8015408339016602157

namespace A376714

/-- `∑{digits}[p?[A259153(n)], #²]` -/
def P8015408339016602157.Spec : Prop :=
  ∀ n, (P8015408339016602157.a n : ℤ) = A376714 (n + 1)

end A376714

/-! ## A376714.P16948486110789097144

`∑{digits}[A004087(n+1), #²]`
-/

namespace A376714.P16948486110789097144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004087 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A376714.P16948486110789097144

namespace A376714

/-- `∑{digits}[A004087(n+1), #²]` -/
def P16948486110789097144.Spec : Prop :=
  ∀ n, (P16948486110789097144.a n : ℤ) = A376714 (n + 1)

end A376714

/-! ## A376714.P2296285320832857070

`∑{digits}[A028905(n+1), #²]`
-/

namespace A376714.P2296285320832857070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A376714.P2296285320832857070

namespace A376714

/-- `∑{digits}[A028905(n+1), #²]` -/
def P2296285320832857070.Spec : Prop :=
  ∀ n, (P2296285320832857070.a n : ℤ) = A376714 (n + 1)

end A376714

/-! ## A376714.P16792555110665766397

`∑{digits}[A028906(n+1), #²]`
-/

namespace A376714.P16792555110665766397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028906 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A376714.P16792555110665766397

namespace A376714

/-- `∑{digits}[A028906(n+1), #²]` -/
def P16792555110665766397.Spec : Prop :=
  ∀ n, (P16792555110665766397.a n : ℤ) = A376714 (n + 1)

end A376714

/-! ## A376714.P6661846384390930879

`∑{digits}[A142342(n+1), #²]`
-/

namespace A376714.P6661846384390930879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142342 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A376714.P6661846384390930879

namespace A376714

/-- `∑{digits}[A142342(n+1), #²]` -/
def P6661846384390930879.Spec : Prop :=
  ∀ n, (P6661846384390930879.a n : ℤ) = A376714 (n + 1)

end A376714

/-! ## A376714.P2383341956577837630

`∑{digits}[A273960(n+1), #²]`
-/

namespace A376714.P2383341956577837630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A376714.P2383341956577837630

namespace A376714

/-- `∑{digits}[A273960(n+1), #²]` -/
def P2383341956577837630.Spec : Prop :=
  ∀ n, (P2383341956577837630.a n : ℤ) = A376714 (n + 1)

end A376714

/-! ## A376714.P15022025431922702796

`∑{digits}[sqrt(A001248(n+1)), #²]`
-/

namespace A376714.P15022025431922702796
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A376714.P15022025431922702796

namespace A376714

/-- `∑{digits}[sqrt(A001248(n+1)), #²]` -/
def P15022025431922702796.Spec : Prop :=
  ∀ n, (P15022025431922702796.a n : ℤ) = A376714 (n + 1)

end A376714

/-! ## A376714.P3076690492776215388

`∑{digits}[∑[A054541(n+1)], #²]`
-/

namespace A376714.P3076690492776215388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A376714.P3076690492776215388

namespace A376714

/-- `∑{digits}[∑[A054541(n+1)], #²]` -/
def P3076690492776215388.Spec : Prop :=
  ∀ n, (P3076690492776215388.a n : ℤ) = A376714 (n + 1)

end A376714

/-! ## A376714.P15650714558434767021

`∑{digits}[A008578(n+2), #²]`
-/

namespace A376714.P15650714558434767021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A376714.P15650714558434767021

namespace A376714

/-- `∑{digits}[A008578(n+2), #²]` -/
def P15650714558434767021.Spec : Prop :=
  ∀ n, (P15650714558434767021.a n : ℤ) = A376714 (n + 1)

end A376714

/-! ## A376714.P18370608515183532873

`∑{digits}[A182986(n+2), #²]`
-/

namespace A376714.P18370608515183532873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A376714.P18370608515183532873

namespace A376714

/-- `∑{digits}[A182986(n+2), #²]` -/
def P18370608515183532873.Spec : Prop :=
  ∀ n, (P18370608515183532873.a n : ℤ) = A376714 (n + 1)

end A376714

/-! ## A376714.P17068483592201643239

`∑{digits}[A067747(2*n+1), #²]`
-/

namespace A376714.P17068483592201643239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A376714.P17068483592201643239

namespace A376714

/-- `∑{digits}[A067747(2*n+1), #²]` -/
def P17068483592201643239.Spec : Prop :=
  ∀ n, (P17068483592201643239.a n : ℤ) = A376714 (n + 1)

end A376714

/-! ## A376714.P8877175464981919726

`∑{digits}[A129767(2*n+1), #²]`
-/

namespace A376714.P8877175464981919726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A376714.P8877175464981919726

namespace A376714

/-- `∑{digits}[A129767(2*n+1), #²]` -/
def P8877175464981919726.Spec : Prop :=
  ∀ n, (P8877175464981919726.a n : ℤ) = A376714 (n + 1)

end A376714

/-! ## A376714.P10605403814860699403

`∑{digits}[record[A075643(n+1)], #²]`
-/

namespace A376714.P10605403814860699403
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075643 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A376714.P10605403814860699403

namespace A376714

/-- `∑{digits}[record[A075643(n+1)], #²]` -/
def P10605403814860699403.Spec : Prop :=
  ∀ n, (P10605403814860699403.a n : ℤ) = A376714 (n + 1)

end A376714

/-! ## A376714.P16324262323446542592

`∑{digits}[p?[A003277(n+1)], #²]`
-/

namespace A376714.P16324262323446542592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A376714.P16324262323446542592

namespace A376714

/-- `∑{digits}[p?[A003277(n+1)], #²]` -/
def P16324262323446542592.Spec : Prop :=
  ∀ n, (P16324262323446542592.a n : ℤ) = A376714 (n + 1)

end A376714

/-! ## A376714.P2432638754046488640

`A003132(A028905(n+1))`
-/

namespace A376714.P2432638754046488640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A028905 (n + 1)).toNat

end

end A376714.P2432638754046488640

namespace A376714

/-- `A003132(A028905(n+1))` -/
def P2432638754046488640.Spec : Prop :=
  ∀ n, P2432638754046488640.a n = A376714 (n + 1)

end A376714

/-! ## A376714.P221237968309649227

`∑{digits}[p?[A014681(n)], #²]`
-/

namespace A376714.P221237968309649227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A376714.P221237968309649227

namespace A376714

/-- `∑{digits}[p?[A014681(n)], #²]` -/
def P221237968309649227.Spec : Prop :=
  ∀ n, (P221237968309649227.a n : ℤ) = A376714 (n + 1)

end A376714

/-! ## A376714.P2009040165435151332

`∑{digits}[p?[A352844(n)], #²]`
-/

namespace A376714.P2009040165435151332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A376714.P2009040165435151332

namespace A376714

/-- `∑{digits}[p?[A352844(n)], #²]` -/
def P2009040165435151332.Spec : Prop :=
  ∀ n, (P2009040165435151332.a n : ℤ) = A376714 (n + 1)

end A376714

/-!
# A376715: Composite numbers in A265640.

The programs for A376715, the canonical program `A376715.P17313450320270734925` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376715 has offset 1).

The definition of A376715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5018 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376715.P2951579786576545009

`∪[A166402(n+1), A228056(n+1)]`
-/

namespace A376715.P2951579786576545009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376715.P2951579786576545009

namespace A376715

/-- `∪[A166402(n+1), A228056(n+1)]` -/
def P2951579786576545009.Spec : Prop :=
  ∀ n, (P2951579786576545009.a n : ℤ) = A376715 (n + 1)

end A376715

/-! ## A376715.P17313450320270734925

`filter[A265640(n+1), A066247(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A376715

/-- `filter[A265640(n+1), A066247(#)]` -/
def P17313450320270734925.Spec : Prop :=
  ∀ n, P17313450320270734925.a n = A376715 (n + 1)

theorem P17313450320270734925.correct : P17313450320270734925.Spec := by
  intro n
  simp only [A376715, Nat.add_sub_cancel]

end A376715

/-! ## A376715.P14894395500747995450

`filter[A265640(n+2), A005171(#)]`
-/

namespace A376715.P14894395500747995450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A376715.P14894395500747995450

namespace A376715

/-- `filter[A265640(n+2), A005171(#)]` -/
def P14894395500747995450.Spec : Prop :=
  ∀ n, P14894395500747995450.a n = A376715 (n + 1)

end A376715

/-! ## A376715.P16961078460393609545

`filter[A265640(n+2), A087049(#)]`
-/

namespace A376715.P16961078460393609545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A376715.P16961078460393609545

namespace A376715

/-- `filter[A265640(n+2), A087049(#)]` -/
def P16961078460393609545.Spec : Prop :=
  ∀ n, P16961078460393609545.a n = A376715 (n + 1)

end A376715

/-! ## A376715.P6287486980436265490

`∩[A013929(n+1), A265640(n+1)]`
-/

namespace A376715.P6287486980436265490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376715.P6287486980436265490

namespace A376715

/-- `∩[A013929(n+1), A265640(n+1)]` -/
def P6287486980436265490.Spec : Prop :=
  ∀ n, (P6287486980436265490.a n : ℤ) = A376715 (n + 1)

end A376715

/-! ## A376715.P13586805594106614234

`∩[A265640(n+1), A389462(n+1)]`
-/

namespace A376715.P13586805594106614234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376715.P13586805594106614234

namespace A376715

/-- `∩[A265640(n+1), A389462(n+1)]` -/
def P13586805594106614234.Spec : Prop :=
  ∀ n, (P13586805594106614234.a n : ℤ) = A376715 (n + 1)

end A376715

/-! ## A376715.P16597065821610633733

`∩[A002808(n+1), A265640(n+1)]`
-/

namespace A376715.P16597065821610633733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376715.P16597065821610633733

namespace A376715

/-- `∩[A002808(n+1), A265640(n+1)]` -/
def P16597065821610633733.Spec : Prop :=
  ∀ n, (P16597065821610633733.a n : ℤ) = A376715 (n + 1)

end A376715

/-! ## A376715.P1003416414765080113

`∩[A060679(n+1), A265640(n+1)]`
-/

namespace A376715.P1003416414765080113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376715.P1003416414765080113

namespace A376715

/-- `∩[A060679(n+1), A265640(n+1)]` -/
def P1003416414765080113.Spec : Prop :=
  ∀ n, (P1003416414765080113.a n : ℤ) = A376715 (n + 1)

end A376715

/-! ## A376715.P16110195479705168975

`∩[A179891(n+1), A265640(n+1)]`
-/

namespace A376715.P16110195479705168975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376715.P16110195479705168975

namespace A376715

/-- `∩[A179891(n+1), A265640(n+1)]` -/
def P16110195479705168975.Spec : Prop :=
  ∀ n, (P16110195479705168975.a n : ℤ) = A376715 (n + 1)

end A376715

/-! ## A376715.P1212094267762146985

`∩[A193166(n+1), A265640(n+1)]`
-/

namespace A376715.P1212094267762146985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376715.P1212094267762146985

namespace A376715

/-- `∩[A193166(n+1), A265640(n+1)]` -/
def P1212094267762146985.Spec : Prop :=
  ∀ n, (P1212094267762146985.a n : ℤ) = A376715 (n + 1)

end A376715

/-! ## A376715.P3673463292002882932

`filter[A265640(n+1), A107078(#)]`
-/

namespace A376715.P3673463292002882932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A376715.P3673463292002882932

namespace A376715

/-- `filter[A265640(n+1), A107078(#)]` -/
def P3673463292002882932.Spec : Prop :=
  ∀ n, P3673463292002882932.a n = A376715 (n + 1)

end A376715

/-!
# A376716: Expansion of (1 - x + x^2)/((1 - x + x^2)^2 - 4*x^2).

The programs for A376716, the canonical program `A376716.P2280350946720743706` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376716 has offset 0).

The definition of A376716 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^2)/(1-2x-x^2-2x^3+x^4))` (program `A376716.P2280350946720743706`, by `A376716.P2280350946720743706.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376716.P2280350946720743706

`ogf((1-x+x^2)/(1-2x-x^2-2x^3+x^4))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A376716

/-- `ogf((1-x+x^2)/(1-2x-x^2-2x^3+x^4))` -/
def P2280350946720743706.Spec : Prop :=
  ∀ n, P2280350946720743706.a n = A376716 n

theorem P2280350946720743706.correct : P2280350946720743706.Spec := by
  intro n
  simp only [A376716]

end A376716

/-! ## A376716.P6068393348886951223

`2*a(n-1)+a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=11`
-/

namespace A376716.P6068393348886951223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 11] fun n a =>
  2 * a (n - 1) + a (n - 2) + 2 * a (n - 3) - a (n - 4)

end

end A376716.P6068393348886951223

namespace A376716

/-- `2*a(n-1)+a(n-2)+2*a(n-3)-a(n-4)` -/
def P6068393348886951223.Spec : Prop :=
  ∀ n, P6068393348886951223.a n = A376716 n

end A376716

/-! ## A376716.P6556957370414677876

`A093040(2*n)`
-/

namespace A376716.P6556957370414677876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093040 (2 * n)

end

end A376716.P6556957370414677876

namespace A376716

/-- `A093040(2*n)` -/
def P6556957370414677876.Spec : Prop :=
  ∀ n, P6556957370414677876.a n = A376716 n

end A376716

/-! ## A376716.P6376826900887172564

`A005252(Δ[n²])`
-/

namespace A376716.P6376826900887172564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005252 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A376716.P6376826900887172564

namespace A376716

/-- `A005252(Δ[n²])` -/
def P6376826900887172564.Spec : Prop :=
  ∀ n, P6376826900887172564.a n = A376716 n

end A376716

/-! ## A376716.P12113732738051849527

`Δ[A004695(Δ[n²])]`
-/

namespace A376716.P12113732738051849527
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376716.P12113732738051849527

namespace A376716

/-- `Δ[A004695(Δ[n²])]` -/
def P12113732738051849527.Spec : Prop :=
  ∀ n, P12113732738051849527.a n = A376716 n

end A376716

/-! ## A376716.P13298227027853073596

`Δ[A147997(Δ[n²])]`
-/

namespace A376716.P13298227027853073596
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376716.P13298227027853073596

namespace A376716

/-- `Δ[A147997(Δ[n²])]` -/
def P13298227027853073596.Spec : Prop :=
  ∀ n, P13298227027853073596.a n = A376716 n

end A376716

/-! ## A376716.P4146326573801628098

`Δ[A173433(Δ[n²])]`
-/

namespace A376716.P4146326573801628098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173433 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376716.P4146326573801628098

namespace A376716

/-- `Δ[A173433(Δ[n²])]` -/
def P4146326573801628098.Spec : Prop :=
  ∀ n, P4146326573801628098.a n = A376716 n

end A376716

/-! ## A376716.P8511182569620836962

`Δ[A293505(Δ[n²])]`
-/

namespace A376716.P8511182569620836962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293505 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376716.P8511182569620836962

namespace A376716

/-- `Δ[A293505(Δ[n²])]` -/
def P8511182569620836962.Spec : Prop :=
  ∀ n, P8511182569620836962.a n = A376716 n

end A376716

/-! ## A376716.P12125426049416661243

`A174618(4*(n+1))`
-/

namespace A376716.P12125426049416661243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (4 * (n + 1))

end

end A376716.P12125426049416661243

namespace A376716

/-- `A174618(4*(n+1))` -/
def P12125426049416661243.Spec : Prop :=
  ∀ n, P12125426049416661243.a n = A376716 n

end A376716

/-! ## A376716.P7333591450273472571

`A375372(2*(n+1))-1`
-/

namespace A376716.P7333591450273472571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375372 (2 * (n + 1)) - 1

end

end A376716.P7333591450273472571

namespace A376716

/-- `A375372(2*(n+1))-1` -/
def P7333591450273472571.Spec : Prop :=
  ∀ n, P7333591450273472571.a n = A376716 n

end A376716

/-! ## A376716.P13092916460386806130

`A387778(n)+A079978(n)`
-/

namespace A376716.P13092916460386806130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387778 n + A079978 n

end

end A376716.P13092916460386806130

namespace A376716

/-- `A387778(n)+A079978(n)` -/
def P13092916460386806130.Spec : Prop :=
  ∀ n, P13092916460386806130.a n = A376716 n

end A376716

/-! ## A376716.P8266948813717683798

`A173673(A047231(2*(n+1))+2)`
-/

namespace A376716.P8266948813717683798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (A047231 (2 * (n + 1)) + 2).toNat

end

end A376716.P8266948813717683798

namespace A376716

/-- `A173673(A047231(2*(n+1))+2)` -/
def P8266948813717683798.Spec : Prop :=
  ∀ n, P8266948813717683798.a n = A376716 n

end A376716

/-! ## A376716.P17875631801684691158

`A173673(A047271(2*(n+1))+2)`
-/

namespace A376716.P17875631801684691158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (A047271 (2 * (n + 1)) + 2).toNat

end

end A376716.P17875631801684691158

namespace A376716

/-- `A173673(A047271(2*(n+1))+2)` -/
def P17875631801684691158.Spec : Prop :=
  ∀ n, P17875631801684691158.a n = A376716 n

end A376716

/-! ## A376716.P16551288814039728354

`A094686(2*n+1)+A049347(n)`
-/

namespace A376716.P16551288814039728354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 (2 * n + 1) + A049347 n

end

end A376716.P16551288814039728354

namespace A376716

/-- `A094686(2*n+1)+A049347(n)` -/
def P16551288814039728354.Spec : Prop :=
  ∀ n, P16551288814039728354.a n = A376716 n

end A376716

/-! ## A376716.P5552568986998565470

`A204418(n)+A201864(2*(n+1))`
-/

namespace A376716.P5552568986998565470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 n + A201864 (2 * (n + 1))

end

end A376716.P5552568986998565470

namespace A376716

/-- `A204418(n)+A201864(2*(n+1))` -/
def P5552568986998565470.Spec : Prop :=
  ∀ n, P5552568986998565470.a n = A376716 n

end A376716

/-! ## A376716.P794099760597207090

`A108479(n)-A106511(2*n+1)`
-/

namespace A376716.P794099760597207090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108479 n - A106511 (2 * n + 1)

end

end A376716.P794099760597207090

namespace A376716

/-- `A108479(n)-A106511(2*n+1)` -/
def P794099760597207090.Spec : Prop :=
  ∀ n, P794099760597207090.a n = A376716 n

end A376716

/-! ## A376716.P3853332876070638424

`A106511(2*n)+A000045(2*n)`
-/

namespace A376716.P3853332876070638424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106511 (2 * n) + A000045 (2 * n)

end

end A376716.P3853332876070638424

namespace A376716

/-- `A106511(2*n)+A000045(2*n)` -/
def P3853332876070638424.Spec : Prop :=
  ∀ n, P3853332876070638424.a n = A376716 n

end A376716

/-! ## A376716.P15947451581823195078

`A293553(2*n)+A079962(2*n)`
-/

namespace A376716.P15947451581823195078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293553 (2 * n) + A079962 (2 * n)

end

end A376716.P15947451581823195078

namespace A376716

/-- `A293553(2*n)+A079962(2*n)` -/
def P15947451581823195078.Spec : Prop :=
  ∀ n, P15947451581823195078.a n = A376716 n

end A376716

/-! ## A376716.P6019496661944543257

`A001906(n+1)-A094686(2*n+1)`
-/

namespace A376716.P6019496661944543257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - A094686 (2 * n + 1)

end

end A376716.P6019496661944543257

namespace A376716

/-- `A001906(n+1)-A094686(2*n+1)` -/
def P6019496661944543257.Spec : Prop :=
  ∀ n, P6019496661944543257.a n = A376716 n

end A376716

/-!
# A376717: Expansion of (1 - x + x^3)/((1 - x + x^3)^2 - 4*x^3).

The programs for A376717, the canonical program `A376717.P16612543795585595717` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376717 has offset 0).

The definition of A376717 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^3)/(1-2x+x^2-2x^3-2x^4+x^6))` (program `A376717.P16612543795585595717`, by `A376717.P16612543795585595717.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376717.P16612543795585595717

`ogf((1-x+x^3)/(1-2x+x^2-2x^3-2x^4+x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A376717

/-- `ogf((1-x+x^3)/(1-2x+x^2-2x^3-2x^4+x^6))` -/
def P16612543795585595717.Spec : Prop :=
  ∀ n, P16612543795585595717.a n = A376717 n

theorem P16612543795585595717.correct : P16612543795585595717.Spec := by
  intro n
  simp only [A376717]

end A376717

/-! ## A376717.P9527727785582589400

`2*a(n-1)-a(n-2)+2*a(n-3)+2*a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=11, a(5)=22`
-/

namespace A376717.P9527727785582589400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 4, 11, 22] fun n a =>
  2 * a (n - 1) - a (n - 2) + 2 * a (n - 3) + 2 * a (n - 4) - a (n - 6)

end

end A376717.P9527727785582589400

namespace A376717

/-- `2*a(n-1)-a(n-2)+2*a(n-3)+2*a(n-4)-a(n-6)` -/
def P9527727785582589400.Spec : Prop :=
  ∀ n, P9527727785582589400.a n = A376717 n

end A376717

/-! ## A376717.P10372017655289828076

`A289918(Δ[n²])`
-/

namespace A376717.P10372017655289828076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289918 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A376717.P10372017655289828076

namespace A376717

/-- `A289918(Δ[n²])` -/
def P10372017655289828076.Spec : Prop :=
  ∀ n, P10372017655289828076.a n = A376717 n

end A376717

/-! ## A376717.P2688676393999107206

`A005689(A361871(n+1))`
-/

namespace A376717.P2688676393999107206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005689 (A361871 (n + 1)).toNat

end

end A376717.P2688676393999107206

namespace A376717

/-- `A005689(A361871(n+1))` -/
def P2688676393999107206.Spec : Prop :=
  ∀ n, P2688676393999107206.a n = A376717 n

end A376717

/-! ## A376717.P4548507901175791330

`A375278(n)+A375278(n)-A376785(n)`
-/

namespace A376717.P4548507901175791330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375278 n + (A375278 n - A376785 n)

end

end A376717.P4548507901175791330

namespace A376717

/-- `A375278(n)+A375278(n)-A376785(n)` -/
def P4548507901175791330.Spec : Prop :=
  ∀ n, P4548507901175791330.a n = A376717 n

end A376717

/-! ## A376717.P18313156180590185813

`2*A375278(n)-A376785(n)`
-/

namespace A376717.P18313156180590185813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A375278 n - A376785 n

end

end A376717.P18313156180590185813

namespace A376717

/-- `2*A375278(n)-A376785(n)` -/
def P18313156180590185813.Spec : Prop :=
  ∀ n, P18313156180590185813.a n = A376717 n

end A376717

/-! ## A376717.P5088511200604988202

`A392541(2*n+1)-A376785(n)`
-/

namespace A376717.P5088511200604988202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392541 (2 * n + 1) - A376785 n

end

end A376717.P5088511200604988202

namespace A376717

/-- `A392541(2*n+1)-A376785(n)` -/
def P5088511200604988202.Spec : Prop :=
  ∀ n, P5088511200604988202.a n = A376717 n

end A376717

/-! ## A376717.P9839623035331213692

`A392541(2*n+1)-A392541(2*n)`
-/

namespace A376717.P9839623035331213692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392541 (2 * n + 1) - A392541 (2 * n)

end

end A376717.P9839623035331213692

namespace A376717

/-- `A392541(2*n+1)-A392541(2*n)` -/
def P9839623035331213692.Spec : Prop :=
  ∀ n, P9839623035331213692.a n = A376717 n

end A376717

/-! ## A376717.P18101047857441171114

`A376785(n+1)-(A376785(n)+A375279(n+1))`
-/

namespace A376717.P18101047857441171114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376785 (n + 1) - (A376785 n + A375279 (n + 1))

end

end A376717.P18101047857441171114

namespace A376717

/-- `A376785(n+1)-(A376785(n)+A375279(n+1))` -/
def P18101047857441171114.Spec : Prop :=
  ∀ n, P18101047857441171114.a n = A376717 n

end A376717

/-!
# A376718: Expansion of (1 - x + x^4)/((1 - x + x^4)^2 - 4*x^4).

The programs for A376718, the canonical program `A376718.P659353283662386952` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376718 has offset 0).

The definition of A376718 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^4)/(1-2x+x^2-2x^4-2x^5+x^8))` (program `A376718.P659353283662386952`, by `A376718.P659353283662386952.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376718.P659353283662386952

`ogf((1-x+x^4)/(1-2x+x^2-2x^4-2x^5+x^8))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A376718

/-- `ogf((1-x+x^4)/(1-2x+x^2-2x^4-2x^5+x^8))` -/
def P659353283662386952.Spec : Prop :=
  ∀ n, P659353283662386952.a n = A376718 n

theorem P659353283662386952.correct : P659353283662386952.Spec := by
  intro n
  simp only [A376718]

end A376718

/-! ## A376718.P6584044571591975273

`2*a(n-1)-a(n-2)+2*a(n-4)+2*a(n-5)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=4, a(5)=11, a(6)=22, a(7)=37`
-/

namespace A376718.P6584044571591975273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 4, 11, 22, 37] fun n a =>
  2 * a (n - 1) - a (n - 2) + 2 * a (n - 4) + 2 * a (n - 5) - a (n - 8)

end

end A376718.P6584044571591975273

namespace A376718

/-- `2*a(n-1)-a(n-2)+2*a(n-4)+2*a(n-5)-a(n-8)` -/
def P6584044571591975273.Spec : Prop :=
  ∀ n, P6584044571591975273.a n = A376718 n

end A376718

/-! ## A376718.P18092250661683477833

`A375283(n)+A375283(n)-A376786(n)`
-/

namespace A376718.P18092250661683477833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375283 n + (A375283 n - A376786 n)

end

end A376718.P18092250661683477833

namespace A376718

/-- `A375283(n)+A375283(n)-A376786(n)` -/
def P18092250661683477833.Spec : Prop :=
  ∀ n, P18092250661683477833.a n = A376718 n

end A376718

/-! ## A376718.P11990312609963426344

`2*A375283(n)-A376786(n)`
-/

namespace A376718.P11990312609963426344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A375283 n - A376786 n

end

end A376718.P11990312609963426344

namespace A376718

/-- `2*A375283(n)-A376786(n)` -/
def P11990312609963426344.Spec : Prop :=
  ∀ n, P11990312609963426344.a n = A376718 n

end A376718

/-! ## A376718.P12507183570512144739

`A376786(n+1)-(A376786(n)+A375282(n+1))`
-/

namespace A376718.P12507183570512144739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376786 (n + 1) - (A376786 n + A375282 (n + 1))

end

end A376718.P12507183570512144739

namespace A376718

/-- `A376786(n+1)-(A376786(n)+A375282(n+1))` -/
def P12507183570512144739.Spec : Prop :=
  ∀ n, P12507183570512144739.a n = A376718 n

end A376718

/-!
# A376719: Number of perfect powers m <= n such that rad(m) | n, where rad = A007947.

The programs for A376719, there is no canonical definition to state claims against.
-/

/-! ## A376719.P4163508189118182908

`A387924(n+1)%A235248(2*n+5)`
-/

namespace A376719.P4163508189118182908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387924 (n + 1)) (A235248 (2 * n + 5))

end

end A376719.P4163508189118182908

/-! ## A376719.P4374101565189631618

`A387924(n+1)%A099542(A387921(n+1))`
-/

namespace A376719.P4374101565189631618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387924 (n + 1)) (A099542 (A387921 (n + 1)).toNat)

end

end A376719.P4374101565189631618

/-! ## A376719.P18156855841419294900

`A387924(n+1)+A374016(A001248(n+1))`
-/

namespace A376719.P18156855841419294900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387924 (n + 1) + A374016 (A001248 (n + 1)).toNat

end

end A376719.P18156855841419294900

/-! ## A376719.P8434842053287280652

`A387924(n+1)+A045763(A168417(n+1))`
-/

namespace A376719.P8434842053287280652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387924 (n + 1) + A045763 (A168417 (n + 1)).toNat

end

end A376719.P8434842053287280652

/-! ## A376719.P2771879826129156072

`A387924(A040984(n+1))*A387924(n+1)`
-/

namespace A376719.P2771879826129156072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387924 (A040984 (n + 1)).toNat * A387924 (n + 1)

end

end A376719.P2771879826129156072

/-! ## A376719.P7727897248578428843

`and(A141311(n+1), A387924(n+1))`
-/

namespace A376719.P7727897248578428843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141311 (n + 1)) (A387924 (n + 1))

end

end A376719.P7727897248578428843

/-!
# A376720: Product of numbers m that are neither squarefree nor prime powers and rad(m), where rad = A007947.

The programs for A376720, the canonical program `A376720.P7784690848056402490` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376720 has offset 1).

The definition of A376720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376720.P7784690848056402490

`A126706(n+1)*A365783(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A376720

/-- `A126706(n+1)*A365783(n+1)` -/
def P7784690848056402490.Spec : Prop :=
  ∀ n, P7784690848056402490.a n = A376720 (n + 1)

theorem P7784690848056402490.correct : P7784690848056402490.Spec := by
  intro n
  simp only [A376720, Nat.add_sub_cancel]

end A376720

/-! ## A376720.P12965336015262009362

`A380857(n+1)/A365784(n+1)`
-/

namespace A376720.P12965336015262009362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380857 (n + 1) : ℚ) / (A365784 (n + 1) : ℚ)

end

end A376720.P12965336015262009362

namespace A376720

/-- `A380857(n+1)/A365784(n+1)` -/
def P12965336015262009362.Spec : Prop :=
  ∀ n, P12965336015262009362.a n = (A376720 (n + 1) : ℚ)

end A376720

/-! ## A376720.P10497877316112465129

`A365783(n+1)²*A365784(n+1)`
-/

namespace A376720.P10497877316112465129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365783 (n + 1) ^ 2 * A365784 (n + 1)

end

end A376720.P10497877316112465129

namespace A376720

/-- `A365783(n+1)²*A365784(n+1)` -/
def P10497877316112465129.Spec : Prop :=
  ∀ n, P10497877316112465129.a n = A376720 (n + 1)

end A376720

/-! ## A376720.P797406017178090432

`A126706(n+1)²/A365784(n+1)`
-/

namespace A376720.P797406017178090432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126706 (n + 1) ^ 2 : ℚ) / (A365784 (n + 1) : ℚ)

end

end A376720.P797406017178090432

namespace A376720

/-- `A126706(n+1)²/A365784(n+1)` -/
def P797406017178090432.Spec : Prop :=
  ∀ n, P797406017178090432.a n = (A376720 (n + 1) : ℚ)

end A376720

/-! ## A376720.P16253470093756304310

`A007947(A360719(n+1))*A126706(n+1)`
-/

namespace A376720.P16253470093756304310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A360719 (n + 1)).toNat * A126706 (n + 1)

end

end A376720.P16253470093756304310

namespace A376720

/-- `A007947(A360719(n+1))*A126706(n+1)` -/
def P16253470093756304310.Spec : Prop :=
  ∀ n, P16253470093756304310.a n = A376720 (n + 1)

end A376720

/-! ## A376720.P6532867189427763954

`A120944(A365785(n+1))*A126706(n+1)`
-/

namespace A376720.P6532867189427763954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (A365785 (n + 1)).toNat * A126706 (n + 1)

end

end A376720.P6532867189427763954

namespace A376720

/-- `A120944(A365785(n+1))*A126706(n+1)` -/
def P6532867189427763954.Spec : Prop :=
  ∀ n, P6532867189427763954.a n = A376720 (n + 1)

end A376720

/-! ## A376720.P6087133600928878563

`A120944(A365785(n+1))²*A365784(n+1)`
-/

namespace A376720.P6087133600928878563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (A365785 (n + 1)).toNat ^ 2 * A365784 (n + 1)

end

end A376720.P6087133600928878563

namespace A376720

/-- `A120944(A365785(n+1))²*A365784(n+1)` -/
def P6087133600928878563.Spec : Prop :=
  ∀ n, P6087133600928878563.a n = A376720 (n + 1)

end A376720

/-! ## A376720.P10046532622841237210

`A064549(A126706(n+1))`
-/

namespace A376720.P10046532622841237210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A126706 (n + 1)).toNat

end

end A376720.P10046532622841237210

namespace A376720

/-- `A064549(A126706(n+1))` -/
def P10046532622841237210.Spec : Prop :=
  ∀ n, P10046532622841237210.a n = A376720 (n + 1)

end A376720

/-! ## A376720.P10095926752173582959

`A007947(A362432(n+1))*A126706(n+1)`
-/

namespace A376720.P10095926752173582959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A362432 (n + 1)).toNat * A126706 (n + 1)

end

end A376720.P10095926752173582959

namespace A376720

/-- `A007947(A362432(n+1))*A126706(n+1)` -/
def P10095926752173582959.Spec : Prop :=
  ∀ n, P10095926752173582959.a n = A376720 (n + 1)

end A376720

/-! ## A376720.P483902673022502455

`A007947(A126706(n+1)²)*A126706(n+1)`
-/

namespace A376720.P483902673022502455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A126706 (n + 1) ^ 2).toNat * A126706 (n + 1)

end

end A376720.P483902673022502455

namespace A376720

/-- `A007947(A126706(n+1)²)*A126706(n+1)` -/
def P483902673022502455.Spec : Prop :=
  ∀ n, P483902673022502455.a n = A376720 (n + 1)

end A376720

/-!
# A376721: Expansion of 1/sqrt((1 - x^3 - x^4)^2 - 4*x^7).

The programs for A376721, there is no canonical definition to state claims against.
-/

/-! ## A376721.P12296004526778142298

`A017817(n)^A000188(A172218(n+1))`
-/

namespace A376721.P12296004526778142298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017817 n : ℚ) ^ (A000188 (A172218 (n + 1)).toNat : ℤ)

end

end A376721.P12296004526778142298

/-!
# A376722: Expansion of 1/sqrt((1 - x^4 - x^5)^2 - 4*x^9).

The programs for A376722, there is no canonical definition to state claims against.
-/

/-! ## A376722.P16192433887232470911

`(A017827(n)%A241229(n+3))²`
-/

namespace A376722.P16192433887232470911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017827 n) (A241229 (n + 3)) ^ 2

end

end A376722.P16192433887232470911

/-! ## A376722.P15978397793114775556

`A017827(n)²%A331784(3*n+5)`
-/

namespace A376722.P15978397793114775556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017827 n ^ 2) (A331784 (3 * n + 5))

end

end A376722.P15978397793114775556

/-! ## A376722.P11645449445660775993

`A017827(n)^A020639(A001405(n))`
-/

namespace A376722.P11645449445660775993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017827 n : ℚ) ^ (A020639 (A001405 n).toNat : ℤ)

end

end A376722.P11645449445660775993

/-! ## A376722.P11370923497625187515

`A017827(n)^A279496(A043716(n+1))`
-/

namespace A376722.P11370923497625187515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017827 n : ℚ) ^ (A279496 (A043716 (n + 1)).toNat : ℤ)

end

end A376722.P11370923497625187515

/-! ## A376722.P7204494996309095284

`A017827(n)^A304464(A300912(n+1))`
-/

namespace A376722.P7204494996309095284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017827 n : ℚ) ^ (A304464 (A300912 (n + 1)).toNat : ℤ)

end

end A376722.P7204494996309095284

/-!
# A376723: Expansion of 1/((1 - x^2 - x^3)^2 - 4*x^5).

The programs for A376723, the canonical program `A376723.P16059863909557285142` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376723 has offset 0).

The definition of A376723 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x^2-2x^3+x^4-2x^5+x^6))` (program `A376723.P16059863909557285142`, by `A376723.P16059863909557285142.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376723.P16059863909557285142

`ogf(1/(1-2x^2-2x^3+x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A376723

/-- `ogf(1/(1-2x^2-2x^3+x^4-2x^5+x^6))` -/
def P16059863909557285142.Spec : Prop :=
  ∀ n, P16059863909557285142.a n = A376723 n

theorem P16059863909557285142.correct : P16059863909557285142.Spec := by
  intro n
  simp only [A376723]

end A376723

/-! ## A376723.P5479717191161263049

`2*a(n-2)+2*a(n-3)-a(n-4)+2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2, a(4)=3, a(5)=10`
-/

namespace A376723.P5479717191161263049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 2, 3, 10] fun n a =>
  2 * a (n - 2) + 2 * a (n - 3) - a (n - 4) + 2 * a (n - 5) - a (n - 6)

end

end A376723.P5479717191161263049

namespace A376723

/-- `2*a(n-2)+2*a(n-3)-a(n-4)+2*a(n-5)-a(n-6)` -/
def P5479717191161263049.Spec : Prop :=
  ∀ n, P5479717191161263049.a n = A376723 n

end A376723

/-!
# A376724: Expansion of 1/((1 - x^3 - x^4)^2 - 4*x^7).

The programs for A376724, the canonical program `A376724.P13054619995178316927` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376724 has offset 0).

The definition of A376724 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x^3-2x^4+x^6-2x^7+x^8))` (program `A376724.P13054619995178316927`, by `A376724.P13054619995178316927.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376724.P6418574592993616893

`2*a(n-3)+2*a(n-4)-a(n-6)+2*a(n-7)-a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=2, a(5)=0, a(6)=3, a(7)=10`
-/

namespace A376724.P6418574592993616893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2, 2, 0, 3, 10] fun n a =>
  2 * a (n - 3) + 2 * a (n - 4) - a (n - 6) + 2 * a (n - 7) - a (n - 8)

end

end A376724.P6418574592993616893

namespace A376724

/-- `2*a(n-3)+2*a(n-4)-a(n-6)+2*a(n-7)-a(n-8)` -/
def P6418574592993616893.Spec : Prop :=
  ∀ n, P6418574592993616893.a n = A376724 n

end A376724

/-! ## A376724.P13054619995178316927

`ogf(1/(1-2x^3-2x^4+x^6-2x^7+x^8))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A376724

/-- `ogf(1/(1-2x^3-2x^4+x^6-2x^7+x^8))` -/
def P13054619995178316927.Spec : Prop :=
  ∀ n, P13054619995178316927.a n = A376724 n

theorem P13054619995178316927.correct : P13054619995178316927.Spec := by
  intro n
  simp only [A376724]

end A376724

/-! ## A376724.P16326133090784522298

`A358021(A375470(n))`
-/

namespace A376724.P16326133090784522298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358021 (A375470 n).toNat

end

end A376724.P16326133090784522298

namespace A376724

/-- `A358021(A375470(n))` -/
def P16326133090784522298.Spec : Prop :=
  ∀ n, P16326133090784522298.a n = A376724 n

end A376724

/-!
# A376725: Expansion of 1/((1 - x^4 - x^5)^2 - 4*x^9).

The programs for A376725, the canonical program `A376725.P2095754253927617781` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376725 has offset 0).

The definition of A376725 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x^4-2x^5+x^8-2x^9+x^10))` (program `A376725.P2095754253927617781`, by `A376725.P2095754253927617781.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376725.P3817072403045286939

`2*a(n-4)+2*a(n-5)-a(n-8)+2*a(n-9)-a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=2, a(5)=2, a(6)=0, a(7)=0, a(8)=3, a(9)=10`
-/

namespace A376725.P3817072403045286939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 2, 2, 0, 0, 3, 10] fun n a =>
  2 * a (n - 4) + 2 * a (n - 5) - a (n - 8) + 2 * a (n - 9) - a (n - 10)

end

end A376725.P3817072403045286939

namespace A376725

/-- `2*a(n-4)+2*a(n-5)-a(n-8)+2*a(n-9)-a(n-10)` -/
def P3817072403045286939.Spec : Prop :=
  ∀ n, P3817072403045286939.a n = A376725 n

end A376725

/-! ## A376725.P2095754253927617781

`ogf(1/(1-2x^4-2x^5+x^8-2x^9+x^10))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A376725

/-- `ogf(1/(1-2x^4-2x^5+x^8-2x^9+x^10))` -/
def P2095754253927617781.Spec : Prop :=
  ∀ n, P2095754253927617781.a n = A376725 n

theorem P2095754253927617781.correct : P2095754253927617781.Spec := by
  intro n
  simp only [A376725]

end A376725

/-!
# A376726: Expansion of (1 + x^2 - x^3)/((1 + x^2 - x^3)^2 - 4*x^2).

The programs for A376726, the canonical program `A376726.P4018528814134552364` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376726 has offset 0).

The definition of A376726 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2-x^3)/(1-2x^2-2x^3+x^4-2x^5+x^6))` (program `A376726.P4018528814134552364`, by `A376726.P4018528814134552364.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376726.P4018528814134552364

`ogf((1+x^2-x^3)/(1-2x^2-2x^3+x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A376726

/-- `ogf((1+x^2-x^3)/(1-2x^2-2x^3+x^4-2x^5+x^6))` -/
def P4018528814134552364.Spec : Prop :=
  ∀ n, P4018528814134552364.a n = A376726 n

theorem P4018528814134552364.correct : P4018528814134552364.Spec := by
  intro n
  simp only [A376726]

end A376726

/-! ## A376726.P6672926459021246168

`2*a(n-2)+2*a(n-3)-a(n-4)+2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=1, a(4)=5, a(5)=10`
-/

namespace A376726.P6672926459021246168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3, 1, 5, 10] fun n a =>
  2 * a (n - 2) + 2 * a (n - 3) - a (n - 4) + 2 * a (n - 5) - a (n - 6)

end

end A376726.P6672926459021246168

namespace A376726

/-- `2*a(n-2)+2*a(n-3)-a(n-4)+2*a(n-5)-a(n-6)` -/
def P6672926459021246168.Spec : Prop :=
  ∀ n, P6672926459021246168.a n = A376726 n

end A376726

/-! ## A376726.P15271158491689815094

`A376723(n)+A376723(n)-A376787(n)`
-/

namespace A376726.P15271158491689815094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376723 n + (A376723 n - A376787 n)

end

end A376726.P15271158491689815094

namespace A376726

/-- `A376723(n)+A376723(n)-A376787(n)` -/
def P15271158491689815094.Spec : Prop :=
  ∀ n, P15271158491689815094.a n = A376726 n

end A376726

/-! ## A376726.P2865786646103005124

`A376787(n+1)+A376729(n)-A376729(n+1)`
-/

namespace A376726.P2865786646103005124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376787 (n + 1) + (A376729 n - A376729 (n + 1))

end

end A376726.P2865786646103005124

namespace A376726

/-- `A376787(n+1)+A376729(n)-A376729(n+1)` -/
def P2865786646103005124.Spec : Prop :=
  ∀ n, P2865786646103005124.a n = A376726 n

end A376726

/-! ## A376726.P1720335215931881277

`2*A376723(n)-A376787(n)`
-/

namespace A376726.P1720335215931881277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A376723 n - A376787 n

end

end A376726.P1720335215931881277

namespace A376726

/-- `2*A376723(n)-A376787(n)` -/
def P1720335215931881277.Spec : Prop :=
  ∀ n, P1720335215931881277.a n = A376726 n

end A376726

/-!
# A376727: Expansion of (1 + x^3 - x^4)/((1 + x^3 - x^4)^2 - 4*x^3).

The programs for A376727, the canonical program `A376727.P6760320787694754328` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376727 has offset 0).

The definition of A376727 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^3-x^4)/(1-2x^3-2x^4+x^6-2x^7+x^8))` (program `A376727.P6760320787694754328`, by `A376727.P6760320787694754328.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376727.P6760320787694754328

`ogf((1+x^3-x^4)/(1-2x^3-2x^4+x^6-2x^7+x^8))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A376727

/-- `ogf((1+x^3-x^4)/(1-2x^3-2x^4+x^6-2x^7+x^8))` -/
def P6760320787694754328.Spec : Prop :=
  ∀ n, P6760320787694754328.a n = A376727 n

theorem P6760320787694754328.correct : P6760320787694754328.Spec := by
  intro n
  simp only [A376727]

end A376727

/-! ## A376727.P3739392189058805794

`2*a(n-3)+2*a(n-4)-a(n-6)+2*a(n-7)-a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=3, a(4)=1, a(5)=0, a(6)=5, a(7)=10`
-/

namespace A376727.P3739392189058805794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 3, 1, 0, 5, 10] fun n a =>
  2 * a (n - 3) + 2 * a (n - 4) - a (n - 6) + 2 * a (n - 7) - a (n - 8)

end

end A376727.P3739392189058805794

namespace A376727

/-- `2*a(n-3)+2*a(n-4)-a(n-6)+2*a(n-7)-a(n-8)` -/
def P3739392189058805794.Spec : Prop :=
  ∀ n, P3739392189058805794.a n = A376727 n

end A376727

/-! ## A376727.P130644239399787173

`A376724(n)+A376724(n)-A376788(n)`
-/

namespace A376727.P130644239399787173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376724 n + (A376724 n - A376788 n)

end

end A376727.P130644239399787173

namespace A376727

/-- `A376724(n)+A376724(n)-A376788(n)` -/
def P130644239399787173.Spec : Prop :=
  ∀ n, P130644239399787173.a n = A376727 n

end A376727

/-! ## A376727.P5210749460281977014

`A376788(n+1)+A376730(n)-A376730(n+1)`
-/

namespace A376727.P5210749460281977014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376788 (n + 1) + (A376730 n - A376730 (n + 1))

end

end A376727.P5210749460281977014

namespace A376727

/-- `A376788(n+1)+A376730(n)-A376730(n+1)` -/
def P5210749460281977014.Spec : Prop :=
  ∀ n, P5210749460281977014.a n = A376727 n

end A376727

/-! ## A376727.P14931404772448613528

`2*A376724(n)-A376788(n)`
-/

namespace A376727.P14931404772448613528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A376724 n - A376788 n

end

end A376727.P14931404772448613528

namespace A376727

/-- `2*A376724(n)-A376788(n)` -/
def P14931404772448613528.Spec : Prop :=
  ∀ n, P14931404772448613528.a n = A376727 n

end A376727

/-!
# A376728: Expansion of (1 + x^4 - x^5)/((1 + x^4 - x^5)^2 - 4*x^4).

The programs for A376728, the canonical program `A376728.P7780390988657716988` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376728 has offset 0).

The definition of A376728 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^4-x^5)/(1-2x^4-2x^5+x^8-2x^9+x^10))` (program `A376728.P7780390988657716988`, by `A376728.P7780390988657716988.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376728.P9011910375867807205

`2*a(n-4)+2*a(n-5)-a(n-8)+2*a(n-9)-a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=3, a(5)=1, a(6)=0, a(7)=0, a(8)=5, a(9)=10`
-/

namespace A376728.P9011910375867807205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 3, 1, 0, 0, 5, 10] fun n a =>
  2 * a (n - 4) + 2 * a (n - 5) - a (n - 8) + 2 * a (n - 9) - a (n - 10)

end

end A376728.P9011910375867807205

namespace A376728

/-- `2*a(n-4)+2*a(n-5)-a(n-8)+2*a(n-9)-a(n-10)` -/
def P9011910375867807205.Spec : Prop :=
  ∀ n, P9011910375867807205.a n = A376728 n

end A376728

/-! ## A376728.P7780390988657716988

`ogf((1+x^4-x^5)/(1-2x^4-2x^5+x^8-2x^9+x^10))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A376728

/-- `ogf((1+x^4-x^5)/(1-2x^4-2x^5+x^8-2x^9+x^10))` -/
def P7780390988657716988.Spec : Prop :=
  ∀ n, P7780390988657716988.a n = A376728 n

theorem P7780390988657716988.correct : P7780390988657716988.Spec := by
  intro n
  simp only [A376728]

end A376728

/-! ## A376728.P1631338149210672039

`C(A293234(A000079(n+1)), A177154(n))`
-/

namespace A376728.P1631338149210672039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A293234 (A000079 (n + 1)).toNat).toNat (A177154 n).toNat

end

end A376728.P1631338149210672039

namespace A376728

/-- `C(A293234(A000079(n+1)), A177154(n))` -/
def P1631338149210672039.Spec : Prop :=
  ∀ n, (P1631338149210672039.a n : ℤ) = A376728 n

end A376728

/-!
# A376729: Expansion of (1 - x^2 - x^3)/((1 - x^2 - x^3)^2 - 4*x^5).

The programs for A376729, the canonical program `A376729.P8504693641458903285` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376729 has offset 0).

The definition of A376729 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2-x^3)/(1-2x^2-2x^3+x^4-2x^5+x^6))` (program `A376729.P8504693641458903285`, by `A376729.P8504693641458903285.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376729.P8504693641458903285

`ogf((1-x^2-x^3)/(1-2x^2-2x^3+x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A376729

/-- `ogf((1-x^2-x^3)/(1-2x^2-2x^3+x^4-2x^5+x^6))` -/
def P8504693641458903285.Spec : Prop :=
  ∀ n, P8504693641458903285.a n = A376729 n

theorem P8504693641458903285.correct : P8504693641458903285.Spec := by
  intro n
  simp only [A376729]

end A376729

/-! ## A376729.P3124696091938369878

`2*a(n-2)+2*a(n-3)-a(n-4)+2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=6`
-/

namespace A376729.P3124696091938369878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1, 1, 6] fun n a =>
  2 * a (n - 2) + 2 * a (n - 3) - a (n - 4) + 2 * a (n - 5) - a (n - 6)

end

end A376729.P3124696091938369878

namespace A376729

/-- `2*a(n-2)+2*a(n-3)-a(n-4)+2*a(n-5)-a(n-6)` -/
def P3124696091938369878.Spec : Prop :=
  ∀ n, P3124696091938369878.a n = A376729 n

end A376729

/-!
# A376730: Expansion of (1 - x^3 - x^4)/((1 - x^3 - x^4)^2 - 4*x^7).

The programs for A376730, the canonical program `A376730.P6586415165842173113` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376730 has offset 0).

The definition of A376730 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^3-x^4)/(1-2x^3-2x^4+x^6-2x^7+x^8))` (program `A376730.P6586415165842173113`, by `A376730.P6586415165842173113.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376730.P6586415165842173113

`ogf((1-x^3-x^4)/(1-2x^3-2x^4+x^6-2x^7+x^8))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A376730

/-- `ogf((1-x^3-x^4)/(1-2x^3-2x^4+x^6-2x^7+x^8))` -/
def P6586415165842173113.Spec : Prop :=
  ∀ n, P6586415165842173113.a n = A376730 n

theorem P6586415165842173113.correct : P6586415165842173113.Spec := by
  intro n
  simp only [A376730]

end A376730

/-! ## A376730.P17170916689160389311

`2*a(n-3)+2*a(n-4)-a(n-6)+2*a(n-7)-a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=0, a(6)=1, a(7)=6`
-/

namespace A376730.P17170916689160389311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 1, 0, 1, 6] fun n a =>
  2 * a (n - 3) + 2 * a (n - 4) - a (n - 6) + 2 * a (n - 7) - a (n - 8)

end

end A376730.P17170916689160389311

namespace A376730

/-- `2*a(n-3)+2*a(n-4)-a(n-6)+2*a(n-7)-a(n-8)` -/
def P17170916689160389311.Spec : Prop :=
  ∀ n, P17170916689160389311.a n = A376730 n

end A376730

/-!
# A376731: Expansion of (1 - x^4 - x^5)/((1 - x^4 - x^5)^2 - 4*x^9).

The programs for A376731, the canonical program `A376731.P11736741856813000298` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376731 has offset 0).

The definition of A376731 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^4-x^5)/(1-2x^4-2x^5+x^8-2x^9+x^10))` (program `A376731.P11736741856813000298`, by `A376731.P11736741856813000298.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376731.P10000612533414797076

`2*a(n-4)+2*a(n-5)-a(n-8)+2*a(n-9)-a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1, a(6)=0, a(7)=0, a(8)=1, a(9)=6`
-/

namespace A376731.P10000612533414797076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 1, 1, 0, 0, 1, 6] fun n a =>
  2 * a (n - 4) + 2 * a (n - 5) - a (n - 8) + 2 * a (n - 9) - a (n - 10)

end

end A376731.P10000612533414797076

namespace A376731

/-- `2*a(n-4)+2*a(n-5)-a(n-8)+2*a(n-9)-a(n-10)` -/
def P10000612533414797076.Spec : Prop :=
  ∀ n, P10000612533414797076.a n = A376731 n

end A376731

/-! ## A376731.P11736741856813000298

`ogf((1-x^4-x^5)/(1-2x^4-2x^5+x^8-2x^9+x^10))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A376731

/-- `ogf((1-x^4-x^5)/(1-2x^4-2x^5+x^8-2x^9+x^10))` -/
def P11736741856813000298.Spec : Prop :=
  ∀ n, P11736741856813000298.a n = A376731 n

theorem P11736741856813000298.correct : P11736741856813000298.Spec := by
  intro n
  simp only [A376731]

end A376731

/-! ## A376731.P1173198906467735058

`A000384(A017827(n)^A086867(n+1))`
-/

namespace A376731.P1173198906467735058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (SequenceMachineLib.roundAway ((A017827 n : ℚ) ^ (A086867 (n + 1) : ℤ))).toNat

end

end A376731.P1173198906467735058

namespace A376731

/-- `A000384(A017827(n)^A086867(n+1))` -/
def P1173198906467735058.Spec : Prop :=
  ∀ n, P1173198906467735058.a n = A376731 n

end A376731

/-! ## A376731.P4458409420903717263

`A000384(A017827(n)%A070766(n+5))`
-/

namespace A376731.P4458409420903717263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (Int.tmod (A017827 n) (A070766 (n + 5))).toNat

end

end A376731.P4458409420903717263

namespace A376731

/-- `A000384(A017827(n)%A070766(n+5))` -/
def P4458409420903717263.Spec : Prop :=
  ∀ n, P4458409420903717263.a n = A376731 n

end A376731

/-! ## A376731.P12386417241958465611

`A000384(A017827(n))%A080393(n+5)`
-/

namespace A376731.P12386417241958465611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000384 (A017827 n).toNat) (A080393 (n + 5))

end

end A376731.P12386417241958465611

namespace A376731

/-- `A000384(A017827(n))%A080393(n+5)` -/
def P12386417241958465611.Spec : Prop :=
  ∀ n, P12386417241958465611.a n = A376731 n

end A376731

/-!
# A376734: Numbers k such that 2*k-1 and 2*k+1 are products of exactly three distinct odd primes (A046389).

The programs for A376734, the canonical program `A376734.P16205018272451621134` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376734 has offset 1).

The definition of A376734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376734.P16205018272451621134

`∩[A234099(n+1), A234102(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A376734

/-- `∩[A234099(n+1), A234102(n+1)]` -/
def P16205018272451621134.Spec : Prop :=
  ∀ n, (P16205018272451621134.a n : ℤ) = A376734 (n + 1)

theorem P16205018272451621134.correct : P16205018272451621134.Spec := by
  intro n
  simp only [A376734, Nat.add_sub_cancel]

end A376734

/-! ## A376734.P925652632607393623

`∩[A234102(n+1)-1, A234102(n+2)]`
-/

namespace A376734.P925652632607393623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376734.P925652632607393623

namespace A376734

/-- `∩[A234102(n+1)-1, A234102(n+2)]` -/
def P925652632607393623.Spec : Prop :=
  ∀ n, (P925652632607393623.a n : ℤ) = A376734 (n + 1)

end A376734

/-! ## A376734.P15833889661604499807

`∩[A234099(n+1)+1, A234099(n+4)]`
-/

namespace A376734.P15833889661604499807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376734.P15833889661604499807

namespace A376734

/-- `∩[A234099(n+1)+1, A234099(n+4)]` -/
def P15833889661604499807.Spec : Prop :=
  ∀ n, (P15833889661604499807.a n : ℤ) = A376734 (n + 1)

end A376734

/-! ## A376734.P7058373320532646709

`∩[A234102(n+1), A023443(A234102(n+2))]`
-/

namespace A376734.P7058373320532646709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A234102 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376734.P7058373320532646709

namespace A376734

/-- `∩[A234102(n+1), A023443(A234102(n+2))]` -/
def P7058373320532646709.Spec : Prop :=
  ∀ n, (P7058373320532646709.a n : ℤ) = A376734 (n + 1)

end A376734

/-! ## A376734.P5845211945397369538

`∩[A001057(A046389(n+1)), A234099(n+1)]`
-/

namespace A376734.P5845211945397369538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A046389 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376734.P5845211945397369538

namespace A376734

/-- `∩[A001057(A046389(n+1)), A234099(n+1)]` -/
def P5845211945397369538.Spec : Prop :=
  ∀ n, (P5845211945397369538.a n : ℤ) = A376734 (n + 1)

end A376734

/-!
# A376736: a(n) is the numerator of the expected number of random moves of a chess knight to reach a position outside an nXn chessboard, starting in one of the corners.

The programs for A376736, there is no canonical definition to state claims against.
-/

/-! ## A376736.P10210517322078260751

`A045880(A003418(n)²)`
-/

namespace A376736.P10210517322078260751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045880 (A003418 n ^ 2).toNat

end

end A376736.P10210517322078260751

/-!
# A376737: a(n) is the denominator corresponding to A376736(n).

The programs for A376737, there is no canonical definition to state claims against.
-/

/-! ## A376737.P7250287432320706444

`A318719(17*a(n-2))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A376737.P7250287432320706444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A318719 (17 * a (n - 2)).toNat

end

end A376737.P7250287432320706444

/-!
# A376738: Array read by ascending antidiagonals: T(n,k) is the k-th number which is the product of n (possibly non-distinct) primes having the same number of decimal digits.

The programs for A376738, there is no canonical definition to state claims against.
-/

/-! ## A376738.P1958230391404719986

`A078840(A038722(n+1)%A104023(n+1))`
-/

namespace A376738.P1958230391404719986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078840 (Int.tmod (A038722 (n + 1)) (A104023 (n + 1))).toNat

end

end A376738.P1958230391404719986

/-! ## A376738.P9440666545359338208

`A078840(A038722(n+1))%A099885(n+3)`
-/

namespace A376738.P9440666545359338208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078840 (A038722 (n + 1)).toNat) (A099885 (n + 3))

end

end A376738.P9440666545359338208

/-! ## A376738.P1928220340196591653

`A122111(A125624(n+1)%A359890(3*(n+1)))`
-/

namespace A376738.P1928220340196591653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (Int.tmod (A125624 (n + 1)) (A359890 (3 * (n + 1)))).toNat

end

end A376738.P1928220340196591653

/-! ## A376738.P3545323484769137530

`A334434(comp[10*n]%A302346(2*n+3))`
-/

namespace A376738.P3545323484769137530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334434 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A302346 (2 * n + 3))).toNat

end

end A376738.P3545323484769137530

/-! ## A376738.P15015824593910377887

`A333484(A052040(n+1)*A287384(n))`
-/

namespace A376738.P15015824593910377887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333484 (A052040 (n + 1) * A287384 n).toNat

end

end A376738.P15015824593910377887

/-!
# A376740: Numbers that have at least one two-digit prime factor.

The programs for A376740, there is no canonical definition to state claims against.
-/

/-! ## A376740.P17424003593373047600

`A101080(A186719(3*n+4))+A068191(n+1)`
-/

namespace A376740.P17424003593373047600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101080 (A186719 (3 * n + 4)).toNat + A068191 (n + 1)

end

end A376740.P17424003593373047600

/-!
# A376745: Numbers that are not pentagonal pyramidal numbers.

The programs for A376745, the canonical program `A376745.P82785336420844439` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376745 has offset 1).

The definition of A376745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376745.P82785336420844439

`comp[n*∑[n]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A376745

/-- `comp[n*∑[n]]` -/
def P82785336420844439.Spec : Prop :=
  ∀ n, (P82785336420844439.a n : ℤ) = A376745 (n + 1)

theorem P82785336420844439.correct : P82785336420844439.Spec := by
  intro n
  simp only [A376745, Nat.add_sub_cancel]

end A376745

/-! ## A376745.P4191094922610387136

`comp[n*C(n+1, 2)-1]+1`
-/

namespace A376745.P4191094922610387136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.choose (n + 1) 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A376745.P4191094922610387136

namespace A376745

/-- `comp[n*C(n+1, 2)-1]+1` -/
def P4191094922610387136.Spec : Prop :=
  ∀ n, (P4191094922610387136.a n : ℤ) = A376745 (n + 1)

end A376745

/-! ## A376745.P17908361673131146537

`∑[char[(n+3)*∑[n]]]-xor(n, -1)`
-/

namespace A376745.P17908361673131146537
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.xor (n : ℤ) (-1)

end

end A376745.P17908361673131146537

namespace A376745

/-- `∑[char[(n+3)*∑[n]]]-xor(n, -1)` -/
def P17908361673131146537.Spec : Prop :=
  ∀ n, P17908361673131146537.a n = A376745 (n + 1)

end A376745

/-! ## A376745.P15614420050161229531

`lt[char[n*∑[n]], 1]`
-/

namespace A376745.P15614420050161229531
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n

end

end A376745.P15614420050161229531

namespace A376745

/-- `lt[char[n*∑[n]], 1]` -/
def P15614420050161229531.Spec : Prop :=
  ∀ n, (P15614420050161229531.a n : ℤ) = A376745 (n + 1)

end A376745

/-!
# A376746: Semiprimes whose prime factors are the digit reversal of each other.

The programs for A376746, there is no canonical definition to state claims against.
-/

/-! ## A376746.P17654152371174812296

`∩[A046451(n+1), A305231(n+1)]`
-/

namespace A376746.P17654152371174812296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376746.P17654152371174812296

/-! ## A376746.P10758382044379589080

`∩[A046451(n+1), A331221(n+1)]`
-/

namespace A376746.P10758382044379589080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376746.P10758382044379589080

/-! ## A376746.P10224956595592335664

`∩[A046447(n+1), A078972(n+1)]`
-/

namespace A376746.P10224956595592335664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376746.P10224956595592335664

/-! ## A376746.P17974514062108604338

`∩[A046451(n+1), A078972(n+1)]`
-/

namespace A376746.P17974514062108604338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376746.P17974514062108604338

/-! ## A376746.P16259156933651809772

`∩[A078972(n+1), A192137(n+1)]`
-/

namespace A376746.P16259156933651809772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376746.P16259156933651809772

/-!
# A376747: Number of non-isomorphic colorings of a toroidal n X n grid using exactly two swappable colors.

The programs for A376747, there is no canonical definition to state claims against.
-/

/-! ## A376747.P12379669237125319146

`A294791(∑[n+1])`
-/

namespace A376747.P12379669237125319146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294791 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A376747.P12379669237125319146

/-! ## A376747.P16048102679032319866

`record[A294791(comp[∑[n-1]])]`
-/

namespace A376747.P16048102679032319866
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294791 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376747.P16048102679032319866

/-! ## A376747.P9803188598194137263

`record[A010054(n+1)*A294791(n+1)]`
-/

namespace A376747.P9803188598194137263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A294791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376747.P9803188598194137263

/-! ## A376747.P15755120844809877593

`A294791(A000217(n+1))+A026830(n)`
-/

namespace A376747.P15755120844809877593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294791 (A000217 (n + 1)).toNat + A026830 n

end

end A376747.P15755120844809877593

/-!
# A376748: Number of non-isomorphic colorings of a toroidal n X n grid using exactly three swappable colors.

The programs for A376748, there is no canonical definition to state claims against.
-/

/-! ## A376748.P13549125483533152369

`A294792(∑[n+1])`
-/

namespace A376748.P13549125483533152369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294792 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A376748.P13549125483533152369

/-!
# A376749: Number of non-isomorphic colorings of a toroidal n X n grid using exactly four swappable colors.

The programs for A376749, there is no canonical definition to state claims against.
-/

/-! ## A376749.P8312747437075858884

`A294793(∑[n+1])`
-/

namespace A376749.P8312747437075858884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294793 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A376749.P8312747437075858884

/-!
# A376750: Indices n where a run of primes begins in A376198.

The programs for A376750, there is no canonical definition to state claims against.
-/

/-! ## A376750.P11781131504247495670

`A376752(n+1)+1-A376754(n+1)`
-/

namespace A376750.P11781131504247495670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376752 (n + 1) + (1 - A376754 (n + 1))

end

end A376750.P11781131504247495670

/-! ## A376750.P9355555113526884136

`A376199(A376751(n+1))`
-/

namespace A376750.P9355555113526884136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376199 (A376751 (n + 1)).toNat

end

end A376750.P9355555113526884136

/-! ## A376750.P9728393499405760388

`A020725(A376752(n+1)-A376754(n+1))`
-/

namespace A376750.P9728393499405760388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A376752 (n + 1) - A376754 (n + 1)).toNat

end

end A376750.P9728393499405760388

/-! ## A376750.P8705612662033859860

`A020725(∑[A376764(n+1)]-A376754(n+1))`
-/

namespace A376750.P8705612662033859860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j - A376754 (n + 1)).toNat

end

end A376750.P8705612662033859860

/-!
# A376751: Primes that begin a run of primes in A376198.

The programs for A376751, there is no canonical definition to state claims against.
-/

/-! ## A376751.P7074075484763844571

`floor((A376752(n+1)+A151878(n))/2)`
-/

namespace A376751.P7074075484763844571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A376752 (n + 1) + A151878 n : ℚ) / 2⌋

end

end A376751.P7074075484763844571

/-! ## A376751.P1507512712564994141

`A151800(2*a(n-1)+1)` with `a(0)=2, a(1)=5`
-/

namespace A376751.P1507512712564994141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  A151800 (2 * a (n - 1) + 1).toNat

end

end A376751.P1507512712564994141

/-! ## A376751.P4717704534227422745

`A376198(A376750(n+1))`
-/

namespace A376751.P4717704534227422745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376198 (A376750 (n + 1)).toNat

end

end A376751.P4717704534227422745

/-! ## A376751.P18032165671798190558

`A376198(A376752(n+1)+1-A376754(n+1))`
-/

namespace A376751.P18032165671798190558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376198 (A376752 (n + 1) + (1 - A376754 (n + 1))).toNat

end

end A376751.P18032165671798190558

/-! ## A376751.P3036910225964680018

`A020484(a(n-1))` with `a(0)=2, a(1)=5`
-/

namespace A376751.P3036910225964680018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  A020484 (a (n - 1)).toNat

end

end A376751.P3036910225964680018

/-!
# A376752: Indices n where a run of primes ends in A376198.

The programs for A376752, there is no canonical definition to state claims against.
-/

/-! ## A376752.P10410131407524369336

`∑[A376764(n+1)]`
-/

namespace A376752.P10410131407524369336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376752.P10410131407524369336

/-! ## A376752.P891409083934115406

`A376750(n+1)+A376754(n+1)-1`
-/

namespace A376752.P891409083934115406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376750 (n + 1) + (A376754 (n + 1) - 1)

end

end A376752.P891409083934115406

/-! ## A376752.P458604866546936605

`A376750(n+2)-(A376763(n+1)+1)`
-/

namespace A376752.P458604866546936605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376750 (n + 2) - (A376763 (n + 1) + 1)

end

end A376752.P458604866546936605

/-! ## A376752.P9088455530876410353

`A376200(∑[A376754(n+1)])`
-/

namespace A376752.P9088455530876410353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376200 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A376752.P9088455530876410353

/-! ## A376752.P16189360397096939923

`A376199(A376753(n+1))`
-/

namespace A376752.P16189360397096939923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376199 (A376753 (n + 1)).toNat

end

end A376752.P16189360397096939923

/-!
# A376753: Primes that end a run of primes in A376198.

The programs for A376753, there is no canonical definition to state claims against.
-/

/-! ## A376753.P15604351900690843694

`A376198(A376752(n+1))`
-/

namespace A376753.P15604351900690843694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376198 (A376752 (n + 1)).toNat

end

end A376753.P15604351900690843694

/-! ## A376753.P16558525086573292863

`A000040(∑[A376754(n+1)])`
-/

namespace A376753.P16558525086573292863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A376753.P16558525086573292863

/-! ## A376753.P10868392847057292565

`A376198(∑[A376764(n+1)])`
-/

namespace A376753.P10868392847057292565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376198 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A376753.P10868392847057292565

/-!
# A376754: Length of n-th run of primes in A376198.

The programs for A376754, there is no canonical definition to state claims against.
-/

/-! ## A376754.P16151551201480295069

`A376752(n+1)+1-A376750(n+1)`
-/

namespace A376754.P16151551201480295069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376752 (n + 1) + (1 - A376750 (n + 1))

end

end A376754.P16151551201480295069

/-! ## A376754.P9379985208936376503

`Δ[A376750(n+1)]-A376763(n+1)`
-/

namespace A376754.P9379985208936376503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A376763 (n + 1)

end

end A376754.P9379985208936376503

/-! ## A376754.P3758747652070470664

`A376750(n+2)-(A376763(n+1)+A376750(n+1))`
-/

namespace A376754.P3758747652070470664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376750 (n + 2) - (A376763 (n + 1) + A376750 (n + 1))

end

end A376754.P3758747652070470664

/-! ## A376754.P16884453109382702834

`A020725(A376752(n+1)-A376750(n+1))`
-/

namespace A376754.P16884453109382702834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A376752 (n + 1) - A376750 (n + 1)).toNat

end

end A376754.P16884453109382702834

/-! ## A376754.P8692837574424875980

`Δ[A000720(A376751(n+1))]`
-/

namespace A376754.P8692837574424875980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A376751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376754.P8692837574424875980

/-!
# A376755: a(n) = A376202(6*n+1)/6.

The programs for A376755, there is no canonical definition to state claims against.
-/

/-! ## A376755.P5182851560102426293

`A376202(6*(n+1)+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376755.P5182851560102426293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376202 (6 * (n + 1) + 1) : ℚ) / 6

end

end A376755.P5182851560102426293

/-! ## A376755.P13445786589948799562

`A376203(3*n+4)/3`
-/

namespace A376755.P13445786589948799562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376203 (3 * n + 4) : ℚ) / 3

end

end A376755.P13445786589948799562

/-!
# A376757: Number of pairs 0 <= x <= y <= n-1 such that x^3 == y^3 (mod n).

The programs for A376757, there is no canonical definition to state claims against.
-/

/-! ## A376757.P9122784228297670625

`(A087786(n+1)+n+1)/2`
-/

namespace A376757.P9122784228297670625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087786 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A376757.P9122784228297670625

/-! ## A376757.P5431588668853884613

`A001057(A087786(n+1)+n)`
-/

namespace A376757.P5431588668853884613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A087786 (n + 1) + (n : ℤ)).toNat

end

end A376757.P5431588668853884613

/-! ## A376757.P17155676274500550507

`A003602(A087786(n+1)+n)`
-/

namespace A376757.P17155676274500550507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A087786 (n + 1) + (n : ℤ)).toNat

end

end A376757.P17155676274500550507

/-! ## A376757.P289027044153911705

`A289439(A087786(n+1)+n+1)`
-/

namespace A376757.P289027044153911705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289439 (A087786 (n + 1) + (n + 1 : ℤ)).toNat

end

end A376757.P289027044153911705

/-! ## A376757.P4777975036424028782

`A289441(A289441(2*(n+1))+A087786(n+1))`
-/

namespace A376757.P4777975036424028782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (A289441 (2 * (n + 1)) + A087786 (n + 1)).toNat

end

end A376757.P4777975036424028782

/-!
# A376759: Number of composite numbers c with n < c <= 2*n.

The programs for A376759, the canonical program `A376759.P6507737170924248319` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376759 has offset 1).

The definition of A376759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376759.P6507737170924248319

`A000720(n+1)-A000720(2*(n+1))+n+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A376759

/-- `A000720(n+1)-A000720(2*(n+1))+n+1` -/
def P6507737170924248319.Spec : Prop :=
  ∀ n, P6507737170924248319.a n = A376759 (n + 1)

theorem P6507737170924248319.correct : P6507737170924248319.Spec := by
  intro n
  simp only [A376759, Nat.add_sub_cancel]

end A376759

/-! ## A376759.P10613587427278733861

`1-A108954(n+1)+n`
-/

namespace A376759.P10613587427278733861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A108954 (n + 1) + (n : ℤ)

end

end A376759.P10613587427278733861

namespace A376759

/-- `1-A108954(n+1)+n` -/
def P10613587427278733861.Spec : Prop :=
  ∀ n, P10613587427278733861.a n = A376759 (n + 1)

theorem P10613587427278733861.correct : P10613587427278733861.Spec := by
  intro n
  simp only [A376759, Nat.add_sub_cancel, A376759.P10613587427278733861.a, A376759.P6507737170924248319.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A108954, A108954.P13763132661793771575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A376759

/-! ## A376759.P10894823004676450720

`1-A056171(2*(n+1))+n`
-/

namespace A376759.P10894823004676450720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A056171 (2 * (n + 1)) + (n : ℤ)

end

end A376759.P10894823004676450720

namespace A376759

/-- `1-A056171(2*(n+1))+n` -/
def P10894823004676450720.Spec : Prop :=
  ∀ n, P10894823004676450720.a n = A376759 (n + 1)

end A376759

/-! ## A376759.P11967866361135459826

`A307912(n+1)+A057427(n)`
-/

namespace A376759.P11967866361135459826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307912 (n + 1) + A057427 n

end

end A376759.P11967866361135459826

namespace A376759

/-- `A307912(n+1)+A057427(n)` -/
def P11967866361135459826.Spec : Prop :=
  ∀ n, P11967866361135459826.a n = A376759 (n + 1)

end A376759

/-! ## A376759.P9414613816952827796

`A307912(n+1)-A057428(n)`
-/

namespace A376759.P9414613816952827796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307912 (n + 1) - A057428 n

end

end A376759.P9414613816952827796

namespace A376759

/-- `A307912(n+1)-A057428(n)` -/
def P9414613816952827796.Spec : Prop :=
  ∀ n, P9414613816952827796.a n = A376759 (n + 1)

end A376759

/-! ## A376759.P15097747175818777432

`A062298(n+1)+A060208(n+1)`
-/

namespace A376759.P15097747175818777432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) + A060208 (n + 1)

end

end A376759.P15097747175818777432

namespace A376759

/-- `A062298(n+1)+A060208(n+1)` -/
def P15097747175818777432.Spec : Prop :=
  ∀ n, P15097747175818777432.a n = A376759 (n + 1)

theorem P15097747175818777432.correct : P15097747175818777432.Spec := by
  intro n
  simp only [A376759, Nat.add_sub_cancel, A376759.P15097747175818777432.a, A376759.P6507737170924248319.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A060208, A060208.P7183975736576041079.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A376759

/-! ## A376759.P10484834963358883081

`A077150(n+1)+A051953(n+1)`
-/

namespace A376759.P10484834963358883081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077150 (n + 1) + A051953 (n + 1)

end

end A376759.P10484834963358883081

namespace A376759

/-- `A077150(n+1)+A051953(n+1)` -/
def P10484834963358883081.Spec : Prop :=
  ∀ n, P10484834963358883081.a n = A376759 (n + 1)

end A376759

/-! ## A376759.P15600383288361085437

`A210469(n+1)+A000720(n+1)`
-/

namespace A376759.P15600383288361085437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (n + 1) + A000720 (n + 1)

end

end A376759.P15600383288361085437

namespace A376759

/-- `A210469(n+1)+A000720(n+1)` -/
def P15600383288361085437.Spec : Prop :=
  ∀ n, P15600383288361085437.a n = A376759 (n + 1)

end A376759

/-! ## A376759.P5046558429086912975

`A307989(n+1)+A010051(n+1)`
-/

namespace A376759.P5046558429086912975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307989 (n + 1) + A010051 (n + 1)

end

end A376759.P5046558429086912975

namespace A376759

/-- `A307989(n+1)+A010051(n+1)` -/
def P5046558429086912975.Spec : Prop :=
  ∀ n, P5046558429086912975.a n = A376759 (n + 1)

end A376759

/-! ## A376759.P1267594436939488005

`A014683(n+1)-A035250(n+1)`
-/

namespace A376759.P1267594436939488005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014683 (n + 1) - A035250 (n + 1)

end

end A376759.P1267594436939488005

namespace A376759

/-- `A014683(n+1)-A035250(n+1)` -/
def P1267594436939488005.Spec : Prop :=
  ∀ n, P1267594436939488005.a n = A376759 (n + 1)

end A376759

/-! ## A376759.P9489038228862894016

`A065896(n+1)-A065855(n+1)`
-/

namespace A376759.P9489038228862894016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (n + 1) - A065855 (n + 1)

end

end A376759.P9489038228862894016

namespace A376759

/-- `A065896(n+1)-A065855(n+1)` -/
def P9489038228862894016.Spec : Prop :=
  ∀ n, P9489038228862894016.a n = A376759 (n + 1)

end A376759

/-! ## A376759.P3023950903422995494

`A075084(n+1)-A066247(n+1)`
-/

namespace A376759.P3023950903422995494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075084 (n + 1) - A066247 (n + 1)

end

end A376759.P3023950903422995494

namespace A376759

/-- `A075084(n+1)-A066247(n+1)` -/
def P3023950903422995494.Spec : Prop :=
  ∀ n, P3023950903422995494.a n = A376759 (n + 1)

end A376759

/-! ## A376759.P9266546042698988693

`A087156(n+1)-A060715(n+1)`
-/

namespace A376759.P9266546042698988693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) - A060715 (n + 1)

end

end A376759.P9266546042698988693

namespace A376759

/-- `A087156(n+1)-A060715(n+1)` -/
def P9266546042698988693.Spec : Prop :=
  ∀ n, P9266546042698988693.a n = A376759 (n + 1)

end A376759

/-! ## A376759.P228011808413194996

`n-(A060715(n+1)+A057428(n))`
-/

namespace A376759.P228011808413194996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A060715 (n + 1) + A057428 n)

end

end A376759.P228011808413194996

namespace A376759

/-- `n-(A060715(n+1)+A057428(n))` -/
def P228011808413194996.Spec : Prop :=
  ∀ n, P228011808413194996.a n = A376759 (n + 1)

end A376759

/-! ## A376759.P9242156254551373172

`A057427(n)-A060715(n+1)+n`
-/

namespace A376759.P9242156254551373172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A060715 (n + 1) + (n : ℤ)

end

end A376759.P9242156254551373172

namespace A376759

/-- `A057427(n)-A060715(n+1)+n` -/
def P9242156254551373172.Spec : Prop :=
  ∀ n, P9242156254551373172.a n = A376759 (n + 1)

end A376759

/-! ## A376759.P13142182093062346374

`A307912(n+1)+n/A028310(n)`
-/

namespace A376759.P13142182093062346374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307912 (n + 1) : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A376759.P13142182093062346374

namespace A376759

/-- `A307912(n+1)+n/A028310(n)` -/
def P13142182093062346374.Spec : Prop :=
  ∀ n, P13142182093062346374.a n = (A376759 (n + 1) : ℚ)

end A376759

/-! ## A376759.P12102232502341724734

`A307912(n+1)+A132126(2*n+1)`
-/

namespace A376759.P12102232502341724734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307912 (n + 1) + A132126 (2 * n + 1)

end

end A376759.P12102232502341724734

namespace A376759

/-- `A307912(n+1)+A132126(2*n+1)` -/
def P12102232502341724734.Spec : Prop :=
  ∀ n, P12102232502341724734.a n = A376759 (n + 1)

end A376759

/-! ## A376759.P7900899593375679082

`A065855(2*(n+1))-A065855(n+1)`
-/

namespace A376759.P7900899593375679082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (2 * (n + 1)) - A065855 (n + 1)

end

end A376759.P7900899593375679082

namespace A376759

/-- `A065855(2*(n+1))-A065855(n+1)` -/
def P7900899593375679082.Spec : Prop :=
  ∀ n, P7900899593375679082.a n = A376759 (n + 1)

end A376759

/-! ## A376759.P15775629089037728726

`A027424(n+1)-(A375109(n+1)+n)`
-/

namespace A376759.P15775629089037728726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) - (A375109 (n + 1) + (n : ℤ))

end

end A376759.P15775629089037728726

namespace A376759

/-- `A027424(n+1)-(A375109(n+1)+n)` -/
def P15775629089037728726.Spec : Prop :=
  ∀ n, P15775629089037728726.a n = A376759 (n + 1)

end A376759

/-! ## A376759.P16771542316008606345

`n-A077463(A060756(A060715(n+1)))`
-/

namespace A376759.P16771542316008606345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A077463 (A060756 (A060715 (n + 1)).toNat).toNat

end

end A376759.P16771542316008606345

namespace A376759

/-- `n-A077463(A060756(A060715(n+1)))` -/
def P16771542316008606345.Spec : Prop :=
  ∀ n, P16771542316008606345.a n = A376759 (n + 1)

end A376759

/-!
# A376760: Let c(n) = A002808(n) denote the n-th composite number; a(n) = number of composite numbers c with c(n) <= c <= 2*c(n).

The programs for A376760, the canonical program `A376760.P3377594604691721728` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376760 has offset 1).

The definition of A376760 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A376760.P3377594604691721728

`2*A002808(n+1)-A000720(2*A002808(n+1))-(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A376760

/-- `2*A002808(n+1)-A000720(2*A002808(n+1))-(n+1)` -/
def P3377594604691721728.Spec : Prop :=
  ∀ n, P3377594604691721728.a n = A376760 (n + 1)

theorem P3377594604691721728.correct : P3377594604691721728.Spec := by
  intro n
  simp only [A376760, Nat.add_sub_cancel]

end A376760

/-! ## A376760.P2099925076780782566

`A075084(A002808(n+1))`
-/

namespace A376760.P2099925076780782566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075084 (A002808 (n + 1)).toNat

end

end A376760.P2099925076780782566

namespace A376760

/-- `A075084(A002808(n+1))` -/
def P2099925076780782566.Spec : Prop :=
  ∀ n, P2099925076780782566.a n = A376760 (n + 1)

end A376760

/-! ## A376760.P3494038782166496040

`A075084(A018252(n+2))`
-/

namespace A376760.P3494038782166496040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075084 (A018252 (n + 2)).toNat

end

end A376760.P3494038782166496040

namespace A376760

/-- `A075084(A018252(n+2))` -/
def P3494038782166496040.Spec : Prop :=
  ∀ n, P3494038782166496040.a n = A376760 (n + 1)

end A376760

/-! ## A376760.P11774145904099125419

`A079696(n+1)-A376761(n+1)`
-/

namespace A376760.P11774145904099125419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1) - A376761 (n + 1)

end

end A376760.P11774145904099125419

namespace A376760

/-- `A079696(n+1)-A376761(n+1)` -/
def P11774145904099125419.Spec : Prop :=
  ∀ n, P11774145904099125419.a n = A376760 (n + 1)

theorem P11774145904099125419.correct : P11774145904099125419.Spec := by
  intro n
  simp only [A376760, Nat.add_sub_cancel, A376760.P11774145904099125419.a, A376760.P3377594604691721728.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A079696, A079696.P2621453534582977077.a, A376761, A376761.P13913482911145713931.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A376760

/-! ## A376760.P17458785549410529384

`A075084(record[A137621(n+3)])`
-/

namespace A376760.P17458785549410529384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137621 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075084 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A376760.P17458785549410529384

namespace A376760

/-- `A075084(record[A137621(n+3)])` -/
def P17458785549410529384.Spec : Prop :=
  ∀ n, P17458785549410529384.a n = A376760 (n + 1)

end A376760

/-! ## A376760.P4469728989422999489

`A075084(lt[1, A032741(n)])`
-/

namespace A376760.P4469728989422999489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A376760.P4469728989422999489

namespace A376760

/-- `A075084(lt[1, A032741(n)])` -/
def P4469728989422999489.Spec : Prop :=
  ∀ n, P4469728989422999489.a n = A376760 (n + 1)

end A376760

/-! ## A376760.P2525392002517098095

`A376759(A002808(n+1))+A088423(3*n+2)`
-/

namespace A376760.P2525392002517098095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376759 (A002808 (n + 1)).toNat + A088423 (3 * n + 2)

end

end A376760.P2525392002517098095

namespace A376760

/-- `A376759(A002808(n+1))+A088423(3*n+2)` -/
def P2525392002517098095.Spec : Prop :=
  ∀ n, P2525392002517098095.a n = A376760 (n + 1)

end A376760

/-!
# A376761: Number of primes between the n-th composite number c(n) and 2*c(n).

The programs for A376761, the canonical program `A376761.P13913482911145713931` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376761 has offset 1).

The definition of A376761 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A376761.P13913482911145713931

`A000720(2*A002808(n+1))-A002808(n+1)+n+1+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A376761

/-- `A000720(2*A002808(n+1))-A002808(n+1)+n+1+1` -/
def P13913482911145713931.Spec : Prop :=
  ∀ n, P13913482911145713931.a n = A376761 (n + 1)

theorem P13913482911145713931.correct : P13913482911145713931.Spec := by
  intro n
  simp only [A376761, Nat.add_sub_cancel]

end A376761

/-! ## A376761.P8424020303563534854

`A035250(A002808(n+1))`
-/

namespace A376761.P8424020303563534854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (A002808 (n + 1)).toNat

end

end A376761.P8424020303563534854

namespace A376761

/-- `A035250(A002808(n+1))` -/
def P8424020303563534854.Spec : Prop :=
  ∀ n, P8424020303563534854.a n = A376761 (n + 1)

end A376761

/-! ## A376761.P12761180866842732942

`A056171(A282671(n+1))`
-/

namespace A376761.P12761180866842732942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A282671 (n + 1)).toNat

end

end A376761.P12761180866842732942

namespace A376761

/-- `A056171(A282671(n+1))` -/
def P12761180866842732942.Spec : Prop :=
  ∀ n, P12761180866842732942.a n = A376761 (n + 1)

end A376761

/-! ## A376761.P12316958017523800176

`A035250(A018252(n+2))`
-/

namespace A376761.P12316958017523800176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (A018252 (n + 2)).toNat

end

end A376761.P12316958017523800176

namespace A376761

/-- `A035250(A018252(n+2))` -/
def P12316958017523800176.Spec : Prop :=
  ∀ n, P12316958017523800176.a n = A376761 (n + 1)

end A376761

/-! ## A376761.P17775346197125121234

`A079696(n+1)-A376760(n+1)`
-/

namespace A376761.P17775346197125121234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1) - A376760 (n + 1)

end

end A376761.P17775346197125121234

namespace A376761

/-- `A079696(n+1)-A376760(n+1)` -/
def P17775346197125121234.Spec : Prop :=
  ∀ n, P17775346197125121234.a n = A376761 (n + 1)

theorem P17775346197125121234.correct : P17775346197125121234.Spec := by
  intro n
  simp only [A376761, Nat.add_sub_cancel, A376761.P17775346197125121234.a, A376761.P13913482911145713931.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A002808, A002808.P8130888830651501259.f1, A002808.P8130888830651501259.f2, A002808.P8130888830651501259.a, A079696, A079696.P2621453534582977077.a, A376760, A376760.P3377594604691721728.a, A082023, A082023.P820682903743471019.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A376761

/-! ## A376761.P11094853947088271737

`A060715(A002808(2*n+1-n))`
-/

namespace A376761.P11094853947088271737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (A002808 (2 * n + 1 - n)).toNat

end

end A376761.P11094853947088271737

namespace A376761

/-- `A060715(A002808(2*n+1-n))` -/
def P11094853947088271737.Spec : Prop :=
  ∀ n, P11094853947088271737.a n = A376761 (n + 1)

end A376761

/-! ## A376761.P13674052709178488879

`A000720(2*A002808(n+1))-A002808(n+1)+n+2`
-/

namespace A376761.P13674052709178488879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A002808 (n + 1)).toNat - A002808 (n + 1) + (n + 2 : ℤ)

end

end A376761.P13674052709178488879

namespace A376761

/-- `A000720(2*A002808(n+1))-A002808(n+1)+n+2` -/
def P13674052709178488879.Spec : Prop :=
  ∀ n, P13674052709178488879.a n = A376761 (n + 1)

theorem P13674052709178488879.correct : P13674052709178488879.Spec := by
  intro n
  simp only [A376761, Nat.add_sub_cancel, A376761.P13674052709178488879.a, A376761.P13913482911145713931.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A376761

/-! ## A376761.P16638138897422555120

`A056171(A139270(n+2))`
-/

namespace A376761.P16638138897422555120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A139270 (n + 2)).toNat

end

end A376761.P16638138897422555120

namespace A376761

/-- `A056171(A139270(n+2))` -/
def P16638138897422555120.Spec : Prop :=
  ∀ n, P16638138897422555120.a n = A376761 (n + 1)

end A376761

/-! ## A376761.P13642266856931541527

`A108954(A073425(n+1)+n+2)`
-/

namespace A376761.P13642266856931541527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A073425 (n + 1) + (n + 2 : ℤ)).toNat

end

end A376761.P13642266856931541527

namespace A376761

/-- `A108954(A073425(n+1)+n+2)` -/
def P13642266856931541527.Spec : Prop :=
  ∀ n, P13642266856931541527.a n = A376761 (n + 1)

end A376761

/-! ## A376761.P4905164263736982180

`A108954(A161537(n+1)-(n+1))`
-/

namespace A376761.P4905164263736982180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A161537 (n + 1) - (n + 1 : ℤ)).toNat

end

end A376761.P4905164263736982180

namespace A376761

/-- `A108954(A161537(n+1)-(n+1))` -/
def P4905164263736982180.Spec : Prop :=
  ∀ n, P4905164263736982180.a n = A376761 (n + 1)

end A376761

/-! ## A376761.P15604381237195851807

`A108954(A071228(n+1)/(n+1))`
-/

namespace A376761.P15604381237195851807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (SequenceMachineLib.roundAway ((A071228 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A376761.P15604381237195851807

namespace A376761

/-- `A108954(A071228(n+1)/(n+1))` -/
def P15604381237195851807.Spec : Prop :=
  ∀ n, P15604381237195851807.a n = A376761 (n + 1)

end A376761

/-! ## A376761.P15936801272387301617

`A108954(A171511(A002808(n+1))-n)`
-/

namespace A376761.P15936801272387301617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A171511 (A002808 (n + 1)).toNat - (n : ℤ)).toNat

end

end A376761.P15936801272387301617

namespace A376761

/-- `A108954(A171511(A002808(n+1))-n)` -/
def P15936801272387301617.Spec : Prop :=
  ∀ n, P15936801272387301617.a n = A376761 (n + 1)

end A376761

/-! ## A376761.P5162931306988932675

`A108954(A022798(n+1)-A008578(n+1))`
-/

namespace A376761.P5162931306988932675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A022798 (n + 1) - A008578 (n + 1)).toNat

end

end A376761.P5162931306988932675

namespace A376761

/-- `A108954(A022798(n+1)-A008578(n+1))` -/
def P5162931306988932675.Spec : Prop :=
  ∀ n, P5162931306988932675.a n = A376761 (n + 1)

end A376761

/-! ## A376761.P11438435130887780306

`A108954(A079772(n+1)-A056608(n+1))`
-/

namespace A376761.P11438435130887780306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A079772 (n + 1) - A056608 (n + 1)).toNat

end

end A376761.P11438435130887780306

namespace A376761

/-- `A108954(A079772(n+1)-A056608(n+1))` -/
def P11438435130887780306.Spec : Prop :=
  ∀ n, P11438435130887780306.a n = A376761 (n + 1)

end A376761

/-! ## A376761.P16279896780741207726

`A108954(A161843(n+1)-A141468(n+1))`
-/

namespace A376761.P16279896780741207726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A161843 (n + 1) - A141468 (n + 1)).toNat

end

end A376761.P16279896780741207726

namespace A376761

/-- `A108954(A161843(n+1)-A141468(n+1))` -/
def P16279896780741207726.Spec : Prop :=
  ∀ n, P16279896780741207726.a n = A376761 (n + 1)

end A376761

/-! ## A376761.P9074463213502031840

`A108954(A002808(A000290(n+1)/(n+1)))`
-/

namespace A376761.P9074463213502031840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A002808 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A376761.P9074463213502031840

namespace A376761

/-- `A108954(A002808(A000290(n+1)/(n+1)))` -/
def P9074463213502031840.Spec : Prop :=
  ∀ n, P9074463213502031840.a n = A376761 (n + 1)

end A376761

/-! ## A376761.P3519213247537232306

`A108954(A002808(A000720(A000040(n+1))))`
-/

namespace A376761.P3519213247537232306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A002808 (A000720 (A000040 (n + 1)).toNat).toNat).toNat

end

end A376761.P3519213247537232306

namespace A376761

/-- `A108954(A002808(A000720(A000040(n+1))))` -/
def P3519213247537232306.Spec : Prop :=
  ∀ n, P3519213247537232306.a n = A376761 (n + 1)

end A376761

/-! ## A376761.P8751869989647574266

`A108954(A067747(2*(n+1)))`
-/

namespace A376761.P8751869989647574266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A067747 (2 * (n + 1))).toNat

end

end A376761.P8751869989647574266

namespace A376761

/-- `A108954(A067747(2*(n+1)))` -/
def P8751869989647574266.Spec : Prop :=
  ∀ n, P8751869989647574266.a n = A376761 (n + 1)

end A376761

/-! ## A376761.P13388320627153446350

`A108954(A002808(A026239(A026239(n+1))))`
-/

namespace A376761.P13388320627153446350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A002808 (A026239 (A026239 (n + 1)).toNat).toNat).toNat

end

end A376761.P13388320627153446350

namespace A376761

/-- `A108954(A002808(A026239(A026239(n+1))))` -/
def P13388320627153446350.Spec : Prop :=
  ∀ n, P13388320627153446350.a n = A376761 (n + 1)

end A376761

/-! ## A376761.P12615746911370886360

`A108954(A002808(A373290(A373290(n+1))))`
-/

namespace A376761.P12615746911370886360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A002808 (A373290 (A373290 (n + 1)).toNat).toNat).toNat

end

end A376761.P12615746911370886360

namespace A376761

/-- `A108954(A002808(A373290(A373290(n+1))))` -/
def P12615746911370886360.Spec : Prop :=
  ∀ n, P12615746911370886360.a n = A376761 (n + 1)

end A376761

/-!
# A376762: Number of composite numbers c in the range prime(n) < c <= 2*prime(n+1).

The programs for A376762, the canonical program `A376762.P14200299004774236761` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376762 has offset 1).

The definition of A376762 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A210497, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A376762.P14200299004774236761

`A210497(n+1)-A020900(n+2)+n+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A376762

/-- `A210497(n+1)-A020900(n+2)+n+1` -/
def P14200299004774236761.Spec : Prop :=
  ∀ n, P14200299004774236761.a n = A376762 (n + 1)

theorem P14200299004774236761.correct : P14200299004774236761.Spec := by
  intro n
  simp only [A376762, Nat.add_sub_cancel]

end A376762

/-! ## A376762.P8361103183650995247

`A246514(n+2)+A001223(n+1)`
-/

namespace A376762.P8361103183650995247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246514 (n + 2) + A001223 (n + 1)

end

end A376762.P8361103183650995247

namespace A376762

/-- `A246514(n+2)+A001223(n+1)` -/
def P8361103183650995247.Spec : Prop :=
  ∀ n, P8361103183650995247.a n = A376762 (n + 1)

theorem P8361103183650995247.correct : P8361103183650995247.Spec := by
  intro n
  simp only [A376762, Nat.add_sub_cancel, A376762.P8361103183650995247.a, A376762.P14200299004774236761.a, A001223, A001223.P5083310856331133973.a, A020900, A020900.P12967914466540950521.a, A210497, A210497.P15561998313545519789.a, A246514, A246514.P17080311736656765169.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001043, A001043.P18269783162673735460.a, A014689, A014689.P3456970834266250440.a, A046933, A046933.P9479947770746769512.a, A062234, A062234.P8592873382335253705.a, A065897, A065897.P15020235255577157710.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A063124, A063124.P9970457058300728251.a, A134591, A134591.P13784663667261059065.a, A331677, A331677.P6402599086706022467.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A376762

/-! ## A376762.P9848913095660404587

`A120632(n+2)-A000040(n+1)`
-/

namespace A376762.P9848913095660404587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120632 (n + 2) - A000040 (n + 1)

end

end A376762.P9848913095660404587

namespace A376762

/-- `A120632(n+2)-A000040(n+1)` -/
def P9848913095660404587.Spec : Prop :=
  ∀ n, P9848913095660404587.a n = A376762 (n + 1)

end A376762

/-! ## A376762.P3803688286377276679

`A120632(n+2)-A008578(n+2)`
-/

namespace A376762.P3803688286377276679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120632 (n + 2) - A008578 (n + 2)

end

end A376762.P3803688286377276679

namespace A376762

/-- `A120632(n+2)-A008578(n+2)` -/
def P3803688286377276679.Spec : Prop :=
  ∀ n, P3803688286377276679.a n = A376762 (n + 1)

end A376762

/-! ## A376762.P8536993426985258014

`A246514(n+2)+Δ[A000040(n+1)]`
-/

namespace A376762.P8536993426985258014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246514 (n + 2) + (f1 (n + 1) - f1 n)

end

end A376762.P8536993426985258014

namespace A376762

/-- `A246514(n+2)+Δ[A000040(n+1)]` -/
def P8536993426985258014.Spec : Prop :=
  ∀ n, P8536993426985258014.a n = A376762 (n + 1)

theorem P8536993426985258014.correct : P8536993426985258014.Spec := by
  intro n
  simp only [A376762, Nat.add_sub_cancel, A376762.P8536993426985258014.f1, A376762.P8536993426985258014.a, A376762.P14200299004774236761.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A020900, A020900.P12967914466540950521.a, A210497, A210497.P15561998313545519789.a, A246514, A246514.P17080311736656765169.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001043, A001043.P18269783162673735460.a, A014689, A014689.P3456970834266250440.a, A062234, A062234.P8592873382335253705.a, A065897, A065897.P15020235255577157710.a, A100484, A100484.P9678625670825099636.a, A006093, A006093.P2906174024863549003.a, A063124, A063124.P9970457058300728251.a, A134591, A134591.P13784663667261059065.a, A331677, A331677.P6402599086706022467.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A376762

/-! ## A376762.P13913158386689031958

`A000040(n+2)+A246514(n+2)-A000040(n+1)`
-/

namespace A376762.P13913158386689031958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + (A246514 (n + 2) - A000040 (n + 1))

end

end A376762.P13913158386689031958

namespace A376762

/-- `A000040(n+2)+A246514(n+2)-A000040(n+1)` -/
def P13913158386689031958.Spec : Prop :=
  ∀ n, P13913158386689031958.a n = A376762 (n + 1)

theorem P13913158386689031958.correct : P13913158386689031958.Spec := by
  intro n
  simp only [A376762, Nat.add_sub_cancel, A376762.P13913158386689031958.a, A376762.P14200299004774236761.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A020900, A020900.P12967914466540950521.a, A210497, A210497.P15561998313545519789.a, A246514, A246514.P17080311736656765169.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001043, A001043.P18269783162673735460.a, A014689, A014689.P3456970834266250440.a, A062234, A062234.P8592873382335253705.a, A065897, A065897.P15020235255577157710.a, A100484, A100484.P9678625670825099636.a, A006093, A006093.P2906174024863549003.a, A063124, A063124.P9970457058300728251.a, A134591, A134591.P13784663667261059065.a, A331677, A331677.P6402599086706022467.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A376762

/-! ## A376762.P12996653712396975305

`A120632(n+2)-record[A006530(n+2)]`
-/

namespace A376762.P12996653712396975305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120632 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376762.P12996653712396975305

namespace A376762

/-- `A120632(n+2)-record[A006530(n+2)]` -/
def P12996653712396975305.Spec : Prop :=
  ∀ n, P12996653712396975305.a n = A376762 (n + 1)

end A376762

/-! ## A376762.P16345701852959983095

`A112988(n+2)-1-A000040(n+1)`
-/

namespace A376762.P16345701852959983095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112988 (n + 2) - 1 - A000040 (n + 1)

end

end A376762.P16345701852959983095

namespace A376762

/-- `A112988(n+2)-1-A000040(n+1)` -/
def P16345701852959983095.Spec : Prop :=
  ∀ n, P16345701852959983095.a n = A376762 (n + 1)

end A376762

/-!
# A376763: Length of n-th run of composite numbers in A376198.

The programs for A376763, there is no canonical definition to state claims against.
-/

/-! ## A376763.P6924296254454590824

`A376764(n+2)-A376754(n+2)`
-/

namespace A376763.P6924296254454590824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376764 (n + 2) - A376754 (n + 2)

end

end A376763.P6924296254454590824

/-! ## A376763.P11863884029036158141

`Δ[A376750(n+1)]-A376754(n+1)`
-/

namespace A376763.P11863884029036158141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A376754 (n + 1)

end

end A376763.P11863884029036158141

/-! ## A376763.P16813038516142811739

`A376750(n+2)-(A376752(n+1)+1)`
-/

namespace A376763.P16813038516142811739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376750 (n + 2) - (A376752 (n + 1) + 1)

end

end A376763.P16813038516142811739

/-! ## A376763.P18170863155338141269

`A376750(n+2)-(A376754(n+1)+A376750(n+1))`
-/

namespace A376763.P18170863155338141269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376750 (n + 2) - (A376754 (n + 1) + A376750 (n + 1))

end

end A376763.P18170863155338141269

/-! ## A376763.P1868282175413172618

`A376752(n+2)-(A376754(n+2)+A376752(n+1))`
-/

namespace A376763.P1868282175413172618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376752 (n + 2) - (A376754 (n + 2) + A376752 (n + 1))

end

end A376763.P1868282175413172618

/-!
# A376764: Length of n-th region in A376198.

The programs for A376764, there is no canonical definition to state claims against.
-/

/-! ## A376764.P16288660762342377010

`A003019(n+3)+record[A060027(3*n)]`
-/

namespace A376764.P16288660762342377010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060027 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003019 (n + 3) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376764.P16288660762342377010

/-! ## A376764.P17868866847826665560

`A175127(A011782(n+2))-∑{d}[n+1, (#%3)%2]`
-/

namespace A376764.P17868866847826665560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175127 (A011782 (n + 2)).toNat - ((∑ d ∈ Nat.divisors (f1 n), d % 3 % 2 : ℕ) : ℤ)

end

end A376764.P17868866847826665560

/-!
# A376765: a(n) = (1/2)*Sum_{k=0..n} n^binomial(n,k).

The programs for A376765, there is no canonical definition to state claims against.
-/

/-! ## A376765.P1226302823408236306

`A004526(A107101(n))+n`
-/

namespace A376765.P1226302823408236306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A107101 n).toNat + (n : ℤ)

end

end A376765.P1226302823408236306

/-!
# A376766: a(n) = 1 + Sum_{k=1..n, j=1..k} binomial(n,k)*binomial(n,j)*|Stirling_1(k,j)|*j!.

The programs for A376766, there is no canonical definition to state claims against.
-/

/-! ## A376766.P462073285571212585

`A350127(2*(n+1)^n)`
-/

namespace A376766.P462073285571212585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350127 (2 * (n + 1) ^ n)

end

end A376766.P462073285571212585

/-!
# A376767: a(1) = 1; thereafter, a(n) = c*a(n-1)^2 + a(n-1), where c=4 if n is even, c=2 if n is odd.

The programs for A376767, there is no canonical definition to state claims against.
-/

/-! ## A376767.P9638648472848013027

`(4/gcd(2, n)*a(n-1)+1)*a(n-1)` with `a(0)=1`
-/

namespace A376767.P9638648472848013027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 / (Nat.gcd 2 n : ℚ) * a (n - 1) + 1) * a (n - 1)

end

end A376767.P9638648472848013027

/-!
# A376768: a(1) = 2; thereafter, a(n) = c*A376767(n-1) + 1, where c=4 if n is even, c=2 if n is odd.

The programs for A376768, there is no canonical definition to state claims against.
-/

/-! ## A376768.P6721245971417852176

`(a(n-2)²-a(n-2))*a(n-1)+1` with `a(0)=2, a(1)=5`
-/

namespace A376768.P6721245971417852176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  (a (n - 2) ^ 2 - a (n - 2)) * a (n - 1) + 1

end

end A376768.P6721245971417852176

/-!
# A376769: a(n) = digitsum of A302656(n).

The programs for A376769, there is no canonical definition to state claims against.
-/

/-! ## A376769.P16452599716228621020

`∑{digits}[A302656(n+1), #]`
-/

namespace A376769.P16452599716228621020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A376769.P16452599716228621020

/-! ## A376769.P13863894684486417792

`A007953(A302656(n+1))`
-/

namespace A376769.P13863894684486417792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A302656 (n + 1)).toNat

end

end A376769.P13863894684486417792

/-!
# A376770: a(n) = digitsum of A376769(n).

The programs for A376770, there is no canonical definition to state claims against.
-/

/-! ## A376770.P3980833648687358379

`∑{digits}[A376769(n+1), #]`
-/

namespace A376770.P3980833648687358379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376769 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A376770.P3980833648687358379

/-! ## A376770.P3273764749029365753

`A007953(A376769(n+1))`
-/

namespace A376770.P3273764749029365753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A376769 (n + 1)).toNat

end

end A376770.P3273764749029365753

/-! ## A376770.P5879573216818933776

`∑{digits}[∑{digits}[A302656(n+1), #], #]`
-/

namespace A376770.P5879573216818933776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302656 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A376770.P5879573216818933776

/-! ## A376770.P13757285385317904574

`A007953(∑{digits}[A302656(n+1), #])`
-/

namespace A376770.P13757285385317904574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A376770.P13757285385317904574

/-!
# A376772: Index where n appears in A302656, or -1 if n does not appear there.

The programs for A376772, there is no canonical definition to state claims against.
-/

/-! ## A376772.P9086835032679227206

`A376773(A077168(n))`
-/

namespace A376772.P9086835032679227206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376773 (A077168 n).toNat

end

end A376772.P9086835032679227206

/-! ## A376772.P9258868517460900227

`A376773(A043319(n+1))`
-/

namespace A376772.P9258868517460900227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376773 (A043319 (n + 1)).toNat

end

end A376772.P9258868517460900227

/-! ## A376772.P8380337382245685546

`A376773(A044916(n+1))`
-/

namespace A376772.P8380337382245685546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376773 (A044916 (n + 1)).toNat

end

end A376772.P8380337382245685546

/-! ## A376772.P11397622232498934248

`A376773(A055646(n+1))`
-/

namespace A376772.P11397622232498934248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376773 (A055646 (n + 1)).toNat

end

end A376772.P11397622232498934248

/-! ## A376772.P11474002563400241949

`A376773(A065672(n+1))`
-/

namespace A376772.P11474002563400241949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376773 (A065672 (n + 1)).toNat

end

end A376772.P11474002563400241949

/-!
# A376773: Records in A376772.

The programs for A376773, there is no canonical definition to state claims against.
-/

/-! ## A376773.P17022151789475467706

`record[A376772(n+1)]`
-/

namespace A376773.P17022151789475467706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376773.P17022151789475467706

/-! ## A376773.P12475519896762208285

`A376772(A376774(n+1))`
-/

namespace A376773.P12475519896762208285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376772 (A376774 (n + 1)).toNat

end

end A376773.P12475519896762208285

/-!
# A376774: Indices of records in A376772.

The programs for A376774, there is no canonical definition to state claims against.
-/

/-! ## A376774.P5625384397341319643

`A302656(A376773(n+1))`
-/

namespace A376774.P5625384397341319643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302656 (A376773 (n + 1)).toNat

end

end A376774.P5625384397341319643

/-! ## A376774.P15000437749385286789

`A302656(record[A376772(n+1)])`
-/

namespace A376774.P15000437749385286789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302656 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A376774.P15000437749385286789

/-!
# A376775: a(n) = digitsum of A376773(n).

The programs for A376775, there is no canonical definition to state claims against.
-/

/-! ## A376775.P2992173774648490474

`∑{digits}[A376773(n+1), #]`
-/

namespace A376775.P2992173774648490474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376773 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A376775.P2992173774648490474

/-! ## A376775.P7944317194681449125

`∑{digits}[record[A376772(n+1)], #]`
-/

namespace A376775.P7944317194681449125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376772 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A376775.P7944317194681449125

/-! ## A376775.P5945483957919459458

`A007953(A376773(n+1))`
-/

namespace A376775.P5945483957919459458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A376773 (n + 1)).toNat

end

end A376775.P5945483957919459458

/-! ## A376775.P846935722572687622

`A007953(record[A376772(n+1)])`
-/

namespace A376775.P846935722572687622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A376775.P846935722572687622

/-! ## A376775.P8601216503590218443

`∑{digits}[A376772(A376774(n+1)), #]`
-/

namespace A376775.P8601216503590218443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376772 (A376774 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A376775.P8601216503590218443

/-!
# A376776: Position of prime(n) in A302656, or -1 if prime(n) does not appear in A302656.

The programs for A376776, there is no canonical definition to state claims against.
-/

/-! ## A376776.P71827684205930730

`A376772(Δ[A007504(n)])`
-/

namespace A376776.P71827684205930730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376772 (f1 (n + 1) - f1 n).toNat

end

end A376776.P71827684205930730

/-! ## A376776.P18244415625495268610

`A376772(A000040(n+1))`
-/

namespace A376776.P18244415625495268610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376772 (A000040 (n + 1)).toNat

end

end A376776.P18244415625495268610

/-! ## A376776.P11363367606334189040

`A376772(A049551(n+1))`
-/

namespace A376776.P11363367606334189040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376772 (A049551 (n + 1)).toNat

end

end A376776.P11363367606334189040

/-! ## A376776.P12306089482291549816

`A376772(A057448(n+1))`
-/

namespace A376776.P12306089482291549816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376772 (A057448 (n + 1)).toNat

end

end A376776.P12306089482291549816

/-! ## A376776.P12011940036324751419

`A376772(A077359(n+1))`
-/

namespace A376776.P12011940036324751419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376772 (A077359 (n + 1)).toNat

end

end A376776.P12011940036324751419

/-!
# A376777: a(n) = Sum_{k=0..n} tan(k*Pi/(1+2*n))^(2*n).

The programs for A376777, there is no canonical definition to state claims against.
-/

/-! ## A376777.P6736418355636895337

`A377657(∑[4*n])`
-/

namespace A376777.P6736418355636895337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377657 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A376777.P6736418355636895337

/-!
# A376778: a(n) = (32*n^4 + 80*n^3 + 40*n^2 - 20*n + 3)*(2*n + 1)*n/15.

The programs for A376778, the canonical program `A376778.P15152202325387785946` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376778 has offset 0).

The definition of A376778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376778.P15152202325387785946

`n*(32*(2*n*(n+3)+5)*n^3-14*n+3)/15`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A376778

/-- `n*(32*(2*n*(n+3)+5)*n^3-14*n+3)/15` -/
def P15152202325387785946.Spec : Prop :=
  ∀ n, P15152202325387785946.a n = (A376778 n : ℚ)

end A376778

/-! ## A376778.P5136028725953365497

`(32*n^4+80*n^3+40*n²-20*n+3)*(2*n+1)*n/15`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376778.P5136028725953365497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((32 * n ^ 4 + 80 * n ^ 3 + 40 * n ^ 2 : ℤ) - (20 * n : ℤ) + 3) * (2 * n + 1 : ℤ) * (n : ℤ) : ℚ) / 15

end

end A376778.P5136028725953365497

namespace A376778

/-- `(32*n^4+80*n^3+40*n²-20*n+3)*(2*n+1)*n/15` -/
def P5136028725953365497.Spec : Prop :=
  ∀ n, P5136028725953365497.a n = (A376778 n : ℚ)

end A376778

/-!
# A376779: The terms of A329447 sorted into increasing order.

The programs for A376779, there is no canonical definition to state claims against.
-/

/-! ## A376779.P13859703443969698286

`eq[1, char[A329447(n)]]`
-/

namespace A376779.P13859703443969698286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329447 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376779.P13859703443969698286

/-! ## A376779.P5836981908696642664

`comp[A000027(comp[A329447(n)])]`
-/

namespace A376779.P5836981908696642664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329447 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376779.P5836981908696642664

/-! ## A376779.P7717922178673090146

`eq[A054054(A004086(n)), A059995(n)]`
-/

namespace A376779.P7717922178673090146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376779.P7717922178673090146

/-! ## A376779.P4648586810588177093

`eq[A261914(A342851(n+1)), A262087(n)]`
-/

namespace A376779.P4648586810588177093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 (A342851 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376779.P4648586810588177093

/-!
# A376780: Triangular table read by rows: T(n,k) is the minimum number of minimal forbidden subgraphs of a graph with n vertices and k edges, n >= 1, 0 <= k <= n*(n-1)/2.

The programs for A376780, there is no canonical definition to state claims against.
-/

/-! ## A376780.P18257452497062784524

`A262750(eq[1, A363943(n+1)])`
-/

namespace A376780.P18257452497062784524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262750 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A376780.P18257452497062784524

/-! ## A376780.P11532299237285936980

`A355532(A352490(n+2))`
-/

namespace A376780.P11532299237285936980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355532 (A352490 (n + 2)).toNat

end

end A376780.P11532299237285936980

/-! ## A376780.P5586034753941923683

`A353929(A353852(n)+A128564(n))`
-/

namespace A376780.P5586034753941923683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353929 (A353852 n + A128564 n).toNat

end

end A376780.P5586034753941923683

/-! ## A376780.P18070787886619535244

`A001221(A176691(n)+A075084(2*(n+2)))`
-/

namespace A376780.P18070787886619535244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A176691 n + A075084 (2 * (n + 2))).toNat

end

end A376780.P18070787886619535244

/-! ## A376780.P1788165646769709938

`A030777(gcd(A096584(2*n+1), A344296(n+1))+1)`
-/

namespace A376780.P1788165646769709938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030777 (Int.gcd (A096584 (2 * n + 1)) (A344296 (n + 1)) + 1)

end

end A376780.P1788165646769709938

/-!
# A376783: Expansion of 1/sqrt((1 - x^2 - x^5)^2 - 4*x^7).

The programs for A376783, there is no canonical definition to state claims against.
-/

/-! ## A376783.P9041950834885006071

`A143619(n+2)^A001142(A353398(n))`
-/

namespace A376783.P9041950834885006071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143619 (n + 2) : ℚ) ^ (A001142 (A353398 n).toNat : ℤ)

end

end A376783.P9041950834885006071

/-! ## A376783.P4485648668153935872

`(A000120(A001333(n))-A173234(n))*A282971(n)`
-/

namespace A376783.P4485648668153935872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000120 (A001333 n).toNat - A173234 n) * A282971 n

end

end A376783.P4485648668153935872

/-! ## A376783.P8634900533072261099

`A282906(n)%A025019(A112493(n))*A282971(n)`
-/

namespace A376783.P8634900533072261099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282906 n) (A025019 (A112493 n).toNat) * A282971 n

end

end A376783.P8634900533072261099

/-! ## A376783.P10862938493403993290

`(A287722(n+1)+A031346(A073452(n+1)))*A282971(n)`
-/

namespace A376783.P10862938493403993290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A287722 (n + 1) + A031346 (A073452 (n + 1)).toNat) * A282971 n

end

end A376783.P10862938493403993290

/-!
# A376784: Expansion of 1/sqrt((1 - x^3 - x^5)^2 - 4*x^8).

The programs for A376784, there is no canonical definition to state claims against.
-/

/-! ## A376784.P11198236478958296822

`A052920(n)^A091221(A074097(n+1))`
-/

namespace A376784.P11198236478958296822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052920 n : ℚ) ^ (A091221 (A074097 (n + 1)).toNat : ℤ)

end

end A376784.P11198236478958296822

/-! ## A376784.P7083090111109330252

`(A052920(n)%A080601(n+1))²`
-/

namespace A376784.P7083090111109330252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052920 n) (A080601 (n + 1)) ^ 2

end

end A376784.P7083090111109330252

/-! ## A376784.P738434802020531086

`A052920(n)²%A112726(n+3)`
-/

namespace A376784.P738434802020531086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052920 n ^ 2) (A112726 (n + 3))

end

end A376784.P738434802020531086

/-! ## A376784.P2810775541594408433

`A052920(n)^A036453(A001970(n))`
-/

namespace A376784.P2810775541594408433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052920 n : ℚ) ^ (A036453 (A001970 n).toNat : ℤ)

end

end A376784.P2810775541594408433

/-! ## A376784.P16066683531924016864

`A052920(n)^A064895(A011782(n))`
-/

namespace A376784.P16066683531924016864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052920 n : ℚ) ^ (A064895 (A011782 n).toNat : ℤ)

end

end A376784.P16066683531924016864

/-!
# A376785: Expansion of (1 + x - x^3)/((1 + x - x^3)^2 - 4*x).

The programs for A376785, the canonical program `A376785.P796211328411199630` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376785 has offset 0).

The definition of A376785 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^3)/(1-2x+x^2-2x^3-2x^4+x^6))` (program `A376785.P796211328411199630`, by `A376785.P796211328411199630.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376785.P796211328411199630

`ogf((1+x-x^3)/(1-2x+x^2-2x^3-2x^4+x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A376785

/-- `ogf((1+x-x^3)/(1-2x+x^2-2x^3-2x^4+x^6))` -/
def P796211328411199630.Spec : Prop :=
  ∀ n, P796211328411199630.a n = A376785 n

theorem P796211328411199630.correct : P796211328411199630.Spec := by
  intro n
  simp only [A376785]

end A376785

/-! ## A376785.P17487670704965843858

`2*a(n-1)-a(n-2)+2*a(n-3)+2*a(n-4)-a(n-6)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=8, a(4)=19, a(5)=46`
-/

namespace A376785.P17487670704965843858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 8, 19, 46] fun n a =>
  2 * a (n - 1) - a (n - 2) + 2 * a (n - 3) + 2 * a (n - 4) - a (n - 6)

end

end A376785.P17487670704965843858

namespace A376785

/-- `2*a(n-1)-a(n-2)+2*a(n-3)+2*a(n-4)-a(n-6)` -/
def P17487670704965843858.Spec : Prop :=
  ∀ n, P17487670704965843858.a n = A376785 n

end A376785

/-! ## A376785.P12899471260837899319

`A392541(2*n)`
-/

namespace A376785.P12899471260837899319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392541 (2 * n)

end

end A376785.P12899471260837899319

namespace A376785

/-- `A392541(2*n)` -/
def P12899471260837899319.Spec : Prop :=
  ∀ n, P12899471260837899319.a n = A376785 n

end A376785

/-! ## A376785.P11117202894289309717

`A375278(n)+A375278(n)-A376717(n)`
-/

namespace A376785.P11117202894289309717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375278 n + (A375278 n - A376717 n)

end

end A376785.P11117202894289309717

namespace A376785

/-- `A375278(n)+A375278(n)-A376717(n)` -/
def P11117202894289309717.Spec : Prop :=
  ∀ n, P11117202894289309717.a n = A376785 n

end A376785

/-! ## A376785.P11356035803391904598

`2*A375278(n)-A376717(n)`
-/

namespace A376785.P11356035803391904598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A375278 n - A376717 n

end

end A376785.P11356035803391904598

namespace A376785

/-- `2*A375278(n)-A376717(n)` -/
def P11356035803391904598.Spec : Prop :=
  ∀ n, P11356035803391904598.a n = A376785 n

end A376785

/-! ## A376785.P3090215224386959693

`A289918(A000027(2*(n+2)))-A289918(Δ[n²])`
-/

namespace A376785.P3090215224386959693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289918 (A000027 (2 * (n + 2))).toNat - A289918 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A376785.P3090215224386959693

namespace A376785

/-- `A289918(A000027(2*(n+2)))-A289918(Δ[n²])` -/
def P3090215224386959693.Spec : Prop :=
  ∀ n, P3090215224386959693.a n = A376785 n

end A376785

/-! ## A376785.P2727451468402952030

`A005689(2*n+7)-A005689(2*(n+3))`
-/

namespace A376785.P2727451468402952030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005689 (2 * n + 7) - A005689 (2 * (n + 3))

end

end A376785.P2727451468402952030

namespace A376785

/-- `A005689(2*n+7)-A005689(2*(n+3))` -/
def P2727451468402952030.Spec : Prop :=
  ∀ n, P2727451468402952030.a n = A376785 n

end A376785

/-!
# A376786: Expansion of (1 + x - x^4)/((1 + x - x^4)^2 - 4*x).

The programs for A376786, the canonical program `A376786.P12441374873738585333` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376786 has offset 0).

The definition of A376786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x-x^4)/(1-2x+x^2-2x^4-2x^5+x^8))` (program `A376786.P12441374873738585333`, by `A376786.P12441374873738585333.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376786.P12441374873738585333

`ogf((1+x-x^4)/(1-2x+x^2-2x^4-2x^5+x^8))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A376786

/-- `ogf((1+x-x^4)/(1-2x+x^2-2x^4-2x^5+x^8))` -/
def P12441374873738585333.Spec : Prop :=
  ∀ n, P12441374873738585333.a n = A376786 n

theorem P12441374873738585333.correct : P12441374873738585333.Spec := by
  intro n
  simp only [A376786]

end A376786

/-! ## A376786.P7729539095759459376

`2*a(n-1)-a(n-2)+2*a(n-4)+2*a(n-5)-a(n-8)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=10, a(5)=21, a(6)=48, a(7)=99`
-/

namespace A376786.P7729539095759459376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5, 7, 10, 21, 48, 99] fun n a =>
  2 * a (n - 1) - a (n - 2) + 2 * a (n - 4) + 2 * a (n - 5) - a (n - 8)

end

end A376786.P7729539095759459376

namespace A376786

/-- `2*a(n-1)-a(n-2)+2*a(n-4)+2*a(n-5)-a(n-8)` -/
def P7729539095759459376.Spec : Prop :=
  ∀ n, P7729539095759459376.a n = A376786 n

end A376786

/-! ## A376786.P3272613717352657880

`A375283(n)+A375283(n)-A376718(n)`
-/

namespace A376786.P3272613717352657880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375283 n + (A375283 n - A376718 n)

end

end A376786.P3272613717352657880

namespace A376786

/-- `A375283(n)+A375283(n)-A376718(n)` -/
def P3272613717352657880.Spec : Prop :=
  ∀ n, P3272613717352657880.a n = A376786 n

end A376786

/-! ## A376786.P7142602391236268933

`2*A375283(n)-A376718(n)`
-/

namespace A376786.P7142602391236268933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A375283 n - A376718 n

end

end A376786.P7142602391236268933

namespace A376786

/-- `2*A375283(n)-A376718(n)` -/
def P7142602391236268933.Spec : Prop :=
  ∀ n, P7142602391236268933.a n = A376786 n

end A376786

/-! ## A376786.P11645852715342422254

`A217838(2*n+1)-A217838(2*n)`
-/

namespace A376786.P11645852715342422254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217838 (2 * n + 1) - A217838 (2 * n)

end

end A376786.P11645852715342422254

namespace A376786

/-- `A217838(2*n+1)-A217838(2*n)` -/
def P11645852715342422254.Spec : Prop :=
  ∀ n, P11645852715342422254.a n = A376786 n

end A376786

/-!
# A376787: Expansion of (1 - x^2 + x^3)/((1 - x^2 + x^3)^2 - 4*x^3).

The programs for A376787, the canonical program `A376787.P2466816987609721850` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376787 has offset 0).

The definition of A376787 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2+x^3)/(1-2x^2-2x^3+x^4-2x^5+x^6))` (program `A376787.P2466816987609721850`, by `A376787.P2466816987609721850.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376787.P2466816987609721850

`ogf((1-x^2+x^3)/(1-2x^2-2x^3+x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A376787

/-- `ogf((1-x^2+x^3)/(1-2x^2-2x^3+x^4-2x^5+x^6))` -/
def P2466816987609721850.Spec : Prop :=
  ∀ n, P2466816987609721850.a n = A376787 n

theorem P2466816987609721850.correct : P2466816987609721850.Spec := by
  intro n
  simp only [A376787]

end A376787

/-! ## A376787.P17487761447693773097

`2*a(n-2)+2*a(n-3)-a(n-4)+2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3, a(4)=1, a(5)=10`
-/

namespace A376787.P17487761447693773097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 3, 1, 10] fun n a =>
  2 * a (n - 2) + 2 * a (n - 3) - a (n - 4) + 2 * a (n - 5) - a (n - 6)

end

end A376787.P17487761447693773097

namespace A376787

/-- `2*a(n-2)+2*a(n-3)-a(n-4)+2*a(n-5)-a(n-6)` -/
def P17487761447693773097.Spec : Prop :=
  ∀ n, P17487761447693773097.a n = A376787 n

end A376787

/-! ## A376787.P16597291124217662440

`A376723(n)+A376723(n)-A376726(n)`
-/

namespace A376787.P16597291124217662440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376723 n + (A376723 n - A376726 n)

end

end A376787.P16597291124217662440

namespace A376787

/-- `A376723(n)+A376723(n)-A376726(n)` -/
def P16597291124217662440.Spec : Prop :=
  ∀ n, P16597291124217662440.a n = A376787 n

end A376787

/-! ## A376787.P3426508347065073661

`2*A376723(n)-A376726(n)`
-/

namespace A376787.P3426508347065073661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A376723 n - A376726 n

end

end A376787.P3426508347065073661

namespace A376787

/-- `2*A376723(n)-A376726(n)` -/
def P3426508347065073661.Spec : Prop :=
  ∀ n, P3426508347065073661.a n = A376787 n

end A376787

/-!
# A376788: Expansion of (1 - x^3 + x^4)/((1 - x^3 + x^4)^2 - 4*x^4).

The programs for A376788, the canonical program `A376788.P11024339075248225075` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376788 has offset 0).

The definition of A376788 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^3+x^4)/(1-2x^3-2x^4+x^6-2x^7+x^8))` (program `A376788.P11024339075248225075`, by `A376788.P11024339075248225075.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A376788.P3039607991771596726

`2*a(n-3)+2*a(n-4)-a(n-6)+2*a(n-7)-a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=3, a(5)=0, a(6)=1, a(7)=10`
-/

namespace A376788.P3039607991771596726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1, 3, 0, 1, 10] fun n a =>
  2 * a (n - 3) + 2 * a (n - 4) - a (n - 6) + 2 * a (n - 7) - a (n - 8)

end

end A376788.P3039607991771596726

namespace A376788

/-- `2*a(n-3)+2*a(n-4)-a(n-6)+2*a(n-7)-a(n-8)` -/
def P3039607991771596726.Spec : Prop :=
  ∀ n, P3039607991771596726.a n = A376788 n

end A376788

/-! ## A376788.P11024339075248225075

`ogf((1-x^3+x^4)/(1-2x^3-2x^4+x^6-2x^7+x^8))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A376788

/-- `ogf((1-x^3+x^4)/(1-2x^3-2x^4+x^6-2x^7+x^8))` -/
def P11024339075248225075.Spec : Prop :=
  ∀ n, P11024339075248225075.a n = A376788 n

theorem P11024339075248225075.correct : P11024339075248225075.Spec := by
  intro n
  simp only [A376788]

end A376788

/-! ## A376788.P16024790898502186577

`A376724(n)+A376724(n)-A376727(n)`
-/

namespace A376788.P16024790898502186577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376724 n + (A376724 n - A376727 n)

end

end A376788.P16024790898502186577

namespace A376788

/-- `A376724(n)+A376724(n)-A376727(n)` -/
def P16024790898502186577.Spec : Prop :=
  ∀ n, P16024790898502186577.a n = A376788 n

end A376788

/-! ## A376788.P58009100179647102

`2*A376724(n)-A376727(n)`
-/

namespace A376788.P58009100179647102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A376724 n - A376727 n

end

end A376788.P58009100179647102

namespace A376788

/-- `2*A376724(n)-A376727(n)` -/
def P58009100179647102.Spec : Prop :=
  ∀ n, P58009100179647102.a n = A376788 n

end A376788

/-!
# A376789: Table read by antidiagonals: T(n,k) is the number of Lyndon words of length k on the alphabet {0,1} whose prefix is the bitwise complement of the binary expansion of n with n >= 1 and k >= 1.

The programs for A376789, there is no canonical definition to state claims against.
-/

/-! ## A376789.P16642786806080592899

`C(A025581(n), A091972(A187829(n+1)))`
-/

namespace A376789.P16642786806080592899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n).toNat (A091972 (A187829 (n + 1)).toNat).toNat

end

end A376789.P16642786806080592899

/-! ## A376789.P10147275120371263214

`A216638(3*n+1)%A383800(A216620(n+2))`
-/

namespace A376789.P10147275120371263214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216638 (3 * n + 1)) (A383800 (A216620 (n + 2)).toNat)

end

end A376789.P10147275120371263214

/-! ## A376789.P3669205474203284158

`A321933(A070175(n))`
-/

namespace A376789.P3669205474203284158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321933 (A070175 n).toNat

end

end A376789.P3669205474203284158

/-! ## A376789.P4663600768450945033

`C(A025581(n), A001222(A002426(n)))`
-/

namespace A376789.P4663600768450945033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n).toNat (A001222 (A002426 n).toNat).toNat

end

end A376789.P4663600768450945033

/-! ## A376789.P12464884581879712182

`C(A025581(n), A321104(A383826(n)))`
-/

namespace A376789.P12464884581879712182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n).toNat (A321104 (A383826 n).toNat).toNat

end

end A376789.P12464884581879712182

/-!
# A376791: Expansion of 1/sqrt((1 - x^3)^2 - 4*x).

The programs for A376791, there is no canonical definition to state claims against.
-/

/-! ## A376791.P18015873177164669278

`A008621(A293606(n)+A026628(n+1))`
-/

namespace A376791.P18015873177164669278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A293606 n + A026628 (n + 1)).toNat

end

end A376791.P18015873177164669278

/-! ## A376791.P17185618326456904575

`A383551(∑[4*n])`
-/

namespace A376791.P17185618326456904575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383551 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A376791.P17185618326456904575

/-!
# A376792: Expansion of 1/sqrt((1 - x^4)^2 - 4*x).

The programs for A376792, there is no canonical definition to state claims against.
-/

/-! ## A376792.P7992156932486528393

`A174221(A360267(n)+A000984(n))`
-/

namespace A376792.P7992156932486528393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174221 (A360267 n + A000984 n).toNat

end

end A376792.P7992156932486528393

/-! ## A376792.P1165061829936209853

`A289435(A360267(n)+A000984(n))`
-/

namespace A376792.P1165061829936209853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (A360267 n + A000984 n).toNat

end

end A376792.P1165061829936209853

/-! ## A376792.P1925662554577804456

`A008620(A162551(n)+A006134(n))`
-/

namespace A376792.P1925662554577804456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A162551 n + A006134 n).toNat

end

end A376792.P1925662554577804456

/-!
# A376797: Number of free rooted (or pointed) polycubes with n cells.

The programs for A376797, there is no canonical definition to state claims against.
-/

/-! ## A376797.P8629905144835993194

`A062490(A320175(n+1))`
-/

namespace A376797.P8629905144835993194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062490 (A320175 (n + 1)).toNat

end

end A376797.P8629905144835993194

/-! ## A376797.P12445593783470531313

`A006165(A001147(n)+A000337(n))`
-/

namespace A376797.P12445593783470531313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (A001147 n + A000337 n).toNat

end

end A376797.P12445593783470531313

/-!
# A376798: Least number of inequivalent cells in a polycube with n cells.

The programs for A376798, there is no canonical definition to state claims against.
-/

/-! ## A376798.P9887327603488147240

`∑{digits}[n+2, gcd(2, #^n)]`
-/

namespace A376798.P9887327603488147240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd 2 (x ^ n)).sum

end

end A376798.P9887327603488147240

/-! ## A376798.P2552600362513861048

`∑[char[n^3]]-n%2`
-/

namespace A376798.P2552600362513861048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n % 2 : ℕ) : ℤ)

end

end A376798.P2552600362513861048

/-! ## A376798.P8278808082947021619

`char[2*n]+round(atan(2*n))`
-/

namespace A376798.P8278808082947021619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + SequenceMachineLib.roundAway (Real.arctan (2 * n : ℝ))

end

end A376798.P8278808082947021619

/-! ## A376798.P14663786438201473585

`∑[char[n^3]]-char[Δ[n²]]`
-/

namespace A376798.P14663786438201473585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f4 (n + 1) : ℤ) - (f4 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A376798.P14663786438201473585

/-! ## A376798.P5217808954710598217

`floor(∑[1-a(n-1)]/4)` with `a(0)=4, a(1)=0, a(2)=5`
-/

namespace A376798.P5217808954710598217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 0, 5] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌋

end

end A376798.P5217808954710598217

