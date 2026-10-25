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
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A349900: Primes of the form x^2 + (y^2+1)^2.

The programs for A349900, there is no canonical definition to state claims against.
-/

/-! ## A349900.P17370538183351715002

`p?[A042948(n)*A166086(A296167(n+1))]`
-/

namespace A349900.P17370538183351715002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n * A166086 (A296167 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A349900.P17370538183351715002

/-! ## A349900.P11031013874987784847

`A002144(lt[A017885(n), A326568(n+2)])`
-/

namespace A349900.P11031013874987784847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017885 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326568 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A349900.P11031013874987784847

/-! ## A349900.P9994260745017690829

`A002144(lt[A114440(n+1), A061026(n+1)])`
-/

namespace A349900.P9994260745017690829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A349900.P9994260745017690829

/-! ## A349900.P9590522952203774262

`A002144(lt[A218615(n+1), A191737(3*n+1)])`
-/

namespace A349900.P9590522952203774262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191737 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A349900.P9590522952203774262

/-! ## A349900.P16362656845468589730

`∩[A100370(n+1), A110134(n+1)]`
-/

namespace A349900.P16362656845468589730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349900.P16362656845468589730

/-!
# A349901: a(n) = Sum_{k=0..n} k^(3*n).

The programs for A349901, there is no canonical definition to state claims against.
-/

/-! ## A349901.P4531581109432246729

`A352982(3*n)`
-/

namespace A349901.P4531581109432246729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352982 (3 * n)

end

end A349901.P4531581109432246729

/-! ## A349901.P3601875283645469897

`A215083(A062725(A000007(n)+n))`
-/

namespace A349901.P3601875283645469897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215083 (A062725 (A000007 n + (n : ℤ)).toNat).toNat

end

end A349901.P3601875283645469897

/-! ## A349901.P3476472224126453994

`A215083(A062725(n)+A000038(n))`
-/

namespace A349901.P3476472224126453994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215083 (A062725 n + A000038 n).toNat

end

end A349901.P3476472224126453994

/-! ## A349901.P9429767310579787905

`A215083(A062725(A010894(n)+n))`
-/

namespace A349901.P9429767310579787905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215083 (A062725 (A010894 (n + 21) + (n : ℤ)).toNat).toNat

end

end A349901.P9429767310579787905

/-! ## A349901.P3817867105257290618

`A215083(A062725(A015161(n)+n))`
-/

namespace A349901.P3817867105257290618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215083 (A062725 (A015161 n + (n : ℤ)).toNat).toNat

end

end A349901.P3817867105257290618

/-!
# A349903: Array read by ascending antidiagonals. Inverse Euler transform of the right-shifted k-bonacci numbers.

The programs for A349903, there is no canonical definition to state claims against.
-/

/-! ## A349903.P15083492290261318155

`1-val(A214939(n+1), A162200(n+5))`
-/

namespace A349903.P15083492290261318155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (A214939 (n + 1)).toNat (A162200 (n + 5)).toNat : ℤ)

end

end A349903.P15083492290261318155

/-! ## A349903.P3197606657201715432

`A345415(or(A007318(n), A166357(n+1)))`
-/

namespace A349903.P3197606657201715432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345415 (Int.lor (A007318 n) (A166357 (n + 1))).toNat

end

end A349903.P3197606657201715432

/-! ## A349903.P10006793990354964810

`A046978(and(A317302(n), A317307(n+1)))`
-/

namespace A349903.P10006793990354964810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (Int.land (A317302 n) (A317307 (n + 1))).toNat

end

end A349903.P10006793990354964810

/-! ## A349903.P9434536134079033231

`A010891(A064549(n+3)*A382524(n))`
-/

namespace A349903.P9434536134079033231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010891 (A064549 (n + 3) * A382524 n).toNat

end

end A349903.P9434536134079033231

/-! ## A349903.P11960332482009326954

`A244612(A195248(n+2))`
-/

namespace A349903.P11960332482009326954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244612 (A195248 (n + 2)).toNat

end

end A349903.P11960332482009326954

/-!
# A349904: Inverse Euler transform of the tribonacci numbers A000073.

The programs for A349904, there is no canonical definition to state claims against.
-/

/-! ## A349904.P16786093396846722348

`A349802(∑[n+1]+2)`
-/

namespace A349904.P16786093396846722348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349802 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A349904.P16786093396846722348

/-! ## A349904.P1691120621775345372

`xor(n, xor(n, A349802(A133263(n+1))))`
-/

namespace A349904.P1691120621775345372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.xor (n : ℤ) (A349802 (A133263 (n + 1)).toNat))

end

end A349904.P1691120621775345372

/-! ## A349904.P4657240128224327976

`or(char[2], A349802(A000217(n+1)+2))`
-/

namespace A349904.P4657240128224327976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A349802 (A000217 (n + 1) + 2).toNat)

end

end A349904.P4657240128224327976

/-! ## A349904.P5533671166101558284

`A057427(n)*A349802(A133263(n+1))`
-/

namespace A349904.P5533671166101558284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A349802 (A133263 (n + 1)).toNat

end

end A349904.P5533671166101558284

/-! ## A349904.P9089232397955265790

`A178334(n)*A349802(A133263(n+1))`
-/

namespace A349904.P9089232397955265790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A349802 (A133263 (n + 1)).toNat

end

end A349904.P9089232397955265790

/-! ## A349904.P13793036732760654281

`A349802(A133263(n+1))%A050168(n)`
-/

namespace A349904.P13793036732760654281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349802 (A133263 (n + 1)).toNat) (A050168 n)

end

end A349904.P13793036732760654281

/-! ## A349904.P9468019450102388043

`A349802(A133263(n+1))+A000035(2*n)`
-/

namespace A349904.P9468019450102388043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349802 (A133263 (n + 1)).toNat + A000035 (2 * n)

end

end A349904.P9468019450102388043

/-! ## A349904.P2713456753553754191

`A349802(A000217(n+1)+2)%A282684(n)`
-/

namespace A349904.P2713456753553754191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349802 (A000217 (n + 1) + 2).toNat) (A282684 n)

end

end A349904.P2713456753553754191

/-! ## A349904.P16303650820125337961

`A022524(n)%2*A349802(A133263(n+1))`
-/

namespace A349904.P16303650820125337961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022524 n) 2 * A349802 (A133263 (n + 1)).toNat

end

end A349904.P16303650820125337961

/-! ## A349904.P12630233457173006907

`char[A303768(n)]*A349802(A000217(n+1)+2)`
-/

namespace A349904.P12630233457173006907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303768 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A349802 (A000217 (n + 1) + 2).toNat

end

end A349904.P12630233457173006907

/-!
# A349905: Arithmetic derivative of A003961(n), where A003961 is fully multiplicative with a(p) = nextprime(p).

The programs for A349905, the canonical program `A349905.P349339303286256503` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349905 has offset 1).

The definition of A349905 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, A003961, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349905.P349339303286256503

`A003415(A003961(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A349905

/-- `A003415(A003961(n+1))` -/
def P349339303286256503.Spec : Prop :=
  ∀ n, P349339303286256503.a n = A349905 (n + 1)

theorem P349339303286256503.correct : P349339303286256503.Spec := by
  intro n
  simp only [A349905, Nat.add_sub_cancel]

end A349905

/-! ## A349905.P5125301202048157496

`A003961(A003557(n+1))*A353571(n+1)`
-/

namespace A349905.P5125301202048157496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A003557 (n + 1)).toNat * A353571 (n + 1)

end

end A349905.P5125301202048157496

namespace A349905

/-- `A003961(A003557(n+1))*A353571(n+1)` -/
def P5125301202048157496.Spec : Prop :=
  ∀ n, P5125301202048157496.a n = A349905 (n + 1)

end A349905

/-! ## A349905.P15019848573877377007

`A369465(A045965(n+1))`
-/

namespace A349905.P15019848573877377007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369465 (A045965 (n + 1)).toNat

end

end A349905.P15019848573877377007

namespace A349905

/-- `A369465(A045965(n+1))` -/
def P15019848573877377007.Spec : Prop :=
  ∀ n, P15019848573877377007.a n = A349905 (n + 1)

end A349905

/-! ## A349905.P7636438965549350882

`A003961(A003557(n+1))*A342001(A003961(n+1))`
-/

namespace A349905.P7636438965549350882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A003557 (n + 1)).toNat * A342001 (A003961 (n + 1)).toNat

end

end A349905.P7636438965549350882

namespace A349905

/-- `A003961(A003557(n+1))*A342001(A003961(n+1))` -/
def P7636438965549350882.Spec : Prop :=
  ∀ n, P7636438965549350882.a n = A349905 (n + 1)

end A349905

/-! ## A349905.P1787516631151498234

`A003415(A253885(n)+1)`
-/

namespace A349905.P1787516631151498234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A253885 n + 1).toNat

end

end A349905.P1787516631151498234

namespace A349905

/-- `A003415(A253885(n)+1)` -/
def P1787516631151498234.Spec : Prop :=
  ∀ n, P1787516631151498234.a n = A349905 (n + 1)

end A349905

/-! ## A349905.P9571108071282503379

`A003415(A243501(n+1)-1)`
-/

namespace A349905.P9571108071282503379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A243501 (n + 1) - 1).toNat

end

end A349905.P9571108071282503379

namespace A349905

/-- `A003415(A243501(n+1)-1)` -/
def P9571108071282503379.Spec : Prop :=
  ∀ n, P9571108071282503379.a n = A349905 (n + 1)

end A349905

/-! ## A349905.P1659078988562195871

`A319703(2*A003961(n+1))`
-/

namespace A349905.P1659078988562195871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * A003961 (n + 1)).toNat

end

end A349905.P1659078988562195871

namespace A349905

/-- `A319703(2*A003961(n+1))` -/
def P1659078988562195871.Spec : Prop :=
  ∀ n, P1659078988562195871.a n = A349905 (n + 1)

end A349905

/-! ## A349905.P5568642234298683624

`A003415(2*A048673(n+1)-1)`
-/

namespace A349905.P5568642234298683624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (2 * A048673 (n + 1) - 1).toNat

end

end A349905.P5568642234298683624

namespace A349905

/-- `A003415(2*A048673(n+1)-1)` -/
def P5568642234298683624.Spec : Prop :=
  ∀ n, P5568642234298683624.a n = A349905 (n + 1)

end A349905

/-! ## A349905.P7872173465214866328

`A003415(A266646(2*(n+1))-1)`
-/

namespace A349905.P7872173465214866328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A266646 (2 * (n + 1)) - 1).toNat

end

end A349905.P7872173465214866328

namespace A349905

/-- `A003415(A266646(2*(n+1))-1)` -/
def P7872173465214866328.Spec : Prop :=
  ∀ n, P7872173465214866328.a n = A349905 (n + 1)

end A349905

/-! ## A349905.P1764670135987357392

`A003415(A336853(n+1)+1+n)`
-/

namespace A349905.P1764670135987357392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A336853 (n + 1) + 1 + (n : ℤ)).toNat

end

end A349905.P1764670135987357392

namespace A349905

/-- `A003415(A336853(n+1)+1+n)` -/
def P1764670135987357392.Spec : Prop :=
  ∀ n, P1764670135987357392.a n = A349905 (n + 1)

end A349905

/-! ## A349905.P8876055897962875604

`A003415(A191002(n+1)/(n+1))`
-/

namespace A349905.P8876055897962875604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A191002 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A349905.P8876055897962875604

namespace A349905

/-- `A003415(A191002(n+1)/(n+1))` -/
def P8876055897962875604.Spec : Prop :=
  ∀ n, P8876055897962875604.a n = A349905 (n + 1)

end A349905

/-! ## A349905.P14142415750763437642

`A003415(A286385(n+1)+A000203(n+1))`
-/

namespace A349905.P14142415750763437642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A286385 (n + 1) + A000203 (n + 1)).toNat

end

end A349905.P14142415750763437642

namespace A349905

/-- `A003415(A286385(n+1)+A000203(n+1))` -/
def P14142415750763437642.Spec : Prop :=
  ∀ n, P14142415750763437642.a n = A349905 (n + 1)

theorem P14142415750763437642.correct : P14142415750763437642.Spec := by
  intro n
  simp only [A349905, Nat.add_sub_cancel, A349905.P14142415750763437642.a, A349905.P349339303286256503.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003961, A003961.P5996473960037614004.a, A286385, A286385.P7583078268767377745.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A252749, A252749.P15054942815197957636.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A252748, A252748.P16209281916487994805.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A349905

/-! ## A349905.P13295880288550892405

`A003415(A348937(n+1)+A003415(n+1))`
-/

namespace A349905.P13295880288550892405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A348937 (n + 1) + A003415 (n + 1)).toNat

end

end A349905.P13295880288550892405

namespace A349905

/-- `A003415(A348937(n+1)+A003415(n+1))` -/
def P13295880288550892405.Spec : Prop :=
  ∀ n, P13295880288550892405.a n = A349905 (n + 1)

theorem P13295880288550892405.correct : P13295880288550892405.Spec := by
  intro n
  simp only [A349905, Nat.add_sub_cancel, A349905.P13295880288550892405.a, A349905.P349339303286256503.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003961, A003961.P5996473960037614004.a, A348937, A348937.P9014571055681436291.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A300251, A300251.P13750012435361977920.f1, A300251.P13750012435361977920.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A252749, A252749.P15054942815197957636.a, A319684, A319684.P10446271486458079777.f1, A319684.P10446271486458079777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A252748, A252748.P16209281916487994805.a, A349394, A349394.P210516795435731064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A349905

/-! ## A349905.P2809243106594796618

`A003415(A048673(n+1)+A048673(n+1)-1)`
-/

namespace A349905.P2809243106594796618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A048673 (n + 1) + (A048673 (n + 1) - 1)).toNat

end

end A349905.P2809243106594796618

namespace A349905

/-- `A003415(A048673(n+1)+A048673(n+1)-1)` -/
def P2809243106594796618.Spec : Prop :=
  ∀ n, P2809243106594796618.a n = A349905 (n + 1)

end A349905

/-!
# A349906: Number of factorizations of n into even factors > 1 (a(1) = 1 by convention).

The programs for A349906, there is no canonical definition to state claims against.
-/

/-! ## A349906.P1970069129978601083

`A340785(A008619(n))%A075180(n)`
-/

namespace A349906.P1970069129978601083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340785 (A008619 n).toNat) (A075180 n)

end

end A349906.P1970069129978601083

/-! ## A349906.P3122198868244265710

`A340785(A065033(n))%A075180(n)`
-/

namespace A349906.P3122198868244265710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340785 (A065033 n).toNat) (A075180 n)

end

end A349906.P3122198868244265710

/-! ## A349906.P16244529058806450041

`lcm(A073097(n), A340785(A065033(n)))`
-/

namespace A349906.P16244529058806450041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073097 n) (A340785 (A065033 n).toNat)

end

end A349906.P16244529058806450041

/-! ## A349906.P17096569777887651713

`lcm(A257170(n), A340785(A008619(n)))`
-/

namespace A349906.P17096569777887651713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A257170 n) (A340785 (A008619 n).toNat)

end

end A349906.P17096569777887651713

/-! ## A349906.P16375470522976993970

`A320439(A290641(n+1))`
-/

namespace A349906.P16375470522976993970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320439 (A290641 (n + 1)).toNat

end

end A349906.P16375470522976993970

/-! ## A349906.P9664165894553638010

`and(A286645(n), A340785(A008619(n)))`
-/

namespace A349906.P9664165894553638010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286645 n) (A340785 (A008619 n).toNat)

end

end A349906.P9664165894553638010

/-! ## A349906.P6976284186600415007

`A257170(n²)*A340785(A008619(n))`
-/

namespace A349906.P6976284186600415007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257170 (n ^ 2) * A340785 (A008619 n).toNat

end

end A349906.P6976284186600415007

/-!
# A349907: Number of factorizations of n into odd factors > 1 (a(1) = 1 by convention).

The programs for A349907, there is no canonical definition to state claims against.
-/

/-! ## A349907.P1981641533038325277

`log2(gcd(2, n))*Δ[A096276(n)]`
-/

namespace A349907.P1981641533038325277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (f1 (n + 1) - f1 n : ℝ)

end

end A349907.P1981641533038325277

/-! ## A349907.P3807531008117852798

`char[2*n]*A001055(n+1)`
-/

namespace A349907.P3807531008117852798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A001055 (n + 1)

end

end A349907.P3807531008117852798

/-! ## A349907.P10960898494917011907

`A371243(A141310(n))`
-/

namespace A349907.P10960898494917011907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371243 (A141310 n).toNat

end

end A349907.P10960898494917011907

/-! ## A349907.P9556386377117787584

`Δ[A096276(n)]*A059841(n)`
-/

namespace A349907.P9556386377117787584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A059841 n

end

end A349907.P9556386377117787584

/-! ## A349907.P5525665991264964822

`lcm(Δ[A096276(n)], A056594(n))`
-/

namespace A349907.P5525665991264964822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A056594 n)

end

end A349907.P5525665991264964822

/-! ## A349907.P12155912837784539423

`A001055(n+1)*A059841(n)`
-/

namespace A349907.P12155912837784539423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) * A059841 n

end

end A349907.P12155912837784539423

/-! ## A349907.P11969778977743846318

`C(A001055(n+1), A019426(n))`
-/

namespace A349907.P11969778977743846318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001055 (n + 1)).toNat (A019426 n).toNat

end

end A349907.P11969778977743846318

/-! ## A349907.P7912749756462301191

`A096276(or(1, n))-A096276(n)`
-/

namespace A349907.P7912749756462301191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 (Nat.lor 1 n) - A096276 n

end

end A349907.P7912749756462301191

/-! ## A349907.P2169640622246249894

`A001055(A141310(n))-A000035(n)`
-/

namespace A349907.P2169640622246249894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A141310 n).toNat - A000035 n

end

end A349907.P2169640622246249894

/-! ## A349907.P11901536157130674440

`A096276(A109613(n))-A096276(n)`
-/

namespace A349907.P11901536157130674440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 (A109613 n).toNat - A096276 n

end

end A349907.P11901536157130674440

/-! ## A349907.P4011486729043727647

`A001055(n+1)*A358233(A326810(n))`
-/

namespace A349907.P4011486729043727647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) * A358233 (A326810 n).toNat

end

end A349907.P4011486729043727647

/-! ## A349907.P14545262796479915432

`A001055(n+1)*A266591(n+2)`
-/

namespace A349907.P14545262796479915432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) * A266591 (n + 2)

end

end A349907.P14545262796479915432

/-! ## A349907.P6346117179136332221

`A001055(n+1)%A124625(A008706(n+1))`
-/

namespace A349907.P6346117179136332221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (n + 1)) (A124625 (A008706 (n + 1)).toNat)

end

end A349907.P6346117179136332221

/-! ## A349907.P9791497482120859472

`A069016(n+1)%A052552(n)`
-/

namespace A349907.P9791497482120859472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069016 (n + 1)) (A052552 n)

end

end A349907.P9791497482120859472

/-! ## A349907.P10946165807937099720

`and(A001055(n+1), A077896(n))`
-/

namespace A349907.P10946165807937099720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001055 (n + 1)) (A077896 n)

end

end A349907.P10946165807937099720

/-! ## A349907.P7261047736662278221

`and(A001055(n+1), A097110(n))`
-/

namespace A349907.P7261047736662278221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001055 (n + 1)) (A097110 n)

end

end A349907.P7261047736662278221

/-! ## A349907.P7245859369658229089

`and(A069016(n+1), A077896(n))`
-/

namespace A349907.P7245859369658229089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069016 (n + 1)) (A077896 n)

end

end A349907.P7245859369658229089

/-! ## A349907.P7423716256143953298

`and(A069016(n+1), A097110(n))`
-/

namespace A349907.P7423716256143953298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A069016 (n + 1)) (A097110 n)

end

end A349907.P7423716256143953298

/-! ## A349907.P6867550452454851762

`A347438(A080335(n))`
-/

namespace A349907.P6867550452454851762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (A080335 n).toNat

end

end A349907.P6867550452454851762

/-! ## A349907.P10577679533170689324

`A347438(A081346(n))`
-/

namespace A349907.P10577679533170689324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (A081346 n).toNat

end

end A349907.P10577679533170689324

/-!
# A349909: Partial sums of A347870; Number of terms of A347877 (numbers k with an odd arithmetic derivative of sigma(k)) in range 1..n.

The programs for A349909, the canonical program `A349909.P17520280238822638841` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349909 has offset 1).

The definition of A349909 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347870, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349909.P17520280238822638841

`A347870(n+1)+a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A349909

/-- `A347870(n+1)+a(n-1)` -/
def P17520280238822638841.Spec : Prop :=
  ∀ n, P17520280238822638841.a n = A349909 (n + 1)

theorem P17520280238822638841.correct : P17520280238822638841.Spec := by
  intro n
  simp only [A349909, Nat.add_sub_cancel]

end A349909

/-! ## A349909.P12097411723393383539

`∑[A347870(n+1)]`
-/

namespace A349909.P12097411723393383539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349909.P12097411723393383539

namespace A349909

/-- `∑[A347870(n+1)]` -/
def P12097411723393383539.Spec : Prop :=
  ∀ n, P12097411723393383539.a n = A349909 (n + 1)

end A349909

/-! ## A349909.P14414565089944231490

`∑[A342925(n+1)%2]`
-/

namespace A349909.P14414565089944231490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342925 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349909.P14414565089944231490

namespace A349909

/-- `∑[A342925(n+1)%2]` -/
def P14414565089944231490.Spec : Prop :=
  ∀ n, P14414565089944231490.a n = A349909 (n + 1)

end A349909

/-! ## A349909.P707066973753770691

`∑[char[A347877(n+1)-1]]`
-/

namespace A349909.P707066973753770691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349909.P707066973753770691

namespace A349909

/-- `∑[char[A347877(n+1)-1]]` -/
def P707066973753770691.Spec : Prop :=
  ∀ n, (P707066973753770691.a n : ℤ) = A349909 (n + 1)

end A349909

/-! ## A349909.P274387773980588774

`∑[xor((n+1)%2, A347871(n+1))]`
-/

namespace A349909.P274387773980588774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((n + 1) % 2 : ℕ) : ℤ) (A347871 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349909.P274387773980588774

namespace A349909

/-- `∑[xor((n+1)%2, A347871(n+1))]` -/
def P274387773980588774.Spec : Prop :=
  ∀ n, P274387773980588774.a n = A349909 (n + 1)

end A349909

/-! ## A349909.P17614133623695965320

`∑[A359820(5*∑{d}[n+1, #])]`
-/

namespace A349909.P17614133623695965320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359820 (5 * (∑ d ∈ Nat.divisors (f2 n), d))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349909.P17614133623695965320

namespace A349909

/-- `∑[A359820(5*∑{d}[n+1, #])]` -/
def P17614133623695965320.Spec : Prop :=
  ∀ n, P17614133623695965320.a n = A349909 (n + 1)

end A349909

/-! ## A349909.P5194735254492719580

`∑[A165560(∑{d}[n+1, #])]`
-/

namespace A349909.P5194735254492719580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349909.P5194735254492719580

namespace A349909

/-- `∑[A165560(∑{d}[n+1, #])]` -/
def P5194735254492719580.Spec : Prop :=
  ∀ n, P5194735254492719580.a n = A349909 (n + 1)

end A349909

/-! ## A349909.P8663622414437435216

`∑[A003415(∑{d}[n+1, #])%2]`
-/

namespace A349909.P8663622414437435216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (∑ d ∈ Nat.divisors (f2 n), d)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349909.P8663622414437435216

namespace A349909

/-- `∑[A003415(∑{d}[n+1, #])%2]` -/
def P8663622414437435216.Spec : Prop :=
  ∀ n, P8663622414437435216.a n = A349909 (n + 1)

end A349909

/-! ## A349909.P12120281417328668163

`∑[A165560(A000203(n+1))]`
-/

namespace A349909.P12120281417328668163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A000203 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349909.P12120281417328668163

namespace A349909

/-- `∑[A165560(A000203(n+1))]` -/
def P12120281417328668163.Spec : Prop :=
  ∀ n, P12120281417328668163.a n = A349909 (n + 1)

end A349909

/-! ## A349909.P18000740470129208891

`∑[A165560(sqrt(A072861(n+1)))]`
-/

namespace A349909.P18000740470129208891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349909.P18000740470129208891

namespace A349909

/-- `∑[A165560(sqrt(A072861(n+1)))]` -/
def P18000740470129208891.Spec : Prop :=
  ∀ n, P18000740470129208891.a n = A349909 (n + 1)

end A349909

/-! ## A349909.P2665826960173106881

`∑[A000035(A342925(n+1))]`
-/

namespace A349909.P2665826960173106881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A342925 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349909.P2665826960173106881

namespace A349909

/-- `∑[A000035(A342925(n+1))]` -/
def P2665826960173106881.Spec : Prop :=
  ∀ n, P2665826960173106881.a n = A349909 (n + 1)

end A349909

/-!
# A349910: a(n) = Sum_{d|n, d

The programs for A349910, the canonical program `A349910.P15708250188466983779` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349910 has offset 1).

The definition of A349910 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A336840, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349910.P15708250188466983779

`A336840(n+1)-A048673(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A349910

/-- `A336840(n+1)-A048673(n+1)` -/
def P15708250188466983779.Spec : Prop :=
  ∀ n, P15708250188466983779.a n = A349910 (n + 1)

theorem P15708250188466983779.correct : P15708250188466983779.Spec := by
  intro n
  simp only [A349910, Nat.add_sub_cancel]

end A349910

/-! ## A349910.P13504795075944503686

`∑{d}[n+1, A001065(#)*A349571((n+1)/#)]`
-/

namespace A349910.P13504795075944503686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A349571 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349910.P13504795075944503686

namespace A349910

/-- `∑{d}[n+1, A001065(#)*A349571((n+1)/#)]` -/
def P13504795075944503686.Spec : Prop :=
  ∀ n, P13504795075944503686.a n = A349910 (n + 1)

end A349910

/-! ## A349910.P3003258179042752835

`∑{d}[n+1, A157658(#)*A336840((n+1)/#)]`
-/

namespace A349910.P3003258179042752835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A336840 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349910.P3003258179042752835

namespace A349910

/-- `∑{d}[n+1, A157658(#)*A336840((n+1)/#)]` -/
def P3003258179042752835.Spec : Prop :=
  ∀ n, P3003258179042752835.a n = A349910 (n + 1)

end A349910

/-! ## A349910.P723233226236245591

`∑{d}[n+1, A336851(#)*A349385((n+1)/#)]`
-/

namespace A349910.P723233226236245591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A336851 d * A349385 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349910.P723233226236245591

namespace A349910

/-- `∑{d}[n+1, A336851(#)*A349385((n+1)/#)]` -/
def P723233226236245591.Spec : Prop :=
  ∀ n, P723233226236245591.a n = A349910 (n + 1)

end A349910

/-! ## A349910.P12290771584043768265

`∑{d}[n+1, A048673(#)*A057427((n+1)/#-1)]`
-/

namespace A349910.P12290771584043768265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048673 d * A057427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A349910.P12290771584043768265

namespace A349910

/-- `∑{d}[n+1, A048673(#)*A057427((n+1)/#-1)]` -/
def P12290771584043768265.Spec : Prop :=
  ∀ n, P12290771584043768265.a n = A349910 (n + 1)

end A349910

/-! ## A349910.P7315740934174041455

`(A163163(A003961(n+1))-1)/2`
-/

namespace A349910.P7315740934174041455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163163 (A003961 (n + 1)).toNat - 1 : ℚ) / 2

end

end A349910.P7315740934174041455

namespace A349910

/-- `(A163163(A003961(n+1))-1)/2` -/
def P7315740934174041455.Spec : Prop :=
  ∀ n, P7315740934174041455.a n = (A349910 (n + 1) : ℚ)

end A349910

/-! ## A349910.P6392293854601216795

`A336840(n+1)-A283464(A103517(n))`
-/

namespace A349910.P6392293854601216795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336840 (n + 1) - A283464 (A103517 n).toNat

end

end A349910.P6392293854601216795

namespace A349910

/-- `A336840(n+1)-A283464(A103517(n))` -/
def P6392293854601216795.Spec : Prop :=
  ∀ n, P6392293854601216795.a n = A349910 (n + 1)

end A349910

/-! ## A349910.P17523018269571574165

`A113415(A003961(n+1))-A048673(n+1)`
-/

namespace A349910.P17523018269571574165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113415 (A003961 (n + 1)).toNat - A048673 (n + 1)

end

end A349910.P17523018269571574165

namespace A349910

/-- `A113415(A003961(n+1))-A048673(n+1)` -/
def P17523018269571574165.Spec : Prop :=
  ∀ n, P17523018269571574165.a n = A349910 (n + 1)

end A349910

/-! ## A349910.P16956064780490144422

`A004526(A163163(A003961(n+1)))`
-/

namespace A349910.P16956064780490144422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A163163 (A003961 (n + 1)).toNat).toNat

end

end A349910.P16956064780490144422

namespace A349910

/-- `A004526(A163163(A003961(n+1)))` -/
def P16956064780490144422.Spec : Prop :=
  ∀ n, P16956064780490144422.a n = A349910 (n + 1)

end A349910

/-! ## A349910.P6122798231603920439

`A004526(A336851(n+1)+Δ[A054519(n)])`
-/

namespace A349910.P6122798231603920439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A336851 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A349910.P6122798231603920439

namespace A349910

/-- `A004526(A336851(n+1)+Δ[A054519(n)])` -/
def P6122798231603920439.Spec : Prop :=
  ∀ n, P6122798231603920439.a n = A349910 (n + 1)

end A349910

/-! ## A349910.P15733594169982061419

`A004524(A336851(n+1)+A000005(n+1))`
-/

namespace A349910.P15733594169982061419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A336851 (n + 1) + A000005 (n + 1)).toNat

end

end A349910.P15733594169982061419

namespace A349910

/-- `A004524(A336851(n+1)+A000005(n+1))` -/
def P15733594169982061419.Spec : Prop :=
  ∀ n, P15733594169982061419.a n = A349910 (n + 1)

end A349910

/-! ## A349910.P5932121387274461090

`A004526(A336851(n+1)+A000005(n+1))`
-/

namespace A349910.P5932121387274461090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A336851 (n + 1) + A000005 (n + 1)).toNat

end

end A349910.P5932121387274461090

namespace A349910

/-- `A004526(A336851(n+1)+A000005(n+1))` -/
def P5932121387274461090.Spec : Prop :=
  ∀ n, P5932121387274461090.a n = A349910 (n + 1)

end A349910

/-! ## A349910.P14674534210497904759

`A028242(A336851(n+1)+A000005(n+1))`
-/

namespace A349910.P14674534210497904759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A336851 (n + 1) + A000005 (n + 1)).toNat

end

end A349910.P14674534210497904759

namespace A349910

/-- `A028242(A336851(n+1)+A000005(n+1))` -/
def P14674534210497904759.Spec : Prop :=
  ∀ n, P14674534210497904759.a n = A349910 (n + 1)

end A349910

/-! ## A349910.P9632280755463401006

`A336840(n+1)-A008619(A253885(n))`
-/

namespace A349910.P9632280755463401006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336840 (n + 1) - A008619 (A253885 n).toNat

end

end A349910.P9632280755463401006

namespace A349910

/-- `A336840(n+1)-A008619(A253885(n))` -/
def P9632280755463401006.Spec : Prop :=
  ∀ n, P9632280755463401006.a n = A349910 (n + 1)

end A349910

/-! ## A349910.P13533825961726619450

`∑{d}[A003961(n+1), A001057(A051953(#))]`
-/

namespace A349910.P13533825961726619450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001057 (A051953 d).toNat

end

end A349910.P13533825961726619450

namespace A349910

/-- `∑{d}[A003961(n+1), A001057(A051953(#))]` -/
def P13533825961726619450.Spec : Prop :=
  ∀ n, P13533825961726619450.a n = A349910 (n + 1)

end A349910

/-! ## A349910.P16967767396988192569

`A336840(n+1)-A008619(A003961(n+1))`
-/

namespace A349910.P16967767396988192569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336840 (n + 1) - A008619 (A003961 (n + 1)).toNat

end

end A349910.P16967767396988192569

namespace A349910

/-- `A336840(n+1)-A008619(A003961(n+1))` -/
def P16967767396988192569.Spec : Prop :=
  ∀ n, P16967767396988192569.a n = A349910 (n + 1)

end A349910

/-!
# A349911: Dirichlet inverse of A336466, which is fully multiplicative with a(p) = oddpart(p-1).

The programs for A349911, the canonical program `A349911.P3479604530463811039` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349911 has offset 1).

The definition of A349911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349911.P5012671747203881837

`A349912(n+1)-A336466(n+1)`
-/

namespace A349911.P5012671747203881837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349912 (n + 1) - A336466 (n + 1)

end

end A349911.P5012671747203881837

namespace A349911

/-- `A349912(n+1)-A336466(n+1)` -/
def P5012671747203881837.Spec : Prop :=
  ∀ n, P5012671747203881837.a n = A349911 (n + 1)

theorem P5012671747203881837.correct : P5012671747203881837.Spec := by
  intro n
  simp only [A349911, Nat.add_sub_cancel, A349911.P5012671747203881837.a, A349911.P3479604530463811039.a, A008683, A008683.P18254306604665478110.a, A053575, A053575.P11050081037348707319.a, A336466, A336466.P16200719452775638290.a, A349912, A349912.P4753964918180752042.a, A000010, A000010.P4673923239450215316.a, A000265, A000265.P2772582252347773295.a, A003958, A003958.P196685604458257440.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A003557, A003557.P6364735403900941810.a, A003602, A003602.P7612175048291952394.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A005940, A005940.P5942875842694471387.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A110963, A110963.P3344771894533151408.a, A120007, A120007.P17212889191585270917.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A349911

/-! ## A349911.P3479604530463811039

`A008683(n+1)*A053575(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A349911

/-- `A008683(n+1)*A053575(n+1)` -/
def P3479604530463811039.Spec : Prop :=
  ∀ n, P3479604530463811039.a n = A349911 (n + 1)

theorem P3479604530463811039.correct : P3479604530463811039.Spec := by
  intro n
  simp only [A349911, Nat.add_sub_cancel]

end A349911

/-! ## A349911.P16488838016724097059

`A008683(n+1)*A336466(n+1)`
-/

namespace A349911.P16488838016724097059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A336466 (n + 1)

end

end A349911.P16488838016724097059

namespace A349911

/-- `A008683(n+1)*A336466(n+1)` -/
def P16488838016724097059.Spec : Prop :=
  ∀ n, P16488838016724097059.a n = A349911 (n + 1)

end A349911

/-! ## A349911.P6969041029368552974

`A097945(n+1)/A069177(n+1)`
-/

namespace A349911.P6969041029368552974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097945 (n + 1) : ℚ) / (A069177 (n + 1) : ℚ)

end

end A349911.P6969041029368552974

namespace A349911

/-- `A097945(n+1)/A069177(n+1)` -/
def P6969041029368552974.Spec : Prop :=
  ∀ n, P6969041029368552974.a n = (A349911 (n + 1) : ℚ)

end A349911

/-! ## A349911.P6909141629814868675

`(A007423(n+1)-1)*A336466(n+1)`
-/

namespace A349911.P6909141629814868675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007423 (n + 1) - 1) * A336466 (n + 1)

end

end A349911.P6909141629814868675

namespace A349911

/-- `(A007423(n+1)-1)*A336466(n+1)` -/
def P6909141629814868675.Spec : Prop :=
  ∀ n, P6909141629814868675.a n = A349911 (n + 1)

end A349911

/-! ## A349911.P2741757941558336881

`floor(A262804(n+1)/2)*A336466(n+1)`
-/

namespace A349911.P2741757941558336881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262804 (n + 1) : ℚ) / 2⌋ * A336466 (n + 1)

end

end A349911.P2741757941558336881

namespace A349911

/-- `floor(A262804(n+1)/2)*A336466(n+1)` -/
def P2741757941558336881.Spec : Prop :=
  ∀ n, P2741757941558336881.a n = A349911 (n + 1)

end A349911

/-! ## A349911.P2101846342323919910

`A349912(n+1)-A000265(A003958(n+1))`
-/

namespace A349911.P2101846342323919910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349912 (n + 1) - A000265 (A003958 (n + 1)).toNat

end

end A349911.P2101846342323919910

namespace A349911

/-- `A349912(n+1)-A000265(A003958(n+1))` -/
def P2101846342323919910.Spec : Prop :=
  ∀ n, P2101846342323919910.a n = A349911 (n + 1)

theorem P2101846342323919910.correct : P2101846342323919910.Spec := by
  intro n
  simp only [A349911, Nat.add_sub_cancel, A349911.P2101846342323919910.a, A349911.P3479604530463811039.a, A000265, A000265.P2772582252347773295.a, A003958, A003958.P196685604458257440.a, A008683, A008683.P18254306604665478110.a, A053575, A053575.P11050081037348707319.a, A349912, A349912.P4753964918180752042.a, A000010, A000010.P4673923239450215316.a, A003602, A003602.P7612175048291952394.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A336466, A336466.P16200719452775638290.a, A003557, A003557.P6364735403900941810.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A110963, A110963.P3344771894533151408.a, A120007, A120007.P17212889191585270917.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A005940, A005940.P5942875842694471387.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A025480, A025480.P15873863116418380882.a, A061397, A061397.P17730824645895443051.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A349911

/-! ## A349911.P13009622675279303376

`A000265(A000010(n+1))*A008683(n+1)`
-/

namespace A349911.P13009622675279303376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000010 (n + 1)).toNat * A008683 (n + 1)

end

end A349911.P13009622675279303376

namespace A349911

/-- `A000265(A000010(n+1))*A008683(n+1)` -/
def P13009622675279303376.Spec : Prop :=
  ∀ n, P13009622675279303376.a n = A349911 (n + 1)

theorem P13009622675279303376.correct : P13009622675279303376.Spec := by
  intro n
  simp only [A349911, Nat.add_sub_cancel, A349911.P13009622675279303376.a, A349911.P3479604530463811039.a, A000010, A000010.P4673923239450215316.a, A000265, A000265.P2772582252347773295.a, A008683, A008683.P18254306604665478110.a, A053575, A053575.P11050081037348707319.a, A003557, A003557.P6364735403900941810.a, A003602, A003602.P7612175048291952394.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A110963, A110963.P3344771894533151408.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A025480, A025480.P15873863116418380882.a, A059841, A059841.P2666504972441551157.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A349911

/-! ## A349911.P12640155117452367246

`A008683(n+1)*A028234(A003958(n+1))`
-/

namespace A349911.P12640155117452367246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A028234 (A003958 (n + 1)).toNat

end

end A349911.P12640155117452367246

namespace A349911

/-- `A008683(n+1)*A028234(A003958(n+1))` -/
def P12640155117452367246.Spec : Prop :=
  ∀ n, P12640155117452367246.a n = A349911 (n + 1)

end A349911

/-! ## A349911.P7172038945540420076

`A008683(n+1)*A000265(A173557(n+1))`
-/

namespace A349911.P7172038945540420076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A000265 (A173557 (n + 1)).toNat

end

end A349911.P7172038945540420076

namespace A349911

/-- `A008683(n+1)*A000265(A173557(n+1))` -/
def P7172038945540420076.Spec : Prop :=
  ∀ n, P7172038945540420076.a n = A349911 (n + 1)

end A349911

/-! ## A349911.P8162222929324075493

`A008683(n+1)*A000265(abs(A023900(n+1)))`
-/

namespace A349911.P8162222929324075493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A000265 |A023900 (n + 1)|.toNat

end

end A349911.P8162222929324075493

namespace A349911

/-- `A008683(n+1)*A000265(abs(A023900(n+1)))` -/
def P8162222929324075493.Spec : Prop :=
  ∀ n, P8162222929324075493.a n = A349911 (n + 1)

end A349911

/-! ## A349911.P9876315652302214605

`A008683(n+1)*A028234(abs(A023900(n+1)))`
-/

namespace A349911.P9876315652302214605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A028234 |A023900 (n + 1)|.toNat

end

end A349911.P9876315652302214605

namespace A349911

/-- `A008683(n+1)*A028234(abs(A023900(n+1)))` -/
def P9876315652302214605.Spec : Prop :=
  ∀ n, P9876315652302214605.a n = A349911 (n + 1)

end A349911

/-! ## A349911.P11111951329470084180

`A097945(n+1)/A000010(n+1)*A336466(n+1)`
-/

namespace A349911.P11111951329470084180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097945 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A336466 (n + 1) : ℚ)

end

end A349911.P11111951329470084180

namespace A349911

/-- `A097945(n+1)/A000010(n+1)*A336466(n+1)` -/
def P11111951329470084180.Spec : Prop :=
  ∀ n, P11111951329470084180.a n = (A349911 (n + 1) : ℚ)

end A349911

/-! ## A349911.P10164072702037931154

`A097945(n+1)/A003958(n+1)*A336466(n+1)`
-/

namespace A349911.P10164072702037931154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097945 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A336466 (n + 1) : ℚ)

end

end A349911.P10164072702037931154

namespace A349911

/-- `A097945(n+1)/A003958(n+1)*A336466(n+1)` -/
def P10164072702037931154.Spec : Prop :=
  ∀ n, P10164072702037931154.a n = (A349911 (n + 1) : ℚ)

end A349911

/-! ## A349911.P16142124180680599311

`A097945(n+1)/gcd(A097945(n+1), A287293(n+1))`
-/

namespace A349911.P16142124180680599311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097945 (n + 1) : ℚ) / (Int.gcd (A097945 (n + 1)) (A287293 (n + 1)) : ℚ)

end

end A349911.P16142124180680599311

namespace A349911

/-- `A097945(n+1)/gcd(A097945(n+1), A287293(n+1))` -/
def P16142124180680599311.Spec : Prop :=
  ∀ n, P16142124180680599311.a n = (A349911 (n + 1) : ℚ)

end A349911

/-! ## A349911.P17656862630399212865

`round(A023900(n+1)/A039649(n+1))*A336466(n+1)`
-/

namespace A349911.P17656862630399212865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A023900 (n + 1) : ℚ) / (A039649 (n + 1) : ℚ)) * A336466 (n + 1)

end

end A349911.P17656862630399212865

namespace A349911

/-- `round(A023900(n+1)/A039649(n+1))*A336466(n+1)` -/
def P17656862630399212865.Spec : Prop :=
  ∀ n, P17656862630399212865.a n = A349911 (n + 1)

end A349911

/-! ## A349911.P2087379580749789252

`round(A347092(n+1)/A347137(n+1))*A336466(n+1)`
-/

namespace A349911.P2087379580749789252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A347092 (n + 1) : ℚ) / (A347137 (n + 1) : ℚ)) * A336466 (n + 1)

end

end A349911.P2087379580749789252

namespace A349911

/-- `round(A347092(n+1)/A347137(n+1))*A336466(n+1)` -/
def P2087379580749789252.Spec : Prop :=
  ∀ n, P2087379580749789252.a n = A349911 (n + 1)

end A349911

/-! ## A349911.P8280536991199965033

`A349912(n+1)-A349912(A273315(n))`
-/

namespace A349911.P8280536991199965033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349912 (n + 1) - A349912 (A273315 n).toNat

end

end A349911.P8280536991199965033

namespace A349911

/-- `A349912(n+1)-A349912(A273315(n))` -/
def P8280536991199965033.Spec : Prop :=
  ∀ n, P8280536991199965033.a n = A349911 (n + 1)

end A349911

/-! ## A349911.P18284339176140685

`A349912(n+1)-A349912(A273387(n))`
-/

namespace A349911.P18284339176140685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349912 (n + 1) - A349912 (A273387 n).toNat

end

end A349911.P18284339176140685

namespace A349911

/-- `A349912(n+1)-A349912(A273387(n))` -/
def P18284339176140685.Spec : Prop :=
  ∀ n, P18284339176140685.a n = A349911 (n + 1)

end A349911

/-! ## A349911.P8420443981878781972

`A349912(n+1)-A349912(A273791(n))`
-/

namespace A349911.P8420443981878781972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349912 (n + 1) - A349912 (A273791 n).toNat

end

end A349911.P8420443981878781972

namespace A349911

/-- `A349912(n+1)-A349912(A273791(n))` -/
def P8420443981878781972.Spec : Prop :=
  ∀ n, P8420443981878781972.a n = A349911 (n + 1)

end A349911

/-!
# A349912: Sum of A336466 and its Dirichlet inverse, where A336466 is fully multiplicative with a(p) = oddpart(p-1).

The programs for A349912, the canonical program `A349912.P4753964918180752042` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349912 has offset 1).

The definition of A349912 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336466, A349911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349912.P4753964918180752042

`A336466(n+1)+A349911(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A349912

/-- `A336466(n+1)+A349911(n+1)` -/
def P4753964918180752042.Spec : Prop :=
  ∀ n, P4753964918180752042.a n = A349912 (n + 1)

theorem P4753964918180752042.correct : P4753964918180752042.Spec := by
  intro n
  simp only [A349912, Nat.add_sub_cancel]

end A349912

/-! ## A349912.P14306780181167585415

`A007423(n+1)*A336466(n+1)`
-/

namespace A349912.P14306780181167585415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) * A336466 (n + 1)

end

end A349912.P14306780181167585415

namespace A349912

/-- `A007423(n+1)*A336466(n+1)` -/
def P14306780181167585415.Spec : Prop :=
  ∀ n, P14306780181167585415.a n = A349912 (n + 1)

end A349912

/-! ## A349912.P8658706189107050761

`(A008683(n+1)+1)*A336466(n+1)`
-/

namespace A349912.P8658706189107050761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) + 1) * A336466 (n + 1)

end

end A349912.P8658706189107050761

namespace A349912

/-- `(A008683(n+1)+1)*A336466(n+1)` -/
def P8658706189107050761.Spec : Prop :=
  ∀ n, P8658706189107050761.a n = A349912 (n + 1)

end A349912

/-! ## A349912.P15421454711622649530

`A349911(n+1)+A000265(A003958(n+1))`
-/

namespace A349912.P15421454711622649530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349911 (n + 1) + A000265 (A003958 (n + 1)).toNat

end

end A349912.P15421454711622649530

namespace A349912

/-- `A349911(n+1)+A000265(A003958(n+1))` -/
def P15421454711622649530.Spec : Prop :=
  ∀ n, P15421454711622649530.a n = A349912 (n + 1)

theorem P15421454711622649530.correct : P15421454711622649530.Spec := by
  intro n
  simp only [A349912, Nat.add_sub_cancel, A349912.P15421454711622649530.a, A349912.P4753964918180752042.a, A000265, A000265.P2772582252347773295.a, A003958, A003958.P196685604458257440.a, A336466, A336466.P16200719452775638290.a, A349911, A349911.P3479604530463811039.a, A003602, A003602.P7612175048291952394.a, A008683, A008683.P18254306604665478110.a, A053575, A053575.P11050081037348707319.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A000010, A000010.P4673923239450215316.a, A110963, A110963.P3344771894533151408.a, A120007, A120007.P17212889191585270917.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A003557, A003557.P6364735403900941810.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A025480, A025480.P15873863116418380882.a, A061397, A061397.P17730824645895443051.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A173557, A173557.P15666735857375843373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A349912

/-! ## A349912.P2024924012150372040

`(A008683(n+1)+1)*A028234(A003958(n+1))`
-/

namespace A349912.P2024924012150372040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) + 1) * A028234 (A003958 (n + 1)).toNat

end

end A349912.P2024924012150372040

namespace A349912

/-- `(A008683(n+1)+1)*A028234(A003958(n+1))` -/
def P2024924012150372040.Spec : Prop :=
  ∀ n, P2024924012150372040.a n = A349912 (n + 1)

end A349912

/-! ## A349912.P12186886408494272899

`A322581(n+1)/A003958(n+1)*A336466(n+1)`
-/

namespace A349912.P12186886408494272899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322581 (n + 1) : ℚ) / (A003958 (n + 1) : ℚ) * (A336466 (n + 1) : ℚ)

end

end A349912.P12186886408494272899

namespace A349912

/-- `A322581(n+1)/A003958(n+1)*A336466(n+1)` -/
def P12186886408494272899.Spec : Prop :=
  ∀ n, P12186886408494272899.a n = (A349912 (n + 1) : ℚ)

end A349912

/-!
# A349913: Sum of A001227 (the number of odd divisors function) and its Dirichlet inverse.

The programs for A349913, the canonical program `A349913.P3840109067347682984` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349913 has offset 1).

The definition of A349913 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327276, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349913.P3840109067347682984

`A001227(n+1)+A327276(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A349913

/-- `A001227(n+1)+A327276(n+1)` -/
def P3840109067347682984.Spec : Prop :=
  ∀ n, P3840109067347682984.a n = A349913 (n + 1)

theorem P3840109067347682984.correct : P3840109067347682984.Spec := by
  intro n
  simp only [A349913, Nat.add_sub_cancel]

end A349913

/-! ## A349913.P4829535255299693103

`A327276(n+1)+A054844(n+1)/2`
-/

namespace A349913.P4829535255299693103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327276 (n + 1) : ℚ) + (A054844 (n + 1) : ℚ) / 2

end

end A349913.P4829535255299693103

namespace A349913

/-- `A327276(n+1)+A054844(n+1)/2` -/
def P4829535255299693103.Spec : Prop :=
  ∀ n, P4829535255299693103.a n = (A349913 (n + 1) : ℚ)

theorem P4829535255299693103.correct : P4829535255299693103.Spec := by
  intro n
  simp only [A349913, Nat.add_sub_cancel, A349913.P4829535255299693103.a, A349913.P3840109067347682984.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A054844, A054844.P10228147231781804913.a, A327276, A327276.P15454841437412890746.f1, A327276.P15454841437412890746.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A209229, A209229.P14119267658822519212.f1, A209229.P14119267658822519212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A349913

/-! ## A349913.P16140069897471589592

`A327276(n+1)+A000005((n+1)/and(n+1, -(n+1)))`
-/

namespace A349913.P16140069897471589592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327276 (n + 1) + A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A349913.P16140069897471589592

namespace A349913

/-- `A327276(n+1)+A000005((n+1)/and(n+1, -(n+1)))` -/
def P16140069897471589592.Spec : Prop :=
  ∀ n, P16140069897471589592.a n = A349913 (n + 1)

end A349913

/-! ## A349913.P2176605555544401887

`A327276(n+1)+A000005(A000265(n+1))`
-/

namespace A349913.P2176605555544401887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327276 (n + 1) + A000005 (A000265 (n + 1)).toNat

end

end A349913.P2176605555544401887

namespace A349913

/-- `A327276(n+1)+A000005(A000265(n+1))` -/
def P2176605555544401887.Spec : Prop :=
  ∀ n, P2176605555544401887.a n = A349913 (n + 1)

end A349913

/-! ## A349913.P11353432626460914673

`A327276(n+1)+A004526(A054844(n+1))`
-/

namespace A349913.P11353432626460914673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327276 (n + 1) + A004526 (A054844 (n + 1)).toNat

end

end A349913.P11353432626460914673

namespace A349913

/-- `A327276(n+1)+A004526(A054844(n+1))` -/
def P11353432626460914673.Spec : Prop :=
  ∀ n, P11353432626460914673.a n = A349913 (n + 1)

end A349913

/-! ## A349913.P13360367935089792387

`A327276(n+1)+A000005(A064989(n+1))`
-/

namespace A349913.P13360367935089792387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327276 (n + 1) + A000005 (A064989 (n + 1)).toNat

end

end A349913.P13360367935089792387

namespace A349913

/-- `A327276(n+1)+A000005(A064989(n+1))` -/
def P13360367935089792387.Spec : Prop :=
  ∀ n, P13360367935089792387.a n = A349913 (n + 1)

end A349913

/-! ## A349913.P4102192921061897773

`A327276(n+1)+A000005(A336158(n+1))`
-/

namespace A349913.P4102192921061897773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327276 (n + 1) + A000005 (A336158 (n + 1)).toNat

end

end A349913.P4102192921061897773

namespace A349913

/-- `A327276(n+1)+A000005(A336158(n+1))` -/
def P4102192921061897773.Spec : Prop :=
  ∀ n, P4102192921061897773.a n = A349913 (n + 1)

end A349913

/-! ## A349913.P1173972992134408244

`A000005(2*(n+1))+A327276(n+1)-A000005(n+1)`
-/

namespace A349913.P1173972992134408244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1)) + (A327276 (n + 1) - A000005 (n + 1))

end

end A349913.P1173972992134408244

namespace A349913

/-- `A000005(2*(n+1))+A327276(n+1)-A000005(n+1)` -/
def P1173972992134408244.Spec : Prop :=
  ∀ n, P1173972992134408244.a n = A349913 (n + 1)

end A349913

/-! ## A349913.P15992765698768104346

`A327276(n+1)+∑{d}[n+1, A000035(#)]`
-/

namespace A349913.P15992765698768104346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327276 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A000035 d

end

end A349913.P15992765698768104346

namespace A349913

/-- `A327276(n+1)+∑{d}[n+1, A000035(#)]` -/
def P15992765698768104346.Spec : Prop :=
  ∀ n, P15992765698768104346.a n = A349913 (n + 1)

theorem P15992765698768104346.correct : P15992765698768104346.Spec := by
  intro n
  simp only [A349913, Nat.add_sub_cancel, A349913.P15992765698768104346.f1, A349913.P15992765698768104346.a, A349913.P3840109067347682984.a, A000035, A000035.P2023072528413494694.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A327276, A327276.P15454841437412890746.f1, A327276.P15454841437412890746.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A209229, A209229.P14119267658822519212.f1, A209229.P14119267658822519212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A349913

/-!
# A349914: Sum of A000593 (the sum of odd divisors function) and its Dirichlet inverse.

The programs for A349914, the canonical program `A349914.P5312422532609630114` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349914 has offset 1).

The definition of A349914 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327278, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A349914.P5312422532609630114

`A000593(n+1)+A327278(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A349914

/-- `A000593(n+1)+A327278(n+1)` -/
def P5312422532609630114.Spec : Prop :=
  ∀ n, P5312422532609630114.a n = A349914 (n + 1)

theorem P5312422532609630114.correct : P5312422532609630114.Spec := by
  intro n
  simp only [A349914, Nat.add_sub_cancel]

end A349914

/-! ## A349914.P8387299732228458956

`A327278(n+1)+A000203(A000265(n+1))`
-/

namespace A349914.P8387299732228458956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327278 (n + 1) + A000203 (A000265 (n + 1)).toNat

end

end A349914.P8387299732228458956

namespace A349914

/-- `A327278(n+1)+A000203(A000265(n+1))` -/
def P8387299732228458956.Spec : Prop :=
  ∀ n, P8387299732228458956.a n = A349914 (n + 1)

end A349914

/-! ## A349914.P2585542699459660805

`A000593(n+1)+A326938(n+1)/A006519(n+1)`
-/

namespace A349914.P2585542699459660805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000593 (n + 1) : ℚ) + (A326938 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A349914.P2585542699459660805

namespace A349914

/-- `A000593(n+1)+A326938(n+1)/A006519(n+1)` -/
def P2585542699459660805.Spec : Prop :=
  ∀ n, P2585542699459660805.a n = (A349914 (n + 1) : ℚ)

end A349914

/-! ## A349914.P3087543833201363762

`(A326938(n+1)+A002131(n+1))/A006519(n+1)`
-/

namespace A349914.P3087543833201363762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326938 (n + 1) + A002131 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A349914.P3087543833201363762

namespace A349914

/-- `(A326938(n+1)+A002131(n+1))/A006519(n+1)` -/
def P3087543833201363762.Spec : Prop :=
  ∀ n, P3087543833201363762.a n = (A349914 (n + 1) : ℚ)

end A349914

/-! ## A349914.P3980083422102197350

`A327278(n+1)+A002131(n+1)/A006519(n+1)`
-/

namespace A349914.P3980083422102197350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327278 (n + 1) : ℚ) + (A002131 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A349914.P3980083422102197350

namespace A349914

/-- `A327278(n+1)+A002131(n+1)/A006519(n+1)` -/
def P3980083422102197350.Spec : Prop :=
  ∀ n, P3980083422102197350.a n = (A349914 (n + 1) : ℚ)

end A349914

/-! ## A349914.P17588598237792466495

`A327278(n+1)+gcd(A000203(n+1), A002129(n+1))`
-/

namespace A349914.P17588598237792466495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327278 (n + 1) + (Int.gcd (A000203 (n + 1)) (A002129 (n + 1)) : ℤ)

end

end A349914.P17588598237792466495

namespace A349914

/-- `A327278(n+1)+gcd(A000203(n+1), A002129(n+1))` -/
def P17588598237792466495.Spec : Prop :=
  ∀ n, P17588598237792466495.a n = A349914 (n + 1)

end A349914

/-!
# A349915: Dirichlet inverse of A113415, where A113415 is the arithmetic mean between the number and sum of the odd divisors of n.

The programs for A349915, there is no canonical definition to state claims against.
-/

/-! ## A349915.P1892992845365062698

`A349916(n+1)-A113415(n+1)`
-/

namespace A349915.P1892992845365062698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349916 (n + 1) - A113415 (n + 1)

end

end A349915.P1892992845365062698

/-! ## A349915.P9140802569871869108

`∑{d}[n+1, A000010(#)*A349353((n+1)/#)]`
-/

namespace A349915.P9140802569871869108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A349353 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349915.P9140802569871869108

/-! ## A349915.P18121711499937397446

`∑{d}[n+1, A007427(#)*A349445((n+1)/#)]`
-/

namespace A349915.P18121711499937397446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A349445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349915.P18121711499937397446

/-! ## A349915.P4935782205210017918

`∑{d}[n+1, A067856(#)*A349344((n+1)/#)]`
-/

namespace A349915.P4935782205210017918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067856 d * A349344 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349915.P4935782205210017918

/-! ## A349915.P18386144089033922830

`∑{d}[n+1, A087003(#)*A349134((n+1)/#)]`
-/

namespace A349915.P18386144089033922830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A349134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349915.P18386144089033922830

/-! ## A349915.P9219436338189768061

`∑{d}[n+1, A209635(#)*A349346((n+1)/#)]`
-/

namespace A349915.P9219436338189768061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A209635 d * A349346 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349915.P9219436338189768061

/-! ## A349915.P16335832756217911400

`∑{d}[n+1, A326938(#)*A349432((n+1)/#)]`
-/

namespace A349915.P16335832756217911400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326938 d * A349432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349915.P16335832756217911400

/-! ## A349915.P194729657343824009

`∑{d}[n+1, A327278(#)*A349448((n+1)/#)]`
-/

namespace A349915.P194729657343824009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327278 d * A349448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A349915.P194729657343824009

/-! ## A349915.P11589009491512302656

`A349916(n+1)-A336840(A064989(n+1))`
-/

namespace A349915.P11589009491512302656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349916 (n + 1) - A336840 (A064989 (n + 1)).toNat

end

end A349915.P11589009491512302656

/-! ## A349915.P6638949599643026538

`A349916(n+1)-A349916(A205382(n+1)/2)`
-/

namespace A349915.P6638949599643026538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349916 (n + 1) - A349916 (SequenceMachineLib.roundAway ((A205382 (n + 1) : ℚ) / 2)).toNat

end

end A349915.P6638949599643026538

/-! ## A349915.P15669092574622891822

`A349916(n+1)-A349916(A205382(n+1))`
-/

namespace A349915.P15669092574622891822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349916 (n + 1) - A349916 (A205382 (n + 1)).toNat

end

end A349915.P15669092574622891822

/-!
# A349916: Sum of A113415 and its Dirichlet inverse, where A113415 is the arithmetic mean between the number and sum of the odd divisors of n.

The programs for A349916, there is no canonical definition to state claims against.
-/

/-! ## A349916.P4415822532586861699

`A113415(n+1)+A349915(n+1)`
-/

namespace A349916.P4415822532586861699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113415 (n + 1) + A349915 (n + 1)

end

end A349916.P4415822532586861699

/-! ## A349916.P1938503306117558307

`A349915(n+1)+A069734(A000265(n+1))`
-/

namespace A349916.P1938503306117558307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349915 (n + 1) + A069734 (A000265 (n + 1)).toNat

end

end A349916.P1938503306117558307

/-! ## A349916.P4479426142297796763

`A349915(n+1)+A336840(A064989(n+1))`
-/

namespace A349916.P4479426142297796763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349915 (n + 1) + A336840 (A064989 (n + 1)).toNat

end

end A349916.P4479426142297796763

/-! ## A349916.P3680107645365427198

`A349915(n+1)+A349371(A000265(2*(n+1)))`
-/

namespace A349916.P3680107645365427198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349915 (n + 1) + A349371 (A000265 (2 * (n + 1))).toNat

end

end A349916.P3680107645365427198

/-! ## A349916.P2364702764762576305

`A349915(n+1)+A349371(n+1)/A001511(n+1)`
-/

namespace A349916.P2364702764762576305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349915 (n + 1) : ℚ) + (A349371 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A349916.P2364702764762576305

/-!
# A349918: Irregular table read by rows; the first row contains 1; for n > 1, the n-th row contains the base-n digits of the number whose base-(n-1) expansion is the concatenation of the previous rows.

The programs for A349918, there is no canonical definition to state claims against.
-/

/-! ## A349918.P12559878915866549559

`A314541(A142474(n+1))%4`
-/

namespace A349918.P12559878915866549559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A314541 (A142474 (n + 1)).toNat) 4

end

end A349918.P12559878915866549559

/-! ## A349918.P8301843251818654223

`A190544(A147673(n)+A063495(n+1))`
-/

namespace A349918.P8301843251818654223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190544 (A147673 n + A063495 (n + 1)).toNat

end

end A349918.P8301843251818654223

/-! ## A349918.P1907795668416916743

`A031219(A316432(2*(n+2))^A031219(n+1))`
-/

namespace A349918.P1907795668416916743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031219 (SequenceMachineLib.roundAway ((A316432 (2 * (n + 2)) : ℚ) ^ (A031219 (n + 1) : ℤ))).toNat

end

end A349918.P1907795668416916743

/-! ## A349918.P7347367744139985323

`and(A034954(2*n+1), A237442(A032157(2*n+1)))`
-/

namespace A349918.P7347367744139985323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034954 (2 * n + 1)) (A237442 (A032157 (2 * n + 1)).toNat)

end

end A349918.P7347367744139985323

/-!
# A349919: Number of transitive relations on an n-set with exactly two ordered pairs.

The programs for A349919, the canonical program `A349919.P10104168673941358758` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349919 has offset 0).

The definition of A349919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349919.P10104168673941358758

`5*C(n, 2)+12*C(n, 3)+12*C(n, 4)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A349919

/-- `5*C(n, 2)+12*C(n, 3)+12*C(n, 4)` -/
def P10104168673941358758.Spec : Prop :=
  ∀ n, (P10104168673941358758.a n : ℤ) = A349919 n

theorem P10104168673941358758.correct : P10104168673941358758.Spec := by
  intro n
  simp only [A349919]

end A349919

/-! ## A349919.P3983052824172550231

`1/2*(n^4-2*n^3+4*n²-3*n)`
-/

namespace A349919.P3983052824172550231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((n ^ 4 : ℤ) - (2 * n ^ 3 : ℤ) + (4 * n ^ 2 : ℤ) - (3 * n : ℤ) : ℚ)

end

end A349919.P3983052824172550231

namespace A349919

/-- `1/2*(n^4-2*n^3+4*n²-3*n)` -/
def P3983052824172550231.Spec : Prop :=
  ∀ n, P3983052824172550231.a n = (A349919 n : ℚ)

theorem P3983052824172550231.correct : P3983052824172550231.Spec := by
  intro n
  simp only [A349919, Nat.add_sub_cancel, A349919.P3983052824172550231.a, A349919.P10104168673941358758.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A349919

/-! ## A349919.P2353420825950400589

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=5, a(3)=27, a(4)=90`
-/

namespace A349919.P2353420825950400589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 5, 27, 90] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A349919.P2353420825950400589

namespace A349919

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P2353420825950400589.Spec : Prop :=
  ∀ n, P2353420825950400589.a n = A349919 n

end A349919

/-! ## A349919.P6583381406193623155

`C(n²+2-n, 2)-1`
-/

namespace A349919.P6583381406193623155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n ^ 2 : ℤ) + (2 - (n : ℤ))).toNat 2 : ℤ) - 1

end

end A349919.P6583381406193623155

namespace A349919

/-- `C(n²+2-n, 2)-1` -/
def P6583381406193623155.Spec : Prop :=
  ∀ n, P6583381406193623155.a n = A349919 n

end A349919

/-! ## A349919.P17315008322415247316

`abs(1-C(n²-(n-2), 2))`
-/

namespace A349919.P17315008322415247316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.choose ((n ^ 2 : ℤ) - ((n : ℤ) - 2)).toNat 2 : ℤ)|

end

end A349919.P17315008322415247316

namespace A349919

/-- `abs(1-C(n²-(n-2), 2))` -/
def P17315008322415247316.Spec : Prop :=
  ∀ n, P17315008322415247316.a n = A349919 n

end A349919

/-! ## A349919.P5965203766534933134

`abs(C(∑[abs(2*(1-n))], 2)-1)`
-/

namespace A349919.P5965203766534933134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (1 - (n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 : ℤ) - 1|

end

end A349919.P5965203766534933134

namespace A349919

/-- `abs(C(∑[abs(2*(1-n))], 2)-1)` -/
def P5965203766534933134.Spec : Prop :=
  ∀ n, P5965203766534933134.a n = A349919 n

end A349919

/-! ## A349919.P14039695603402820960

`A212135(n)+C(n, 2)`
-/

namespace A349919.P14039695603402820960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212135 n + (Nat.choose n 2 : ℤ)

end

end A349919.P14039695603402820960

namespace A349919

/-- `A212135(n)+C(n, 2)` -/
def P14039695603402820960.Spec : Prop :=
  ∀ n, P14039695603402820960.a n = A349919 n

end A349919

/-! ## A349919.P2041867682414296509

`A212135(n)+A161680(n)`
-/

namespace A349919.P2041867682414296509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212135 n + A161680 n

end

end A349919.P2041867682414296509

namespace A349919

/-- `A212135(n)+A161680(n)` -/
def P2041867682414296509.Spec : Prop :=
  ∀ n, P2041867682414296509.a n = A349919 n

end A349919

/-! ## A349919.P4340237643739294717

`A062392(n)-A059722(n)`
-/

namespace A349919.P4340237643739294717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062392 n - A059722 n

end

end A349919.P4340237643739294717

namespace A349919

/-- `A062392(n)-A059722(n)` -/
def P4340237643739294717.Spec : Prop :=
  ∀ n, P4340237643739294717.a n = A349919 n

end A349919

/-! ## A349919.P624366462061820693

`A058919(n)-A080956(n)`
-/

namespace A349919.P624366462061820693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058919 n - A080956 n

end

end A349919.P624366462061820693

namespace A349919

/-- `A058919(n)-A080956(n)` -/
def P624366462061820693.Spec : Prop :=
  ∀ n, P624366462061820693.a n = A349919 n

end A349919

/-! ## A349919.P2222340043093539706

`A100855(n)-A060354(n)`
-/

namespace A349919.P2222340043093539706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100855 n - A060354 n

end

end A349919.P2222340043093539706

namespace A349919

/-- `A100855(n)-A060354(n)` -/
def P2222340043093539706.Spec : Prop :=
  ∀ n, P2222340043093539706.a n = A349919 n

end A349919

/-! ## A349919.P16742261351184162849

`A101375(n)-A162607(n)`
-/

namespace A349919.P16742261351184162849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101375 n - A162607 n

end

end A349919.P16742261351184162849

namespace A349919

/-- `A101375(n)-A162607(n)` -/
def P16742261351184162849.Spec : Prop :=
  ∀ n, P16742261351184162849.a n = A349919 n

end A349919

/-! ## A349919.P4206621518233914694

`A393238(n)-A002522(n)`
-/

namespace A349919.P4206621518233914694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393238 n - A002522 n

end

end A349919.P4206621518233914694

namespace A349919

/-- `A393238(n)-A002522(n)` -/
def P4206621518233914694.Spec : Prop :=
  ∀ n, P4206621518233914694.a n = A349919 n

theorem P4206621518233914694.correct : P4206621518233914694.Spec := by
  intro n
  simp only [A349919, Nat.add_sub_cancel, A349919.P4206621518233914694.a, A349919.P10104168673941358758.a, A002522, A002522.P3778392011853271743.a, A393238, A393238.P17553377918589216133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A349919

/-! ## A349919.P5053882565635687050

`A082106(n)-A336535(n+1)`
-/

namespace A349919.P5053882565635687050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082106 n - A336535 (n + 1)

end

end A349919.P5053882565635687050

namespace A349919

/-- `A082106(n)-A336535(n+1)` -/
def P5053882565635687050.Spec : Prop :=
  ∀ n, P5053882565635687050.a n = A349919 n

end A349919

/-! ## A349919.P4456902303275001599

`A117665(n)+A326725(n)-n²`
-/

namespace A349919.P4456902303275001599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117665 n + (A326725 n - (n ^ 2 : ℤ))

end

end A349919.P4456902303275001599

namespace A349919

/-- `A117665(n)+A326725(n)-n²` -/
def P4456902303275001599.Spec : Prop :=
  ∀ n, P4456902303275001599.a n = A349919 n

end A349919

/-! ## A349919.P8546878163826192086

`A152947(n+1)+A058919(n)-2`
-/

namespace A349919.P8546878163826192086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1) + (A058919 n - 2)

end

end A349919.P8546878163826192086

namespace A349919

/-- `A152947(n+1)+A058919(n)-2` -/
def P8546878163826192086.Spec : Prop :=
  ∀ n, P8546878163826192086.a n = A349919 n

end A349919

/-! ## A349919.P9740012421408056612

`A007590(n)+A058919(n)-A008619(n)`
-/

namespace A349919.P9740012421408056612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n + (A058919 n - A008619 n)

end

end A349919.P9740012421408056612

namespace A349919

/-- `A007590(n)+A058919(n)-A008619(n)` -/
def P9740012421408056612.Spec : Prop :=
  ∀ n, P9740012421408056612.a n = A349919 n

end A349919

/-! ## A349919.P8471163398561515066

`A000982(n)+A058919(n)-A008619(n+1)`
-/

namespace A349919.P8471163398561515066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n + (A058919 n - A008619 (n + 1))

end

end A349919.P8471163398561515066

namespace A349919

/-- `A000982(n)+A058919(n)-A008619(n+1)` -/
def P8471163398561515066.Spec : Prop :=
  ∀ n, P8471163398561515066.a n = A349919 n

end A349919

/-! ## A349919.P1730093692646019069

`A000217(A002061(n))-1`
-/

namespace A349919.P1730093692646019069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002061 n).toNat - 1

end

end A349919.P1730093692646019069

namespace A349919

/-- `A000217(A002061(n))-1` -/
def P1730093692646019069.Spec : Prop :=
  ∀ n, P1730093692646019069.a n = A349919 n

end A349919

/-! ## A349919.P5859590378318220213

`A000217(A165900(n)+2)-1`
-/

namespace A349919.P5859590378318220213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A165900 n + 2).toNat - 1

end

end A349919.P5859590378318220213

namespace A349919

/-- `A000217(A165900(n)+2)-1` -/
def P5859590378318220213.Spec : Prop :=
  ∀ n, P5859590378318220213.a n = A349919 n

end A349919

/-!
# A349920: Dirichlet g.f.: Product_{k>=2} (1 - mu(k)^2 * k^(-s)).

The programs for A349920, there is no canonical definition to state claims against.
-/

/-! ## A349920.P13298923051798747499

`A015472(A277130(n+1))`
-/

namespace A349920.P13298923051798747499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015472 (A277130 (n + 1)).toNat

end

end A349920.P13298923051798747499

/-! ## A349920.P961063744158426702

`A016367(A320390(n+1))`
-/

namespace A349920.P961063744158426702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016367 (A320390 (n + 1)).toNat

end

end A349920.P961063744158426702

/-! ## A349920.P18158093011082369126

`A016381(A016009(n+1)-1)`
-/

namespace A349920.P18158093011082369126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016381 (A016009 (n + 1) - 1).toNat

end

end A349920.P18158093011082369126

/-! ## A349920.P16620387654421058501

`A030199(A188581(n+1))^A274649(n)`
-/

namespace A349920.P16620387654421058501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030199 (A188581 (n + 1)).toNat : ℚ) ^ (A274649 n : ℤ)

end

end A349920.P16620387654421058501

/-! ## A349920.P11518387403826830592

`A334743(n+1)%A152177(n)`
-/

namespace A349920.P11518387403826830592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334743 (n + 1)) (A152177 n)

end

end A349920.P11518387403826830592

/-!
# A349921: Dirichlet g.f.: Product_{k>=2} 1 / (1 - 2 * k^(-s)).

The programs for A349921, there is no canonical definition to state claims against.
-/

/-! ## A349921.P568901161714957568

`A343378(5*A066637(n+1))`
-/

namespace A349921.P568901161714957568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343378 (5 * A066637 (n + 1)).toNat

end

end A349921.P568901161714957568

/-! ## A349921.P18100284642814157150

`A343378(lcm(5, A066637(n+1)))`
-/

namespace A349921.P18100284642814157150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343378 (Int.lcm 5 (A066637 (n + 1)))

end

end A349921.P18100284642814157150

/-! ## A349921.P13954162722895656011

`A007782(A309891(n+1))%A125851(n+4)`
-/

namespace A349921.P13954162722895656011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007782 (A309891 (n + 1)).toNat) (A125851 (n + 4))

end

end A349921.P13954162722895656011

/-! ## A349921.P13622054532062577775

`A096532(2^∑{e}[n+1, #]*A001055(n+1))`
-/

namespace A349921.P13622054532062577775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096532 ((2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ) * A001055 (n + 1)).toNat

end

end A349921.P13622054532062577775

/-!
# A349923: Dirichlet g.f.: Product_{k>=2} (1 + 2 * k^(-s)).

The programs for A349923, there is no canonical definition to state claims against.
-/

/-! ## A349923.P7669431747094525069

`A324572(14*A056924(n+1))`
-/

namespace A349923.P7669431747094525069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324572 (14 * A056924 (n + 1)).toNat

end

end A349923.P7669431747094525069

/-! ## A349923.P11123130338953472714

`A055895(A056924(n+1)%A116077(n))`
-/

namespace A349923.P11123130338953472714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055895 (Int.tmod (A056924 (n + 1)) (A116077 n)).toNat

end

end A349923.P11123130338953472714

/-! ## A349923.P14096590818502559472

`A039722(A000005(n+1)%A133597(n+1))`
-/

namespace A349923.P14096590818502559472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039722 (Int.tmod (A000005 (n + 1)) (A133597 (n + 1))).toNat

end

end A349923.P14096590818502559472

/-!
# A349924: Dirichlet g.f.: Product_{k>=2} (1 + 3 * k^(-s)).

The programs for A349924, there is no canonical definition to state claims against.
-/

/-! ## A349924.P11622511912520111075

`A055041(A045778(n+1))%A179386(n+1)`
-/

namespace A349924.P11622511912520111075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055041 (A045778 (n + 1)).toNat) (A179386 (n + 1))

end

end A349924.P11622511912520111075

/-! ## A349924.P11288948462090188843

`A032308(A364818(n+1)%A318938(2*n+1))`
-/

namespace A349924.P11288948462090188843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032308 (Int.tmod (A364818 (n + 1)) (A318938 (2 * n + 1))).toNat

end

end A349924.P11288948462090188843

/-! ## A349924.P6386461358212072762

`A032308(A364818(n+1))%A225554(2*(n+3))`
-/

namespace A349924.P6386461358212072762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032308 (A364818 (n + 1)).toNat) (A225554 (2 * (n + 3)))

end

end A349924.P6386461358212072762

/-! ## A349924.P14069853310539480732

`A052217(A045778(n+1))%A097977(n+1)`
-/

namespace A349924.P14069853310539480732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052217 (A045778 (n + 1)).toNat) (A097977 (n + 1))

end

end A349924.P14069853310539480732

/-! ## A349924.P9565929414395865652

`A074276(A045778(n+1))%A181376(n+1)`
-/

namespace A349924.P9565929414395865652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074276 (A045778 (n + 1)).toNat) (A181376 (n + 1))

end

end A349924.P9565929414395865652

/-!
# A349925: Dirichlet g.f.: Product_{k>=2} (1 - 2 * k^(-s)).

The programs for A349925, there is no canonical definition to state claims against.
-/

/-! ## A349925.P11386325474738213832

`A293375(A349924(n+1))`
-/

namespace A349925.P11386325474738213832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293375 (A349924 (n + 1)).toNat

end

end A349925.P11386325474738213832

/-! ## A349925.P3785075311110384188

`A194577(A000005(n+1)!+1)`
-/

namespace A349925.P3785075311110384188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194577 (Nat.factorial (A000005 (n + 1)).toNat + 1)

end

end A349925.P3785075311110384188

/-! ## A349925.P13043629933120557679

`A194577(A181819(n+1)!+1)`
-/

namespace A349925.P13043629933120557679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194577 (Nat.factorial (A181819 (n + 1)).toNat + 1)

end

end A349925.P13043629933120557679

/-! ## A349925.P10736571084859202920

`A276551(A007814(∏{e}[n+1, #+1]!))`
-/

namespace A349925.P10736571084859202920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276551 (A007814 (Nat.factorial (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))).toNat

end

end A349925.P10736571084859202920

/-! ## A349925.P4379015043750781475

`A114005(A000005(n+1)%A371463(3*(n+1)))`
-/

namespace A349925.P4379015043750781475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114005 (Int.tmod (A000005 (n + 1)) (A371463 (3 * (n + 1)))).toNat

end

end A349925.P4379015043750781475

/-!
# A349926: Dirichlet g.f.: Product_{k>=2} (1 - 3 * k^(-s)).

The programs for A349926, there is no canonical definition to state claims against.
-/

/-! ## A349926.P6688959412256783166

`A292128(A061769(2*n+3)%A000005(n+1))`
-/

namespace A349926.P6688959412256783166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292128 (Int.tmod (A061769 (2 * n + 3)) (A000005 (n + 1))).toNat

end

end A349926.P6688959412256783166

/-!
# A349927: Number of transitive relations on an n-set with exactly three ordered pairs.

The programs for A349927, the canonical program `A349927.P10752644657425860974` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349927 has offset 0).

The definition of A349927 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349927.P10752644657425860974

`2*C(n, 2)+37*C(n, 3)+116*C(n, 4)+180*C(n, 5)+120*C(n, 6)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A349927

/-- `2*C(n, 2)+37*C(n, 3)+116*C(n, 4)+180*C(n, 5)+120*C(n, 6)` -/
def P10752644657425860974.Spec : Prop :=
  ∀ n, (P10752644657425860974.a n : ℤ) = A349927 n

theorem P10752644657425860974.correct : P10752644657425860974.Spec := by
  intro n
  simp only [A349927]

end A349927

/-! ## A349927.P14884405119207452855

`n²-n+37*C(n, 3)+C(n, 4)*116+C(n, 5)*180+C(n, 6)*120`
-/

namespace A349927.P14884405119207452855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ) + (37 * Nat.choose n 3 : ℤ) + (Nat.choose n 4 * 116 : ℤ) + (Nat.choose n 5 * 180 : ℤ) + (Nat.choose n 6 * 120 : ℤ)

end

end A349927.P14884405119207452855

namespace A349927

/-- `n²-n+37*C(n, 3)+C(n, 4)*116+C(n, 5)*180+C(n, 6)*120` -/
def P14884405119207452855.Spec : Prop :=
  ∀ n, P14884405119207452855.a n = A349927 n

theorem P14884405119207452855.correct : P14884405119207452855.Spec := by
  intro n
  simp only [A349927, Nat.add_sub_cancel, A349927.P14884405119207452855.a, A349927.P10752644657425860974.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A349927

/-! ## A349927.P8446796094654072802

`A393295(n)-A393238(n)`
-/

namespace A349927.P8446796094654072802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393295 n - A393238 n

end

end A349927.P8446796094654072802

namespace A349927

/-- `A393295(n)-A393238(n)` -/
def P8446796094654072802.Spec : Prop :=
  ∀ n, P8446796094654072802.a n = A349927 n

theorem P8446796094654072802.correct : P8446796094654072802.Spec := by
  intro n
  simp only [A349927, Nat.add_sub_cancel, A349927.P8446796094654072802.a, A349927.P10752644657425860974.a, A393238, A393238.P17553377918589216133.a, A393295, A393295.P4032472479384952545.a, A349919, A349919.P10104168673941358758.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A349927

/-! ## A349927.P4467092396694497343

`A394722(n)-(A393238(n)+A349849(n))`
-/

namespace A349927.P4467092396694497343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394722 n - (A393238 n + A349849 n)

end

end A349927.P4467092396694497343

namespace A349927

/-- `A394722(n)-(A393238(n)+A349849(n))` -/
def P4467092396694497343.Spec : Prop :=
  ∀ n, P4467092396694497343.a n = A349927 n

end A349927

/-!
# A349928: a(n) = Sum_{k=0..n} (k+n)^k.

The programs for A349928, there is no canonical definition to state claims against.
-/

/-! ## A349928.P14823532607788217343

`A303595(A301581(n))+n`
-/

namespace A349928.P14823532607788217343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303595 (A301581 n).toNat + (n : ℤ)

end

end A349928.P14823532607788217343

/-!
# A349929: Numbers k such that A349509(k) = 3.

The programs for A349929, there is no canonical definition to state claims against.
-/

/-! ## A349929.P15097005892942711351

`lt[1, A349509(n+1)]+1`
-/

namespace A349929.P15097005892942711351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A349929.P15097005892942711351

/-! ## A349929.P7905200313921311369

`eq[3, A349509(A028310(n))]`
-/

namespace A349929.P7905200313921311369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349509 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A349929.P7905200313921311369

/-! ## A349929.P1652777302429647724

`lt[1, A349509(n*a(n-2))]` with `a(0)=1, a(1)=1`
-/

namespace A349929.P1652777302429647724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A349509 ((n : ℤ) * f2 (n - 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A349929.P1652777302429647724

/-! ## A349929.P17558870649185786519

`lt[1, A349509(A233583(n+1))]`
-/

namespace A349929.P17558870649185786519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349509 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A349929.P17558870649185786519

/-!
# A349931: Numbers that have an equal number of factorizations of even and odd length in both unordered and ordered manners.

The programs for A349931, there is no canonical definition to state claims against.
-/

/-! ## A349931.P8734220846818757030

`filter[A319240(n+1), A087049(#)]`
-/

namespace A349931.P8734220846818757030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A349931.P8734220846818757030

/-! ## A349931.P6233559470247644135

`filter[A319240(n+1), A107078(#)]`
-/

namespace A349931.P6233559470247644135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A349931.P6233559470247644135

/-! ## A349931.P3802405162612869843

`∩[A013929(n+1), A319240(n+1)]`
-/

namespace A349931.P3802405162612869843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349931.P3802405162612869843

/-! ## A349931.P686257639876591413

`∩[A066423(n+1), A319240(n+1)]`
-/

namespace A349931.P686257639876591413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349931.P686257639876591413

/-! ## A349931.P11063625792896830718

`∩[A072498(n+1), A319240(n+1)]`
-/

namespace A349931.P11063625792896830718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349931.P11063625792896830718

/-! ## A349931.P10332086993060842646

`∩[A072587(n+1), A319240(n+1)]`
-/

namespace A349931.P10332086993060842646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349931.P10332086993060842646

/-! ## A349931.P15225280878753961483

`∩[A162643(n+1), A319240(n+1)]`
-/

namespace A349931.P15225280878753961483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349931.P15225280878753961483

/-! ## A349931.P5053700929289290743

`∩[A162966(n+1), A319240(n+1)]`
-/

namespace A349931.P5053700929289290743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349931.P5053700929289290743

/-! ## A349931.P1810083788524651192

`∩[A210994(n+1), A319240(n+1)]`
-/

namespace A349931.P1810083788524651192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349931.P1810083788524651192

/-! ## A349931.P4077268309691887512

`∩[A246716(n+1), A319240(n+1)]`
-/

namespace A349931.P4077268309691887512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349931.P4077268309691887512

/-!
# A349932: Product of n and its binary ones' complement.

The programs for A349932, the canonical program `A349932.P7251384286632821414` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349932 has offset 1).

The definition of A349932 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349932.P7251384286632821414

`(n+1)*A035327(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A349932

/-- `(n+1)*A035327(n+1)` -/
def P7251384286632821414.Spec : Prop :=
  ∀ n, P7251384286632821414.a n = A349932 (n + 1)

theorem P7251384286632821414.correct : P7251384286632821414.Spec := by
  intro n
  simp only [A349932, Nat.add_sub_cancel]

end A349932

/-! ## A349932.P11404369613918282384

`(n+1)*(n-a(n-1)%(n+1))` with `a(0)=0`
-/

namespace A349932.P11404369613918282384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n + 1 : ℤ) * ((n : ℤ) - Int.tmod (a (n - 1)) (n + 1 : ℤ))

end

end A349932.P11404369613918282384

namespace A349932

/-- `(n+1)*(n-a(n-1)%(n+1))` -/
def P11404369613918282384.Spec : Prop :=
  ∀ n, P11404369613918282384.a n = A349932 (n + 1)

end A349932

/-! ## A349932.P14358288698234012382

`(n+1)*∑[Δ[2^ceil(log2(n+1))]-1]`
-/

namespace A349932.P14358288698234012382
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A349932.P14358288698234012382

namespace A349932

/-- `(n+1)*∑[Δ[2^ceil(log2(n+1))]-1]` -/
def P14358288698234012382.Spec : Prop :=
  ∀ n, P14358288698234012382.a n = (A349932 (n + 1) : ℚ)

end A349932

/-! ## A349932.P6127112683996605746

`∑[2*Δ[n/2*A035327(n)]]`
-/

namespace A349932.P6127112683996605746
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A035327 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349932.P6127112683996605746

namespace A349932

/-- `∑[2*Δ[n/2*A035327(n)]]` -/
def P6127112683996605746.Spec : Prop :=
  ∀ n, P6127112683996605746.a n = (A349932 (n + 1) : ℚ)

end A349932

/-! ## A349932.P469181592635365035

`abs((n+1)*(A080079(n+1)-1))`
-/

namespace A349932.P469181592635365035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (A080079 (n + 1) - 1)|

end

end A349932.P469181592635365035

namespace A349932

/-- `abs((n+1)*(A080079(n+1)-1))` -/
def P469181592635365035.Spec : Prop :=
  ∀ n, P469181592635365035.a n = A349932 (n + 1)

end A349932

/-! ## A349932.P5310923628879266533

`A020330(n+1)-((n+2)²-1)`
-/

namespace A349932.P5310923628879266533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020330 (n + 1) - (((n + 2) ^ 2 : ℤ) - 1)

end

end A349932.P5310923628879266533

namespace A349932

/-- `A020330(n+1)-((n+2)²-1)` -/
def P5310923628879266533.Spec : Prop :=
  ∀ n, P5310923628879266533.a n = A349932 (n + 1)

end A349932

/-! ## A349932.P16802303453630012128

`(n+1)*(A003817(n+1)-n)-(n+1)`
-/

namespace A349932.P16802303453630012128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A003817 (n + 1) - (n : ℤ)) - (n + 1 : ℤ)

end

end A349932.P16802303453630012128

namespace A349932

/-- `(n+1)*(A003817(n+1)-n)-(n+1)` -/
def P16802303453630012128.Spec : Prop :=
  ∀ n, P16802303453630012128.a n = A349932 (n + 1)

end A349932

/-!
# A349933: Array read by ascending antidiagonals: the s-th column gives the central s-binomial coefficients.

The programs for A349933, there is no canonical definition to state claims against.
-/

/-! ## A349933.P10061469799981820244

`A163269(∑[1-char[∑[n]]]+1)`
-/

namespace A349933.P10061469799981820244
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163269 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A349933.P10061469799981820244

/-! ## A349933.P1774108535421058461

`gcd(C(2, n), A163269(A122797(n+1)))`
-/

namespace A349933.P1774108535421058461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A163269 (A122797 (n + 1)).toNat)

end

end A349933.P1774108535421058461

/-! ## A349933.P12468564762913518908

`A163269(A122797(n+1))^A035214(n)`
-/

namespace A349933.P12468564762913518908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163269 (A122797 (n + 1)).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A349933.P12468564762913518908

/-! ## A349933.P17978239729257320438

`gcd(A000038(n), A163269(A122797(n+1)))`
-/

namespace A349933.P17978239729257320438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A163269 (A122797 (n + 1)).toNat)

end

end A349933.P17978239729257320438

/-! ## A349933.P5573770085301570424

`A033999(n)²*A163269(A122797(n+1))`
-/

namespace A349933.P5573770085301570424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A163269 (A122797 (n + 1)).toNat

end

end A349933.P5573770085301570424

/-! ## A349933.P11092764867083709060

`A163269(A122797(n+1))^and(1, A000040(n+1))`
-/

namespace A349933.P11092764867083709060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163269 (A122797 (n + 1)).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A349933.P11092764867083709060

/-! ## A349933.P14276006517230280407

`A014963(26*(n+1))*A163269(A122797(n+1))`
-/

namespace A349933.P14276006517230280407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (26 * (n + 1)) * A163269 (A122797 (n + 1)).toNat

end

end A349933.P14276006517230280407

/-! ## A349933.P8816435809589471533

`A020639(gcd(n, n+1))*A163269(A122797(n+1))`
-/

namespace A349933.P8816435809589471533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.gcd n (n + 1)) * A163269 (A122797 (n + 1)).toNat

end

end A349933.P8816435809589471533

/-! ## A349933.P17399187985633944454

`A000041(ceil(n/(n+1)))*A163269(A122797(n+1))`
-/

namespace A349933.P17399187985633944454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A163269 (A122797 (n + 1)).toNat

end

end A349933.P17399187985633944454

/-!
# A349934: Array read by ascending antidiagonals: A(n, s) is the n-th s-Catalan number.

The programs for A349934, there is no canonical definition to state claims against.
-/

/-! ## A349934.P13921703015485227368

`A094275(A188416(n+1))`
-/

namespace A349934.P13921703015485227368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094275 (A188416 (n + 1)).toNat

end

end A349934.P13921703015485227368

/-! ## A349934.P4120574234459087058

`A345393(n)+A143772(A198723(n+1))`
-/

namespace A349934.P4120574234459087058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345393 n + A143772 (A198723 (n + 1)).toNat

end

end A349934.P4120574234459087058

/-! ## A349934.P1966825818839802754

`A002260(A156764(n)*A324428(n+1))`
-/

namespace A349934.P1966825818839802754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A156764 n * A324428 (n + 1)).toNat

end

end A349934.P1966825818839802754

/-! ## A349934.P3700318732654349358

`A131818(A156764(n)*A324428(n+1))`
-/

namespace A349934.P3700318732654349358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A156764 n * A324428 (n + 1)).toNat

end

end A349934.P3700318732654349358

/-! ## A349934.P1817350024209931464

`A131818(A324428(n+1)^A138352(n))`
-/

namespace A349934.P1817350024209931464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (SequenceMachineLib.roundAway ((A324428 (n + 1) : ℚ) ^ (A138352 n : ℤ))).toNat

end

end A349934.P1817350024209931464

/-!
# A349935: Array read by ascending antidiagonals: A(n, k) is the n-th spin s-Catalan number, with s = k/2.

The programs for A349935, there is no canonical definition to state claims against.
-/

/-! ## A349935.P12409829330563071647

`A161409(A024352(2*(n+1)))%round(acot(n)+n)`
-/

namespace A349935.P12409829330563071647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161409 (A024352 (2 * (n + 1))).toNat) (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)))

end

end A349935.P12409829330563071647

/-! ## A349935.P2378425336476922629

`A103438(A135225(A027642(n))+n+1)`
-/

namespace A349935.P2378425336476922629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103438 (A135225 (A027642 n).toNat + (n + 1 : ℤ)).toNat

end

end A349935.P2378425336476922629

/-!
# A349936: Central pentanomial coefficients.

The programs for A349936, there is no canonical definition to state claims against.
-/

/-! ## A349936.P1438114597269692688

`A005191(2*n)`
-/

namespace A349936.P1438114597269692688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005191 (2 * n)

end

end A349936.P1438114597269692688

/-! ## A349936.P5876803301895403112

`or(1, A005191(A005843(n)))`
-/

namespace A349936.P5876803301895403112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005191 (A005843 n).toNat)

end

end A349936.P5876803301895403112

/-! ## A349936.P3059342227455099924

`record[A005191(A006257(n)+1)]`
-/

namespace A349936.P3059342227455099924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005191 (A006257 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349936.P3059342227455099924

/-! ## A349936.P4525379149114050943

`record[root(A005191(n), A000034(n))]`
-/

namespace A349936.P4525379149114050943
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A005191 n : ℝ) ^ (1 / (A000034 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349936.P4525379149114050943

/-! ## A349936.P4463283013013319433

`record[A005191(n%A109613(n))]`
-/

namespace A349936.P4463283013013319433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005191 (Int.tmod (n : ℤ) (A109613 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349936.P4463283013013319433

/-! ## A349936.P714243005527801105

`A104631(2*n)+A007043(2*n)`
-/

namespace A349936.P714243005527801105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104631 (2 * n) + A007043 (2 * n)

end

end A349936.P714243005527801105

/-! ## A349936.P6014686916936254387

`A163269(A167499(n+2))`
-/

namespace A349936.P6014686916936254387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163269 (A167499 (n + 2)).toNat

end

end A349936.P6014686916936254387

/-! ## A349936.P5988094365483963746

`A163269(A052905(n)+10)`
-/

namespace A349936.P5988094365483963746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163269 (A052905 n + 10).toNat

end

end A349936.P5988094365483963746

/-! ## A349936.P6928390455449570524

`A163269(A167614(n+2)+2)`
-/

namespace A349936.P6928390455449570524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163269 (A167614 (n + 2) + 2).toNat

end

end A349936.P6928390455449570524

/-!
# A349937: Odd numbers k > 1 such that A309906(k-1) < A309906(k) > A309906(k+1).

The programs for A349937, there is no canonical definition to state claims against.
-/

/-! ## A349937.P15200367645641375593

`A000265(A000034(n)*A190474(2*n+1))`
-/

namespace A349937.P15200367645641375593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000034 n * A190474 (2 * n + 1)).toNat

end

end A349937.P15200367645641375593

/-!
# A349939: Terms in A328897 that are not divisible by 3: numbers k > 1 not divisible by 2 or 3 such that A005179(k-1) > A005179(k) < A005179(k+1).

The programs for A349939, there is no canonical definition to state claims against.
-/

/-! ## A349939.P9818398562408853046

`filter[A328897(n+1), A187074(#)]`
-/

namespace A349939.P9818398562408853046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A349939.P9818398562408853046

/-! ## A349939.P8224632196744302788

`filter[A328897(n+1), A359374(#)]`
-/

namespace A349939.P8224632196744302788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A349939.P8224632196744302788

/-! ## A349939.P9318872799230227550

`filter[A328897(n+1), A373155(#)]`
-/

namespace A349939.P9318872799230227550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A349939.P9318872799230227550

/-! ## A349939.P17438234485194972601

`filter[A328897(n+1), A373156(#)]`
-/

namespace A349939.P17438234485194972601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A349939.P17438234485194972601

/-! ## A349939.P16038497404843691534

`filter[A328897(n+1), A374043(#)]`
-/

namespace A349939.P16038497404843691534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A349939.P16038497404843691534

/-! ## A349939.P9405241884534475294

`filter[A328897(n+1), A320106(#)]`
-/

namespace A349939.P9405241884534475294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A349939.P9405241884534475294

/-! ## A349939.P11073477414781056325

`filter[A328897(n+1), A354354(#)]`
-/

namespace A349939.P11073477414781056325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A349939.P11073477414781056325

/-! ## A349939.P4461264137365138789

`∩[A038509(n+1), A328897(n+1)]`
-/

namespace A349939.P4461264137365138789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349939.P4461264137365138789

/-! ## A349939.P3388581165458343866

`∩[A328897(n+1), A374044(n+1)]`
-/

namespace A349939.P3388581165458343866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349939.P3388581165458343866

/-! ## A349939.P13515742091574226270

`∩[A090818(n+1), A328897(n+1)]`
-/

namespace A349939.P13515742091574226270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349939.P13515742091574226270

/-! ## A349939.P716433872695445488

`∩[A007310(n+1), A328897(n+1)]`
-/

namespace A349939.P716433872695445488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349939.P716433872695445488

/-! ## A349939.P6829995783269517940

`∩[A038179(n+1), A328897(n+1)]`
-/

namespace A349939.P6829995783269517940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349939.P6829995783269517940

/-! ## A349939.P5758706840052587

`∩[A064615(n+1), A328897(n+1)]`
-/

namespace A349939.P5758706840052587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349939.P5758706840052587

/-! ## A349939.P6324708426049004638

`∩[A259749(n+1), A328897(n+1)]`
-/

namespace A349939.P6324708426049004638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349939.P6324708426049004638

/-! ## A349939.P16297472978105279700

`∩[A084087(n+1), A328897(n+1)]`
-/

namespace A349939.P16297472978105279700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349939.P16297472978105279700

/-! ## A349939.P7101277147985207885

`∩[A047259(n+1), A328897(n+1)]`
-/

namespace A349939.P7101277147985207885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349939.P7101277147985207885

/-! ## A349939.P4812207339011996687

`∩[A047266(n+1), A328897(n+1)]`
-/

namespace A349939.P4812207339011996687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349939.P4812207339011996687

/-! ## A349939.P7868645746083216361

`∩[A047268(n+1), A328897(n+1)]`
-/

namespace A349939.P7868645746083216361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349939.P7868645746083216361

/-! ## A349939.P15472611493189825017

`∩[A108118(n+1), A328897(n+1)]`
-/

namespace A349939.P15472611493189825017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349939.P15472611493189825017

/-! ## A349939.P12267151509877338379

`∩[A144430(n+1), A328897(n+1)]`
-/

namespace A349939.P12267151509877338379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349939.P12267151509877338379

/-!
# A349940: Terms of A339863 that are congruent to 5 modulo 6: numbers k == 5 (mod 6) such that A005179(k-1) > A005179(k) < A005179(k+1) >A005179(k+2) < A005179(k+3).

The programs for A349940, there is no canonical definition to state claims against.
-/

/-! ## A349940.P13965179624896573415

`∩[A092256(n+1), A339863(n+1)]`
-/

namespace A349940.P13965179624896573415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339863 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349940.P13965179624896573415

/-! ## A349940.P3404586413618636730

`filter[A339863(n+1), A131532(#)]`
-/

namespace A349940.P3404586413618636730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131532 (f1 j).toNat = 1) n)

end

end A349940.P3404586413618636730

/-! ## A349940.P936111073464457101

`filter[A339863(n+1), A214090(#)]`
-/

namespace A349940.P936111073464457101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A214090 (f1 j).toNat = 1) n)

end

end A349940.P936111073464457101

/-!
# A349946: a(n) = A349526(n) + A349526(n+1).

The programs for A349946, there is no canonical definition to state claims against.
-/

/-! ## A349946.P15288953070123858479

`A349526(n+1)+A349526(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349946.P15288953070123858479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349526 (n + 1) + A349526 (n + 2)

end

end A349946.P15288953070123858479

/-! ## A349946.P2668817404989906565

`A329949(n+1)+A226005(n)+1`
-/

namespace A349946.P2668817404989906565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329949 (n + 1) + (A226005 n + 1)

end

end A349946.P2668817404989906565

/-! ## A349946.P12819501750900206155

`A008619(A053186(n+1))+∑[char[n²]]`
-/

namespace A349946.P12819501750900206155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A053186 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A349946.P12819501750900206155

/-! ## A349946.P11583699930244545081

`A349520(comp[∑[2*n]])+A329949(n+1)`
-/

namespace A349946.P11583699930244545081
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A329949 (n + 1)

end

end A349946.P11583699930244545081

/-! ## A349946.P17783642627365662690

`A329949(n+1)+A329949(C(2, n+2)+n)`
-/

namespace A349946.P17783642627365662690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329949 (n + 1) + A329949 (Nat.choose 2 (n + 2) + n)

end

end A349946.P17783642627365662690

/-! ## A349946.P4558220717557207297

`A329949(n+1)+A005496(A226005(n))`
-/

namespace A349946.P4558220717557207297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329949 (n + 1) + A005496 (A226005 n).toNat

end

end A349946.P4558220717557207297

/-! ## A349946.P1237512098145079709

`A005555(A329949(n+1)+A226005(n))`
-/

namespace A349946.P1237512098145079709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 (A329949 (n + 1) + A226005 n).toNat

end

end A349946.P1237512098145079709

/-! ## A349946.P1510433137226805153

`A329949(n+1)+A329949(A028310(n))`
-/

namespace A349946.P1510433137226805153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329949 (n + 1) + A329949 (A028310 n).toNat

end

end A349946.P1510433137226805153

/-!
# A349948: Tetrahedral-sided isosceles Heron triangle pairs.

The programs for A349948, the canonical program `A349948.P2471177492343242296` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349948 has offset 1).

The definition of A349948 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349948.P2471177492343242296

`5*a(n-1)-5*a(n-2)+a(n-3)` with `a(0)=0, a(1)=10, a(2)=48`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A349948

/-- `5*a(n-1)-5*a(n-2)+a(n-3)` -/
def P2471177492343242296.Spec : Prop :=
  ∀ n, P2471177492343242296.a n = A349948 (n + 1)

theorem P2471177492343242296.correct : P2471177492343242296.Spec := by
  intro n
  simp only [A349948, Nat.add_sub_cancel]

end A349948

/-! ## A349948.P10343614530113889803

`2*A001075(n+1)-4`
-/

namespace A349948.P10343614530113889803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001075 (n + 1) - 4

end

end A349948.P10343614530113889803

namespace A349948

/-- `2*A001075(n+1)-4` -/
def P10343614530113889803.Spec : Prop :=
  ∀ n, P10343614530113889803.a n = A349948 (n + 1)

end A349948

/-! ## A349948.P13694872967895532237

`∑[ogf((10x-2x^2)/(1-4x+x^2))]`
-/

namespace A349948.P13694872967895532237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, -2] [1, -4, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349948.P13694872967895532237

namespace A349948

/-- `∑[ogf((10x-2x^2)/(1-4x+x^2))]` -/
def P13694872967895532237.Spec : Prop :=
  ∀ n, P13694872967895532237.a n = A349948 (n + 1)

end A349948

/-! ## A349948.P10858824691474239817

`ogf((10x-2x^2)/(1-5x+5x^2-x^3))`
-/

namespace A349948.P10858824691474239817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, -2] [1, -5, 5, -1] n

end

end A349948.P10858824691474239817

namespace A349948

/-- `ogf((10x-2x^2)/(1-5x+5x^2-x^3))` -/
def P10858824691474239817.Spec : Prop :=
  ∀ n, P10858824691474239817.a n = A349948 (n + 1)

end A349948

/-! ## A349948.P16716824742786986279

`floor((sqrt(3)+2)^(n+1))-3`
-/

namespace A349948.P16716824742786986279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (3 : ℝ) + 2) ^ (n + 1)⌋ - 3

end

end A349948.P16716824742786986279

namespace A349948

/-- `floor((sqrt(3)+2)^(n+1))-3` -/
def P16716824742786986279.Spec : Prop :=
  ∀ n, P16716824742786986279.a n = A349948 (n + 1)

end A349948

/-! ## A349948.P3664346966163319611

`∑[ceil((sqrt(3)+2)*a(n-1))]` with `a(0)=0, a(1)=10`
-/

namespace A349948.P3664346966163319611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 10] fun n f1 =>
  ⌈(Real.sqrt (3 : ℝ) + 2) * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349948.P3664346966163319611

namespace A349948

/-- `∑[ceil((sqrt(3)+2)*a(n-1))]` -/
def P3664346966163319611.Spec : Prop :=
  ∀ n, P3664346966163319611.a n = A349948 (n + 1)

end A349948

/-! ## A349948.P3443921887400744019

`abs(ceil((sqrt(3)+2)*a(n-1))+10)` with `a(0)=0`
-/

namespace A349948.P3443921887400744019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉ + 10|

end

end A349948.P3443921887400744019

namespace A349948

/-- `abs(ceil((sqrt(3)+2)*a(n-1))+10)` -/
def P3443921887400744019.Spec : Prop :=
  ∀ n, P3443921887400744019.a n = A349948 (n + 1)

end A349948

/-! ## A349948.P1040700082090100711

`2*(A102206(n)-3)`
-/

namespace A349948.P1040700082090100711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A102206 n - 3)

end

end A349948.P1040700082090100711

namespace A349948

/-- `2*(A102206(n)-3)` -/
def P1040700082090100711.Spec : Prop :=
  ∀ n, P1040700082090100711.a n = A349948 (n + 1)

end A349948

/-! ## A349948.P13397099944186053816

`2*(∑[A001834(n)]-1)`
-/

namespace A349948.P13397099944186053816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A349948.P13397099944186053816

namespace A349948

/-- `2*(∑[A001834(n)]-1)` -/
def P13397099944186053816.Spec : Prop :=
  ∀ n, P13397099944186053816.a n = A349948 (n + 1)

end A349948

/-! ## A349948.P13236405412486850398

`2*(Δ[A001571(n)]-2)`
-/

namespace A349948.P13236405412486850398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001571 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - 2)

end

end A349948.P13236405412486850398

namespace A349948

/-- `2*(Δ[A001571(n)]-2)` -/
def P13236405412486850398.Spec : Prop :=
  ∀ n, P13236405412486850398.a n = A349948 (n + 1)

end A349948

/-! ## A349948.P3681975991820115362

`2*(Δ[A082840(n)]-2)`
-/

namespace A349948.P3681975991820115362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - 2)

end

end A349948.P3681975991820115362

namespace A349948

/-- `2*(Δ[A082840(n)]-2)` -/
def P3681975991820115362.Spec : Prop :=
  ∀ n, P3681975991820115362.a n = A349948 (n + 1)

end A349948

/-! ## A349948.P323219938640144476

`2*(Δ[A102871(n)]-2)`
-/

namespace A349948.P323219938640144476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - 2)

end

end A349948.P323219938640144476

namespace A349948

/-- `2*(Δ[A102871(n)]-2)` -/
def P323219938640144476.Spec : Prop :=
  ∀ n, P323219938640144476.a n = A349948 (n + 1)

end A349948

/-! ## A349948.P17482397052045947237

`record[A174500(n+2)-2]`
-/

namespace A349948.P17482397052045947237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174500 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349948.P17482397052045947237

namespace A349948

/-- `record[A174500(n+2)-2]` -/
def P17482397052045947237.Spec : Prop :=
  ∀ n, P17482397052045947237.a n = A349948 (n + 1)

end A349948

/-! ## A349948.P12499994731529006122

`2*(A092184(n+1)-1)`
-/

namespace A349948.P12499994731529006122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A092184 (n + 1) - 1)

end

end A349948.P12499994731529006122

namespace A349948

/-- `2*(A092184(n+1)-1)` -/
def P12499994731529006122.Spec : Prop :=
  ∀ n, P12499994731529006122.a n = A349948 (n + 1)

end A349948

/-! ## A349948.P7295364533195602015

`2*(A121401(n+1)-3)`
-/

namespace A349948.P7295364533195602015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A121401 (n + 1) - 3)

end

end A349948.P7295364533195602015

namespace A349948

/-- `2*(A121401(n+1)-3)` -/
def P7295364533195602015.Spec : Prop :=
  ∀ n, P7295364533195602015.a n = A349948 (n + 1)

end A349948

/-! ## A349948.P419561266476621107

`2*(A259593(2*n)-2)`
-/

namespace A349948.P419561266476621107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A259593 (2 * n) - 2)

end

end A349948.P419561266476621107

namespace A349948

/-- `2*(A259593(2*n)-2)` -/
def P419561266476621107.Spec : Prop :=
  ∀ n, P419561266476621107.a n = A349948 (n + 1)

end A349948

/-! ## A349948.P3987510231346949492

`xor(1, A016064(n+1)-2)`
-/

namespace A349948.P3987510231346949492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A016064 (n + 1) - 2)

end

end A349948.P3987510231346949492

namespace A349948

/-- `xor(1, A016064(n+1)-2)` -/
def P3987510231346949492.Spec : Prop :=
  ∀ n, P3987510231346949492.a n = A349948 (n + 1)

end A349948

/-! ## A349948.P4595491435190334666

`2*(A259592(2*n+1)-2)`
-/

namespace A349948.P4595491435190334666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A259592 (2 * n + 1) - 2)

end

end A349948.P4595491435190334666

namespace A349948

/-- `2*(A259592(2*n+1)-2)` -/
def P4595491435190334666.Spec : Prop :=
  ∀ n, P4595491435190334666.a n = A349948 (n + 1)

end A349948

/-! ## A349948.P5990652743844879238

`2*(A143642(A016789(n))-2)`
-/

namespace A349948.P5990652743844879238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A143642 (A016789 n).toNat - 2)

end

end A349948.P5990652743844879238

namespace A349948

/-- `2*(A143642(A016789(n))-2)` -/
def P5990652743844879238.Spec : Prop :=
  ∀ n, P5990652743844879238.a n = A349948 (n + 1)

end A349948

/-! ## A349948.P14894994121568770261

`2*(A133161(n+1)+A082840(n))`
-/

namespace A349948.P14894994121568770261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A133161 (n + 1) + A082840 n)

end

end A349948.P14894994121568770261

namespace A349948

/-- `2*(A133161(n+1)+A082840(n))` -/
def P14894994121568770261.Spec : Prop :=
  ∀ n, P14894994121568770261.a n = A349948 (n + 1)

end A349948

/-!
# A349954: a(n) is the number of extrema that result from iterating the reduced Collatz function R(k) = A139391(k) on 2n-1 to yield 1.

The programs for A349954, there is no canonical definition to state claims against.
-/

/-! ## A349954.P9690606804903766304

`A055396(A280700(n)+A035471(n))`
-/

namespace A349954.P9690606804903766304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A280700 n + A035471 n).toNat

end

end A349954.P9690606804903766304

/-! ## A349954.P12769021281874005854

`xor(A010874(A053576(n)), A014673(n+1))`
-/

namespace A349954.P12769021281874005854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010874 (A053576 n).toNat) (A014673 (n + 1))

end

end A349954.P12769021281874005854

/-! ## A349954.P2164723107614016632

`A336126(A267099(n+1))%A123062(n+1)`
-/

namespace A349954.P2164723107614016632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336126 (A267099 (n + 1)).toNat) (A123062 (n + 1))

end

end A349954.P2164723107614016632

/-!
# A349955: Numbers whose representation in any base b >= 2 is a cubefree word.

The programs for A349955, there is no canonical definition to state claims against.
-/

/-! ## A349955.P12273802590906701185

`record[A337223(A178905(n+1))]`
-/

namespace A349955.P12273802590906701185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337223 (A178905 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349955.P12273802590906701185

/-!
# A349956: Number of ways to write n as x^2 + 2*y^2 + (z^4 + 4*w^4)/5 with x,y,z,w nonnegative integers.

The programs for A349956, there is no canonical definition to state claims against.
-/

/-! ## A349956.P16926149125273113374

`gcd(A005349(A345286(n+1)), A104564(n+1))`
-/

namespace A349956.P16926149125273113374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005349 (A345286 (n + 1)).toNat) (A104564 (n + 1))

end

end A349956.P16926149125273113374

/-! ## A349956.P12506420898584271830

`A001221(∑[A329604(2*(n+2))+A233411(n)])`
-/

namespace A349956.P12506420898584271830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329604 (2 * (n + 2)) + A233411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A349956.P12506420898584271830

/-! ## A349956.P13237398088367563911

`A001221(A003597(2*n+3)-A257731(n+1))`
-/

namespace A349956.P13237398088367563911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A003597 (2 * n + 3) - A257731 (n + 1)).toNat

end

end A349956.P13237398088367563911

/-!
# A349958: a(n) is the index of the first row in Pascal's triangle that contains a multiple of n.

The programs for A349958, there is no canonical definition to state claims against.
-/

/-! ## A349958.P813755952504383500

`A058084(A396114(n+1))`
-/

namespace A349958.P813755952504383500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058084 (A396114 (n + 1)).toNat

end

end A349958.P813755952504383500

/-! ## A349958.P9979719711206566629

`A058084((n+1)*A375082(n+1))`
-/

namespace A349958.P9979719711206566629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058084 ((n + 1 : ℤ) * A375082 (n + 1)).toNat

end

end A349958.P9979719711206566629

/-! ## A349958.P14554410054069525362

`A008475(A187829(n+2)-A052125(n+1))`
-/

namespace A349958.P14554410054069525362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A187829 (n + 2) - A052125 (n + 1)).toNat

end

end A349958.P14554410054069525362

/-!
# A349959: a(n) = Sum_{k=0..floor(n/2)} (k-1)^2*A106828(n, k).

The programs for A349959, there is no canonical definition to state claims against.
-/

/-! ## A349959.P2278058154323353224

`A122339(abs(Δ[A020059(n)]))`
-/

namespace A349959.P2278058154323353224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122339 |f1 (n + 1) - f1 n|.toNat

end

end A349959.P2278058154323353224

/-! ## A349959.P2259213022920837726

`A033183(∑[A058789(n+4)])`
-/

namespace A349959.P2259213022920837726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058789 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A349959.P2259213022920837726

/-!
# A349960: Values taken by the function A067095 in the order of their appearance.

The programs for A349960, there is no canonical definition to state claims against.
-/

/-! ## A349960.P11759877497570069109

`A067095((n+1)^n)`
-/

namespace A349960.P11759877497570069109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067095 ((n + 1) ^ n)

end

end A349960.P11759877497570069109

/-! ## A349960.P8283122988906645297

`and(-1, A067095(A000169(n+1)))`
-/

namespace A349960.P8283122988906645297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A067095 (A000169 (n + 1)).toNat)

end

end A349960.P8283122988906645297

/-!
# A349961: a(n) = Sum_{k=0..n} (2*n)^k.

The programs for A349961, the canonical program `A349961.P6842706533606716410` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349961 has offset 0).

The definition of A349961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349961.P6842706533606716410

`((2*n)^(n+1)-1)/(2*n-1)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A349961

/-- `((2*n)^(n+1)-1)/(2*n-1)` -/
def P6842706533606716410.Spec : Prop :=
  ∀ n, P6842706533606716410.a n = (A349961 n : ℚ)

end A349961

/-! ## A349961.P6942036355666297122

`A104878(A062728(n))`
-/

namespace A349961.P6942036355666297122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104878 (A062728 n).toNat

end

end A349961.P6942036355666297122

namespace A349961

/-- `A104878(A062728(n))` -/
def P6942036355666297122.Spec : Prop :=
  ∀ n, P6942036355666297122.a n = A349961 n

end A349961

/-! ## A349961.P18299024936934644550

`A294316(A022266(n))`
-/

namespace A349961.P18299024936934644550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294316 (A022266 n).toNat

end

end A349961.P18299024936934644550

namespace A349961

/-- `A294316(A022266(n))` -/
def P18299024936934644550.Spec : Prop :=
  ∀ n, P18299024936934644550.a n = A349961 n

end A349961

/-! ## A349961.P13909995450070337650

`A055129(A276819(n))`
-/

namespace A349961.P13909995450070337650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055129 (A276819 n).toNat

end

end A349961.P13909995450070337650

namespace A349961

/-- `A055129(A276819(n))` -/
def P13909995450070337650.Spec : Prop :=
  ∀ n, P13909995450070337650.a n = A349961 n

end A349961

/-! ## A349961.P6331797719502892319

`A055129(A022266(n)+1)`
-/

namespace A349961.P6331797719502892319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055129 (A022266 n + 1).toNat

end

end A349961.P6331797719502892319

namespace A349961

/-- `A055129(A022266(n)+1)` -/
def P6331797719502892319.Spec : Prop :=
  ∀ n, P6331797719502892319.a n = A349961 n

end A349961

/-!
# A349962: a(n) = Sum_{k=0..n} (2*k)^k.

The programs for A349962, there is no canonical definition to state claims against.
-/

/-! ## A349962.P12588760913110007977

`∑[(2*n)^n]`
-/

namespace A349962.P12588760913110007977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349962.P12588760913110007977

/-! ## A349962.P12310363369968187229

`or(1, ∑[(Δ[n²]-1)^n])`
-/

namespace A349962.P12310363369968187229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A349962.P12310363369968187229

/-! ## A349962.P5937572615494768510

`a(n-1)+(2*n)^n` with `a(0)=1`
-/

namespace A349962.P5937572615494768510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n) ^ n

end

end A349962.P5937572615494768510

/-! ## A349962.P10564498752098856608

`(2*n)^n-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A349962.P10564498752098856608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n) ^ n : ℤ) - (-a (n - 1))

end

end A349962.P10564498752098856608

/-! ## A349962.P8857394067286111277

`(2*n)^n-ceil(-a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A349962.P8857394067286111277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n) ^ n : ℤ) - (-a (n - 1))

end

end A349962.P8857394067286111277

/-! ## A349962.P10243789143074036729

`(2*n)^n-round(-a(n-1))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A349962.P10243789143074036729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n) ^ n : ℤ) - (-a (n - 1))

end

end A349962.P10243789143074036729

/-! ## A349962.P9066199669196461538

`floor(∑[log2(A000302(n))^n])`
-/

namespace A349962.P9066199669196461538
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000302 n : ℝ) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A349962.P9066199669196461538

/-! ## A349962.P2706557438753194558

`A062971(n)+a(n-1)` with `a(0)=1`
-/

namespace A349962.P2706557438753194558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062971 n + a (n - 1)

end

end A349962.P2706557438753194558

/-! ## A349962.P10078940497388649275

`A066642(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A349962.P10078940497388649275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A066642 (2 * n) + a (n - 1)

end

end A349962.P10078940497388649275

/-! ## A349962.P11243037508706052445

`A078707(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A349962.P11243037508706052445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078707 (2 * n) + a (n - 1)

end

end A349962.P11243037508706052445

/-!
# A349963: a(n) = Sum_{k=0..n} (2*k)^n.

The programs for A349963, there is no canonical definition to state claims against.
-/

/-! ## A349963.P1756466594770764676

`2^n*A031971(round(sqrt(n²+1)))`
-/

namespace A349963.P1756466594770764676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A031971 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A349963.P1756466594770764676

/-! ## A349963.P18375816087776906929

`A000079(n)*A103438(A106232(n+1))`
-/

namespace A349963.P18375816087776906929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A103438 (A106232 (n + 1)).toNat

end

end A349963.P18375816087776906929

/-! ## A349963.P4207765885196825412

`A059268(A022266(n))*A103438(A106232(n+1))`
-/

namespace A349963.P4207765885196825412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A022266 n).toNat * A103438 (A106232 (n + 1)).toNat

end

end A349963.P4207765885196825412

/-! ## A349963.P11119741357139193633

`A059268(A062725(n))*A103438(A106232(n+1))`
-/

namespace A349963.P11119741357139193633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A062725 n).toNat * A103438 (A106232 (n + 1)).toNat

end

end A349963.P11119741357139193633

/-!
# A349964: a(n) = Sum_{k=0..n} (k*n)^n.

The programs for A349964, there is no canonical definition to state claims against.
-/

/-! ## A349964.P7329086317261174200

`n^n*A031971(round(sqrt(n²+1)))`
-/

namespace A349964.P7329086317261174200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A031971 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A349964.P7329086317261174200

/-! ## A349964.P18221848107081336028

`A000312(n)*A103438(A106232(n+1))`
-/

namespace A349964.P18221848107081336028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n * A103438 (A106232 (n + 1)).toNat

end

end A349964.P18221848107081336028

/-! ## A349964.P11781257198938962275

`∑{d}[2^n, (n*val(#, 2))^n]`
-/

namespace A349964.P11781257198938962275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n * SequenceMachineLib.valuation d 2) ^ n

end

end A349964.P11781257198938962275

/-!
# A349965: a(n) = Sum_{k=0..n} (k * (n-k))^k.

The programs for A349965, there is no canonical definition to state claims against.
-/

/-! ## A349965.P2018041298436794285

`A318735(A199247(n))`
-/

namespace A349965.P2018041298436794285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318735 (A199247 n).toNat

end

end A349965.P2018041298436794285

/-! ## A349965.P3328760900198413970

`A020731(A005117(n!))`
-/

namespace A349965.P3328760900198413970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020731 (A005117 (Nat.factorial n)).toNat

end

end A349965.P3328760900198413970

/-!
# A349966: a(n) = Sum_{k=0..n} (k * (n-k))^n.

The programs for A349966, there is no canonical definition to state claims against.
-/

/-! ## A349966.P16438528557609904184

`A306548(A046092(n))+A000007(n)`
-/

namespace A349966.P16438528557609904184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306548 (A046092 n).toNat + A000007 n

end

end A349966.P16438528557609904184

/-! ## A349966.P9892173085300055653

`A306548(A046092(n))+A168201(n)`
-/

namespace A349966.P9892173085300055653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306548 (A046092 n).toNat + A168201 n

end

end A349966.P9892173085300055653

/-!
# A349967: Number of vertices in regular n-gon after 2 generations of mitosis.

The programs for A349967, there is no canonical definition to state claims against.
-/

/-! ## A349967.P3207118770138090778

`A349968(n+3)+1-A349807(n+3)`
-/

namespace A349967.P3207118770138090778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349968 (n + 3) + (1 - A349807 (n + 3))

end

end A349967.P3207118770138090778

/-! ## A349967.P11498355423307524177

`A349968(n+3)+A024000(A349807(n+3))`
-/

namespace A349967.P11498355423307524177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349968 (n + 3) + A024000 (A349807 (n + 3)).toNat

end

end A349967.P11498355423307524177

/-! ## A349967.P4031789194630789204

`A065475(A349968(n+3)-A349807(n+3))`
-/

namespace A349967.P4031789194630789204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A349968 (n + 3) - A349807 (n + 3)).toNat

end

end A349967.P4031789194630789204

/-! ## A349967.P11074231459530301055

`A350501(C(n+4, 2))`
-/

namespace A349967.P11074231459530301055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350501 (Nat.choose (n + 4) 2)

end

end A349967.P11074231459530301055

/-! ## A349967.P5020106301446371250

`A350501(∑[n+3]+3)`
-/

namespace A349967.P5020106301446371250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350501 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A349967.P5020106301446371250

/-!
# A349968: Number of edges in regular n-gon after 2 generations of mitosis.

The programs for A349968, there is no canonical definition to state claims against.
-/

/-! ## A349968.P9178497079102704661

`A349807(n+3)+A349967(n+3)-1`
-/

namespace A349968.P9178497079102704661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349807 (n + 3) + (A349967 (n + 3) - 1)

end

end A349968.P9178497079102704661

/-! ## A349968.P9432675302264368440

`A349807(n+3)+A066182(A349967(n+3))`
-/

namespace A349968.P9432675302264368440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349807 (n + 3) + A066182 (A349967 (n + 3)).toNat

end

end A349968.P9432675302264368440

/-! ## A349968.P1062401860816335139

`A023443(A349967(n+3)+A349807(n+3))`
-/

namespace A349968.P1062401860816335139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A349967 (n + 3) + A349807 (n + 3)).toNat

end

end A349968.P1062401860816335139

/-! ## A349968.P14251269710205010649

`A350502(C(n+4, 2))`
-/

namespace A349968.P14251269710205010649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350502 (Nat.choose (n + 4) 2)

end

end A349968.P14251269710205010649

/-! ## A349968.P3792651885244795194

`A350502(∑[n+3]+3)`
-/

namespace A349968.P3792651885244795194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350502 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A349968.P3792651885244795194

/-!
# A349969: a(n) = Sum_{k=0..n} (k*n)^(n-k).

The programs for A349969, there is no canonical definition to state claims against.
-/

/-! ## A349969.P1704891603617481747

`A005206(A326900(n)-n)`
-/

namespace A349969.P1704891603617481747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A326900 n - (n : ℤ)).toNat

end

end A349969.P1704891603617481747

/-! ## A349969.P13839243869185598810

`A005378(A326900(n)-n)`
-/

namespace A349969.P13839243869185598810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A326900 n - (n : ℤ)).toNat

end

end A349969.P13839243869185598810

/-!
# A349970: a(n) = Sum_{k=0..n} (2*k)^(n-k).

The programs for A349970, there is no canonical definition to state claims against.
-/

/-! ## A349970.P1895680532993238243

`A352944(2*n)`
-/

namespace A349970.P1895680532993238243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352944 (2 * n)

end

end A349970.P1895680532993238243

/-! ## A349970.P9241553506530842057

`or(1, A352944(gcd(n, C(2, n))+n))`
-/

namespace A349970.P9241553506530842057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A352944 (Nat.gcd n (Nat.choose 2 n) + n))

end

end A349970.P9241553506530842057

/-! ## A349970.P7338977508803662336

`or(1, A352944(A004277(n)))`
-/

namespace A349970.P7338977508803662336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A352944 (A004277 n).toNat)

end

end A349970.P7338977508803662336

/-! ## A349970.P10980591926702878304

`or(1, A352944(A005843(n)))`
-/

namespace A349970.P10980591926702878304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A352944 (A005843 n).toNat)

end

end A349970.P10980591926702878304

/-! ## A349970.P7490141662131713954

`A352944(A004277(n))+A326594(A005811(n))`
-/

namespace A349970.P7490141662131713954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352944 (A004277 n).toNat + A326594 (A005811 n).toNat

end

end A349970.P7490141662131713954

/-!
# A349971: Array read by ascending antidiagonals, A(n, k) = -(-n)^k*FallingFactorial(1/n, k) for n, k >= 1.

The programs for A349971, there is no canonical definition to state claims against.
-/

/-! ## A349971.P1975309150587869756

`A326474(A143632(n))+A320079(n)`
-/

namespace A349971.P1975309150587869756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326474 (A143632 n).toNat + A320079 n

end

end A349971.P1975309150587869756

/-! ## A349971.P13270920733329412396

`A072088(A340986(n))`
-/

namespace A349971.P13270920733329412396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A340986 n).toNat

end

end A349971.P13270920733329412396

/-! ## A349971.P14693937589595803369

`∑{d}[A320079(n), A342515(#)]`
-/

namespace A349971.P14693937589595803369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A342515 d

end

end A349971.P14693937589595803369

/-! ## A349971.P6991193176363642286

`A320079(n)+A034332(A122848(n))`
-/

namespace A349971.P6991193176363642286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320079 n + A034332 (A122848 n).toNat

end

end A349971.P6991193176363642286

/-! ## A349971.P16586244375210105033

`A320079(n)+A253830(A102480(n))`
-/

namespace A349971.P16586244375210105033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320079 n + A253830 (A102480 n).toNat

end

end A349971.P16586244375210105033

/-!
# A349972: a(n) = A349976(n, n-1) for n >= 1 and a(0) = 0.

The programs for A349972, there is no canonical definition to state claims against.
-/

/-! ## A349972.P11580222863396978122

`A236831(or(A002487(n+1), A077949(2*(n+1))))`
-/

namespace A349972.P11580222863396978122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236831 (Int.lor (A002487 (n + 1)) (A077949 (2 * (n + 1)))).toNat

end

end A349972.P11580222863396978122

/-!
# A349973: a(n) = Sum_{k=0..n} k*A349976(n, k).

The programs for A349973, there is no canonical definition to state claims against.
-/

/-! ## A349973.P2827037669322176970

`(A349974(n)+A000225(n))/2`
-/

namespace A349973.P2827037669322176970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349974 n + A000225 n : ℚ) / 2

end

end A349973.P2827037669322176970

/-! ## A349973.P6977455846757924321

`A004526(A349974(n)+2^n)`
-/

namespace A349973.P6977455846757924321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A349974 n + (2 ^ n : ℤ)).toNat

end

end A349973.P6977455846757924321

/-! ## A349973.P13069044697237321919

`A028242(A349974(n)+2^n)`
-/

namespace A349973.P13069044697237321919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A349974 n + (2 ^ n : ℤ)).toNat

end

end A349973.P13069044697237321919

/-! ## A349973.P14785134466340914804

`A001281(A349974(n)+A000225(n))`
-/

namespace A349973.P14785134466340914804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A349974 n + A000225 n).toNat

end

end A349973.P14785134466340914804

/-! ## A349973.P18001257821882394809

`A004525(A349974(n)+A000225(n))`
-/

namespace A349973.P18001257821882394809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A349974 n + A000225 n).toNat

end

end A349973.P18001257821882394809

/-!
# A349974: a(n) = 1 + Sum_{k=0..n} (2*k - 1)*A349976(n, k).

The programs for A349974, there is no canonical definition to state claims against.
-/

/-! ## A349974.P15262432912442333705

`A005408(A349973(n))-2^n`
-/

namespace A349974.P15262432912442333705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A349973 n).toNat - (2 ^ n : ℤ)

end

end A349974.P15262432912442333705

/-! ## A349974.P10347275350071163141

`A008617(A374150(n+1))`
-/

namespace A349974.P10347275350071163141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A374150 (n + 1)).toNat

end

end A349974.P10347275350071163141

/-! ## A349974.P6359602457908453058

`A278464(n)+A212618(A181070(n))`
-/

namespace A349974.P6359602457908453058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278464 n + A212618 (A181070 n).toNat

end

end A349974.P6359602457908453058

/-!
# A349975: Expansion of g.f. (x^4*(x^2 + 2*x + 3))/((x - 1)^4*(x + 1)*(x^2 + x + 1)).

The programs for A349975, the canonical program `A349975.P14447269186983739993` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349975 has offset 0).

The definition of A349975 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3x^4+2x^5+x^6)/(1-2x+x^3+x^4-2x^6+x^7))` (program `A349975.P14447269186983739993`, by `A349975.P14447269186983739993.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A349975.P14447269186983739993

`ogf((3x^4+2x^5+x^6)/(1-2x+x^3+x^4-2x^6+x^7))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A349975

/-- `ogf((3x^4+2x^5+x^6)/(1-2x+x^3+x^4-2x^6+x^7))` -/
def P14447269186983739993.Spec : Prop :=
  ∀ n, P14447269186983739993.a n = A349975 n

theorem P14447269186983739993.correct : P14447269186983739993.Spec := by
  intro n
  simp only [A349975]

end A349975

/-! ## A349975.P13366813711913052014

`round(C(n, 3)-n²/12)`
-/

namespace A349975.P13366813711913052014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose n 3 : ℚ) - (n ^ 2 : ℚ) / 12)

end

end A349975.P13366813711913052014

namespace A349975

/-- `round(C(n, 3)-n²/12)` -/
def P13366813711913052014.Spec : Prop :=
  ∀ n, P13366813711913052014.a n = A349975 n

end A349975

/-! ## A349975.P6184322681110513085

`floor((2-n)²/12*Δ[n²])`
-/

namespace A349975.P6184322681110513085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 - (n : ℤ)) ^ 2 : ℚ) / 12 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)⌋

end

end A349975.P6184322681110513085

namespace A349975

/-- `floor((2-n)²/12*Δ[n²])` -/
def P6184322681110513085.Spec : Prop :=
  ∀ n, P6184322681110513085.a n = A349975 n

end A349975

/-! ## A349975.P14267094716331423957

`∑[∑[or(1, n)]]+n-round((4*n+3)²/12)`
-/

namespace A349975.P14267094716331423957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) - SequenceMachineLib.roundAway (((4 * n + 3) ^ 2 : ℚ) / 12)

end

end A349975.P14267094716331423957

namespace A349975

/-- `∑[∑[or(1, n)]]+n-round((4*n+3)²/12)` -/
def P14267094716331423957.Spec : Prop :=
  ∀ n, P14267094716331423957.a n = A349975 n

end A349975

/-! ## A349975.P10676741826848833376

`C(n, 3)-A069905(n)`
-/

namespace A349975.P10676741826848833376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) - A069905 n

end

end A349975.P10676741826848833376

namespace A349975

/-- `C(n, 3)-A069905(n)` -/
def P10676741826848833376.Spec : Prop :=
  ∀ n, P10676741826848833376.a n = A349975 n

end A349975

/-! ## A349975.P2698204116457109768

`C(n, 3)+1-A014591(n)`
-/

namespace A349975.P2698204116457109768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 + 1 : ℤ) - A014591 n

end

end A349975.P2698204116457109768

namespace A349975

/-- `C(n, 3)+1-A014591(n)` -/
def P2698204116457109768.Spec : Prop :=
  ∀ n, P2698204116457109768.a n = A349975 n

end A349975

/-! ## A349975.P9563008667436236753

`A152728(n)-A212254(n)`
-/

namespace A349975.P9563008667436236753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152728 n - A212254 n

end

end A349975.P9563008667436236753

namespace A349975

/-- `A152728(n)-A212254(n)` -/
def P9563008667436236753.Spec : Prop :=
  ∀ n, P9563008667436236753.a n = A349975 n

end A349975

/-! ## A349975.P13723485703933925029

`A212964(n)-A374702(n)`
-/

namespace A349975.P13723485703933925029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212964 n - A374702 n

end

end A349975.P13723485703933925029

namespace A349975

/-- `A212964(n)-A374702(n)` -/
def P13723485703933925029.Spec : Prop :=
  ∀ n, P13723485703933925029.a n = A349975 n

end A349975

/-! ## A349975.P7324403366758456982

`A173154(n)-A238705(n+1)`
-/

namespace A349975.P7324403366758456982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173154 n - A238705 (n + 1)

end

end A349975.P7324403366758456982

namespace A349975

/-- `A173154(n)-A238705(n+1)` -/
def P7324403366758456982.Spec : Prop :=
  ∀ n, P7324403366758456982.a n = A349975 n

end A349975

/-! ## A349975.P842964374716996273

`A000292(n)-(A069905(n)+n²)`
-/

namespace A349975.P842964374716996273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n - (A069905 n + (n ^ 2 : ℤ))

end

end A349975.P842964374716996273

namespace A349975

/-- `A000292(n)-(A069905(n)+n²)` -/
def P842964374716996273.Spec : Prop :=
  ∀ n, P842964374716996273.a n = A349975 n

end A349975

/-! ## A349975.P18240359885263313252

`∑[A000982(n)]-(A000982(n)+A000212(n))`
-/

namespace A349975.P18240359885263313252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A000982 n + A000212 n)

end

end A349975.P18240359885263313252

namespace A349975

/-- `∑[A000982(n)]-(A000982(n)+A000212(n))` -/
def P18240359885263313252.Spec : Prop :=
  ∀ n, P18240359885263313252.a n = A349975 n

end A349975

/-! ## A349975.P2531469604866611125

`∑[A000982(n)-A004523(n)]-A000982(n)`
-/

namespace A349975.P2531469604866611125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n - A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000982 n

end

end A349975.P2531469604866611125

namespace A349975

/-- `∑[A000982(n)-A004523(n)]-A000982(n)` -/
def P2531469604866611125.Spec : Prop :=
  ∀ n, P2531469604866611125.a n = A349975 n

end A349975

/-!
# A349976: Triangle read by rows, number of subsets S of [n] with |distset(S)| = k. T(n, k) for 0 <= k <= n.

The programs for A349976, there is no canonical definition to state claims against.
-/

/-! ## A349976.P7212452895406901657

`A067049(n)+A018843(A128099(n))`
-/

namespace A349976.P7212452895406901657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067049 n + A018843 (A128099 n).toNat

end

end A349976.P7212452895406901657

/-! ## A349976.P17934407060788864438

`gcd(A000122(A036642(n)), A144151(n))`
-/

namespace A349976.P17934407060788864438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 (A036642 n).toNat) (A144151 n)

end

end A349976.P17934407060788864438

/-! ## A349976.P10455347775315727814

`or(A007814(A156882(n)), A067049(n))`
-/

namespace A349976.P10455347775315727814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A156882 n).toNat) (A067049 n)

end

end A349976.P10455347775315727814

/-! ## A349976.P686038238696394183

`A007318(n)-Δ[A294788(A145085(n))]`
-/

namespace A349976.P686038238696394183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294788 (A145085 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - (f1 (n + 1) - f1 n)

end

end A349976.P686038238696394183

/-! ## A349976.P696493487370204249

`A144151(n)/A194333(A000045(n+3))`
-/

namespace A349976.P696493487370204249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144151 n : ℚ) / (A194333 (A000045 (n + 3)).toNat : ℚ)

end

end A349976.P696493487370204249

/-!
# A349977: Inverse Euler transform of the classical tribonacci numbers.

The programs for A349977, there is no canonical definition to state claims against.
-/

/-! ## A349977.P8317005978091724423

`A259361(∑[A148023(n)-A259361(n)])`
-/

namespace A349977.P8317005978091724423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148023 n - A259361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A349977.P8317005978091724423

/-! ## A349977.P15520932984020595483

`Δ[A000196(A307577(n))]`
-/

namespace A349977.P15520932984020595483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A307577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349977.P15520932984020595483

/-! ## A349977.P6747861382277899204

`A273190(xor(1, A249992(n)))`
-/

namespace A349977.P6747861382277899204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (Int.xor 1 (A249992 n)).toNat

end

end A349977.P6747861382277899204

/-! ## A349977.P16031124931946459907

`Δ[Δ[A046155(A188476(n))]]`
-/

namespace A349977.P16031124931946459907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A188476 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A349977.P16031124931946459907

/-! ## A349977.P2282445024132958258

`A320278(A116845(n+1)+3)`
-/

namespace A349977.P2282445024132958258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (A116845 (n + 1) + 3).toNat

end

end A349977.P2282445024132958258

/-!
# A349981: Midpoints k of a pair of twin primes such that sigma(k) is also the midpoint of a pair of twin primes.

The programs for A349981, the canonical program `A349981.P5474034835329325920` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349981 has offset 1).

The definition of A349981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349981.P17641652416830935317

`6*A202607(n+1)`
-/

namespace A349981.P17641652416830935317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A202607 (n + 1)

end

end A349981.P17641652416830935317

namespace A349981

/-- `6*A202607(n+1)` -/
def P17641652416830935317.Spec : Prop :=
  ∀ n, P17641652416830935317.a n = A349981 (n + 1)

end A349981

/-! ## A349981.P5474034835329325920

`∩[A014574(n+1), A068017(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A349981

/-- `∩[A014574(n+1), A068017(n+1)]` -/
def P5474034835329325920.Spec : Prop :=
  ∀ n, (P5474034835329325920.a n : ℤ) = A349981 (n + 1)

theorem P5474034835329325920.correct : P5474034835329325920.Spec := by
  intro n
  simp only [A349981, Nat.add_sub_cancel]

end A349981

/-! ## A349981.P16466434600529224840

`∩[A068017(n+1), A217259(n+1)]`
-/

namespace A349981.P16466434600529224840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349981.P16466434600529224840

namespace A349981

/-- `∩[A068017(n+1), A217259(n+1)]` -/
def P16466434600529224840.Spec : Prop :=
  ∀ n, (P16466434600529224840.a n : ℤ) = A349981 (n + 1)

end A349981

/-! ## A349981.P17391261876009314670

`∩[A014574(n+1), A072282(n+1)]`
-/

namespace A349981.P17391261876009314670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349981.P17391261876009314670

namespace A349981

/-- `∩[A014574(n+1), A072282(n+1)]` -/
def P17391261876009314670.Spec : Prop :=
  ∀ n, (P17391261876009314670.a n : ℤ) = A349981 (n + 1)

end A349981

/-! ## A349981.P13210638773555064273

`∩[A072282(n+1), A217259(n+1)]`
-/

namespace A349981.P13210638773555064273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349981.P13210638773555064273

namespace A349981

/-- `∩[A072282(n+1), A217259(n+1)]` -/
def P13210638773555064273.Spec : Prop :=
  ∀ n, (P13210638773555064273.a n : ℤ) = A349981 (n + 1)

end A349981

/-! ## A349981.P2371729981859905646

`∩[A001359(n+1)+1, A072282(n+1)]`
-/

namespace A349981.P2371729981859905646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349981.P2371729981859905646

namespace A349981

/-- `∩[A001359(n+1)+1, A072282(n+1)]` -/
def P2371729981859905646.Spec : Prop :=
  ∀ n, (P2371729981859905646.a n : ℤ) = A349981 (n + 1)

end A349981

/-! ## A349981.P6197444230461348037

`∩[A068017(n+1), A167706(n+1)]`
-/

namespace A349981.P6197444230461348037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349981.P6197444230461348037

namespace A349981

/-- `∩[A068017(n+1), A167706(n+1)]` -/
def P6197444230461348037.Spec : Prop :=
  ∀ n, (P6197444230461348037.a n : ℤ) = A349981 (n + 1)

end A349981

/-! ## A349981.P246899383422411186

`∩[A072282(n+1), A167706(n+1)]`
-/

namespace A349981.P246899383422411186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349981.P246899383422411186

namespace A349981

/-- `∩[A072282(n+1), A167706(n+1)]` -/
def P246899383422411186.Spec : Prop :=
  ∀ n, (P246899383422411186.a n : ℤ) = A349981 (n + 1)

end A349981

/-! ## A349981.P10488885627270703952

`∩[A068017(n+1), A129297(n+1)]`
-/

namespace A349981.P10488885627270703952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A349981.P10488885627270703952

namespace A349981

/-- `∩[A068017(n+1), A129297(n+1)]` -/
def P10488885627270703952.Spec : Prop :=
  ∀ n, (P10488885627270703952.a n : ℤ) = A349981 (n + 1)

end A349981

/-!
# A349982: a(n) = 199 + (a(n-1)+a(n-2))/gcd(a(n-1),a(n-2)), a(0)=1 and a(1)=2.

The programs for A349982, the canonical program `A349982.P16685169607940663023` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349982 has offset 0).

The definition of A349982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349982.P16685169607940663023

`199+(a(n-1)+a(n-2))/gcd(a(n-1), a(n-2))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A349982

/-- `199+(a(n-1)+a(n-2))/gcd(a(n-1), a(n-2))` -/
def P16685169607940663023.Spec : Prop :=
  ∀ n, P16685169607940663023.a n = (A349982 n : ℚ)

end A349982

/-!
# A349983: a(n) is the largest k such A000792(k) <= n.

The programs for A349983, there is no canonical definition to state claims against.
-/

/-! ## A349983.P15458464779509196324

`a(floor((n-2)/3))+3` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A349983.P15458464779509196324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  a ⌊((n : ℤ) - 2 : ℚ) / 3⌋.toNat + 3

end

end A349983.P15458464779509196324

/-! ## A349983.P12250634049314839761

`∑[∏{p}[lcm(4, n+1)/4, val(#, 3)]]`
-/

namespace A349983.P12250634049314839761
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) : ℚ) / 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, SequenceMachineLib.valuation p 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349983.P12250634049314839761

/-! ## A349983.P12434858574835138352

`∑[char[3*a(n-3)+2]]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A349983.P12434858574835138352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f2 =>
  3 * f2 (n - 3) + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349983.P12434858574835138352

/-! ## A349983.P12457013140854914688

`∑[char[∑[3*a(n-3)]]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A349983.P12457013140854914688
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 2] fun n f3 =>
  3 * f3 (n - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349983.P12457013140854914688

/-! ## A349983.P3889717383943834278

`∑[char[lt[(n+1)/3^val(n+1, 3), 5]]]`
-/

namespace A349983.P3889717383943834278
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℚ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349983.P3889717383943834278

/-! ## A349983.P8230313162569504163

`∑[C(3, 4%((n+1)/3^val(n+1, 3)))]`
-/

namespace A349983.P8230313162569504163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Int.tmod 4 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349983.P8230313162569504163

/-! ## A349983.P8433256789543573344

`∑[C(4, C((n+1)/3^val(n+1, 3), 3))]`
-/

namespace A349983.P8433256789543573344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 (Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349983.P8433256789543573344

/-! ## A349983.P2951480011409276179

`∑[floor(3^(n%2)/∑{d}[n+1, #²%3])]`
-/

namespace A349983.P2951480011409276179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 ^ (n % 2) : ℚ) / ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 % 3 : ℕ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349983.P2951480011409276179

/-! ## A349983.P3014509716585008495

`∑[char[record[A230445(n)]]]`
-/

namespace A349983.P3014509716585008495
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230445 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349983.P3014509716585008495

/-! ## A349983.P17083478200698956945

`∑[char[record[A238207(n)]]]`
-/

namespace A349983.P17083478200698956945
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238207 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A349983.P17083478200698956945

/-!
# A349991: For any n >= 0, consider a sandpile model on the infinite hexagonal lattice starting with n grains at the origin, the other sites being empty; a(n) gives the number of nonempty sites after stabilization of this sandpile model.

The programs for A349991, there is no canonical definition to state claims against.
-/

/-! ## A349991.P4106863711995314168

`A283431(A351784(n)²)`
-/

namespace A349991.P4106863711995314168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (A351784 n ^ 2).toNat

end

end A349991.P4106863711995314168

/-! ## A349991.P1678288958097801799

`A001222(2^A351784(n))`
-/

namespace A349991.P1678288958097801799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A351784 n : ℤ))).toNat

end

end A349991.P1678288958097801799

/-! ## A349991.P6610870775850087113

`A007814(2^A351784(n))`
-/

namespace A349991.P6610870775850087113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A351784 n : ℤ))).toNat

end

end A349991.P6610870775850087113

/-! ## A349991.P4723620965570708755

`A051903(2^A351784(n))`
-/

namespace A349991.P4723620965570708755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A351784 n : ℤ))).toNat

end

end A349991.P4723620965570708755

/-! ## A349991.P12369333640536026264

`A056239(2^A351784(n))`
-/

namespace A349991.P12369333640536026264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A351784 n : ℤ))).toNat

end

end A349991.P12369333640536026264

/-!
# A349993: a(n) is the number of squares k^2 with n^2 <= k^2 <= n^3.

The programs for A349993, the canonical program `A349993.P2971347097920431812` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349993 has offset 0).

The definition of A349993 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A349993.P2971347097920431812

`floor(sqrt(n^3))-n+1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A349993

/-- `floor(sqrt(n^3))-n+1` -/
def P2971347097920431812.Spec : Prop :=
  ∀ n, P2971347097920431812.a n = A349993 n

theorem P2971347097920431812.correct : P2971347097920431812.Spec := by
  intro n
  simp only [A349993]

end A349993

/-! ## A349993.P16887177886246425061

`ceil(sqrt(sin(1)+n^3)-n)`
-/

namespace A349993.P16887177886246425061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sin (1 : ℝ) + (n ^ 3 : ℝ)) - (n : ℝ)⌉

end

end A349993.P16887177886246425061

namespace A349993

/-- `ceil(sqrt(sin(1)+n^3)-n)` -/
def P16887177886246425061.Spec : Prop :=
  ∀ n, P16887177886246425061.a n = A349993 n

end A349993

/-! ## A349993.P6470112268535442295

`ceil(sqrt(atan(1)+n^3)-n)`
-/

namespace A349993.P6470112268535442295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.arctan (1 : ℝ) + (n ^ 3 : ℝ)) - (n : ℝ)⌉

end

end A349993.P6470112268535442295

namespace A349993

/-- `ceil(sqrt(atan(1)+n^3)-n)` -/
def P6470112268535442295.Spec : Prop :=
  ∀ n, P6470112268535442295.a n = A349993 n

end A349993

/-! ## A349993.P10403369289097900207

`ceil(sqrt(n^3-tan(3))-n)`
-/

namespace A349993.P10403369289097900207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n ^ 3 : ℝ) - Real.tan (3 : ℝ)) - (n : ℝ)⌉

end

end A349993.P10403369289097900207

namespace A349993

/-- `ceil(sqrt(n^3-tan(3))-n)` -/
def P10403369289097900207.Spec : Prop :=
  ∀ n, P10403369289097900207.a n = A349993 n

end A349993

/-! ## A349993.P15722917503845796154

`ceil(sqrt(n^3-sin(5))-n)`
-/

namespace A349993.P15722917503845796154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n ^ 3 : ℝ) - Real.sin (5 : ℝ)) - (n : ℝ)⌉

end

end A349993.P15722917503845796154

namespace A349993

/-- `ceil(sqrt(n^3-sin(5))-n)` -/
def P15722917503845796154.Spec : Prop :=
  ∀ n, P15722917503845796154.a n = A349993 n

end A349993

/-! ## A349993.P12377695029320218585

`ceil(sqrt(tanh(1)+n^3)-n)`
-/

namespace A349993.P12377695029320218585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.tanh (1 : ℝ) + (n ^ 3 : ℝ)) - (n : ℝ)⌉

end

end A349993.P12377695029320218585

namespace A349993

/-- `ceil(sqrt(tanh(1)+n^3)-n)` -/
def P12377695029320218585.Spec : Prop :=
  ∀ n, P12377695029320218585.a n = A349993 n

end A349993

/-! ## A349993.P4512750261474432281

`ceil(sqrt(cot(1)+n^3)-n)`
-/

namespace A349993.P4512750261474432281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.cot (1 : ℝ) + (n ^ 3 : ℝ)) - (n : ℝ)⌉

end

end A349993.P4512750261474432281

namespace A349993

/-- `ceil(sqrt(cot(1)+n^3)-n)` -/
def P4512750261474432281.Spec : Prop :=
  ∀ n, P4512750261474432281.a n = A349993 n

end A349993

/-! ## A349993.P9773341905775236432

`ceil(sqrt(n^3-cot(2))-n)`
-/

namespace A349993.P9773341905775236432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((n ^ 3 : ℝ) - Real.cot (2 : ℝ)) - (n : ℝ)⌉

end

end A349993.P9773341905775236432

namespace A349993

/-- `ceil(sqrt(n^3-cot(2))-n)` -/
def P9773341905775236432.Spec : Prop :=
  ∀ n, P9773341905775236432.a n = A349993 n

end A349993

/-! ## A349993.P229203380261870506

`ceil(1/acot(n*sqrt(n))-n)`
-/

namespace A349993.P229203380261870506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot ((n : ℝ) * Real.sqrt (n : ℝ)) - (n : ℝ)⌉

end

end A349993.P229203380261870506

namespace A349993

/-- `ceil(1/acot(n*sqrt(n))-n)` -/
def P229203380261870506.Spec : Prop :=
  ∀ n, P229203380261870506.a n = A349993 n

end A349993

/-! ## A349993.P9722615795151588761

`abs(A000093(n)+1-n)`
-/

namespace A349993.P9722615795151588761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000093 n + (1 - (n : ℤ))|

end

end A349993.P9722615795151588761

namespace A349993

/-- `abs(A000093(n)+1-n)` -/
def P9722615795151588761.Spec : Prop :=
  ∀ n, P9722615795151588761.a n = A349993 n

end A349993

/-! ## A349993.P17010084160138197102

`ceil(sqrt(sqrt(A002604(n)))-n)`
-/

namespace A349993.P17010084160138197102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A002604 n : ℝ)) - (n : ℝ)⌉

end

end A349993.P17010084160138197102

namespace A349993

/-- `ceil(sqrt(sqrt(A002604(n)))-n)` -/
def P17010084160138197102.Spec : Prop :=
  ∀ n, P17010084160138197102.a n = A349993 n

end A349993

/-! ## A349993.P14425620817188111506

`ceil(sqrt(sqrt(A060883(n)))-n)`
-/

namespace A349993.P14425620817188111506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A060883 n : ℝ)) - (n : ℝ)⌉

end

end A349993.P14425620817188111506

namespace A349993

/-- `ceil(sqrt(sqrt(A060883(n)))-n)` -/
def P14425620817188111506.Spec : Prop :=
  ∀ n, P14425620817188111506.a n = A349993 n

end A349993

/-! ## A349993.P1681216230921102506

`abs(floor(sqrt(A000578(n)))+1-n)`
-/

namespace A349993.P1681216230921102506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.sqrt (A000578 n) + 1 - (n : ℤ)|

end

end A349993.P1681216230921102506

namespace A349993

/-- `abs(floor(sqrt(A000578(n)))+1-n)` -/
def P1681216230921102506.Spec : Prop :=
  ∀ n, P1681216230921102506.a n = A349993 n

end A349993

/-! ## A349993.P4041641429089158704

`A000027(A000093(n)+1-n)`
-/

namespace A349993.P4041641429089158704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000093 n + (1 - (n : ℤ))).toNat

end

end A349993.P4041641429089158704

namespace A349993

/-- `A000027(A000093(n)+1-n)` -/
def P4041641429089158704.Spec : Prop :=
  ∀ n, P4041641429089158704.a n = A349993 n

end A349993

/-! ## A349993.P1716045004699555865

`A000027(1-(n-A000093(n)))`
-/

namespace A349993.P1716045004699555865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (1 - ((n : ℤ) - A000093 n)).toNat

end

end A349993.P1716045004699555865

namespace A349993

/-- `A000027(1-(n-A000093(n)))` -/
def P1716045004699555865.Spec : Prop :=
  ∀ n, P1716045004699555865.a n = A349993 n

end A349993

/-! ## A349993.P17737535014963589070

`A028310(A077121(n)-n)`
-/

namespace A349993.P17737535014963589070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A077121 n - (n : ℤ)).toNat

end

end A349993.P17737535014963589070

namespace A349993

/-- `A028310(A077121(n)-n)` -/
def P17737535014963589070.Spec : Prop :=
  ∀ n, P17737535014963589070.a n = A349993 n

end A349993

/-! ## A349993.P16683815420346990818

`A028310(A000093(n)+1-n)`
-/

namespace A349993.P16683815420346990818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000093 n + (1 - (n : ℤ))).toNat

end

end A349993.P16683815420346990818

namespace A349993

/-- `A028310(A000093(n)+1-n)` -/
def P16683815420346990818.Spec : Prop :=
  ∀ n, P16683815420346990818.a n = A349993 n

end A349993

/-! ## A349993.P7695886327274516791

`A023443(A077121(n)+1-n)`
-/

namespace A349993.P7695886327274516791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A077121 n + (1 - (n : ℤ))).toNat

end

end A349993.P7695886327274516791

namespace A349993

/-- `A023443(A077121(n)+1-n)` -/
def P7695886327274516791.Spec : Prop :=
  ∀ n, P7695886327274516791.a n = A349993 n

end A349993

/-!
# A349994: a(n) is the difference between the n-th prime and the next smaller odd squarefree semiprime, divided by 2.

The programs for A349994, there is no canonical definition to state claims against.
-/

/-! ## A349994.P6786024278253052307

`gcd(A000120(A196103(3*n+4)), A160463(n))`
-/

namespace A349994.P6786024278253052307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (A196103 (3 * n + 4)).toNat) (A160463 n)

end

end A349994.P6786024278253052307

/-! ## A349994.P128772582644267426

`A196527(p?[A008611(A303084(n+1))])`
-/

namespace A349994.P128772582644267426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A303084 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196527 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A349994.P128772582644267426

/-! ## A349994.P2439365617789611546

`A210501(A003645(n)%A286290(2*(n+2)))`
-/

namespace A349994.P2439365617789611546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210501 (Int.tmod (A003645 n) (A286290 (2 * (n + 2)))).toNat

end

end A349994.P2439365617789611546

/-! ## A349994.P2568828288917320105

`A001511(A185087(n)+n)`
-/

namespace A349994.P2568828288917320105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A185087 n + (n : ℤ)).toNat

end

end A349994.P2568828288917320105

/-! ## A349994.P16770160920706497588

`A206437(A000013(n)+∑[n])`
-/

namespace A349994.P16770160920706497588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206437 (A000013 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A349994.P16770160920706497588

/-!
# A349995: Record gaps between odd squarefree semiprimes (A046388).

The programs for A349995, there is no canonical definition to state claims against.
-/

/-! ## A349995.P10376495500645537881

`A350099(n+1)-A350098(n+1)`
-/

namespace A349995.P10376495500645537881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350099 (n + 1) - A350098 (n + 1)

end

end A349995.P10376495500645537881

/-! ## A349995.P2109368328016957901

`A350099(A000027(n+1))%A350098(n+1)`
-/

namespace A349995.P2109368328016957901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350099 (A000027 (n + 1)).toNat) (A350098 (n + 1))

end

end A349995.P2109368328016957901

/-! ## A349995.P16428200151025833949

`A028310(A350099(n+1)%A350098(n+1))`
-/

namespace A349995.P16428200151025833949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A350099 (n + 1)) (A350098 (n + 1))).toNat

end

end A349995.P16428200151025833949

/-! ## A349995.P18315878883695697436

`A350099(A044923(n+1))%A350098(n+1)`
-/

namespace A349995.P18315878883695697436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350099 (A044923 (n + 1)).toNat) (A350098 (n + 1))

end

end A349995.P18315878883695697436

/-!
# A349996: Number of primes in an interval [k^2,(k+1)^2] setting a new record.

The programs for A349996, the canonical program `A349996.P11167608155946690490` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A349996 has offset 1).

The definition of A349996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A349996.P6928641193736917390

`record[A014085(n+1)]`
-/

namespace A349996.P6928641193736917390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349996.P6928641193736917390

namespace A349996

/-- `record[A014085(n+1)]` -/
def P6928641193736917390.Spec : Prop :=
  ∀ n, P6928641193736917390.a n = A349996 (n + 1)

end A349996

/-! ## A349996.P5240224208377132941

`record[A104481(n+1)+1]`
-/

namespace A349996.P5240224208377132941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104481 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349996.P5240224208377132941

namespace A349996

/-- `record[A104481(n+1)+1]` -/
def P5240224208377132941.Spec : Prop :=
  ∀ n, P5240224208377132941.a n = A349996 (n + 1)

end A349996

/-! ## A349996.P8365871193351189355

`sqrt(record[A014085(abs(1-n))²])`
-/

namespace A349996.P8365871193351189355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 |1 - (n : ℤ)|.toNat ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A349996.P8365871193351189355

namespace A349996

/-- `sqrt(record[A014085(abs(1-n))²])` -/
def P8365871193351189355.Spec : Prop :=
  ∀ n, P8365871193351189355.a n = (A349996 (n + 1) : ℝ)

end A349996

/-! ## A349996.P16276789255318205748

`record[or(floor(acot(n)²), A014085(n))]`
-/

namespace A349996.P16276789255318205748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ (A014085 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349996.P16276789255318205748

namespace A349996

/-- `record[or(floor(acot(n)²), A014085(n))]` -/
def P16276789255318205748.Spec : Prop :=
  ∀ n, P16276789255318205748.a n = A349996 (n + 1)

end A349996

/-! ## A349996.P11167608155946690490

`record[A180304(n+1)/(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A349996

/-- `record[A180304(n+1)/(n+1)]` -/
def P11167608155946690490.Spec : Prop :=
  ∀ n, P11167608155946690490.a n = (A349996 (n + 1) : ℚ)

end A349996

/-! ## A349996.P7061579138924306451

`record[2*n+3-A161182(n+2)]`
-/

namespace A349996.P7061579138924306451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A161182 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349996.P7061579138924306451

namespace A349996

/-- `record[2*n+3-A161182(n+2)]` -/
def P7061579138924306451.Spec : Prop :=
  ∀ n, P7061579138924306451.a n = A349996 (n + 1)

end A349996

/-! ## A349996.P16992837340172224634

`A014085(A333846(n+2))`
-/

namespace A349996.P16992837340172224634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A333846 (n + 2)).toNat

end

end A349996.P16992837340172224634

namespace A349996

/-- `A014085(A333846(n+2))` -/
def P16992837340172224634.Spec : Prop :=
  ∀ n, P16992837340172224634.a n = A349996 (n + 1)

end A349996

/-! ## A349996.P13835915311582993601

`record[or(A000038(n), A014085(n))]`
-/

namespace A349996.P13835915311582993601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A014085 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349996.P13835915311582993601

namespace A349996

/-- `record[or(A000038(n), A014085(n))]` -/
def P13835915311582993601.Spec : Prop :=
  ∀ n, P13835915311582993601.a n = A349996 (n + 1)

end A349996

/-! ## A349996.P15337688409246127132

`A000027(record[A014085(abs(1-n))])`
-/

namespace A349996.P15337688409246127132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A349996.P15337688409246127132

namespace A349996

/-- `A000027(record[A014085(abs(1-n))])` -/
def P15337688409246127132.Spec : Prop :=
  ∀ n, P15337688409246127132.a n = A349996 (n + 1)

end A349996

/-! ## A349996.P17639473304365226985

`record[A104477(n+1)+1]`
-/

namespace A349996.P17639473304365226985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104477 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349996.P17639473304365226985

namespace A349996

/-- `record[A104477(n+1)+1]` -/
def P17639473304365226985.Spec : Prop :=
  ∀ n, P17639473304365226985.a n = A349996 (n + 1)

end A349996

/-!
# A349998: Numbers k such that the number of primes in any interval [j^2,(j+1)^2], j>k exceeds the number of primes in the interval [k^2,(k+1)^2].

The programs for A349998, there is no canonical definition to state claims against.
-/

/-! ## A349998.P10220651260218666517

`record[A084597(n+2)]`
-/

namespace A349998.P10220651260218666517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084597 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A349998.P10220651260218666517

/-! ## A349998.P3874155288397550360

`A084597(A349999(n+1))`
-/

namespace A349998.P3874155288397550360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084597 (A349999 (n + 1)).toNat

end

end A349998.P3874155288397550360

/-! ## A349998.P3387070692306941959

`A084597(A014085(A349997(n+1)))`
-/

namespace A349998.P3387070692306941959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084597 (A014085 (A349997 (n + 1)).toNat).toNat

end

end A349998.P3387070692306941959

/-!
# A349999: Least number m of primes that must have appeared in an interval [j^2, (j+1)^2], such that all intervals [k^2, (k+1)^2], k>j contain more than m primes. The corresponding values of j are A349998.

The programs for A349999, there is no canonical definition to state claims against.
-/

/-! ## A349999.P17148196886404623861

`A014085(A349998(n+1))`
-/

namespace A349999.P17148196886404623861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A349998 (n + 1)).toNat

end

end A349999.P17148196886404623861

/-! ## A349999.P6217698728538542896

`A014085(A349997(n+1))`
-/

namespace A349999.P6217698728538542896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (A349997 (n + 1)).toNat

end

end A349999.P6217698728538542896

/-! ## A349999.P6028117366812646496

`A180304(A349997(n+1))/A349997(A000027(n+1))`
-/

namespace A349999.P6028117366812646496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180304 (A349997 (n + 1)).toNat : ℚ) / (A349997 (A000027 (n + 1)).toNat : ℚ)

end

end A349999.P6028117366812646496

/-! ## A349999.P18118829717829829466

`A014085(record[A084597(n+2)])`
-/

namespace A349999.P18118829717829829466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084597 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A349999.P18118829717829829466

/-! ## A349999.P12412286023696004708

`A104481(record[A084597(n+2)])+1`
-/

namespace A349999.P12412286023696004708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084597 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104481 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A349999.P12412286023696004708

/-! ## A349999.P4400165646844082707

`A180304(A349998(n+1))/record[A084597(n+2)]`
-/

namespace A349999.P4400165646844082707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084597 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180304 (A349998 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A349999.P4400165646844082707

