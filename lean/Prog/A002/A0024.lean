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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
# A002400: Coefficients for step-by-step integration.

The programs for A002400, there is no canonical definition to state claims against.
-/

/-! ## A002400.P3588629833517022270

`A260780(∑[n+2]+3)`
-/

namespace A002400.P3588629833517022270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260780 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A002400.P3588629833517022270

/-!
# A002401: Coefficients for step-by-step integration.

The programs for A002401, there is no canonical definition to state claims against.
-/

/-! ## A002401.P13033833536904034280

`A002405(n)+n*ratio[A003418(n)]*a(n-1)` with `a(0)=1`
-/

namespace A002401.P13033833536904034280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A002405 n : ℚ) + (n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)) * a (n - 1)

end

end A002401.P13033833536904034280

/-! ## A002401.P750153186914866932

`A002405(n)+n*A014963(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A002401.P750153186914866932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002405 n + (n : ℤ) * A014963 (n + 1) * a (n - 1)

end

end A002401.P750153186914866932

/-! ## A002401.P15228553737756752252

`A002405(n)+n*a(n-1)*A020500(n+1)` with `a(0)=1`
-/

namespace A002401.P15228553737756752252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002405 n + (n : ℤ) * (a (n - 1) * A020500 (n + 1))

end

end A002401.P15228553737756752252

/-! ## A002401.P1009717635994451001

`A245765(n)/A025527(n+1)`
-/

namespace A002401.P1009717635994451001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245765 n : ℚ) / (A025527 (n + 1) : ℚ)

end

end A002401.P1009717635994451001

/-!
# A002402: Coefficients for step-by-step integration.

The programs for A002402, there is no canonical definition to state claims against.
-/

/-! ## A002402.P16408278344842364629

`record[A260781(comp[∑[n]])]`
-/

namespace A002402.P16408278344842364629
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260781 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002402.P16408278344842364629

/-!
# A002404: Coefficients for step-by-step integration.

The programs for A002404, there is no canonical definition to state claims against.
-/

/-! ## A002404.P18362789317269524475

`A260780(∑[n+2]-1)`
-/

namespace A002404.P18362789317269524475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260780 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A002404.P18362789317269524475

/-! ## A002404.P10729174570045170365

`A260780(A034856(n+1))+char[6]`
-/

namespace A002404.P10729174570045170365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260780 (A034856 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A002404.P10729174570045170365

/-!
# A002405: Coefficients for step-by-step integration.

The programs for A002405, there is no canonical definition to state claims against.
-/

/-! ## A002405.P16627660108284594841

`A014963(A264004(n+1))-A290606(n+1)`
-/

namespace A002405.P16627660108284594841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A264004 (n + 1)).toNat - A290606 (n + 1)

end

end A002405.P16627660108284594841

/-! ## A002405.P6675280294306673656

`A290563(A034268(n+1))-A290606(n+1)`
-/

namespace A002405.P6675280294306673656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290563 (A034268 (n + 1)).toNat - A290606 (n + 1)

end

end A002405.P6675280294306673656

/-!
# A002406: Coefficients for step-by-step integration.

The programs for A002406, there is no canonical definition to state claims against.
-/

/-! ## A002406.P14310163265196358360

`A260781(∑[n+2]-1)`
-/

namespace A002406.P14310163265196358360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260781 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A002406.P14310163265196358360

/-!
# A002407: Cuban primes: primes which are the difference of two consecutive cubes.

The programs for A002407, there is no canonical definition to state claims against.
-/

/-! ## A002407.P8311209864171150059

`(3*A121259(n+1)²+1)/4`
-/

namespace A002407.P8311209864171150059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A121259 (n + 1) ^ 2 + 1 : ℚ) / 4

end

end A002407.P8311209864171150059

/-! ## A002407.P3960910666133676097

`(3*(2*A002504(n+1)-1)²+1)/4`
-/

namespace A002407.P3960910666133676097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (2 * A002504 (n + 1) - 1) ^ 2 + 1 : ℚ) / 4

end

end A002407.P3960910666133676097

/-! ## A002407.P10224413677312542865

`A003215(A111251(n+1))`
-/

namespace A002407.P10224413677312542865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (A111251 (n + 1)).toNat

end

end A002407.P10224413677312542865

/-! ## A002407.P7781575860683372648

`A334520(n+2)`
-/

namespace A002407.P7781575860683372648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334520 (n + 2)

end

end A002407.P7781575860683372648

/-! ## A002407.P14043733451368490889

`A068626(A002640(n+1))`
-/

namespace A002407.P14043733451368490889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068626 (A002640 (n + 1)).toNat

end

end A002407.P14043733451368490889

/-! ## A002407.P17807650667517646200

`A003215(comp[A257772(n+1)])`
-/

namespace A002407.P17807650667517646200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257772 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A002407.P17807650667517646200

/-! ## A002407.P8691091424150380022

`A003215(A002504(n+1)-1)`
-/

namespace A002407.P8691091424150380022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (A002504 (n + 1) - 1).toNat

end

end A002407.P8691091424150380022

/-! ## A002407.P2265330609473536803

`A077043(A121259(n+1))`
-/

namespace A002407.P2265330609473536803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (A121259 (n + 1)).toNat

end

end A002407.P2265330609473536803

/-! ## A002407.P17417824925512598327

`record[A081256(A016789(n+1))]`
-/

namespace A002407.P17417824925512598327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A016789 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002407.P17417824925512598327

/-! ## A002407.P5376374801518462121

`A081256(A002640(n+1)+1)`
-/

namespace A002407.P5376374801518462121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A002640 (n + 1) + 1).toNat

end

end A002407.P5376374801518462121

/-! ## A002407.P8758247702259388983

`A092076(A002640(n+1)+1)`
-/

namespace A002407.P8758247702259388983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092076 (A002640 (n + 1) + 1).toNat

end

end A002407.P8758247702259388983

/-! ## A002407.P3756416047511335022

`A305185(A002640(n+1)+1)`
-/

namespace A002407.P3756416047511335022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305185 (A002640 (n + 1) + 1).toNat

end

end A002407.P3756416047511335022

/-! ## A002407.P10052087559257404184

`A092076(eq[A081256(n+1), A092076(n)])`
-/

namespace A002407.P10052087559257404184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092076 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A002407.P10052087559257404184

/-! ## A002407.P13237203289842543532

`A208994(eq[A081256(n+1), A208994(n)])`
-/

namespace A002407.P13237203289842543532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208994 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208994 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A002407.P13237203289842543532

/-! ## A002407.P1823613203138594283

`A046163(2*A002640(n+1)-A002640(n+1))`
-/

namespace A002407.P1823613203138594283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046163 (2 * A002640 (n + 1) - A002640 (n + 1)).toNat

end

end A002407.P1823613203138594283

/-! ## A002407.P6443204926333418175

`A081256(eq[A081256(n+1), A305185(n+1)]+1)`
-/

namespace A002407.P6443204926333418175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A002407.P6443204926333418175

/-! ## A002407.P16168870741920868422

`A111251(n+1)+A066486(A002504(n+1))`
-/

namespace A002407.P16168870741920868422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1) + A066486 (A002504 (n + 1)).toNat

end

end A002407.P16168870741920868422

/-! ## A002407.P14677979516659790520

`p?[Δ[n^3]]`
-/

namespace A002407.P14677979516659790520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002407.P14677979516659790520

/-! ## A002407.P17922436428641145262

`or(1, p?[(n+1)*3*n+1])`
-/

namespace A002407.P17922436428641145262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (3 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A002407.P17922436428641145262

/-! ## A002407.P15019787651570241922

`∑{p}[p?[n*3*(n+1)+1], #]`
-/

namespace A002407.P15019787651570241922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (3 * (n + 1)) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A002407.P15019787651570241922

/-!
# A002408: Expansion of 8-dimensional cusp form.

The programs for A002408, the canonical program `A002408.P4398356594904168961` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002408 has offset 0).

The definition of A002408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002408.P4398356594904168961

`-((-1)^n*A007331(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002408

/-- `-((-1)^n*A007331(n))` -/
def P4398356594904168961.Spec : Prop :=
  ∀ n, P4398356594904168961.a n = A002408 n

theorem P4398356594904168961.correct : P4398356594904168961.Spec := by
  intro n
  simp only [A002408]

end A002408

/-! ## A002408.P2699297882823223773

`A007331(n)*A062157(n)`
-/

namespace A002408.P2699297882823223773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 n * A062157 n

end

end A002408.P2699297882823223773

namespace A002408

/-- `A007331(n)*A062157(n)` -/
def P2699297882823223773.Spec : Prop :=
  ∀ n, P2699297882823223773.a n = A002408 n

end A002408

/-! ## A002408.P7869215083064149455

`A007331(n)*A165326(n)`
-/

namespace A002408.P7869215083064149455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 n * A165326 n

end

end A002408.P7869215083064149455

namespace A002408

/-- `A007331(n)*A165326(n)` -/
def P7869215083064149455.Spec : Prop :=
  ∀ n, P7869215083064149455.a n = A002408 n

end A002408

/-! ## A002408.P4086788284302266779

`A007331(n)*A033999(n+1)`
-/

namespace A002408.P4086788284302266779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 n * A033999 (n + 1)

end

end A002408.P4086788284302266779

namespace A002408

/-- `A007331(n)*A033999(n+1)` -/
def P4086788284302266779.Spec : Prop :=
  ∀ n, P4086788284302266779.a n = A002408 n

end A002408

/-! ## A002408.P871730494278905474

`A007331(n)/A062157(n+2)`
-/

namespace A002408.P871730494278905474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007331 n : ℚ) / (A062157 (n + 2) : ℚ)

end

end A002408.P871730494278905474

namespace A002408

/-- `A007331(n)/A062157(n+2)` -/
def P871730494278905474.Spec : Prop :=
  ∀ n, P871730494278905474.a n = (A002408 n : ℚ)

end A002408

/-! ## A002408.P6502093997998387157

`(2*A000035(n)-1)*A007331(n)`
-/

namespace A002408.P6502093997998387157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A000035 n - 1) * A007331 n

end

end A002408.P6502093997998387157

namespace A002408

/-- `(2*A000035(n)-1)*A007331(n)` -/
def P6502093997998387157.Spec : Prop :=
  ∀ n, P6502093997998387157.a n = A002408 n

end A002408

/-! ## A002408.P14128436773219473475

`(A167294(A020639(n+1)+1)-1)*A007331(n)`
-/

namespace A002408.P14128436773219473475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A167294 (A020639 (n + 1) + 1).toNat - 1) * A007331 n

end

end A002408.P14128436773219473475

namespace A002408

/-- `(A167294(A020639(n+1)+1)-1)*A007331(n)` -/
def P14128436773219473475.Spec : Prop :=
  ∀ n, P14128436773219473475.a n = A002408 n

end A002408

/-! ## A002408.P9638383381472699440

`A000143(n+1)/A035016(n+1)*A007331(n)`
-/

namespace A002408.P9638383381472699440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000143 (n + 1) : ℚ) / (A035016 (n + 1) : ℚ) * (A007331 n : ℚ)

end

end A002408.P9638383381472699440

namespace A002408

/-- `A000143(n+1)/A035016(n+1)*A007331(n)` -/
def P9638383381472699440.Spec : Prop :=
  ∀ n, P9638383381472699440.a n = (A002408 n : ℚ)

end A002408

/-!
# A002409: a(n) = 2^n*C(n+6,6). Number of 6D hypercubes in an (n+6)-dimensional hypercube.

The programs for A002409, the canonical program `A002409.P12980562088926872921` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002409 has offset 0).

The definition of A002409 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*C(n+6, 6)` (program `A002409.P12980562088926872921`, by `A002409.P12980562088926872921.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002409.P12980562088926872921

`2^n*C(n+6, 6)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002409

/-- `2^n*C(n+6, 6)` -/
def P12980562088926872921.Spec : Prop :=
  ∀ n, (P12980562088926872921.a n : ℤ) = A002409 n

theorem P12980562088926872921.correct : P12980562088926872921.Spec := by
  intro n
  simp only [A002409]

end A002409

/-! ## A002409.P9544464883262065408

`(12/n+2)*a(n-1)` with `a(0)=1`
-/

namespace A002409.P9544464883262065408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (12 / (n : ℚ) + 2) * a (n - 1)

end

end A002409.P9544464883262065408

namespace A002409

/-- `(12/n+2)*a(n-1)` -/
def P9544464883262065408.Spec : Prop :=
  ∀ n, P9544464883262065408.a n = (A002409 n : ℚ)

end A002409

/-! ## A002409.P1291599740883771633

`2^n*∑[∑[∑[∑[∑[n+1]]]]]`
-/

namespace A002409.P1291599740883771633
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002409.P1291599740883771633

namespace A002409

/-- `2^n*∑[∑[∑[∑[∑[n+1]]]]]` -/
def P1291599740883771633.Spec : Prop :=
  ∀ n, (P1291599740883771633.a n : ℤ) = A002409 n

end A002409

/-! ## A002409.P15552417255047239535

`∑[A006976(n)]`
-/

namespace A002409.P15552417255047239535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002409.P15552417255047239535

namespace A002409

/-- `∑[A006976(n)]` -/
def P15552417255047239535.Spec : Prop :=
  ∀ n, P15552417255047239535.a n = A002409 n

end A002409

/-! ## A002409.P17426567307777812781

`A082140(n+1)-A082139(n+1)`
-/

namespace A002409.P17426567307777812781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082140 (n + 1) - A082139 (n + 1)

end

end A002409.P17426567307777812781

namespace A002409

/-- `A082140(n+1)-A082139(n+1)` -/
def P17426567307777812781.Spec : Prop :=
  ∀ n, P17426567307777812781.a n = A002409 n

end A002409

/-! ## A002409.P14640877739269356865

`A082140(n+1)-2*A080952(n)`
-/

namespace A002409.P14640877739269356865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082140 (n + 1) - 2 * A080952 n

end

end A002409.P14640877739269356865

namespace A002409

/-- `A082140(n+1)-2*A080952(n)` -/
def P14640877739269356865.Spec : Prop :=
  ∀ n, P14640877739269356865.a n = A002409 n

end A002409

/-! ## A002409.P13275842195927497813

`A082140(n+1)-A054849(n+6)/2`
-/

namespace A002409.P13275842195927497813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082140 (n + 1) : ℚ) - (A054849 (n + 6) : ℚ) / 2

end

end A002409.P13275842195927497813

namespace A002409

/-- `A082140(n+1)-A054849(n+6)/2` -/
def P13275842195927497813.Spec : Prop :=
  ∀ n, P13275842195927497813.a n = (A002409 n : ℚ)

end A002409

/-! ## A002409.P3393709290647830402

`(n+1)*A080952(n)/3`
-/

namespace A002409.P3393709290647830402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A080952 n : ℚ) / 3

end

end A002409.P3393709290647830402

namespace A002409

/-- `(n+1)*A080952(n)/3` -/
def P3393709290647830402.Spec : Prop :=
  ∀ n, P3393709290647830402.a n = (A002409 n : ℚ)

end A002409

/-! ## A002409.P17976821656502458969

`2*A209404(n)-∑[A209404(n)]`
-/

namespace A002409.P17976821656502458969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209404 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002409.P17976821656502458969

namespace A002409

/-- `2*A209404(n)-∑[A209404(n)]` -/
def P17976821656502458969.Spec : Prop :=
  ∀ n, P17976821656502458969.a n = A002409 n

end A002409

/-! ## A002409.P14557930140942032564

`A082141(n+1)-(A082139(n+1)+A054851(n+7))`
-/

namespace A002409.P14557930140942032564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082141 (n + 1) - (A082139 (n + 1) + A054851 (n + 7))

end

end A002409.P14557930140942032564

namespace A002409

/-- `A082141(n+1)-(A082139(n+1)+A054851(n+7))` -/
def P14557930140942032564.Spec : Prop :=
  ∀ n, P14557930140942032564.a n = A002409 n

end A002409

/-! ## A002409.P4791695957816095622

`A005009(n)*A034265(n)/A016921(n+1)`
-/

namespace A002409.P4791695957816095622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005009 n * A034265 n : ℚ) / (A016921 (n + 1) : ℚ)

end

end A002409.P4791695957816095622

namespace A002409

/-- `A005009(n)*A034265(n)/A016921(n+1)` -/
def P4791695957816095622.Spec : Prop :=
  ∀ n, P4791695957816095622.a n = (A002409 n : ℚ)

end A002409

/-! ## A002409.P3921364747277235289

`A054337(n)/A000079(n)`
-/

namespace A002409.P3921364747277235289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054337 n : ℚ) / (A000079 n : ℚ)

end

end A002409.P3921364747277235289

namespace A002409

/-- `A054337(n)/A000079(n)` -/
def P3921364747277235289.Spec : Prop :=
  ∀ n, P3921364747277235289.a n = (A002409 n : ℚ)

end A002409

/-! ## A002409.P9458236092703901627

`A054337(n)/(A000051(n)-1)`
-/

namespace A002409.P9458236092703901627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054337 n : ℚ) / (A000051 n - 1 : ℚ)

end

end A002409.P9458236092703901627

namespace A002409

/-- `A054337(n)/(A000051(n)-1)` -/
def P9458236092703901627.Spec : Prop :=
  ∀ n, P9458236092703901627.a n = (A002409 n : ℚ)

end A002409

/-! ## A002409.P6070366303809662953

`A011782(n+1)*A082140(n)/A011782(n)`
-/

namespace A002409.P6070366303809662953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) * A082140 n : ℚ) / (A011782 n : ℚ)

end

end A002409.P6070366303809662953

namespace A002409

/-- `A011782(n+1)*A082140(n)/A011782(n)` -/
def P6070366303809662953.Spec : Prop :=
  ∀ n, P6070366303809662953.a n = (A002409 n : ℚ)

end A002409

/-! ## A002409.P12415552401563297024

`A001789(n+3)*A082140(n)/A082138(n)`
-/

namespace A002409.P12415552401563297024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001789 (n + 3) * A082140 n : ℚ) / (A082138 n : ℚ)

end

end A002409.P12415552401563297024

namespace A002409

/-- `A001789(n+3)*A082140(n)/A082138(n)` -/
def P12415552401563297024.Spec : Prop :=
  ∀ n, P12415552401563297024.a n = (A002409 n : ℚ)

end A002409

/-! ## A002409.P4761043284617204510

`A114192(A167614(n+2))`
-/

namespace A002409.P4761043284617204510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114192 (A167614 (n + 2)).toNat

end

end A002409.P4761043284617204510

namespace A002409

/-- `A114192(A167614(n+2))` -/
def P4761043284617204510.Spec : Prop :=
  ∀ n, P4761043284617204510.a n = A002409 n

end A002409

/-! ## A002409.P12191690704517419535

`A054849(n+5)*A082140(n)/A082139(n)`
-/

namespace A002409.P12191690704517419535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054849 (n + 5) * A082140 n : ℚ) / (A082139 n : ℚ)

end

end A002409.P12191690704517419535

namespace A002409

/-- `A054849(n+5)*A082140(n)/A082139(n)` -/
def P12191690704517419535.Spec : Prop :=
  ∀ n, P12191690704517419535.a n = (A002409 n : ℚ)

end A002409

/-! ## A002409.P5820157042296847668

`A054851(n+7)*A082140(n)/A082141(n)`
-/

namespace A002409.P5820157042296847668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054851 (n + 7) * A082140 n : ℚ) / (A082141 n : ℚ)

end

end A002409.P5820157042296847668

namespace A002409

/-- `A054851(n+7)*A082140(n)/A082141(n)` -/
def P5820157042296847668.Spec : Prop :=
  ∀ n, P5820157042296847668.a n = (A002409 n : ℚ)

end A002409

/-! ## A002409.P15741291920383399015

`A050988(n+6)/A000244(n)`
-/

namespace A002409.P15741291920383399015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050988 (n + 6) : ℚ) / (A000244 n : ℚ)

end

end A002409.P15741291920383399015

namespace A002409

/-- `A050988(n+6)/A000244(n)` -/
def P15741291920383399015.Spec : Prop :=
  ∀ n, P15741291920383399015.a n = (A002409 n : ℚ)

end A002409

/-! ## A002409.P18076439214966311866

`A140406(n)/A000302(n)`
-/

namespace A002409.P18076439214966311866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140406 n : ℚ) / (A000302 n : ℚ)

end

end A002409.P18076439214966311866

namespace A002409

/-- `A140406(n)/A000302(n)` -/
def P18076439214966311866.Spec : Prop :=
  ∀ n, P18076439214966311866.a n = (A002409 n : ℚ)

end A002409

/-!
# A002410: Nearest integer to imaginary part of n-th zero of Riemann zeta function.

The programs for A002410, there is no canonical definition to state claims against.
-/

/-! ## A002410.P1310881598177057581

`∑[A162774(n+1)]`
-/

namespace A002410.P1310881598177057581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002410.P1310881598177057581

/-! ## A002410.P10632885803918873379

`A319229(n+1)+A000040(n+1)`
-/

namespace A002410.P10632885803918873379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319229 (n + 1) + A000040 (n + 1)

end

end A002410.P10632885803918873379

/-! ## A002410.P11083044424115844892

`A320141(n+1)-A000040(n+1)`
-/

namespace A002410.P11083044424115844892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320141 (n + 1) - A000040 (n + 1)

end

end A002410.P11083044424115844892

/-! ## A002410.P16121809901428226266

`round(A342756(n+1)/A000040(n+1))`
-/

namespace A002410.P16121809901428226266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A342756 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ))

end

end A002410.P16121809901428226266

/-! ## A002410.P18368785007679391842

`A319229(n+1)+A100484(n+1)/2`
-/

namespace A002410.P18368785007679391842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319229 (n + 1) : ℚ) + (A100484 (n + 1) : ℚ) / 2

end

end A002410.P18368785007679391842

/-! ## A002410.P1893241607765985166

`A320141(n+1)-A100484(n+1)/2`
-/

namespace A002410.P1893241607765985166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320141 (n + 1) : ℚ) - (A100484 (n + 1) : ℚ) / 2

end

end A002410.P1893241607765985166

/-! ## A002410.P6573079594167775516

`A319229(n+1)+A008578(n+2)`
-/

namespace A002410.P6573079594167775516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319229 (n + 1) + A008578 (n + 2)

end

end A002410.P6573079594167775516

/-! ## A002410.P4908699813872600378

`round(A342756(n+1)/A008578(n+2))`
-/

namespace A002410.P4908699813872600378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A342756 (n + 1) : ℚ) / (A008578 (n + 2) : ℚ))

end

end A002410.P4908699813872600378

/-! ## A002410.P6981526151908847711

`round(A342756(n+1)/p?[A344180(n)])`
-/

namespace A002410.P6981526151908847711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A342756 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ))

end

end A002410.P6981526151908847711

/-! ## A002410.P8411851900810883284

`A319229(n+1)+A006530(A100484(n+1))`
-/

namespace A002410.P8411851900810883284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319229 (n + 1) + A006530 (A100484 (n + 1)).toNat

end

end A002410.P8411851900810883284

/-! ## A002410.P16646787513244401111

`A319229(n+1)+A067747(2*n+1)`
-/

namespace A002410.P16646787513244401111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319229 (n + 1) + A067747 (2 * n + 1)

end

end A002410.P16646787513244401111

/-! ## A002410.P16015068854819195499

`A320141(n+1)-A067747(2*n+1)`
-/

namespace A002410.P16015068854819195499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320141 (n + 1) - A067747 (2 * n + 1)

end

end A002410.P16015068854819195499

/-! ## A002410.P10254720412707589765

`round(A342756(n+1)/p?[A004280(n+1)])`
-/

namespace A002410.P10254720412707589765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A342756 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ))

end

end A002410.P10254720412707589765

/-! ## A002410.P15092996954702369016

`round(A342756(n+1)/p?[A060000(n+1)])`
-/

namespace A002410.P15092996954702369016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A342756 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ))

end

end A002410.P15092996954702369016

/-! ## A002410.P13192165384100718298

`round(A342756(n+1)/p?[A057979(n)])`
-/

namespace A002410.P13192165384100718298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A342756 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ))

end

end A002410.P13192165384100718298

/-!
# A002411: Pentagonal pyramidal numbers: a(n) = n^2*(n+1)/2.

The programs for A002411, the canonical program `A002411.P3000284336972342338` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002411 has offset 0).

The definition of A002411 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n+1)/2` (program `A002411.P1877117026154642106`, by `A002411.P1877117026154642106.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002411.P1877117026154642106

`n²*(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002411.P1877117026154642106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 * (n + 1) : ℚ) / 2

end

end A002411.P1877117026154642106

namespace A002411

/-- `n²*(n+1)/2` -/
def P1877117026154642106.Spec : Prop :=
  ∀ n, P1877117026154642106.a n = (A002411 n : ℚ)

theorem P1877117026154642106.correct : P1877117026154642106.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A002411, Nat.add_sub_cancel, A002411.P1877117026154642106.a, A002411.P3000284336972342338.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A002411, Nat.add_sub_cancel, A002411.P1877117026154642106.a, A002411.P3000284336972342338.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002411

/-! ## A002411.P1586133912581463709

`C(n+2, 3)+2*C(n+1, 3)`
-/

namespace A002411.P1586133912581463709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + 2 * Nat.choose (n + 1) 3

end

end A002411.P1586133912581463709

namespace A002411

/-- `C(n+2, 3)+2*C(n+1, 3)` -/
def P1586133912581463709.Spec : Prop :=
  ∀ n, (P1586133912581463709.a n : ℤ) = A002411 n

end A002411

/-! ## A002411.P3000284336972342338

`3*a(n-1)-3*a(n-2)+a(n-3)+3` with `a(0)=0, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002411

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+3` -/
def P3000284336972342338.Spec : Prop :=
  ∀ n, P3000284336972342338.a n = A002411 n

theorem P3000284336972342338.correct : P3000284336972342338.Spec := by
  intro n
  simp only [A002411]

end A002411

/-! ## A002411.P11522920130193203610

`n*A000217(n)`
-/

namespace A002411.P11522920130193203610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000217 n

end

end A002411.P11522920130193203610

namespace A002411

/-- `n*A000217(n)` -/
def P11522920130193203610.Spec : Prop :=
  ∀ n, P11522920130193203610.a n = A002411 n

end A002411

/-! ## A002411.P4461012145181399744

`1/2*A011379(n)`
-/

namespace A002411.P4461012145181399744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A011379 n : ℚ)

end

end A002411.P4461012145181399744

namespace A002411

/-- `1/2*A011379(n)` -/
def P4461012145181399744.Spec : Prop :=
  ∀ n, P4461012145181399744.a n = (A002411 n : ℚ)

end A002411

/-! ## A002411.P2346895611455181566

`floor(n/acot(∑[n]))`
-/

namespace A002411.P2346895611455181566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A002411.P2346895611455181566

namespace A002411

/-- `floor(n/acot(∑[n]))` -/
def P2346895611455181566.Spec : Prop :=
  ∀ n, P2346895611455181566.a n = A002411 n

end A002411

/-! ## A002411.P3230809784067128003

`round(n/acot(∑[n]))`
-/

namespace A002411.P3230809784067128003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A002411.P3230809784067128003

namespace A002411

/-- `round(n/acot(∑[n]))` -/
def P3230809784067128003.Spec : Prop :=
  ∀ n, P3230809784067128003.a n = A002411 n

end A002411

/-! ## A002411.P7305235478856825034

`C(n+1, 2)*n`
-/

namespace A002411.P7305235478856825034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 * n

end

end A002411.P7305235478856825034

namespace A002411

/-- `C(n+1, 2)*n` -/
def P7305235478856825034.Spec : Prop :=
  ∀ n, (P7305235478856825034.a n : ℤ) = A002411 n

end A002411

/-! ## A002411.P5568298492016341460

`∑[C(n, 2)+n²]`
-/

namespace A002411.P5568298492016341460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002411.P5568298492016341460

namespace A002411

/-- `∑[C(n, 2)+n²]` -/
def P5568298492016341460.Spec : Prop :=
  ∀ n, (P5568298492016341460.a n : ℤ) = A002411 n

end A002411

/-! ## A002411.P1660611929478665392

`∑[∑[record[lcm(2, n)]-n]]`
-/

namespace A002411.P1660611929478665392
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) : ℤ) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002411.P1660611929478665392

namespace A002411

/-- `∑[∑[record[lcm(2, n)]-n]]` -/
def P1660611929478665392.Spec : Prop :=
  ∀ n, P1660611929478665392.a n = A002411 n

end A002411

/-! ## A002411.P10868066216935318225

`∑[∑[comp[gcd(3, n)+n]]]`
-/

namespace A002411.P10868066216935318225
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002411.P10868066216935318225

namespace A002411

/-- `∑[∑[comp[gcd(3, n)+n]]]` -/
def P10868066216935318225.Spec : Prop :=
  ∀ n, (P10868066216935318225.a n : ℤ) = A002411 n

end A002411

/-! ## A002411.P5058777872001089380

`abs(n*(n²-C(n, 2)))`
-/

namespace A002411.P5058777872001089380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ))|

end

end A002411.P5058777872001089380

namespace A002411

/-- `abs(n*(n²-C(n, 2)))` -/
def P5058777872001089380.Spec : Prop :=
  ∀ n, P5058777872001089380.a n = A002411 n

end A002411

/-! ## A002411.P13386573694537478165

`∑[∑[a(n-1)+3]]` with `a(0)=0, a(1)=1`
-/

namespace A002411.P13386573694537478165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002411.P13386573694537478165

namespace A002411

/-- `∑[∑[a(n-1)+3]]` -/
def P13386573694537478165.Spec : Prop :=
  ∀ n, (P13386573694537478165.a n : ℤ) = A002411 n

end A002411

/-! ## A002411.P5653622708302793969

`∑[∑[ogf((x+2x^2)/(1-2x+x^2))]]`
-/

namespace A002411.P5653622708302793969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002411.P5653622708302793969

namespace A002411

/-- `∑[∑[ogf((x+2x^2)/(1-2x+x^2))]]` -/
def P5653622708302793969.Spec : Prop :=
  ∀ n, P5653622708302793969.a n = A002411 n

end A002411

/-! ## A002411.P14063448773088846850

`ogf((x+2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A002411.P14063448773088846850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, -4, 6, -4, 1] n

end

end A002411.P14063448773088846850

namespace A002411

/-- `ogf((x+2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P14063448773088846850.Spec : Prop :=
  ∀ n, P14063448773088846850.a n = A002411 n

end A002411

/-! ## A002411.P11830449318333301391

`∑[2-∑[a(n-1)-3]]` with `a(0)=2`
-/

namespace A002411.P11830449318333301391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002411.P11830449318333301391

namespace A002411

/-- `∑[2-∑[a(n-1)-3]]` -/
def P11830449318333301391.Spec : Prop :=
  ∀ n, P11830449318333301391.a n = A002411 n

end A002411

/-! ## A002411.P1634201420041285197

`A006003(n)-n*(1-n)/2`
-/

namespace A002411.P1634201420041285197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006003 n : ℚ) - ((n : ℤ) * (1 - (n : ℤ)) : ℚ) / 2

end

end A002411.P1634201420041285197

namespace A002411

/-- `A006003(n)-n*(1-n)/2` -/
def P1634201420041285197.Spec : Prop :=
  ∀ n, P1634201420041285197.a n = (A002411 n : ℚ)

end A002411

/-!
# A002412: Hexagonal pyramidal numbers, or greengrocer's numbers.

The programs for A002412, the canonical program `A002412.P686406262473725018` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002412 has offset 0).

The definition of A002412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002412.P18308654184954583256

`(4*n-1)*C(n+1, 2)/3`
-/

namespace A002412.P18308654184954583256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((4 * n : ℤ) - 1) * (Nat.choose (n + 1) 2 : ℤ) : ℚ) / 3

end

end A002412.P18308654184954583256

namespace A002412

/-- `(4*n-1)*C(n+1, 2)/3` -/
def P18308654184954583256.Spec : Prop :=
  ∀ n, P18308654184954583256.a n = (A002412 n : ℚ)

end A002412

/-! ## A002412.P543791291949165648

`C(n+2, 3)+3*C(n+1, 3)`
-/

namespace A002412.P543791291949165648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + 3 * Nat.choose (n + 1) 3

end

end A002412.P543791291949165648

namespace A002412

/-- `C(n+2, 3)+3*C(n+1, 3)` -/
def P543791291949165648.Spec : Prop :=
  ∀ n, (P543791291949165648.a n : ℤ) = A002412 n

end A002412

/-! ## A002412.P8716578423539034079

`n*(n+1)*(4*n-1)/6`
-/

namespace A002412.P8716578423539034079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((4 * n : ℤ) - 1) : ℚ) / 6

end

end A002412.P8716578423539034079

namespace A002412

/-- `n*(n+1)*(4*n-1)/6` -/
def P8716578423539034079.Spec : Prop :=
  ∀ n, P8716578423539034079.a n = (A002412 n : ℚ)

theorem P8716578423539034079.correct : P8716578423539034079.Spec := by
  intro n
  induction n with
  | zero => simp [A002412, A002412.P8716578423539034079.a, A002412.P686406262473725018.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A002412, Nat.add_sub_cancel, A002412.P8716578423539034079.a, A002412.P686406262473725018.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A002412

/-! ## A002412.P686406262473725018

`a(n-1)+n*(2*n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002412

/-- `a(n-1)+n*(2*n-1)` -/
def P686406262473725018.Spec : Prop :=
  ∀ n, P686406262473725018.a n = A002412 n

theorem P686406262473725018.correct : P686406262473725018.Spec := by
  intro n
  simp only [A002412]

end A002412

/-! ## A002412.P9166283233404013812

`2*n*A000217(n)-A000330(n)`
-/

namespace A002412.P9166283233404013812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A000217 n - A000330 n

end

end A002412.P9166283233404013812

namespace A002412

/-- `2*n*A000217(n)-A000330(n)` -/
def P9166283233404013812.Spec : Prop :=
  ∀ n, P9166283233404013812.a n = A002412 n

end A002412

/-! ## A002412.P9257036120479958474

`A005900(n+1)-A000326(n+1)`
-/

namespace A002412.P9257036120479958474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 (n + 1) - A000326 (n + 1)

end

end A002412.P9257036120479958474

namespace A002412

/-- `A005900(n+1)-A000326(n+1)` -/
def P9257036120479958474.Spec : Prop :=
  ∀ n, P9257036120479958474.a n = A002412 n

end A002412

/-! ## A002412.P6121957033776729117

`∑[C(2*n, 2)]`
-/

namespace A002412.P6121957033776729117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002412.P6121957033776729117

namespace A002412

/-- `∑[C(2*n, 2)]` -/
def P6121957033776729117.Spec : Prop :=
  ∀ n, (P6121957033776729117.a n : ℤ) = A002412 n

end A002412

/-! ## A002412.P2026350962175857104

`∑[∑[a(n-1)+4]]` with `a(0)=0, a(1)=1`
-/

namespace A002412.P2026350962175857104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002412.P2026350962175857104

namespace A002412

/-- `∑[∑[a(n-1)+4]]` -/
def P2026350962175857104.Spec : Prop :=
  ∀ n, (P2026350962175857104.a n : ℤ) = A002412 n

end A002412

/-! ## A002412.P2806417923240817235

`Δ[(n-1)*C(n+1, 3)]`
-/

namespace A002412.P2806417923240817235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.choose (n + 1) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002412.P2806417923240817235

namespace A002412

/-- `Δ[(n-1)*C(n+1, 3)]` -/
def P2806417923240817235.Spec : Prop :=
  ∀ n, P2806417923240817235.a n = A002412 n

end A002412

/-! ## A002412.P8628170110903631404

`Δ[(n+2)*C(n, 3)]+n`
-/

namespace A002412.P8628170110903631404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.choose n 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)

end

end A002412.P8628170110903631404

namespace A002412

/-- `Δ[(n+2)*C(n, 3)]+n` -/
def P8628170110903631404.Spec : Prop :=
  ∀ n, P8628170110903631404.a n = A002412 n

end A002412

/-! ## A002412.P3311350316082575726

`-∑[n*or(1, -(2*n))]`
-/

namespace A002412.P3311350316082575726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.lor 1 (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002412.P3311350316082575726

namespace A002412

/-- `-∑[n*or(1, -(2*n))]` -/
def P3311350316082575726.Spec : Prop :=
  ∀ n, P3311350316082575726.a n = A002412 n

end A002412

/-! ## A002412.P6642021808883802275

`-∑[n*xor(1, -(2*n))]`
-/

namespace A002412.P6642021808883802275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor 1 (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002412.P6642021808883802275

namespace A002412

/-- `-∑[n*xor(1, -(2*n))]` -/
def P6642021808883802275.Spec : Prop :=
  ∀ n, P6642021808883802275.a n = A002412 n

end A002412

/-! ## A002412.P7616696702094171752

`lcm(n+1, n²)-∑[n²]`
-/

namespace A002412.P7616696702094171752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n ^ 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A002412.P7616696702094171752

namespace A002412

/-- `lcm(n+1, n²)-∑[n²]` -/
def P7616696702094171752.Spec : Prop :=
  ∀ n, P7616696702094171752.a n = A002412 n

end A002412

/-! ## A002412.P11601352045841459179

`∑[∑[ogf((x+3x^2)/(1-2x+x^2))]]`
-/

namespace A002412.P11601352045841459179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002412.P11601352045841459179

namespace A002412

/-- `∑[∑[ogf((x+3x^2)/(1-2x+x^2))]]` -/
def P11601352045841459179.Spec : Prop :=
  ∀ n, P11601352045841459179.a n = A002412 n

end A002412

/-! ## A002412.P3134375214060622727

`ogf((x+3x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A002412.P3134375214060622727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3] [1, -4, 6, -4, 1] n

end

end A002412.P3134375214060622727

namespace A002412

/-- `ogf((x+3x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P3134375214060622727.Spec : Prop :=
  ∀ n, P3134375214060622727.a n = A002412 n

end A002412

/-! ## A002412.P13075730191139591546

`∑[3-∑[a(n-1)-4]]` with `a(0)=3`
-/

namespace A002412.P13075730191139591546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002412.P13075730191139591546

namespace A002412

/-- `∑[3-∑[a(n-1)-4]]` -/
def P13075730191139591546.Spec : Prop :=
  ∀ n, P13075730191139591546.a n = A002412 n

end A002412

/-! ## A002412.P11147412083624521457

`A001296(n)-A050534(n)`
-/

namespace A002412.P11147412083624521457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 n - A050534 n

end

end A002412.P11147412083624521457

namespace A002412

/-- `A001296(n)-A050534(n)` -/
def P11147412083624521457.Spec : Prop :=
  ∀ n, P11147412083624521457.a n = A002412 n

end A002412

/-!
# A002413: Heptagonal (or 7-gonal) pyramidal numbers: a(n) = n*(n+1)*(5*n-2)/6.

The programs for A002413, the canonical program `A002413.P712612398417191463` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002413 has offset 0).

The definition of A002413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(5*n-2)/6` (program `A002413.P11725922274593623931`, by `A002413.P11725922274593623931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002413.P12548327381340590430

`(5*n-2)*C(n+1, 2)/3`
-/

namespace A002413.P12548327381340590430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((5 * n : ℤ) - 2) * (Nat.choose (n + 1) 2 : ℤ) : ℚ) / 3

end

end A002413.P12548327381340590430

namespace A002413

/-- `(5*n-2)*C(n+1, 2)/3` -/
def P12548327381340590430.Spec : Prop :=
  ∀ n, P12548327381340590430.a n = (A002413 n : ℚ)

end A002413

/-! ## A002413.P8385738763011700368

`C(n+2, 3)+4*C(n+1, 3)`
-/

namespace A002413.P8385738763011700368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + 4 * Nat.choose (n + 1) 3

end

end A002413.P8385738763011700368

namespace A002413

/-- `C(n+2, 3)+4*C(n+1, 3)` -/
def P8385738763011700368.Spec : Prop :=
  ∀ n, (P8385738763011700368.a n : ℤ) = A002413 n

end A002413

/-! ## A002413.P11725922274593623931

`n*(n+1)*(5*n-2)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002413.P11725922274593623931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((5 * n : ℤ) - 2) : ℚ) / 6

end

end A002413.P11725922274593623931

namespace A002413

/-- `n*(n+1)*(5*n-2)/6` -/
def P11725922274593623931.Spec : Prop :=
  ∀ n, P11725922274593623931.a n = (A002413 n : ℚ)

theorem P11725922274593623931.correct : P11725922274593623931.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A002413, Nat.add_sub_cancel, A002413.P11725922274593623931.a, A002413.P712612398417191463.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A002413, Nat.add_sub_cancel, A002413.P11725922274593623931.a, A002413.P712612398417191463.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002413

/-! ## A002413.P712612398417191463

`3*a(n-1)-3*a(n-2)+a(n-3)+5` with `a(0)=0, a(1)=1, a(2)=8`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002413

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+5` -/
def P712612398417191463.Spec : Prop :=
  ∀ n, P712612398417191463.a n = A002413 n

theorem P712612398417191463.correct : P712612398417191463.Spec := by
  intro n
  simp only [A002413]

end A002413

/-! ## A002413.P73605424063602612

`n^3-C(n, 3)`
-/

namespace A002413.P73605424063602612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (Nat.choose n 3 : ℤ)

end

end A002413.P73605424063602612

namespace A002413

/-- `n^3-C(n, 3)` -/
def P73605424063602612.Spec : Prop :=
  ∀ n, P73605424063602612.a n = A002413 n

end A002413

/-! ## A002413.P9893457193750839036

`∑[5*C(n, 2)+n]`
-/

namespace A002413.P9893457193750839036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose n 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002413.P9893457193750839036

namespace A002413

/-- `∑[5*C(n, 2)+n]` -/
def P9893457193750839036.Spec : Prop :=
  ∀ n, (P9893457193750839036.a n : ℤ) = A002413 n

end A002413

/-! ## A002413.P14011382601697460568

`∑[∑[comp[gcd(5, n)+n]]]`
-/

namespace A002413.P14011382601697460568
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 5 n + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002413.P14011382601697460568

namespace A002413

/-- `∑[∑[comp[gcd(5, n)+n]]]` -/
def P14011382601697460568.Spec : Prop :=
  ∀ n, (P14011382601697460568.a n : ℤ) = A002413 n

end A002413

/-! ## A002413.P3122356305125409631

`∑[∑[a(n-1)+5]]` with `a(0)=0, a(1)=1`
-/

namespace A002413.P3122356305125409631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002413.P3122356305125409631

namespace A002413

/-- `∑[∑[a(n-1)+5]]` -/
def P3122356305125409631.Spec : Prop :=
  ∀ n, (P3122356305125409631.a n : ℤ) = A002413 n

end A002413

/-! ## A002413.P4842641678278627010

`lcm(n+1, n²)-∑[∑[n]]`
-/

namespace A002413.P4842641678278627010
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (n ^ 2) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A002413.P4842641678278627010

namespace A002413

/-- `lcm(n+1, n²)-∑[∑[n]]` -/
def P4842641678278627010.Spec : Prop :=
  ∀ n, P4842641678278627010.a n = A002413 n

end A002413

/-! ## A002413.P11813301915601267467

`∑[∑[ogf((x+4x^2)/(1-2x+x^2))]]`
-/

namespace A002413.P11813301915601267467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002413.P11813301915601267467

namespace A002413

/-- `∑[∑[ogf((x+4x^2)/(1-2x+x^2))]]` -/
def P11813301915601267467.Spec : Prop :=
  ∀ n, P11813301915601267467.a n = A002413 n

end A002413

/-! ## A002413.P17116944554213493512

`ogf((x+4x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A002413.P17116944554213493512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4] [1, -4, 6, -4, 1] n

end

end A002413.P17116944554213493512

namespace A002413

/-- `ogf((x+4x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P17116944554213493512.Spec : Prop :=
  ∀ n, P17116944554213493512.a n = A002413 n

end A002413

/-! ## A002413.P8088172701448191412

`∑[4-∑[a(n-1)-5]]` with `a(0)=4`
-/

namespace A002413.P8088172701448191412
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002413.P8088172701448191412

namespace A002413

/-- `∑[4-∑[a(n-1)-5]]` -/
def P8088172701448191412.Spec : Prop :=
  ∀ n, P8088172701448191412.a n = A002413 n

end A002413

/-! ## A002413.P7890128312144041402

`∑[lcm(n, n-1)]+n*∑[n]`
-/

namespace A002413.P7890128312144041402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A002413.P7890128312144041402

namespace A002413

/-- `∑[lcm(n, n-1)]+n*∑[n]` -/
def P7890128312144041402.Spec : Prop :=
  ∀ n, (P7890128312144041402.a n : ℤ) = A002413 n

end A002413

/-! ## A002413.P9256010518150480719

`∑[A000566(n)]`
-/

namespace A002413.P9256010518150480719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002413.P9256010518150480719

namespace A002413

/-- `∑[A000566(n)]` -/
def P9256010518150480719.Spec : Prop :=
  ∀ n, P9256010518150480719.a n = A002413 n

end A002413

/-! ## A002413.P3778670942843496066

`A203551(n)-n`
-/

namespace A002413.P3778670942843496066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203551 n - (n : ℤ)

end

end A002413.P3778670942843496066

namespace A002413

/-- `A203551(n)-n` -/
def P3778670942843496066.Spec : Prop :=
  ∀ n, P3778670942843496066.a n = A002413 n

end A002413

/-! ## A002413.P8712692267555223632

`∑[A192136(n)-1]`
-/

namespace A002413.P8712692267555223632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002413.P8712692267555223632

namespace A002413

/-- `∑[A192136(n)-1]` -/
def P8712692267555223632.Spec : Prop :=
  ∀ n, P8712692267555223632.a n = A002413 n

end A002413

/-! ## A002413.P864987077830074579

`∑[A135706(n)/2]`
-/

namespace A002413.P864987077830074579
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135706 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002413.P864987077830074579

namespace A002413

/-- `∑[A135706(n)/2]` -/
def P864987077830074579.Spec : Prop :=
  ∀ n, P864987077830074579.a n = (A002413 n : ℚ)

end A002413

/-! ## A002413.P7929422550620791623

`∑[A152773(n)/3]`
-/

namespace A002413.P7929422550620791623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152773 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002413.P7929422550620791623

namespace A002413

/-- `∑[A152773(n)/3]` -/
def P7929422550620791623.Spec : Prop :=
  ∀ n, P7929422550620791623.a n = (A002413 n : ℚ)

end A002413

/-! ## A002413.P11597839480297767755

`∑[A153784(n)/4]`
-/

namespace A002413.P11597839480297767755
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153784 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002413.P11597839480297767755

namespace A002413

/-- `∑[A153784(n)/4]` -/
def P11597839480297767755.Spec : Prop :=
  ∀ n, P11597839480297767755.a n = (A002413 n : ℚ)

end A002413

/-!
# A002414: Octagonal pyramidal numbers: a(n) = n*(n+1)*(2*n-1)/2.

The programs for A002414, the canonical program `A002414.P8561750749900891247` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002414 has offset 1).

The definition of A002414 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+2)*(2*(n+1)-1)/2` (program `A002414.P13168965954648510771`, by `A002414.P13168965954648510771.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002414.P10676237756191555683

`(2*(n+1)-1)*C(n+2, 2)`
-/

namespace A002414.P10676237756191555683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1) * (Nat.choose (n + 2) 2 : ℤ)

end

end A002414.P10676237756191555683

namespace A002414

/-- `(2*(n+1)-1)*C(n+2, 2)` -/
def P10676237756191555683.Spec : Prop :=
  ∀ n, P10676237756191555683.a n = A002414 (n + 1)

end A002414

/-! ## A002414.P16846615594268469092

`C(n+3, 3)+5*C(n+2, 3)`
-/

namespace A002414.P16846615594268469092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 + 5 * Nat.choose (n + 2) 3

end

end A002414.P16846615594268469092

namespace A002414

/-- `C(n+3, 3)+5*C(n+2, 3)` -/
def P16846615594268469092.Spec : Prop :=
  ∀ n, (P16846615594268469092.a n : ℤ) = A002414 (n + 1)

end A002414

/-! ## A002414.P9276350308320466466

`(2*(n+1)-1)*(n+1)*(n+2)/2`
-/

namespace A002414.P9276350308320466466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) : ℤ) - 1) * (n + 1 : ℤ) * (n + 2 : ℤ) : ℚ) / 2

end

end A002414.P9276350308320466466

namespace A002414

/-- `(2*(n+1)-1)*(n+1)*(n+2)/2` -/
def P9276350308320466466.Spec : Prop :=
  ∀ n, P9276350308320466466.a n = (A002414 (n + 1) : ℚ)

theorem P9276350308320466466.correct : P9276350308320466466.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A002414, Nat.add_sub_cancel, A002414.P9276350308320466466.a, A002414.P8561750749900891247.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A002414, Nat.add_sub_cancel, A002414.P9276350308320466466.a, A002414.P8561750749900891247.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002414

/-! ## A002414.P13168965954648510771

`(n+1)*(n+2)*(2*(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002414.P13168965954648510771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) : ℤ) * ((2 * (n + 1) : ℤ) - 1) : ℚ) / 2

end

end A002414.P13168965954648510771

namespace A002414

/-- `(n+1)*(n+2)*(2*(n+1)-1)/2` -/
def P13168965954648510771.Spec : Prop :=
  ∀ n, P13168965954648510771.a n = (A002414 (n + 1) : ℚ)

theorem P13168965954648510771.correct : P13168965954648510771.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A002414, Nat.add_sub_cancel, A002414.P13168965954648510771.a, A002414.P8561750749900891247.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A002414, Nat.add_sub_cancel, A002414.P13168965954648510771.a, A002414.P8561750749900891247.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002414

/-! ## A002414.P8561750749900891247

`a(n-1)+(n+1)*(3*(n+1)-2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002414

/-- `a(n-1)+(n+1)*(3*(n+1)-2)` -/
def P8561750749900891247.Spec : Prop :=
  ∀ n, P8561750749900891247.a n = A002414 (n + 1)

theorem P8561750749900891247.correct : P8561750749900891247.Spec := by
  intro n
  simp only [A002414, Nat.add_sub_cancel]

end A002414

/-! ## A002414.P5870625690223750918

`A000578(n+1)+A000217(n)`
-/

namespace A002414.P5870625690223750918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + A000217 n

end

end A002414.P5870625690223750918

namespace A002414

/-- `A000578(n+1)+A000217(n)` -/
def P5870625690223750918.Spec : Prop :=
  ∀ n, P5870625690223750918.a n = A002414 (n + 1)

end A002414

/-! ## A002414.P13999610284240816094

`A000292(n+1)+5*A000292(n)`
-/

namespace A002414.P13999610284240816094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + 5 * A000292 n

end

end A002414.P13999610284240816094

namespace A002414

/-- `A000292(n+1)+5*A000292(n)` -/
def P13999610284240816094.Spec : Prop :=
  ∀ n, P13999610284240816094.a n = A002414 (n + 1)

end A002414

/-! ## A002414.P4785419235057578346

`(n+1)*A000326(n+1)-A002411(n)`
-/

namespace A002414.P4785419235057578346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000326 (n + 1) - A002411 n

end

end A002414.P4785419235057578346

namespace A002414

/-- `(n+1)*A000326(n+1)-A002411(n)` -/
def P4785419235057578346.Spec : Prop :=
  ∀ n, P4785419235057578346.a n = A002414 (n + 1)

end A002414

/-! ## A002414.P2033451436415378853

`A002413(n+1)+A000292(n)`
-/

namespace A002414.P2033451436415378853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002413 (n + 1) + A000292 n

end

end A002414.P2033451436415378853

namespace A002414

/-- `A002413(n+1)+A000292(n)` -/
def P2033451436415378853.Spec : Prop :=
  ∀ n, P2033451436415378853.a n = A002414 (n + 1)

end A002414

/-! ## A002414.P14804122326211264953

`ogf((1+5x)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A002414.P14804122326211264953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5] [1, -4, 6, -4, 1] n

end

end A002414.P14804122326211264953

namespace A002414

/-- `ogf((1+5x)/(1-4x+6x^2-4x^3+x^4))` -/
def P14804122326211264953.Spec : Prop :=
  ∀ n, P14804122326211264953.a n = A002414 (n + 1)

end A002414

/-! ## A002414.P18046348534786353511

`abs(∑[∑[a(n-1)+6]])` with `a(0)=1`
-/

namespace A002414.P18046348534786353511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002414.P18046348534786353511

namespace A002414

/-- `abs(∑[∑[a(n-1)+6]])` -/
def P18046348534786353511.Spec : Prop :=
  ∀ n, (P18046348534786353511.a n : ℤ) = A002414 (n + 1)

end A002414

/-! ## A002414.P9176368978439712692

`floor(∑[∑[a(n-1)+6]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A002414.P9176368978439712692
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002414.P9176368978439712692

namespace A002414

/-- `floor(∑[∑[a(n-1)+6]])` -/
def P9176368978439712692.Spec : Prop :=
  ∀ n, (P9176368978439712692.a n : ℤ) = A002414 (n + 1)

end A002414

/-! ## A002414.P6783344714955236421

`∑[n]+C(n+1, n)^3`
-/

namespace A002414.P6783344714955236421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 1) n ^ 3

end

end A002414.P6783344714955236421

namespace A002414

/-- `∑[n]+C(n+1, n)^3` -/
def P6783344714955236421.Spec : Prop :=
  ∀ n, (P6783344714955236421.a n : ℤ) = A002414 (n + 1)

end A002414

/-! ## A002414.P6846621546600443200

`Δ[C(n+1, 2)²]+∑[n]`
-/

namespace A002414.P6846621546600443200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A002414.P6846621546600443200

namespace A002414

/-- `Δ[C(n+1, 2)²]+∑[n]` -/
def P6846621546600443200.Spec : Prop :=
  ∀ n, P6846621546600443200.a n = A002414 (n + 1)

end A002414

/-! ## A002414.P4924777387768330135

`C(n+1, 2)+(n+1)^3`
-/

namespace A002414.P4924777387768330135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + (n + 1) ^ 3

end

end A002414.P4924777387768330135

namespace A002414

/-- `C(n+1, 2)+(n+1)^3` -/
def P4924777387768330135.Spec : Prop :=
  ∀ n, (P4924777387768330135.a n : ℤ) = A002414 (n + 1)

end A002414

/-! ## A002414.P1209264415859603630

`∑[n]+((n+1)%(n+2))^3`
-/

namespace A002414.P1209264415859603630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) % (n + 2)) ^ 3

end

end A002414.P1209264415859603630

namespace A002414

/-- `∑[n]+((n+1)%(n+2))^3` -/
def P1209264415859603630.Spec : Prop :=
  ∀ n, (P1209264415859603630.a n : ℤ) = A002414 (n + 1)

end A002414

/-! ## A002414.P2953595465549905704

`floor((n+1+n)/acot(∑[n+1]))`
-/

namespace A002414.P2953595465549905704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 + n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A002414.P2953595465549905704

namespace A002414

/-- `floor((n+1+n)/acot(∑[n+1]))` -/
def P2953595465549905704.Spec : Prop :=
  ∀ n, P2953595465549905704.a n = A002414 (n + 1)

end A002414

/-! ## A002414.P12695274580260991928

`round((n+1+n)/acot(∑[n+1]))`
-/

namespace A002414.P12695274580260991928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 + n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A002414.P12695274580260991928

namespace A002414

/-- `round((n+1+n)/acot(∑[n+1]))` -/
def P12695274580260991928.Spec : Prop :=
  ∀ n, P12695274580260991928.a n = A002414 (n + 1)

end A002414

/-! ## A002414.P8268648704271164923

`∑[a(n-1)+6]+a(n-1)` with `a(0)=1`
-/

namespace A002414.P8268648704271164923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A002414.P8268648704271164923

namespace A002414

/-- `∑[a(n-1)+6]+a(n-1)` -/
def P8268648704271164923.Spec : Prop :=
  ∀ n, (P8268648704271164923.a n : ℤ) = A002414 (n + 1)

end A002414

/-! ## A002414.P9109664869744018197

`(n+1)*(n+2)²-3*A000217(n+1)`
-/

namespace A002414.P9109664869744018197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) ^ 2 : ℤ) - 3 * A000217 (n + 1)

end

end A002414.P9109664869744018197

namespace A002414

/-- `(n+1)*(n+2)²-3*A000217(n+1)` -/
def P9109664869744018197.Spec : Prop :=
  ∀ n, P9109664869744018197.a n = A002414 (n + 1)

end A002414

/-!
# A002415: 4-dimensional pyramidal numbers: a(n) = n^2*(n^2-1)/12.

The programs for A002415, the canonical program `A002415.P7373830119072566170` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002415 has offset 0).

The definition of A002415 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n²-1)/12` (program `A002415.P11679945374180732825`, by `A002415.P11679945374180732825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002415.P2003209356752073754

`C(n², 2)/6`
-/

namespace A002415.P2003209356752073754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) / 6

end

end A002415.P2003209356752073754

namespace A002415

/-- `C(n², 2)/6` -/
def P2003209356752073754.Spec : Prop :=
  ∀ n, P2003209356752073754.a n = (A002415 n : ℚ)

end A002415

/-! ## A002415.P3224864799389625969

`(n^4-n²)/12`
-/

namespace A002415.P3224864799389625969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 4 : ℤ) - (n ^ 2 : ℤ) : ℚ) / 12

end

end A002415.P3224864799389625969

namespace A002415

/-- `(n^4-n²)/12` -/
def P3224864799389625969.Spec : Prop :=
  ∀ n, P3224864799389625969.a n = (A002415 n : ℚ)

theorem P3224864799389625969.correct : P3224864799389625969.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A002415, Nat.add_sub_cancel, A002415.P3224864799389625969.a, A002415.P7373830119072566170.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A002415, Nat.add_sub_cancel, A002415.P3224864799389625969.a, A002415.P7373830119072566170.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002415

/-! ## A002415.P11679945374180732825

`n²*(n²-1)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002415.P11679945374180732825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) * ((n ^ 2 : ℤ) - 1) : ℚ) / 12

end

end A002415.P11679945374180732825

namespace A002415

/-- `n²*(n²-1)/12` -/
def P11679945374180732825.Spec : Prop :=
  ∀ n, P11679945374180732825.a n = (A002415 n : ℚ)

theorem P11679945374180732825.correct : P11679945374180732825.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A002415, Nat.add_sub_cancel, A002415.P11679945374180732825.a, A002415.P7373830119072566170.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A002415, Nat.add_sub_cancel, A002415.P11679945374180732825.a, A002415.P7373830119072566170.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002415

/-! ## A002415.P1850274745558417830

`C(n+2, 4)+C(n+1, 4)`
-/

namespace A002415.P1850274745558417830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 4 + Nat.choose (n + 1) 4

end

end A002415.P1850274745558417830

namespace A002415

/-- `C(n+2, 4)+C(n+1, 4)` -/
def P1850274745558417830.Spec : Prop :=
  ∀ n, (P1850274745558417830.a n : ℤ) = A002415 n

end A002415

/-! ## A002415.P7373830119072566170

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=6, a(4)=20`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002415

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P7373830119072566170.Spec : Prop :=
  ∀ n, P7373830119072566170.a n = A002415 n

theorem P7373830119072566170.correct : P7373830119072566170.Spec := by
  intro n
  simp only [A002415]

end A002415

/-! ## A002415.P7208028861866716239

`a(n-1)+A000330(n-1)` with `a(0)=0`
-/

namespace A002415.P7208028861866716239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000330 (n - 1)

end

end A002415.P7208028861866716239

namespace A002415

/-- `a(n-1)+A000330(n-1)` -/
def P7208028861866716239.Spec : Prop :=
  ∀ n, P7208028861866716239.a n = A002415 n

end A002415

/-! ## A002415.P2827516542421706808

`∑[∑[∑[a(n-1)+2]]]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A002415.P2827516542421706808
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002415.P2827516542421706808

namespace A002415

/-- `∑[∑[∑[a(n-1)+2]]]` -/
def P2827516542421706808.Spec : Prop :=
  ∀ n, (P2827516542421706808.a n : ℤ) = A002415 n

end A002415

/-! ## A002415.P17842368953033406397

`A079034(n)-1`
-/

namespace A002415.P17842368953033406397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079034 n - 1

end

end A002415.P17842368953033406397

namespace A002415

/-- `A079034(n)-1` -/
def P17842368953033406397.Spec : Prop :=
  ∀ n, P17842368953033406397.a n = A002415 n

end A002415

/-! ## A002415.P15634926889805634963

`A006008(n)-n²`
-/

namespace A002415.P15634926889805634963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006008 n - (n ^ 2 : ℤ)

end

end A002415.P15634926889805634963

namespace A002415

/-- `A006008(n)-n²` -/
def P15634926889805634963.Spec : Prop :=
  ∀ n, P15634926889805634963.a n = A002415 n

end A002415

/-! ## A002415.P7979538340404985670

`A117662(n)+C(n, 2)`
-/

namespace A002415.P7979538340404985670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117662 n + (Nat.choose n 2 : ℤ)

end

end A002415.P7979538340404985670

namespace A002415

/-- `A117662(n)+C(n, 2)` -/
def P7979538340404985670.Spec : Prop :=
  ∀ n, P7979538340404985670.a n = A002415 n

end A002415

/-! ## A002415.P4381797865538160304

`∑[A000330(n)-n²]`
-/

namespace A002415.P4381797865538160304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002415.P4381797865538160304

namespace A002415

/-- `∑[A000330(n)-n²]` -/
def P4381797865538160304.Spec : Prop :=
  ∀ n, P4381797865538160304.a n = A002415 n

end A002415

/-! ## A002415.P12916996718321145804

`A006007(n)-∑[∑[n]]`
-/

namespace A002415.P12916996718321145804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006007 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A002415.P12916996718321145804

namespace A002415

/-- `A006007(n)-∑[∑[n]]` -/
def P12916996718321145804.Spec : Prop :=
  ∀ n, P12916996718321145804.a n = A002415 n

end A002415

/-! ## A002415.P4173296500409775038

`∑[A049480(n+1)-(n+1)²]`
-/

namespace A002415.P4173296500409775038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049480 (n + 1) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002415.P4173296500409775038

namespace A002415

/-- `∑[A049480(n+1)-(n+1)²]` -/
def P4173296500409775038.Spec : Prop :=
  ∀ n, P4173296500409775038.a n = A002415 n

end A002415

/-! ## A002415.P4792197443975632000

`A161680(n)+A117662(n)`
-/

namespace A002415.P4792197443975632000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A117662 n

end

end A002415.P4792197443975632000

namespace A002415

/-- `A161680(n)+A117662(n)` -/
def P4792197443975632000.Spec : Prop :=
  ∀ n, P4792197443975632000.a n = A002415 n

end A002415

/-! ## A002415.P3654043565192952291

`A350050(n)+A030179(n)`
-/

namespace A002415.P3654043565192952291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350050 n + A030179 n

end

end A002415.P3654043565192952291

namespace A002415

/-- `A350050(n)+A030179(n)` -/
def P3654043565192952291.Spec : Prop :=
  ∀ n, P3654043565192952291.a n = A002415 n

end A002415

/-! ## A002415.P376139663683168723

`A006011(n)-A008911(n)`
-/

namespace A002415.P376139663683168723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006011 n - A008911 n

end

end A002415.P376139663683168723

namespace A002415

/-- `A006011(n)-A008911(n)` -/
def P376139663683168723.Spec : Prop :=
  ∀ n, P376139663683168723.a n = A002415 n

end A002415

/-! ## A002415.P16307859721499459175

`A014205(n)-A002411(n)`
-/

namespace A002415.P16307859721499459175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014205 n - A002411 n

end

end A002415.P16307859721499459175

namespace A002415

/-- `A014205(n)-A002411(n)` -/
def P16307859721499459175.Spec : Prop :=
  ∀ n, P16307859721499459175.a n = A002415 n

end A002415

/-! ## A002415.P15991081592742273764

`A071239(n)-A006007(n)`
-/

namespace A002415.P15991081592742273764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071239 n - A006007 n

end

end A002415.P15991081592742273764

namespace A002415

/-- `A071239(n)-A006007(n)` -/
def P15991081592742273764.Spec : Prop :=
  ∀ n, P15991081592742273764.a n = A002415 n

end A002415

/-! ## A002415.P2776651495370462331

`A101357(n)-A014626(n)`
-/

namespace A002415.P2776651495370462331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101357 n - A014626 n

end

end A002415.P2776651495370462331

namespace A002415

/-- `A101357(n)-A014626(n)` -/
def P2776651495370462331.Spec : Prop :=
  ∀ n, P2776651495370462331.a n = A002415 n

end A002415

/-! ## A002415.P15824346544235609827

`A000332(n+1)+A000332(n+2)`
-/

namespace A002415.P15824346544235609827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) + A000332 (n + 2)

end

end A002415.P15824346544235609827

namespace A002415

/-- `A000332(n+1)+A000332(n+2)` -/
def P15824346544235609827.Spec : Prop :=
  ∀ n, P15824346544235609827.a n = A002415 n

end A002415

/-!
# A002416: a(n) = 2^(n^2).

The programs for A002416, the canonical program `A002416.P14306128811858098284` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002416 has offset 0).

The definition of A002416 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n²` (program `A002416.P14306128811858098284`, by `A002416.P14306128811858098284.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002416.P14306128811858098284

`2^n²`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002416

/-- `2^n²` -/
def P14306128811858098284.Spec : Prop :=
  ∀ n, (P14306128811858098284.a n : ℤ) = A002416 n

theorem P14306128811858098284.correct : P14306128811858098284.Spec := by
  intro n
  simp only [A002416]

end A002416

/-!
# A002417: 4-dimensional figurate numbers: a(n) = n*binomial(n+2, 3).

The programs for A002417, the canonical program `A002417.P15443907083083422440` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002417 has offset 1).

The definition of A002417 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*C(n+3, 3)` (program `A002417.P15443907083083422440`, by `A002417.P15443907083083422440.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002417.P15443907083083422440

`(n+1)*C(n+3, 3)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002417

/-- `(n+1)*C(n+3, 3)` -/
def P15443907083083422440.Spec : Prop :=
  ∀ n, (P15443907083083422440.a n : ℤ) = A002417 (n + 1)

theorem P15443907083083422440.correct : P15443907083083422440.Spec := by
  intro n
  simp only [A002417, Nat.add_sub_cancel]

end A002417

/-! ## A002417.P11489216313858570989

`(n+1)²*(n+2)*(n+3)/6`
-/

namespace A002417.P11489216313858570989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 * (n + 2) * (n + 3) : ℚ) / 6

end

end A002417.P11489216313858570989

namespace A002417

/-- `(n+1)²*(n+2)*(n+3)/6` -/
def P11489216313858570989.Spec : Prop :=
  ∀ n, P11489216313858570989.a n = (A002417 (n + 1) : ℚ)

end A002417

/-! ## A002417.P5286243310536999081

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=8, a(2)=30, a(3)=80, a(4)=175`
-/

namespace A002417.P5286243310536999081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 30, 80, 175] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A002417.P5286243310536999081

namespace A002417

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P5286243310536999081.Spec : Prop :=
  ∀ n, P5286243310536999081.a n = A002417 (n + 1)

end A002417

/-! ## A002417.P17727952643327379892

`(n+1)*A000292(n+1)`
-/

namespace A002417.P17727952643327379892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000292 (n + 1)

end

end A002417.P17727952643327379892

namespace A002417

/-- `(n+1)*A000292(n+1)` -/
def P17727952643327379892.Spec : Prop :=
  ∀ n, P17727952643327379892.a n = A002417 (n + 1)

end A002417

/-! ## A002417.P2197107389320349965

`A000332(n+4)+3*A000332(n+3)`
-/

namespace A002417.P2197107389320349965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4) + 3 * A000332 (n + 3)

end

end A002417.P2197107389320349965

namespace A002417

/-- `A000332(n+4)+3*A000332(n+3)` -/
def P2197107389320349965.Spec : Prop :=
  ∀ n, P2197107389320349965.a n = A002417 (n + 1)

end A002417

/-! ## A002417.P5885643109838290594

`floor(∑[∑[∑[a(n-1)+4]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A002417.P5885643109838290594
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002417.P5885643109838290594

namespace A002417

/-- `floor(∑[∑[∑[a(n-1)+4]]])` -/
def P5885643109838290594.Spec : Prop :=
  ∀ n, (P5885643109838290594.a n : ℤ) = A002417 (n + 1)

end A002417

/-! ## A002417.P921167990869855585

`C(n+2, 2)²-∑[∑[n²]]`
-/

namespace A002417.P921167990869855585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A002417.P921167990869855585

namespace A002417

/-- `C(n+2, 2)²-∑[∑[n²]]` -/
def P921167990869855585.Spec : Prop :=
  ∀ n, P921167990869855585.a n = A002417 (n + 1)

end A002417

/-! ## A002417.P7560431115790244729

`floor((n+1)/acot(∑[∑[n+1]]))`
-/

namespace A002417.P7560431115790244729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A002417.P7560431115790244729

namespace A002417

/-- `floor((n+1)/acot(∑[∑[n+1]]))` -/
def P7560431115790244729.Spec : Prop :=
  ∀ n, P7560431115790244729.a n = A002417 (n + 1)

end A002417

/-! ## A002417.P1553997954316704778

`round((n+1)/acot(∑[∑[n+1]]))`
-/

namespace A002417.P1553997954316704778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A002417.P1553997954316704778

namespace A002417

/-- `round((n+1)/acot(∑[∑[n+1]]))` -/
def P1553997954316704778.Spec : Prop :=
  ∀ n, P1553997954316704778.a n = A002417 (n + 1)

end A002417

/-! ## A002417.P1987258071360015090

`∑[C(n+2+n, 2)]+a(n-1)` with `a(0)=1`
-/

namespace A002417.P1987258071360015090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2 + n) 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A002417.P1987258071360015090

namespace A002417

/-- `∑[C(n+2+n, 2)]+a(n-1)` -/
def P1987258071360015090.Spec : Prop :=
  ∀ n, (P1987258071360015090.a n : ℤ) = A002417 (n + 1)

end A002417

/-! ## A002417.P16671934707219568045

`∑[∑[a(n-1)+4]]+a(n-1)` with `a(0)=1`
-/

namespace A002417.P16671934707219568045
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A002417.P16671934707219568045

namespace A002417

/-- `∑[∑[a(n-1)+4]]+a(n-1)` -/
def P16671934707219568045.Spec : Prop :=
  ∀ n, (P16671934707219568045.a n : ℤ) = A002417 (n + 1)

end A002417

/-!
# A002418: 4-dimensional figurate numbers: a(n) = (5*n-1)*binomial(n+2,3)/4.

The programs for A002418, the canonical program `A002418.P11204346243049764513` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002418 has offset 0).

The definition of A002418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002418.P10301121080781739844

`(5*n-1)*C(n+2, 3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002418.P10301121080781739844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((5 * n : ℤ) - 1) * (Nat.choose (n + 2) 3 : ℤ) : ℚ) / 4

end

end A002418.P10301121080781739844

namespace A002418

/-- `(5*n-1)*C(n+2, 3)/4` -/
def P10301121080781739844.Spec : Prop :=
  ∀ n, P10301121080781739844.a n = (A002418 n : ℚ)

end A002418

/-! ## A002418.P10056071949934840046

`n*C(n+3, 4)-(n-1)*C(n+2, 4)`
-/

namespace A002418.P10056071949934840046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.choose (n + 3) 4 : ℤ) - ((n : ℤ) - 1) * (Nat.choose (n + 2) 4 : ℤ)

end

end A002418.P10056071949934840046

namespace A002418

/-- `n*C(n+3, 4)-(n-1)*C(n+2, 4)` -/
def P10056071949934840046.Spec : Prop :=
  ∀ n, P10056071949934840046.a n = A002418 n

end A002418

/-! ## A002418.P11204346243049764513

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=9, a(3)=35, a(4)=95`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002418

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P11204346243049764513.Spec : Prop :=
  ∀ n, P11204346243049764513.a n = A002418 n

theorem P11204346243049764513.correct : P11204346243049764513.Spec := by
  intro n
  simp only [A002418]

end A002418

/-! ## A002418.P7125337133781684140

`∑[n^3-C(n, 3)]`
-/

namespace A002418.P7125337133781684140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) - (Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002418.P7125337133781684140

namespace A002418

/-- `∑[n^3-C(n, 3)]` -/
def P7125337133781684140.Spec : Prop :=
  ∀ n, P7125337133781684140.a n = A002418 n

end A002418

/-! ## A002418.P10962380759463516520

`∑[n]²-∑[C(n, 3)]`
-/

namespace A002418.P10962380759463516520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A002418.P10962380759463516520

namespace A002418

/-- `∑[n]²-∑[C(n, 3)]` -/
def P10962380759463516520.Spec : Prop :=
  ∀ n, P10962380759463516520.a n = A002418 n

end A002418

/-! ## A002418.P3624785383311841430

`∑[∑[5*C(n, 2)+n]]`
-/

namespace A002418.P3624785383311841430
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose n 2 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002418.P3624785383311841430

namespace A002418

/-- `∑[∑[5*C(n, 2)+n]]` -/
def P3624785383311841430.Spec : Prop :=
  ∀ n, (P3624785383311841430.a n : ℤ) = A002418 n

end A002418

/-! ## A002418.P2492005962490816020

`Δ[(n-1)*C(n+2, 4)]`
-/

namespace A002418.P2492005962490816020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.choose (n + 2) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002418.P2492005962490816020

namespace A002418

/-- `Δ[(n-1)*C(n+2, 4)]` -/
def P2492005962490816020.Spec : Prop :=
  ∀ n, P2492005962490816020.a n = A002418 n

end A002418

/-! ## A002418.P5946962817635358900

`∑[∑[∑[5*n-4]+4]]`
-/

namespace A002418.P5946962817635358900
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002418.P5946962817635358900

namespace A002418

/-- `∑[∑[∑[5*n-4]+4]]` -/
def P5946962817635358900.Spec : Prop :=
  ∀ n, P5946962817635358900.a n = A002418 n

end A002418

/-! ## A002418.P16258036164943506560

`floor(∑[∑[∑[a(n-1)+5]]])` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A002418.P16258036164943506560
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f3 =>
  f3 (n - 1) + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002418.P16258036164943506560

namespace A002418

/-- `floor(∑[∑[∑[a(n-1)+5]]])` -/
def P16258036164943506560.Spec : Prop :=
  ∀ n, (P16258036164943506560.a n : ℤ) = A002418 n

end A002418

/-! ## A002418.P8833214897867569499

`C(n+3, 4)+4*C(n+2, 4)`
-/

namespace A002418.P8833214897867569499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 4 + 4 * Nat.choose (n + 2) 4

end

end A002418.P8833214897867569499

namespace A002418

/-- `C(n+3, 4)+4*C(n+2, 4)` -/
def P8833214897867569499.Spec : Prop :=
  ∀ n, (P8833214897867569499.a n : ℤ) = A002418 n

end A002418

/-! ## A002418.P5853717632167156859

`floor(∑[∑[4-∑[a(n-1)-5]]])` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A002418.P5853717632167156859
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f3 =>
  f3 (n - 1) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002418.P5853717632167156859

namespace A002418

/-- `floor(∑[∑[4-∑[a(n-1)-5]]])` -/
def P5853717632167156859.Spec : Prop :=
  ∀ n, P5853717632167156859.a n = A002418 n

end A002418

/-! ## A002418.P12876333852570325509

`∑[∑[a(n-1)+5]]+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A002418.P12876333852570325509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A002418.P12876333852570325509

namespace A002418

/-- `∑[∑[a(n-1)+5]]+a(n-1)` -/
def P12876333852570325509.Spec : Prop :=
  ∀ n, (P12876333852570325509.a n : ℤ) = A002418 n

end A002418

/-! ## A002418.P13706297679335962293

`A212246(n)+∑[n²]`
-/

namespace A002418.P13706297679335962293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212246 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A002418.P13706297679335962293

namespace A002418

/-- `A212246(n)+∑[n²]` -/
def P13706297679335962293.Spec : Prop :=
  ∀ n, P13706297679335962293.a n = A002418 n

end A002418

/-! ## A002418.P4246785985084130295

`floor(∑[∑[A152773(n)/3]])`
-/

namespace A002418.P4246785985084130295
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152773 n : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A002418.P4246785985084130295

namespace A002418

/-- `floor(∑[∑[A152773(n)/3]])` -/
def P4246785985084130295.Spec : Prop :=
  ∀ n, P4246785985084130295.a n = A002418 n

end A002418

/-! ## A002418.P14530540433095025341

`A212415(n)+n*∑[n]`
-/

namespace A002418.P14530540433095025341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212415 n + ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A002418.P14530540433095025341

namespace A002418

/-- `A212415(n)+n*∑[n]` -/
def P14530540433095025341.Spec : Prop :=
  ∀ n, P14530540433095025341.a n = A002418 n

end A002418

/-! ## A002418.P6146088221896297795

`A002413(n)+a(n-1)` with `a(0)=0`
-/

namespace A002418.P6146088221896297795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002413 n + a (n - 1)

end

end A002418.P6146088221896297795

namespace A002418

/-- `A002413(n)+a(n-1)` -/
def P6146088221896297795.Spec : Prop :=
  ∀ n, P6146088221896297795.a n = A002418 n

end A002418

/-! ## A002418.P10014982466209402457

`a(n-1)+A203551(n)-n` with `a(0)=0`
-/

namespace A002418.P10014982466209402457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A203551 n - (n : ℤ))

end

end A002418.P10014982466209402457

namespace A002418

/-- `a(n-1)+A203551(n)-n` -/
def P10014982466209402457.Spec : Prop :=
  ∀ n, P10014982466209402457.a n = A002418 n

end A002418

/-! ## A002418.P4387454324140006626

`A212501(n)+A002412(n)`
-/

namespace A002418.P4387454324140006626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212501 n + A002412 n

end

end A002418.P4387454324140006626

namespace A002418

/-- `A212501(n)+A002412(n)` -/
def P4387454324140006626.Spec : Prop :=
  ∀ n, P4387454324140006626.a n = A002418 n

end A002418

/-! ## A002418.P14449333927493031061

`A071238(n)-A050534(n)`
-/

namespace A002418.P14449333927493031061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071238 n - A050534 n

end

end A002418.P14449333927493031061

namespace A002418

/-- `A071238(n)-A050534(n)` -/
def P14449333927493031061.Spec : Prop :=
  ∀ n, P14449333927493031061.a n = A002418 n

end A002418

/-! ## A002418.P4097042837828272526

`A264853(n)-A212246(n)`
-/

namespace A002418.P4097042837828272526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264853 n - A212246 n

end

end A002418.P4097042837828272526

namespace A002418

/-- `A264853(n)-A212246(n)` -/
def P4097042837828272526.Spec : Prop :=
  ∀ n, P4097042837828272526.a n = A002418 n

end A002418

/-!
# A002419: 4-dimensional figurate numbers: a(n) = (6*n-2)*binomial(n+2,3)/4.

The programs for A002419, the canonical program `A002419.P17689818871922318534` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002419 has offset 1).

The definition of A002419 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002419.P17689818871922318534

`(3*(n+1)-1)*C(n+3, 3)/2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002419

/-- `(3*(n+1)-1)*C(n+3, 3)/2` -/
def P17689818871922318534.Spec : Prop :=
  ∀ n, P17689818871922318534.a n = (A002419 (n + 1) : ℚ)

end A002419

/-! ## A002419.P13317465370451380653

`(6*(n+1)-2)*C(n+3, 3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002419.P13317465370451380653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((6 * (n + 1) : ℤ) - 2) * (Nat.choose (n + 3) 3 : ℤ) : ℚ) / 4

end

end A002419.P13317465370451380653

namespace A002419

/-- `(6*(n+1)-2)*C(n+3, 3)/4` -/
def P13317465370451380653.Spec : Prop :=
  ∀ n, P13317465370451380653.a n = (A002419 (n + 1) : ℚ)

end A002419

/-! ## A002419.P485059810668090282

`(n+1)*(n+2)*(n+3)*(3*(n+1)-1)/12`
-/

namespace A002419.P485059810668090282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 2) * (n + 3) : ℤ) * ((3 * (n + 1) : ℤ) - 1) : ℚ) / 12

end

end A002419.P485059810668090282

namespace A002419

/-- `(n+1)*(n+2)*(n+3)*(3*(n+1)-1)/12` -/
def P485059810668090282.Spec : Prop :=
  ∀ n, P485059810668090282.a n = (A002419 (n + 1) : ℚ)

end A002419

/-! ## A002419.P4632587370745278955

`∑[∑[n]]+C(n+2, 2)²`
-/

namespace A002419.P4632587370745278955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 2) 2 ^ 2

end

end A002419.P4632587370745278955

namespace A002419

/-- `∑[∑[n]]+C(n+2, 2)²` -/
def P4632587370745278955.Spec : Prop :=
  ∀ n, (P4632587370745278955.a n : ℤ) = A002419 (n + 1)

end A002419

/-! ## A002419.P3460448490705361574

`floor(∑[∑[∑[a(n-1)+6]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A002419.P3460448490705361574
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002419.P3460448490705361574

namespace A002419

/-- `floor(∑[∑[∑[a(n-1)+6]]])` -/
def P3460448490705361574.Spec : Prop :=
  ∀ n, (P3460448490705361574.a n : ℤ) = A002419 (n + 1)

end A002419

/-! ## A002419.P4298164342114499886

`∑[(n+1)^3]+C(n+2, 3)`
-/

namespace A002419.P4298164342114499886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 2) 3

end

end A002419.P4298164342114499886

namespace A002419

/-- `∑[(n+1)^3]+C(n+2, 3)` -/
def P4298164342114499886.Spec : Prop :=
  ∀ n, (P4298164342114499886.a n : ℤ) = A002419 (n + 1)

end A002419

/-! ## A002419.P11168938691723075535

`C(n+3, 3)+6*C(n+3, 4)`
-/

namespace A002419.P11168938691723075535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 + 6 * Nat.choose (n + 3) 4

end

end A002419.P11168938691723075535

namespace A002419

/-- `C(n+3, 3)+6*C(n+3, 4)` -/
def P11168938691723075535.Spec : Prop :=
  ∀ n, (P11168938691723075535.a n : ℤ) = A002419 (n + 1)

end A002419

/-! ## A002419.P17852361815141390160

`∑[∑[n]]+∑[a(n-1)+1]²` with `a(0)=1`
-/

namespace A002419.P17852361815141390160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

end

end A002419.P17852361815141390160

namespace A002419

/-- `∑[∑[n]]+∑[a(n-1)+1]²` -/
def P17852361815141390160.Spec : Prop :=
  ∀ n, (P17852361815141390160.a n : ℤ) = A002419 (n + 1)

end A002419

/-! ## A002419.P15197842991323577010

`(n+1)^3+∑[n]+a(n-1)` with `a(0)=1`
-/

namespace A002419.P15197842991323577010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) ^ 3 + (∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A002419.P15197842991323577010

namespace A002419

/-- `(n+1)^3+∑[n]+a(n-1)` -/
def P15197842991323577010.Spec : Prop :=
  ∀ n, (P15197842991323577010.a n : ℤ) = A002419 (n + 1)

end A002419

/-! ## A002419.P9184783159118548094

`∑[∑[a(n-1)+6]]+a(n-1)` with `a(0)=1`
-/

namespace A002419.P9184783159118548094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A002419.P9184783159118548094

namespace A002419

/-- `∑[∑[a(n-1)+6]]+a(n-1)` -/
def P9184783159118548094.Spec : Prop :=
  ∀ n, (P9184783159118548094.a n : ℤ) = A002419 (n + 1)

end A002419

/-! ## A002419.P526529905482190008

`a(n-1)-(2*n+1)/Δ[2/(n+1)]` with `a(0)=1`
-/

namespace A002419.P526529905482190008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (2 * n + 1 : ℚ) / (f1 (n + 1) - f1 n)

end

end A002419.P526529905482190008

namespace A002419

/-- `a(n-1)-(2*n+1)/Δ[2/(n+1)]` -/
def P526529905482190008.Spec : Prop :=
  ∀ n, P526529905482190008.a n = (A002419 (n + 1) : ℚ)

end A002419

/-! ## A002419.P9634254445305459822

`Δ[A051843(n)]`
-/

namespace A002419.P9634254445305459822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002419.P9634254445305459822

namespace A002419

/-- `Δ[A051843(n)]` -/
def P9634254445305459822.Spec : Prop :=
  ∀ n, P9634254445305459822.a n = A002419 (n + 1)

end A002419

/-! ## A002419.P18184834996901698033

`∑[∑[n]]+sqrt(A059977(n))`
-/

namespace A002419.P18184834996901698033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + Real.sqrt (A059977 n : ℝ)

end

end A002419.P18184834996901698033

namespace A002419

/-- `∑[∑[n]]+sqrt(A059977(n))` -/
def P18184834996901698033.Spec : Prop :=
  ∀ n, P18184834996901698033.a n = (A002419 (n + 1) : ℝ)

end A002419

/-! ## A002419.P1359558829298275052

`A176060(n)+(n+1)^3`
-/

namespace A002419.P1359558829298275052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176060 n + ((n + 1) ^ 3 : ℤ)

end

end A002419.P1359558829298275052

namespace A002419

/-- `A176060(n)+(n+1)^3` -/
def P1359558829298275052.Spec : Prop :=
  ∀ n, P1359558829298275052.a n = A002419 (n + 1)

end A002419

/-! ## A002419.P17284695646117155000

`A000292(n)+∑[n+1]²`
-/

namespace A002419.P17284695646117155000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A002419.P17284695646117155000

namespace A002419

/-- `A000292(n)+∑[n+1]²` -/
def P17284695646117155000.Spec : Prop :=
  ∀ n, P17284695646117155000.a n = A002419 (n + 1)

end A002419

/-! ## A002419.P8252050419170427826

`∑[∑[n]]+A000217(n+1)²`
-/

namespace A002419.P8252050419170427826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A000217 (n + 1) ^ 2

end

end A002419.P8252050419170427826

namespace A002419

/-- `∑[∑[n]]+A000217(n+1)²` -/
def P8252050419170427826.Spec : Prop :=
  ∀ n, P8252050419170427826.a n = A002419 (n + 1)

end A002419

/-! ## A002419.P9987331916888720512

`∑[A069099(n+1)]+∑[n]²`
-/

namespace A002419.P9987331916888720512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069099 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A002419.P9987331916888720512

namespace A002419

/-- `∑[A069099(n+1)]+∑[n]²` -/
def P9987331916888720512.Spec : Prop :=
  ∀ n, P9987331916888720512.a n = A002419 (n + 1)

end A002419

/-! ## A002419.P6054984820793220978

`A006324(n+1)-∑[∑[n²]]`
-/

namespace A002419.P6054984820793220978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006324 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A002419.P6054984820793220978

namespace A002419

/-- `A006324(n+1)-∑[∑[n²]]` -/
def P6054984820793220978.Spec : Prop :=
  ∀ n, P6054984820793220978.a n = A002419 (n + 1)

end A002419

/-! ## A002419.P12830839722126080137

`A002414(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A002419.P12830839722126080137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002414 (n + 1) + a (n - 1)

end

end A002419.P12830839722126080137

namespace A002419

/-- `A002414(n+1)+a(n-1)` -/
def P12830839722126080137.Spec : Prop :=
  ∀ n, P12830839722126080137.a n = A002419 (n + 1)

end A002419

/-! ## A002419.P17119705033483601172

`A212560(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A002419.P17119705033483601172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A212560 (n + 1) - a (n - 1)

end

end A002419.P17119705033483601172

namespace A002419

/-- `A212560(n+1)-a(n-1)` -/
def P17119705033483601172.Spec : Prop :=
  ∀ n, P17119705033483601172.a n = A002419 (n + 1)

end A002419

/-!
# A002420: Expansion of sqrt(1 - 4*x) in powers of x.

The programs for A002420, the canonical program `A002420.P6548344392043561822` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002420 has offset 0).

The definition of A002420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002420.P6548344392043561822

`C(2*n, n)/(1-2*n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002420

/-- `C(2*n, n)/(1-2*n)` -/
def P6548344392043561822.Spec : Prop :=
  ∀ n, P6548344392043561822.a n = (A002420 n : ℚ)

end A002420

/-! ## A002420.P14033545395339173563

`(4-6/n)*a(n-1)` with `a(0)=1`
-/

namespace A002420.P14033545395339173563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 6 / (n : ℚ)) * a (n - 1)

end

end A002420.P14033545395339173563

namespace A002420

/-- `(4-6/n)*a(n-1)` -/
def P14033545395339173563.Spec : Prop :=
  ∀ n, P14033545395339173563.a n = (A002420 n : ℚ)

end A002420

/-! ## A002420.P9552626922746575898

`ceil(cosh(sin(n)))*A115140(n)`
-/

namespace A002420.P9552626922746575898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A115140 n

end

end A002420.P9552626922746575898

namespace A002420

/-- `ceil(cosh(sin(n)))*A115140(n)` -/
def P9552626922746575898.Spec : Prop :=
  ∀ n, P9552626922746575898.a n = A002420 n

end A002420

/-! ## A002420.P5855581891753395141

`xor(1, 1-A089408(2*n))`
-/

namespace A002420.P5855581891753395141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - A089408 (2 * n))

end

end A002420.P5855581891753395141

namespace A002420

/-- `xor(1, 1-A089408(2*n))` -/
def P5855581891753395141.Spec : Prop :=
  ∀ n, P5855581891753395141.a n = A002420 n

end A002420

/-! ## A002420.P15636489701525792104

`(-1)^n*A104624(2*n)`
-/

namespace A002420.P15636489701525792104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A104624 (2 * n)

end

end A002420.P15636489701525792104

namespace A002420

/-- `(-1)^n*A104624(2*n)` -/
def P15636489701525792104.Spec : Prop :=
  ∀ n, P15636489701525792104.a n = A002420 n

end A002420

/-! ## A002420.P16030087268117883053

`A000108(n)/(3/(n+1)-2)`
-/

namespace A002420.P16030087268117883053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (3 / (n + 1 : ℚ) - 2)

end

end A002420.P16030087268117883053

namespace A002420

/-- `A000108(n)/(3/(n+1)-2)` -/
def P16030087268117883053.Spec : Prop :=
  ∀ n, P16030087268117883053.a n = (A002420 n : ℚ)

end A002420

/-! ## A002420.P9390993993419664801

`A126079(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A002420.P9390993993419664801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126079 n + 2 * a (n - 1)

end

end A002420.P9390993993419664801

namespace A002420

/-- `A126079(n)+2*a(n-1)` -/
def P9390993993419664801.Spec : Prop :=
  ∀ n, P9390993993419664801.a n = A002420 n

end A002420

/-! ## A002420.P17048762811103548880

`A002421(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A002420.P17048762811103548880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002421 n + 4 * a (n - 1)

end

end A002420.P17048762811103548880

namespace A002420

/-- `A002421(n)+4*a(n-1)` -/
def P17048762811103548880.Spec : Prop :=
  ∀ n, P17048762811103548880.a n = A002420 n

end A002420

/-! ## A002420.P5682305404914460292

`A036453(n+1)*A115140(n)`
-/

namespace A002420.P5682305404914460292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A115140 n

end

end A002420.P5682305404914460292

namespace A002420

/-- `A036453(n+1)*A115140(n)` -/
def P5682305404914460292.Spec : Prop :=
  ∀ n, P5682305404914460292.a n = A002420 n

end A002420

/-! ## A002420.P2498615787391050748

`A000038(n)-A089408(2*n)`
-/

namespace A002420.P2498615787391050748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A089408 (2 * n)

end

end A002420.P2498615787391050748

namespace A002420

/-- `A000038(n)-A089408(2*n)` -/
def P2498615787391050748.Spec : Prop :=
  ∀ n, P2498615787391050748.a n = A002420 n

end A002420

/-! ## A002420.P11287420925672636614

`(2-A000007(n))*A115140(n)`
-/

namespace A002420.P11287420925672636614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A115140 n

end

end A002420.P11287420925672636614

namespace A002420

/-- `(2-A000007(n))*A115140(n)` -/
def P11287420925672636614.Spec : Prop :=
  ∀ n, P11287420925672636614.a n = A002420 n

end A002420

/-! ## A002420.P10286019798147224086

`2*A126079(n)-A002421(n)`
-/

namespace A002420.P10286019798147224086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126079 n - A002421 n

end

end A002420.P10286019798147224086

namespace A002420

/-- `2*A126079(n)-A002421(n)` -/
def P10286019798147224086.Spec : Prop :=
  ∀ n, P10286019798147224086.a n = A002420 n

end A002420

/-! ## A002420.P16725826617279704467

`A033999(n)*A182122(2*n)`
-/

namespace A002420.P16725826617279704467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A182122 (2 * n)

end

end A002420.P16725826617279704467

namespace A002420

/-- `A033999(n)*A182122(2*n)` -/
def P16725826617279704467.Spec : Prop :=
  ∀ n, P16725826617279704467.a n = A002420 n

end A002420

/-! ## A002420.P1035827970748327869

`gcd(2, A130779(n))*A115141(n)`
-/

namespace A002420.P1035827970748327869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A130779 n) : ℤ) * A115141 n

end

end A002420.P1035827970748327869

namespace A002420

/-- `gcd(2, A130779(n))*A115141(n)` -/
def P1035827970748327869.Spec : Prop :=
  ∀ n, P1035827970748327869.a n = A002420 n

end A002420

/-! ## A002420.P7408204630372246385

`(A062157(n)²+1)*A115140(n)`
-/

namespace A002420.P7408204630372246385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062157 n ^ 2 + 1) * A115140 n

end

end A002420.P7408204630372246385

namespace A002420

/-- `(A062157(n)²+1)*A115140(n)` -/
def P7408204630372246385.Spec : Prop :=
  ∀ n, P7408204630372246385.a n = A002420 n

end A002420

/-! ## A002420.P9867905638644949069

`A182122(2*n+1)-abs(A182122(2*n))`
-/

namespace A002420.P9867905638644949069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182122 (2 * n + 1) - |A182122 (2 * n)|

end

end A002420.P9867905638644949069

namespace A002420

/-- `A182122(2*n+1)-abs(A182122(2*n))` -/
def P9867905638644949069.Spec : Prop :=
  ∀ n, P9867905638644949069.a n = A002420 n

end A002420

/-!
# A002421: Expansion of (1-4*x)^(3/2) in powers of x.

The programs for A002421, the canonical program `A002421.P10747627619355857769` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002421 has offset 0).

The definition of A002421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002421.P10747627619355857769

`(4-10/n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002421

/-- `(4-10/n)*a(n-1)` -/
def P10747627619355857769.Spec : Prop :=
  ∀ n, P10747627619355857769.a n = (A002421 n : ℚ)

end A002421

/-! ## A002421.P16250429985000437553

`A001316(n)*A161200(n)`
-/

namespace A002421.P16250429985000437553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A161200 n

end

end A002421.P16250429985000437553

namespace A002421

/-- `A001316(n)*A161200(n)` -/
def P16250429985000437553.Spec : Prop :=
  ∀ n, P16250429985000437553.a n = A002421 n

end A002421

/-! ## A002421.P4733409186794996983

`2*A126079(n)-A002420(n)`
-/

namespace A002421.P4733409186794996983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126079 n - A002420 n

end

end A002421.P4733409186794996983

namespace A002421

/-- `2*A126079(n)-A002420(n)` -/
def P4733409186794996983.Spec : Prop :=
  ∀ n, P4733409186794996983.a n = A002421 n

end A002421

/-! ## A002421.P7795378614430132228

`3*C(2*n, n)/(3-8*n+4*n²)`
-/

namespace A002421.P7795378614430132228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (2 * n) n : ℚ) / (3 - (8 * n : ℤ) + (4 * n ^ 2 : ℤ) : ℚ)

end

end A002421.P7795378614430132228

namespace A002421

/-- `3*C(2*n, n)/(3-8*n+4*n²)` -/
def P7795378614430132228.Spec : Prop :=
  ∀ n, P7795378614430132228.a n = (A002421 n : ℚ)

end A002421

/-! ## A002421.P5681565776035556414

`A232546(n)/A000244(n)`
-/

namespace A002421.P5681565776035556414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232546 n : ℚ) / (A000244 n : ℚ)

end

end A002421.P5681565776035556414

namespace A002421

/-- `A232546(n)/A000244(n)` -/
def P5681565776035556414.Spec : Prop :=
  ∀ n, P5681565776035556414.a n = (A002421 n : ℚ)

end A002421

/-! ## A002421.P12364753738684937885

`A232546(n)/Δ[A003462(n)]`
-/

namespace A002421.P12364753738684937885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232546 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A002421.P12364753738684937885

namespace A002421

/-- `A232546(n)/Δ[A003462(n)]` -/
def P12364753738684937885.Spec : Prop :=
  ∀ n, P12364753738684937885.a n = (A002421 n : ℚ)

end A002421

/-! ## A002421.P17388604925395751895

`A232546(n)/Δ[A115098(n)]`
-/

namespace A002421.P17388604925395751895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232546 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A002421.P17388604925395751895

namespace A002421

/-- `A232546(n)/Δ[A115098(n)]` -/
def P17388604925395751895.Spec : Prop :=
  ∀ n, P17388604925395751895.a n = (A002421 n : ℚ)

end A002421

/-! ## A002421.P6639222553551645485

`A232546(n)/A111575(A008574(n))`
-/

namespace A002421.P6639222553551645485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232546 n : ℚ) / (A111575 (A008574 n).toNat : ℚ)

end

end A002421.P6639222553551645485

namespace A002421

/-- `A232546(n)/A111575(A008574(n))` -/
def P6639222553551645485.Spec : Prop :=
  ∀ n, P6639222553551645485.a n = (A002421 n : ℚ)

end A002421

/-! ## A002421.P4267333810428794724

`A232546(n)/A111575(A016825(n))`
-/

namespace A002421.P4267333810428794724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232546 n : ℚ) / (A111575 (A016825 n).toNat : ℚ)

end

end A002421.P4267333810428794724

namespace A002421

/-- `A232546(n)/A111575(A016825(n))` -/
def P4267333810428794724.Spec : Prop :=
  ∀ n, P4267333810428794724.a n = (A002421 n : ℚ)

end A002421

/-!
# A002422: Expansion of (1-4*x)^(5/2).

The programs for A002422, the canonical program `A002422.P2344694546533997036` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002422 has offset 0).

The definition of A002422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002422.P2344694546533997036

`(4-14/n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002422

/-- `(4-14/n)*a(n-1)` -/
def P2344694546533997036.Spec : Prop :=
  ∀ n, P2344694546533997036.a n = (A002422 n : ℚ)

end A002422

/-! ## A002422.P13041309542717002750

`A002423(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A002422.P13041309542717002750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002423 n + 4 * a (n - 1)

end

end A002422.P13041309542717002750

namespace A002422

/-- `A002423(n)+4*a(n-1)` -/
def P13041309542717002750.Spec : Prop :=
  ∀ n, P13041309542717002750.a n = A002422 n

end A002422

/-! ## A002422.P5586350225286689716

`A001316(n)*A161202(n)`
-/

namespace A002422.P5586350225286689716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A161202 n

end

end A002422.P5586350225286689716

namespace A002422

/-- `A001316(n)*A161202(n)` -/
def P5586350225286689716.Spec : Prop :=
  ∀ n, P5586350225286689716.a n = A002422 n

end A002422

/-! ## A002422.P2678395122891113374

`Δ[A006046(n)]*A161202(n)`
-/

namespace A002422.P2678395122891113374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A161202 n

end

end A002422.P2678395122891113374

namespace A002422

/-- `Δ[A006046(n)]*A161202(n)` -/
def P2678395122891113374.Spec : Prop :=
  ∀ n, P2678395122891113374.a n = A002422 n

end A002422

/-! ## A002422.P13288099906310739036

`15*C(2*n, n)/(15-46*n+36*n²-8*n^3)`
-/

namespace A002422.P13288099906310739036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (15 * Nat.choose (2 * n) n : ℚ) / (15 - (46 * n : ℤ) + (36 * n ^ 2 : ℤ) - (8 * n ^ 3 : ℤ) : ℚ)

end

end A002422.P13288099906310739036

namespace A002422

/-- `15*C(2*n, n)/(15-46*n+36*n²-8*n^3)` -/
def P13288099906310739036.Spec : Prop :=
  ∀ n, P13288099906310739036.a n = (A002422 n : ℚ)

end A002422

/-!
# A002423: Expansion of (1-4*x)^(7/2).

The programs for A002423, the canonical program `A002423.P2233427785063138323` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002423 has offset 0).

The definition of A002423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002423.P2233427785063138323

`(4-18/n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002423

/-- `(4-18/n)*a(n-1)` -/
def P2233427785063138323.Spec : Prop :=
  ∀ n, P2233427785063138323.a n = (A002423 n : ℚ)

end A002423

/-! ## A002423.P3871570780585398281

`A002424(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A002423.P3871570780585398281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002424 n + 4 * a (n - 1)

end

end A002423.P3871570780585398281

namespace A002423

/-- `A002424(n)+4*a(n-1)` -/
def P3871570780585398281.Spec : Prop :=
  ∀ n, P3871570780585398281.a n = A002423 n

end A002423

/-!
# A002424: Expansion of (1-4*x)^(9/2).

The programs for A002424, the canonical program `A002424.P13639763316557590657` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002424 has offset 0).

The definition of A002424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002424.P13639763316557590657

`(4-22/n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002424

/-- `(4-22/n)*a(n-1)` -/
def P13639763316557590657.Spec : Prop :=
  ∀ n, P13639763316557590657.a n = (A002424 n : ℚ)

end A002424

/-! ## A002424.P7719718313252934422

`A020923(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A002424.P7719718313252934422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020923 n + 4 * a (n - 1)

end

end A002424.P7719718313252934422

namespace A002424

/-- `A020923(n)+4*a(n-1)` -/
def P7719718313252934422.Spec : Prop :=
  ∀ n, P7719718313252934422.a n = A002424 n

end A002424

/-!
# A002425: Denominator of Pi^(2n)/(Gamma(2n)*(1-2^(-2n))*zeta(2n)).

The programs for A002425, there is no canonical definition to state claims against.
-/

/-! ## A002425.P15510077263077474369

`A160469(n+1)/A048896(n)`
-/

namespace A002425.P15510077263077474369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160469 (n + 1) : ℚ) / (A048896 n : ℚ)

end

end A002425.P15510077263077474369

/-! ## A002425.P7642274988729186235

`abs(A275994(n+1))`
-/

namespace A002425.P7642274988729186235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A275994 (n + 1)|

end

end A002425.P7642274988729186235

/-! ## A002425.P8836081615401204519

`abs(A198631(Δ[n²]))`
-/

namespace A002425.P8836081615401204519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A198631 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A002425.P8836081615401204519

/-! ## A002425.P8170731583912671362

`abs(A237717(2*n+1))`
-/

namespace A002425.P8170731583912671362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A237717 (2 * n + 1)|

end

end A002425.P8170731583912671362

/-! ## A002425.P8524499440245960255

`lcm(A089170(n), A089171(n))`
-/

namespace A002425.P8524499440245960255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A089170 n) (A089171 n)

end

end A002425.P8524499440245960255

/-!
# A002426: Central trinomial coefficients: largest coefficient of (1 + x + x^2)^n.

The programs for A002426, the canonical program `A002426.P18316219981098248731` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002426 has offset 0).

The definition of A002426 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002426.P12745612925313428019

`2*A027914(n)-3^n`
-/

namespace A002426.P12745612925313428019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027914 n - (3 ^ n : ℤ)

end

end A002426.P12745612925313428019

namespace A002426

/-- `2*A027914(n)-3^n` -/
def P12745612925313428019.Spec : Prop :=
  ∀ n, P12745612925313428019.a n = A002426 n

end A002426

/-! ## A002426.P18316219981098248731

`((2*n-1)*a(n-1)+3*(n-1)*a(n-2))/n` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002426

/-- `((2*n-1)*a(n-1)+3*(n-1)*a(n-2))/n` -/
def P18316219981098248731.Spec : Prop :=
  ∀ n, P18316219981098248731.a n = (A002426 n : ℚ)

end A002426

/-! ## A002426.P2467545091064766222

`A132885(A002620(n+1))`
-/

namespace A002426.P2467545091064766222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132885 (A002620 (n + 1)).toNat

end

end A002426.P2467545091064766222

namespace A002426

/-- `A132885(A002620(n+1))` -/
def P2467545091064766222.Spec : Prop :=
  ∀ n, P2467545091064766222.a n = A002426 n

end A002426

/-! ## A002426.P14393093893766408537

`A005213(2*n)`
-/

namespace A002426.P14393093893766408537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * n)

end

end A002426.P14393093893766408537

namespace A002426

/-- `A005213(2*n)` -/
def P14393093893766408537.Spec : Prop :=
  ∀ n, P14393093893766408537.a n = A002426 n

end A002426

/-! ## A002426.P12821829359318063994

`abs(∑[A085455(n)])`
-/

namespace A002426.P12821829359318063994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085455 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A002426.P12821829359318063994

namespace A002426

/-- `abs(∑[A085455(n)])` -/
def P12821829359318063994.Spec : Prop :=
  ∀ n, P12821829359318063994.a n = A002426 n

end A002426

/-! ## A002426.P430175419739715192

`2*A097861(n)+1`
-/

namespace A002426.P430175419739715192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097861 n + 1

end

end A002426.P430175419739715192

namespace A002426

/-- `2*A097861(n)+1` -/
def P430175419739715192.Spec : Prop :=
  ∀ n, P430175419739715192.a n = A002426 n

end A002426

/-! ## A002426.P5842518334123175491

`2*A257520(n)-1`
-/

namespace A002426.P5842518334123175491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257520 n - 1

end

end A002426.P5842518334123175491

namespace A002426

/-- `2*A257520(n)-1` -/
def P5842518334123175491.Spec : Prop :=
  ∀ n, P5842518334123175491.a n = A002426 n

end A002426

/-! ## A002426.P184788277140099985

`abs(Δ[n*A099323(n)])`
-/

namespace A002426.P184788277140099985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A099323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A002426.P184788277140099985

namespace A002426

/-- `abs(Δ[n*A099323(n)])` -/
def P184788277140099985.Spec : Prop :=
  ∀ n, P184788277140099985.a n = A002426 n

end A002426

/-! ## A002426.P4937630033633003567

`or(1, record[A005213(n+1)])`
-/

namespace A002426.P4937630033633003567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A002426.P4937630033633003567

namespace A002426

/-- `or(1, record[A005213(n+1)])` -/
def P4937630033633003567.Spec : Prop :=
  ∀ n, P4937630033633003567.a n = A002426 n

end A002426

/-! ## A002426.P17040278645120461698

`∑[(1-n)*A167022(n)]`
-/

namespace A002426.P17040278645120461698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A167022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002426.P17040278645120461698

namespace A002426

/-- `∑[(1-n)*A167022(n)]` -/
def P17040278645120461698.Spec : Prop :=
  ∀ n, P17040278645120461698.a n = A002426 n

end A002426

/-! ## A002426.P352176023181464047

`∑[(1-n)*A168058(n)]`
-/

namespace A002426.P352176023181464047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A168058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002426.P352176023181464047

namespace A002426

/-- `∑[(1-n)*A168058(n)]` -/
def P352176023181464047.Spec : Prop :=
  ∀ n, P352176023181464047.a n = A002426 n

end A002426

/-! ## A002426.P8779226637829016767

`A025178(n)+a(n-1)` with `a(0)=1`
-/

namespace A002426.P8779226637829016767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025178 n + a (n - 1)

end

end A002426.P8779226637829016767

namespace A002426

/-- `A025178(n)+a(n-1)` -/
def P8779226637829016767.Spec : Prop :=
  ∀ n, P8779226637829016767.a n = A002426 n

end A002426

/-! ## A002426.P11262017030763403182

`abs(Δ[n*A174297(n+1)])`
-/

namespace A002426.P11262017030763403182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A174297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A002426.P11262017030763403182

namespace A002426

/-- `abs(Δ[n*A174297(n+1)])` -/
def P11262017030763403182.Spec : Prop :=
  ∀ n, P11262017030763403182.a n = A002426 n

end A002426

/-! ## A002426.P9349797456840326565

`A105696(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A002426.P9349797456840326565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A105696 n + a (n - 2)

end

end A002426.P9349797456840326565

namespace A002426

/-- `A105696(n)+a(n-2)` -/
def P9349797456840326565.Spec : Prop :=
  ∀ n, P9349797456840326565.a n = A002426 n

end A002426

/-! ## A002426.P2074717229629927249

`A025565(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A002426.P2074717229629927249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025565 (n + 1) - a (n - 1)

end

end A002426.P2074717229629927249

namespace A002426

/-- `A025565(n+1)-a(n-1)` -/
def P2074717229629927249.Spec : Prop :=
  ∀ n, P2074717229629927249.a n = A002426 n

end A002426

/-! ## A002426.P4590885621409933655

`2*A005773(n)-a(n-1)` with `a(0)=1`
-/

namespace A002426.P4590885621409933655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A005773 n - a (n - 1)

end

end A002426.P4590885621409933655

namespace A002426

/-- `2*A005773(n)-a(n-1)` -/
def P4590885621409933655.Spec : Prop :=
  ∀ n, P4590885621409933655.a n = A002426 n

end A002426

/-! ## A002426.P6837062376574455539

`A257520(n)+A097861(n)`
-/

namespace A002426.P6837062376574455539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n + A097861 n

end

end A002426.P6837062376574455539

namespace A002426

/-- `A257520(n)+A097861(n)` -/
def P6837062376574455539.Spec : Prop :=
  ∀ n, P6837062376574455539.a n = A002426 n

end A002426

/-! ## A002426.P11604614465100357422

`A081669(n)-A155559(n)`
-/

namespace A002426.P11604614465100357422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081669 n - A155559 n

end

end A002426.P11604614465100357422

namespace A002426

/-- `A081669(n)-A155559(n)` -/
def P11604614465100357422.Spec : Prop :=
  ∀ n, P11604614465100357422.a n = A002426 n

end A002426

/-! ## A002426.P16032215215083183508

`A372342(n+1)+A372342(n)`
-/

namespace A002426.P16032215215083183508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372342 (n + 1) + A372342 n

end

end A002426.P16032215215083183508

namespace A002426

/-- `A372342(n+1)+A372342(n)` -/
def P16032215215083183508.Spec : Prop :=
  ∀ n, P16032215215083183508.a n = A002426 n

end A002426

/-! ## A002426.P5332241676876379480

`A189912(n)-A005043(n+1)`
-/

namespace A002426.P5332241676876379480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189912 n - A005043 (n + 1)

end

end A002426.P5332241676876379480

namespace A002426

/-- `A189912(n)-A005043(n+1)` -/
def P5332241676876379480.Spec : Prop :=
  ∀ n, P5332241676876379480.a n = A002426 n

end A002426

/-!
# A002427: Numerator of (2n+1) B_{2n}, where B_n are the Bernoulli numbers.

The programs for A002427, there is no canonical definition to state claims against.
-/

/-! ## A002427.P15967280423204933987

`A050925(2*n)`
-/

namespace A002427.P15967280423204933987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050925 (2 * n)

end

end A002427.P15967280423204933987

/-! ## A002427.P13131404945121997316

`A000367(n)*A326478(2*n+1)`
-/

namespace A002427.P13131404945121997316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 n * A326478 (2 * n + 1)

end

end A002427.P13131404945121997316

/-! ## A002427.P4866268989096547272

`A027641(2*n)*A159353(2*n+1)`
-/

namespace A002427.P4866268989096547272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (2 * n) * A159353 (2 * n + 1)

end

end A002427.P4866268989096547272

/-! ## A002427.P13978284301872960736

`A159353(2*n+1)*A164555(2*n)`
-/

namespace A002427.P13978284301872960736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159353 (2 * n + 1) * A164555 (2 * n)

end

end A002427.P13978284301872960736

/-! ## A002427.P3049675732341597452

`A159353(2*n+1)*A176327(2*n)`
-/

namespace A002427.P3049675732341597452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159353 (2 * n + 1) * A176327 (2 * n)

end

end A002427.P3049675732341597452

/-! ## A002427.P7115946707538859403

`A027641(2*n)*A326478(2*n+1)`
-/

namespace A002427.P7115946707538859403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (2 * n) * A326478 (2 * n + 1)

end

end A002427.P7115946707538859403

/-! ## A002427.P18438452564485626655

`A000367(n)/A002445(n)*A326580(n)`
-/

namespace A002427.P18438452564485626655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000367 n : ℚ) / (A002445 n : ℚ) * (A326580 n : ℚ)

end

end A002427.P18438452564485626655

/-! ## A002427.P288372408580633854

`A162298((n+1)*(2*n+1)+1)`
-/

namespace A002427.P288372408580633854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162298 ((n + 1) * (2 * n + 1) + 1)

end

end A002427.P288372408580633854

/-! ## A002427.P7435598161117153693

`A000188(A326578(2*n+1))*A027641(2*n)`
-/

namespace A002427.P7435598161117153693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A326578 (2 * n + 1)).toNat * A027641 (2 * n)

end

end A002427.P7435598161117153693

/-! ## A002427.P9487019784704547015

`-A100615(2*n+1)`
-/

namespace A002427.P9487019784704547015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A100615 (2 * n + 1)

end

end A002427.P9487019784704547015

/-!
# A002428: Numerators of coefficients of expansion of arctan(x)^2 = x^2 - 2/3*x^4 + 23/45*x^6 - 44/105*x^8 + 563/1575*x^10 - 3254/10395*x^12 + ...

The programs for A002428, there is no canonical definition to state claims against.
-/

/-! ## A002428.P11326158786569936033

`floor(A141904(A000124(n))+acot(n))`
-/

namespace A002428.P11326158786569936033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141904 (A000124 n).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A002428.P11326158786569936033

/-! ## A002428.P2165554106010279867

`A141904(A000124(n))+A000007(n)`
-/

namespace A002428.P2165554106010279867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141904 (A000124 n).toNat + A000007 n

end

end A002428.P2165554106010279867

/-! ## A002428.P8504550141914976203

`A141904(A000124(n))+A010893(n)`
-/

namespace A002428.P8504550141914976203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141904 (A000124 n).toNat + A010893 (n + 13)

end

end A002428.P8504550141914976203

/-! ## A002428.P8692423435888455587

`A151935(n)+A141904(A000124(n))`
-/

namespace A002428.P8692423435888455587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151935 n + A141904 (A000124 n).toNat

end

end A002428.P8692423435888455587

/-! ## A002428.P10707649243229070469

`A155797(n)+A141904(A000124(n))`
-/

namespace A002428.P10707649243229070469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155797 n + A141904 (A000124 n).toNat

end

end A002428.P10707649243229070469

/-!
# A002429: Numerators of double sums of reciprocals.

The programs for A002429, there is no canonical definition to state claims against.
-/

/-! ## A002429.P10926550992406276909

`abs(A141904(eq[4, A059268(n)]))`
-/

namespace A002429.P10926550992406276909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A002429.P10926550992406276909

/-! ## A002429.P12563006055539671577

`abs(A141904(A000217(n+2)+2))`
-/

namespace A002429.P12563006055539671577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141904 (A000217 (n + 2) + 2).toNat|

end

end A002429.P12563006055539671577

/-! ## A002429.P786819233004085359

`abs(A141904(eq[3, A002260(n+1)]))`
-/

namespace A002429.P786819233004085359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A141904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A002429.P786819233004085359

/-!
# A002430: Numerators in Taylor series for tan(x). Also from Taylor series for tanh(x).

The programs for A002430, there is no canonical definition to state claims against.
-/

/-! ## A002430.P15386155433659197602

`lcm(A048896(n), A089171(n))`
-/

namespace A002430.P15386155433659197602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048896 n) (A089171 n)

end

end A002430.P15386155433659197602

/-! ## A002430.P2341641555213019650

`A048896(n)*A276592(n+1)`
-/

namespace A002430.P2341641555213019650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n * A276592 (n + 1)

end

end A002430.P2341641555213019650

/-! ## A002430.P14838525321530631473

`A046990(n+1)*A092505(n+1)`
-/

namespace A002430.P14838525321530631473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046990 (n + 1) * A092505 (n + 1)

end

end A002430.P14838525321530631473

/-! ## A002430.P11059833680974184067

`A001316(A071055(n))*A276592(n+1)`
-/

namespace A002430.P11059833680974184067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A071055 n).toNat * A276592 (n + 1)

end

end A002430.P11059833680974184067

/-! ## A002430.P12296619790751866477

`lcm(A048896(A005408(n)), A276592(n+1))`
-/

namespace A002430.P12296619790751866477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048896 (A005408 n).toNat) (A276592 (n + 1))

end

end A002430.P12296619790751866477

/-!
# A002431: Numerators in Taylor series for cot x.

The programs for A002431, there is no canonical definition to state claims against.
-/

/-! ## A002431.P6597419987203008271

`A216273(A015128(2*n))-A000120(n)`
-/

namespace A002431.P6597419987203008271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216273 (A015128 (2 * n)).toNat - A000120 n

end

end A002431.P6597419987203008271

/-! ## A002431.P5611609095816489615

`A216273(A015128(2*n))-A240388(n)`
-/

namespace A002431.P5611609095816489615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216273 (A015128 (2 * n)).toNat - A240388 n

end

end A002431.P5611609095816489615

/-!
# A002432: Denominators of zeta(2*n)/Pi^(2*n).

The programs for A002432, there is no canonical definition to state claims against.
-/

/-! ## A002432.P12594441237331090217

`A104007(Δ[n²])`
-/

namespace A002432.P12594441237331090217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104007 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002432.P12594441237331090217

/-! ## A002432.P18114188499786615875

`lcm(2*n+1, A104007(2*n+1))`
-/

namespace A002432.P18114188499786615875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A104007 (2 * n + 1))

end

end A002432.P18114188499786615875

/-! ## A002432.P5478290929508650507

`A028310(A004273(n))*A340243(n)`
-/

namespace A002432.P5478290929508650507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004273 n).toNat * A340243 n

end

end A002432.P5478290929508650507

/-! ## A002432.P6718475724193871996

`A340471(A004275(n+1))`
-/

namespace A002432.P6718475724193871996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340471 (A004275 (n + 1)).toNat

end

end A002432.P6718475724193871996

/-! ## A002432.P15783538845954540545

`A340471(A008574(n)-2*n)`
-/

namespace A002432.P15783538845954540545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340471 (A008574 n - (2 * n : ℤ)).toNat

end

end A002432.P15783538845954540545

/-!
# A002434: Theta series of Borcherds' 27-dimensional unimodular lattice T_27.

The programs for A002434, there is no canonical definition to state claims against.
-/

/-! ## A002434.P13263037591811499982

`A002482(n)+A002490(n)-A002495(n)`
-/

namespace A002434.P13263037591811499982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002482 n + (A002490 n - A002495 n)

end

end A002434.P13263037591811499982

/-!
# A002435: Second-order Euler numbers.

The programs for A002435, there is no canonical definition to state claims against.
-/

/-! ## A002435.P8922883172014923247

`A104035(A084265(n)+3)`
-/

namespace A002435.P8922883172014923247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104035 (A084265 n + 3).toNat

end

end A002435.P8922883172014923247

/-! ## A002435.P18438626689612341732

`A104035(∑[n+1]+3-A000035(n))`
-/

namespace A002435.P18438626689612341732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104035 (((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℤ) - A000035 n).toNat

end

end A002435.P18438626689612341732

/-! ## A002435.P7784025781122309204

`record[A104035(n+4)/A008292(n+2)]`
-/

namespace A002435.P7784025781122309204
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104035 (n + 4) : ℚ) / (A008292 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002435.P7784025781122309204

/-! ## A002435.P379634208248267815

`A104035(gcd(2, n)+A000217(n+1)+1)`
-/

namespace A002435.P379634208248267815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104035 ((Nat.gcd 2 n : ℤ) + (A000217 (n + 1) + 1)).toNat

end

end A002435.P379634208248267815

/-! ## A002435.P5336992143306501695

`record[A104035(n+4)/A060187(n+2)]`
-/

namespace A002435.P5336992143306501695
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104035 (n + 4) : ℚ) / (A060187 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002435.P5336992143306501695

/-!
# A002436: E.g.f.: Sum_{n >= 0} a(n)*x^(2*n)/(2*n)! = sec(2*x).

The programs for A002436, there is no canonical definition to state claims against.
-/

/-! ## A002436.P18400077789144739854

`A000831(2*n)`
-/

namespace A002436.P18400077789144739854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000831 (2 * n)

end

end A002436.P18400077789144739854

/-! ## A002436.P818067968180105967

`4^n*A000364(n)`
-/

namespace A002436.P818067968180105967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000364 n

end

end A002436.P818067968180105967

/-! ## A002436.P6899955328810459360

`A003707(Δ[n²])`
-/

namespace A002436.P6899955328810459360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003707 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002436.P6899955328810459360

/-! ## A002436.P4435930246031029578

`record[A003707(n+1)]`
-/

namespace A002436.P4435930246031029578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002436.P4435930246031029578

/-! ## A002436.P1873589734041059813

`abs(A003707(2*n+1))`
-/

namespace A002436.P1873589734041059813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003707 (2 * n + 1)|

end

end A002436.P1873589734041059813

/-!
# A002437: a(n) = A000364(n) * (3^(2*n+1) + 1)/4.

The programs for A002437, there is no canonical definition to state claims against.
-/

/-! ## A002437.P18221136227018366665

`A000364(n)*(3^(2*n+1)+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002437.P18221136227018366665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000364 n * (3 ^ (2 * n + 1) + 1 : ℤ) : ℚ) / 4

end

end A002437.P18221136227018366665

/-! ## A002437.P9061932591929453410

`A156172(n)/2`
-/

namespace A002437.P9061932591929453410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156172 n : ℚ) / 2

end

end A002437.P9061932591929453410

/-! ## A002437.P14577723172860832841

`A395233(∑[n+1]+n)`
-/

namespace A002437.P14577723172860832841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395233 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A002437.P14577723172860832841

/-! ## A002437.P3024853221888922918

`record[∑[(-3)^n]*A000111(n)]`
-/

namespace A002437.P3024853221888922918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000111 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002437.P3024853221888922918

/-!
# A002438: Multiples of Euler numbers.

The programs for A002438, there is no canonical definition to state claims against.
-/

/-! ## A002438.P5827034680118006560

`A000364(n)*(9^n+1)/2`
-/

namespace A002438.P5827034680118006560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000364 n * (9 ^ n + 1 : ℤ) : ℚ) / 2

end

end A002438.P5827034680118006560

/-! ## A002438.P6908331793942396610

`A007286(2*n)`
-/

namespace A002438.P6908331793942396610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007286 (2 * n)

end

end A002438.P6908331793942396610

/-! ## A002438.P17515188705782361665

`abs(A156187(2*n))`
-/

namespace A002438.P17515188705782361665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156187 (2 * n)|

end

end A002438.P17515188705782361665

/-! ## A002438.P11571339313792214908

`abs(A225147(2*n))`
-/

namespace A002438.P11571339313792214908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225147 (2 * n)|

end

end A002438.P11571339313792214908

/-! ## A002438.P2272489587020203944

`A202693(C(2*(n+1), 2))`
-/

namespace A002438.P2272489587020203944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202693 (Nat.choose (2 * (n + 1)) 2)

end

end A002438.P2272489587020203944

/-!
# A002439: Glaisher's T numbers.

The programs for A002439, there is no canonical definition to state claims against.
-/

/-! ## A002439.P14623178079418783166

`A000191(n)/2`
-/

namespace A002439.P14623178079418783166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000191 n : ℚ) / 2

end

end A002439.P14623178079418783166

/-! ## A002439.P17919210487659076097

`A007289(Δ[n²])/2`
-/

namespace A002439.P17919210487659076097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007289 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A002439.P17919210487659076097

/-! ## A002439.P10316651034915746313

`abs(A156187(2*n+1))`
-/

namespace A002439.P10316651034915746313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156187 (2 * n + 1)|

end

end A002439.P10316651034915746313

/-! ## A002439.P13947899820503707294

`abs(A225147(2*n+1)/2)`
-/

namespace A002439.P13947899820503707294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A225147 (2 * n + 1) : ℚ) / 2|

end

end A002439.P13947899820503707294

/-! ## A002439.P6187520253709477446

`floor(A007289(2*n+1)/2)`
-/

namespace A002439.P6187520253709477446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007289 (2 * n + 1) : ℚ) / 2⌋

end

end A002439.P6187520253709477446

/-!
# A002440: Squares written in base 7.

The programs for A002440, the canonical program `A002440.P1434587325038711848` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002440 has offset 1).

The definition of A002440 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007093, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002440.P1434587325038711848

`A007093(A000290(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A002440

/-- `A007093(A000290(n+1))` -/
def P1434587325038711848.Spec : Prop :=
  ∀ n, P1434587325038711848.a n = A002440 (n + 1)

theorem P1434587325038711848.correct : P1434587325038711848.Spec := by
  intro n
  simp only [A002440, Nat.add_sub_cancel]

end A002440

/-! ## A002440.P8888632715616049924

`A007093((n+1)²)`
-/

namespace A002440.P8888632715616049924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 ((n + 1) ^ 2)

end

end A002440.P8888632715616049924

namespace A002440

/-- `A007093((n+1)²)` -/
def P8888632715616049924.Spec : Prop :=
  ∀ n, P8888632715616049924.a n = A002440 (n + 1)

end A002440

/-! ## A002440.P13800447900584630890

`record[A007093((1-n)²)]`
-/

namespace A002440.P13800447900584630890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002440.P13800447900584630890

namespace A002440

/-- `record[A007093((1-n)²)]` -/
def P13800447900584630890.Spec : Prop :=
  ∀ n, P13800447900584630890.a n = A002440 (n + 1)

end A002440

/-! ## A002440.P11645045724407993451

`∑[abs(Δ[A007093(n²)])]`
-/

namespace A002440.P11645045724407993451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002440.P11645045724407993451

namespace A002440

/-- `∑[abs(Δ[A007093(n²)])]` -/
def P11645045724407993451.Spec : Prop :=
  ∀ n, P11645045724407993451.a n = A002440 (n + 1)

end A002440

/-! ## A002440.P1620327723544769953

`xor(1, xor(1, A007093((n+1)^2)))`
-/

namespace A002440.P1620327723544769953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A007093 ((n + 1) ^ 2)))

end

end A002440.P1620327723544769953

namespace A002440

/-- `xor(1, xor(1, A007093((n+1)^2)))` -/
def P1620327723544769953.Spec : Prop :=
  ∀ n, P1620327723544769953.a n = A002440 (n + 1)

end A002440

/-! ## A002440.P14169101287897401773

`e^log(A007093(∑[2*n+1]))`
-/

namespace A002440.P14169101287897401773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp 1 ^ (Real.log (A007093 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ))

end

end A002440.P14169101287897401773

namespace A002440

/-- `e^log(A007093(∑[2*n+1]))` -/
def P14169101287897401773.Spec : Prop :=
  ∀ n, P14169101287897401773.a n = (A002440 (n + 1) : ℝ)

end A002440

/-! ## A002440.P13267973338728769749

`∑[A000027(Δ[A007093(n²)])]`
-/

namespace A002440.P13267973338728769749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002440.P13267973338728769749

namespace A002440

/-- `∑[A000027(Δ[A007093(n²)])]` -/
def P13267973338728769749.Spec : Prop :=
  ∀ n, P13267973338728769749.a n = A002440 (n + 1)

end A002440

/-! ## A002440.P9018744408459096668

`∑[A028310(Δ[A007093(n²)])]`
-/

namespace A002440.P9018744408459096668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002440.P9018744408459096668

namespace A002440

/-- `∑[A028310(Δ[A007093(n²)])]` -/
def P9018744408459096668.Spec : Prop :=
  ∀ n, P9018744408459096668.a n = A002440 (n + 1)

end A002440

/-! ## A002440.P9585984271411714346

`A000027(A007093((n+1)^2))`
-/

namespace A002440.P9585984271411714346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A007093 ((n + 1) ^ 2)).toNat

end

end A002440.P9585984271411714346

namespace A002440

/-- `A000027(A007093((n+1)^2))` -/
def P9585984271411714346.Spec : Prop :=
  ∀ n, P9585984271411714346.a n = A002440 (n + 1)

end A002440

/-! ## A002440.P10004941665286537974

`∑[Δ[A007093(n²)]%A069894(n)]`
-/

namespace A002440.P10004941665286537974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A069894 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002440.P10004941665286537974

namespace A002440

/-- `∑[Δ[A007093(n²)]%A069894(n)]` -/
def P10004941665286537974.Spec : Prop :=
  ∀ n, P10004941665286537974.a n = A002440 (n + 1)

end A002440

/-! ## A002440.P732336191549566104

`A007093((n+1)^2)%A037074(n+1)`
-/

namespace A002440.P732336191549566104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007093 ((n + 1) ^ 2)) (A037074 (n + 1))

end

end A002440.P732336191549566104

namespace A002440

/-- `A007093((n+1)^2)%A037074(n+1)` -/
def P732336191549566104.Spec : Prop :=
  ∀ n, P732336191549566104.a n = A002440 (n + 1)

end A002440

/-! ## A002440.P12638346708444390886

`A007093(∑[2*n+1])^A014963(4*n+2)`
-/

namespace A002440.P12638346708444390886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007093 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A002440.P12638346708444390886

namespace A002440

/-- `A007093(∑[2*n+1])^A014963(4*n+2)` -/
def P12638346708444390886.Spec : Prop :=
  ∀ n, P12638346708444390886.a n = (A002440 (n + 1) : ℚ)

end A002440

/-! ## A002440.P15492902336624346359

`A007318(1-(-1)^n)*A007093(∑[2*n+1])`
-/

namespace A002440.P15492902336624346359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (1 - (-1) ^ n).toNat * A007093 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002440.P15492902336624346359

namespace A002440

/-- `A007318(1-(-1)^n)*A007093(∑[2*n+1])` -/
def P15492902336624346359.Spec : Prop :=
  ∀ n, P15492902336624346359.a n = A002440 (n + 1)

end A002440

/-! ## A002440.P18125833753156003355

`or(A000007(n), A007093(A131738(n)²))`
-/

namespace A002440.P18125833753156003355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A007093 (A131738 n ^ 2).toNat)

end

end A002440.P18125833753156003355

namespace A002440

/-- `or(A000007(n), A007093(A131738(n)²))` -/
def P18125833753156003355.Spec : Prop :=
  ∀ n, P18125833753156003355.a n = A002440 (n + 1)

end A002440

/-! ## A002440.P15560304351139048152

`A007093(∑[2*n+1])^A001221(A000961(n+1))`
-/

namespace A002440.P15560304351139048152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007093 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A001221 (A000961 (n + 1)).toNat : ℤ)

end

end A002440.P15560304351139048152

namespace A002440

/-- `A007093(∑[2*n+1])^A001221(A000961(n+1))` -/
def P15560304351139048152.Spec : Prop :=
  ∀ n, P15560304351139048152.a n = (A002440 (n + 1) : ℚ)

end A002440

/-!
# A002441: Squares written in base 8.

The programs for A002441, the canonical program `A002441.P17499156723092439294` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002441 has offset 1).

The definition of A002441 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007094, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002441.P17499156723092439294

`A007094(A000290(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A002441

/-- `A007094(A000290(n+1))` -/
def P17499156723092439294.Spec : Prop :=
  ∀ n, P17499156723092439294.a n = A002441 (n + 1)

theorem P17499156723092439294.correct : P17499156723092439294.Spec := by
  intro n
  simp only [A002441, Nat.add_sub_cancel]

end A002441

/-! ## A002441.P13798252554363057173

`A007094((n+1)²)`
-/

namespace A002441.P13798252554363057173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 ((n + 1) ^ 2)

end

end A002441.P13798252554363057173

namespace A002441

/-- `A007094((n+1)²)` -/
def P13798252554363057173.Spec : Prop :=
  ∀ n, P13798252554363057173.a n = A002441 (n + 1)

end A002441

/-! ## A002441.P5970309446048123943

`record[A007094((1-n)²)]`
-/

namespace A002441.P5970309446048123943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002441.P5970309446048123943

namespace A002441

/-- `record[A007094((1-n)²)]` -/
def P5970309446048123943.Spec : Prop :=
  ∀ n, P5970309446048123943.a n = A002441 (n + 1)

end A002441

/-! ## A002441.P15373509973845184635

`xor(1, xor(1, A007094((n+1)^2)))`
-/

namespace A002441.P15373509973845184635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A007094 ((n + 1) ^ 2)))

end

end A002441.P15373509973845184635

namespace A002441

/-- `xor(1, xor(1, A007094((n+1)^2)))` -/
def P15373509973845184635.Spec : Prop :=
  ∀ n, P15373509973845184635.a n = A002441 (n + 1)

end A002441

/-! ## A002441.P8867623541021478709

`or(char[2], A007094(∑[2*n+1]))`
-/

namespace A002441.P8867623541021478709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A007094 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A002441.P8867623541021478709

namespace A002441

/-- `or(char[2], A007094(∑[2*n+1]))` -/
def P8867623541021478709.Spec : Prop :=
  ∀ n, P8867623541021478709.a n = A002441 (n + 1)

end A002441

/-! ## A002441.P16461609121640056486

`A000027(A007094(xor(n, -1)²))`
-/

namespace A002441.P16461609121640056486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A007094 (Int.xor (n : ℤ) (-1) ^ 2).toNat).toNat

end

end A002441.P16461609121640056486

namespace A002441

/-- `A000027(A007094(xor(n, -1)²))` -/
def P16461609121640056486.Spec : Prop :=
  ∀ n, P16461609121640056486.a n = A002441 (n + 1)

end A002441

/-! ## A002441.P8881642184088002411

`A000027(A007094((n+1)^2))`
-/

namespace A002441.P8881642184088002411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A007094 ((n + 1) ^ 2)).toNat

end

end A002441.P8881642184088002411

namespace A002441

/-- `A000027(A007094((n+1)^2))` -/
def P8881642184088002411.Spec : Prop :=
  ∀ n, P8881642184088002411.a n = A002441 (n + 1)

end A002441

/-! ## A002441.P632309655215401723

`A007094(∑[comp[2*n]])%A055260(n)`
-/

namespace A002441.P632309655215401723
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007094 (∑ j ∈ Finset.range (n + 1), f1 j)) (A055260 n)

end

end A002441.P632309655215401723

namespace A002441

/-- `A007094(∑[comp[2*n]])%A055260(n)` -/
def P632309655215401723.Spec : Prop :=
  ∀ n, P632309655215401723.a n = A002441 (n + 1)

end A002441

/-! ## A002441.P18384152301606899131

`A007094(∑[2*n+1])%A031935(n)`
-/

namespace A002441.P18384152301606899131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007094 (∑ j ∈ Finset.range (n + 1), f1 j)) (A031935 n)

end

end A002441.P18384152301606899131

namespace A002441

/-- `A007094(∑[2*n+1])%A031935(n)` -/
def P18384152301606899131.Spec : Prop :=
  ∀ n, P18384152301606899131.a n = A002441 (n + 1)

end A002441

/-! ## A002441.P12187255122717390306

`gcd(A000038(n), A007094(∑[2*n+1]))`
-/

namespace A002441.P12187255122717390306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A007094 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A002441.P12187255122717390306

namespace A002441

/-- `gcd(A000038(n), A007094(∑[2*n+1]))` -/
def P12187255122717390306.Spec : Prop :=
  ∀ n, (P12187255122717390306.a n : ℤ) = A002441 (n + 1)

end A002441

/-! ## A002441.P689453832468675952

`A007318(C(2, n))*A007094((n+1)^2)`
-/

namespace A002441.P689453832468675952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007094 ((n + 1) ^ 2)

end

end A002441.P689453832468675952

namespace A002441

/-- `A007318(C(2, n))*A007094((n+1)^2)` -/
def P689453832468675952.Spec : Prop :=
  ∀ n, P689453832468675952.a n = A002441 (n + 1)

end A002441

/-! ## A002441.P12232390427016308466

`A007094(∑[comp[2*n]])-A000007(n+1)`
-/

namespace A002441.P12232390427016308466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (∑ j ∈ Finset.range (n + 1), f1 j) - A000007 (n + 1)

end

end A002441.P12232390427016308466

namespace A002441

/-- `A007094(∑[comp[2*n]])-A000007(n+1)` -/
def P12232390427016308466.Spec : Prop :=
  ∀ n, P12232390427016308466.a n = A002441 (n + 1)

end A002441

/-! ## A002441.P6642775091955235938

`A007094(∑[n+1+n])+A000038(n)%2`
-/

namespace A002441.P6642775091955235938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (∑ j ∈ Finset.range (n + 1), f1 j) + Int.tmod (A000038 n) 2

end

end A002441.P6642775091955235938

namespace A002441

/-- `A007094(∑[n+1+n])+A000038(n)%2` -/
def P6642775091955235938.Spec : Prop :=
  ∀ n, P6642775091955235938.a n = A002441 (n + 1)

end A002441

/-! ## A002441.P8843184502507238189

`A000041(C(2, n+2))*A007094((n+1)^2)`
-/

namespace A002441.P8843184502507238189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A007094 ((n + 1) ^ 2)

end

end A002441.P8843184502507238189

namespace A002441

/-- `A000041(C(2, n+2))*A007094((n+1)^2)` -/
def P8843184502507238189.Spec : Prop :=
  ∀ n, P8843184502507238189.a n = A002441 (n + 1)

end A002441

/-! ## A002441.P3137705370058416683

`ceil(1/A007318(n))*A007094(∑[2*n+1])`
-/

namespace A002441.P3137705370058416683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A007094 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002441.P3137705370058416683

namespace A002441

/-- `ceil(1/A007318(n))*A007094(∑[2*n+1])` -/
def P3137705370058416683.Spec : Prop :=
  ∀ n, P3137705370058416683.a n = A002441 (n + 1)

end A002441

/-! ## A002441.P11619154917684525669

`A007318(val(∏{p}[n, #], 2))*A007094((n+1)^2)`
-/

namespace A002441.P11619154917684525669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 2) * A007094 ((n + 1) ^ 2)

end

end A002441.P11619154917684525669

namespace A002441

/-- `A007318(val(∏{p}[n, #], 2))*A007094((n+1)^2)` -/
def P11619154917684525669.Spec : Prop :=
  ∀ n, P11619154917684525669.a n = A002441 (n + 1)

end A002441

/-! ## A002441.P6557377338069805445

`ceil(1/A000041(n))*A007094(∑[n+1+n])`
-/

namespace A002441.P6557377338069805445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000041 n : ℚ)⌉ * A007094 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002441.P6557377338069805445

namespace A002441

/-- `ceil(1/A000041(n))*A007094(∑[n+1+n])` -/
def P6557377338069805445.Spec : Prop :=
  ∀ n, P6557377338069805445.a n = A002441 (n + 1)

end A002441

/-! ## A002441.P1394980903058031945

`A007094(∑[2*n+1])+A008683(20*(n+1))`
-/

namespace A002441.P1394980903058031945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (∑ j ∈ Finset.range (n + 1), f1 j) + A008683 (20 * (n + 1))

end

end A002441.P1394980903058031945

namespace A002441

/-- `A007094(∑[2*n+1])+A008683(20*(n+1))` -/
def P1394980903058031945.Spec : Prop :=
  ∀ n, P1394980903058031945.a n = A002441 (n + 1)

end A002441

/-! ## A002441.P10595115968509015146

`A007094(∑[2*n+1])^A014963(A016825(n))`
-/

namespace A002441.P10595115968509015146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007094 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A014963 (A016825 n).toNat : ℤ)

end

end A002441.P10595115968509015146

namespace A002441

/-- `A007094(∑[2*n+1])^A014963(A016825(n))` -/
def P10595115968509015146.Spec : Prop :=
  ∀ n, P10595115968509015146.a n = (A002441 (n + 1) : ℚ)

end A002441

/-! ## A002441.P16739462092973828224

`A003557(A000040(n+1))*A007094((n+1)^2)`
-/

namespace A002441.P16739462092973828224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000040 (n + 1)).toNat * A007094 ((n + 1) ^ 2)

end

end A002441.P16739462092973828224

namespace A002441

/-- `A003557(A000040(n+1))*A007094((n+1)^2)` -/
def P16739462092973828224.Spec : Prop :=
  ∀ n, P16739462092973828224.a n = A002441 (n + 1)

end A002441

/-!
# A002442: Squares written in base 9.

The programs for A002442, the canonical program `A002442.P13203077275270554307` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002442 has offset 1).

The definition of A002442 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007095, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002442.P13203077275270554307

`A007095(A000290(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A002442

/-- `A007095(A000290(n+1))` -/
def P13203077275270554307.Spec : Prop :=
  ∀ n, P13203077275270554307.a n = A002442 (n + 1)

theorem P13203077275270554307.correct : P13203077275270554307.Spec := by
  intro n
  simp only [A002442, Nat.add_sub_cancel]

end A002442

/-! ## A002442.P11302205658028791800

`A007095((n+1)²)`
-/

namespace A002442.P11302205658028791800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 ((n + 1) ^ 2)

end

end A002442.P11302205658028791800

namespace A002442

/-- `A007095((n+1)²)` -/
def P11302205658028791800.Spec : Prop :=
  ∀ n, P11302205658028791800.a n = A002442 (n + 1)

end A002442

/-! ## A002442.P7216153232327858262

`A037479((n+1)²)`
-/

namespace A002442.P7216153232327858262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 ((n + 1) ^ 2)

end

end A002442.P7216153232327858262

namespace A002442

/-- `A037479((n+1)²)` -/
def P7216153232327858262.Spec : Prop :=
  ∀ n, P7216153232327858262.a n = A002442 (n + 1)

end A002442

/-! ## A002442.P11219932772208825244

`record[A007095((1-n)²)]`
-/

namespace A002442.P11219932772208825244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002442.P11219932772208825244

namespace A002442

/-- `record[A007095((1-n)²)]` -/
def P11219932772208825244.Spec : Prop :=
  ∀ n, P11219932772208825244.a n = A002442 (n + 1)

end A002442

/-! ## A002442.P5876599364092089268

`∑[abs(Δ[A007095(n²)])]`
-/

namespace A002442.P5876599364092089268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002442.P5876599364092089268

namespace A002442

/-- `∑[abs(Δ[A007095(n²)])]` -/
def P5876599364092089268.Spec : Prop :=
  ∀ n, P5876599364092089268.a n = A002442 (n + 1)

end A002442

/-! ## A002442.P11176924459891825843

`record[A037479(A286547(n)²)]`
-/

namespace A002442.P11176924459891825843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (A286547 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002442.P11176924459891825843

namespace A002442

/-- `record[A037479(A286547(n)²)]` -/
def P11176924459891825843.Spec : Prop :=
  ∀ n, P11176924459891825843.a n = A002442 (n + 1)

end A002442

/-! ## A002442.P12799185214782964387

`record[A037479(A331745(n)²)]`
-/

namespace A002442.P12799185214782964387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (A331745 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002442.P12799185214782964387

namespace A002442

/-- `record[A037479(A331745(n)²)]` -/
def P12799185214782964387.Spec : Prop :=
  ∀ n, P12799185214782964387.a n = A002442 (n + 1)

end A002442

/-! ## A002442.P14720289384349610122

`record[A037479(A236104(n+1))]`
-/

namespace A002442.P14720289384349610122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (A236104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002442.P14720289384349610122

namespace A002442

/-- `record[A037479(A236104(n+1))]` -/
def P14720289384349610122.Spec : Prop :=
  ∀ n, P14720289384349610122.a n = A002442 (n + 1)

end A002442

/-! ## A002442.P6414307166798697143

`A000027(A007095(xor(n, -1)²))`
-/

namespace A002442.P6414307166798697143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A007095 (Int.xor (n : ℤ) (-1) ^ 2).toNat).toNat

end

end A002442.P6414307166798697143

namespace A002442

/-- `A000027(A007095(xor(n, -1)²))` -/
def P6414307166798697143.Spec : Prop :=
  ∀ n, P6414307166798697143.a n = A002442 (n + 1)

end A002442

/-! ## A002442.P6238703767819859820

`∑[-Δ[-A007095(A000290(n))]]`
-/

namespace A002442.P6238703767819859820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A007095 (A000290 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002442.P6238703767819859820

namespace A002442

/-- `∑[-Δ[-A007095(A000290(n))]]` -/
def P6238703767819859820.Spec : Prop :=
  ∀ n, P6238703767819859820.a n = A002442 (n + 1)

end A002442

/-! ## A002442.P15113302887684973943

`∑{d}[A007095((n+1)^2), A000010(#)]`
-/

namespace A002442.P15113302887684973943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A002442.P15113302887684973943

namespace A002442

/-- `∑{d}[A007095((n+1)^2), A000010(#)]` -/
def P15113302887684973943.Spec : Prop :=
  ∀ n, P15113302887684973943.a n = A002442 (n + 1)

end A002442

/-!
# A002443: Numerator in Feinler's formula for unsigned Bernoulli number |B_{2n}|.

The programs for A002443, there is no canonical definition to state claims against.
-/

/-! ## A002443.P17914743042130511217

`∏{p}[A335951(A107360(n+1)), #]`
-/

namespace A002443.P17914743042130511217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335951 (A107360 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A002443.P17914743042130511217

/-! ## A002443.P7395375193484671516

`A167614(A267007(a(n-1)))+1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A002443.P7395375193484671516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 3] fun n a =>
  A167614 (A267007 (a (n - 1)).toNat).toNat + 1

end

end A002443.P7395375193484671516

/-! ## A002443.P12996524024261228165

`A332297(A000111(n))*A332300(n)`
-/

namespace A002443.P12996524024261228165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332297 (A000111 n).toNat * A332300 n

end

end A002443.P12996524024261228165

/-!
# A002444: Denominator in Feinler's formula for unsigned Bernoulli number |B_{2n}|.

The programs for A002444, the canonical program `A002444.P12837809495973367521` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002444 has offset 0).

The definition of A002444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4560 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002444.P12837809495973367521

`(2*n+1)*A363596(2*n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A002444

/-- `(2*n+1)*A363596(2*n)` -/
def P12837809495973367521.Spec : Prop :=
  ∀ n, P12837809495973367521.a n = A002444 n

theorem P12837809495973367521.correct : P12837809495973367521.Spec := by
  intro n
  simp only [A002444]

end A002444

/-! ## A002444.P813139497371733718

`∑[4*n+1]*A266911(n)`
-/

namespace A002444.P813139497371733718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A266911 n

end

end A002444.P813139497371733718

namespace A002444

/-- `∑[4*n+1]*A266911(n)` -/
def P813139497371733718.Spec : Prop :=
  ∀ n, P813139497371733718.a n = A002444 n

end A002444

/-! ## A002444.P4570893438083912006

`lcm(A006233(2*n), A261274(n))`
-/

namespace A002444.P4570893438083912006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006233 (2 * n)) (A261274 n)

end

end A002444.P4570893438083912006

namespace A002444

/-- `lcm(A006233(2*n), A261274(n))` -/
def P4570893438083912006.Spec : Prop :=
  ∀ n, (P4570893438083912006.a n : ℤ) = A002444 n

end A002444

/-! ## A002444.P15805770202442997338

`A091137(2*n)/A000142(2*n)`
-/

namespace A002444.P15805770202442997338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091137 (2 * n) : ℚ) / (A000142 (2 * n) : ℚ)

end

end A002444.P15805770202442997338

namespace A002444

/-- `A091137(2*n)/A000142(2*n)` -/
def P15805770202442997338.Spec : Prop :=
  ∀ n, P15805770202442997338.a n = (A002444 n : ℚ)

end A002444

/-! ## A002444.P9966154521897922264

`A006519(A002790(n))*A261274(n)`
-/

namespace A002444.P9966154521897922264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A002790 n).toNat * A261274 n

end

end A002444.P9966154521897922264

namespace A002444

/-- `A006519(A002790(n))*A261274(n)` -/
def P9966154521897922264.Spec : Prop :=
  ∀ n, P9966154521897922264.a n = A002444 n

end A002444

/-!
# A002445: Denominators of Bernoulli numbers B_{2n}.

The programs for A002445, the canonical program `A002445.P10846769026289059065` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002445 has offset 0).

The definition of A002445 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002445.P10846769026289059065

`A027642(2*n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A002445

/-- `A027642(2*n)` -/
def P10846769026289059065.Spec : Prop :=
  ∀ n, P10846769026289059065.a n = A002445 n

theorem P10846769026289059065.correct : P10846769026289059065.Spec := by
  intro n
  simp only [A002445]

end A002445

/-! ## A002445.P5713926147947797584

`A122553(n)*A277087(n)`
-/

namespace A002445.P5713926147947797584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n * A277087 n

end

end A002445.P5713926147947797584

namespace A002445

/-- `A122553(n)*A277087(n)` -/
def P5713926147947797584.Spec : Prop :=
  ∀ n, P5713926147947797584.a n = A002445 n

end A002445

/-! ## A002445.P2592422259602932825

`gcd(A006863(n), A326580(n))`
-/

namespace A002445.P2592422259602932825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006863 n) (A326580 n)

end

end A002445.P2592422259602932825

namespace A002445

/-- `gcd(A006863(n), A326580(n))` -/
def P2592422259602932825.Spec : Prop :=
  ∀ n, (P2592422259602932825.a n : ℤ) = A002445 n

end A002445

/-! ## A002445.P1022730608905020925

`A106458(2*n)`
-/

namespace A002445.P1022730608905020925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (2 * n)

end

end A002445.P1022730608905020925

namespace A002445

/-- `A106458(2*n)` -/
def P1022730608905020925.Spec : Prop :=
  ∀ n, P1022730608905020925.a n = A002445 n

end A002445

/-! ## A002445.P6520337601466425496

`A141056(2*n)`
-/

namespace A002445.P6520337601466425496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (2 * n)

end

end A002445.P6520337601466425496

namespace A002445

/-- `A141056(2*n)` -/
def P6520337601466425496.Spec : Prop :=
  ∀ n, P6520337601466425496.a n = A002445 n

end A002445

/-! ## A002445.P243273657848325224

`A176591(2*n)`
-/

namespace A002445.P243273657848325224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176591 (2 * n)

end

end A002445.P243273657848325224

namespace A002445

/-- `A176591(2*n)` -/
def P243273657848325224.Spec : Prop :=
  ∀ n, P243273657848325224.a n = A002445 n

end A002445

/-! ## A002445.P6531256923790772925

`A051717(A014601(n))`
-/

namespace A002445.P6531256923790772925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A014601 n).toNat

end

end A002445.P6531256923790772925

namespace A002445

/-- `A051717(A014601(n))` -/
def P6531256923790772925.Spec : Prop :=
  ∀ n, P6531256923790772925.a n = A002445 n

end A002445

/-! ## A002445.P18246344063408227077

`A051717(A047414(n+1))`
-/

namespace A002445.P18246344063408227077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A047414 (n + 1)).toNat

end

end A002445.P18246344063408227077

namespace A002445

/-- `A051717(A047414(n+1))` -/
def P18246344063408227077.Spec : Prop :=
  ∀ n, P18246344063408227077.a n = A002445 n

end A002445

/-! ## A002445.P15990419935230659973

`A051717(A047444(n+1))`
-/

namespace A002445.P15990419935230659973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A047444 (n + 1)).toNat

end

end A002445.P15990419935230659973

namespace A002445

/-- `A051717(A047444(n+1))` -/
def P15990419935230659973.Spec : Prop :=
  ∀ n, P15990419935230659973.a n = A002445 n

end A002445

/-! ## A002445.P10467929829337019424

`A051717(A047485(n+1))`
-/

namespace A002445.P10467929829337019424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A047485 (n + 1)).toNat

end

end A002445.P10467929829337019424

namespace A002445

/-- `A051717(A047485(n+1))` -/
def P10467929829337019424.Spec : Prop :=
  ∀ n, P10467929829337019424.a n = A002445 n

end A002445

/-! ## A002445.P18085064205088611184

`A051717(A227148(n+1))`
-/

namespace A002445.P18085064205088611184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A227148 (n + 1)).toNat

end

end A002445.P18085064205088611184

namespace A002445

/-- `A051717(A227148(n+1))` -/
def P18085064205088611184.Spec : Prop :=
  ∀ n, P18085064205088611184.a n = A002445 n

end A002445

/-! ## A002445.P1924526395949244294

`A051717(A003815(2*n))`
-/

namespace A002445.P1924526395949244294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A003815 (2 * n)).toNat

end

end A002445.P1924526395949244294

namespace A002445

/-- `A051717(A003815(2*n))` -/
def P1924526395949244294.Spec : Prop :=
  ∀ n, P1924526395949244294.a n = A002445 n

end A002445

/-! ## A002445.P4613137637324391354

`A326580(n)%A140812(n)`
-/

namespace A002445.P4613137637324391354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326580 n) (A140812 n)

end

end A002445.P4613137637324391354

namespace A002445

/-- `A326580(n)%A140812(n)` -/
def P4613137637324391354.Spec : Prop :=
  ∀ n, P4613137637324391354.a n = A002445 n

end A002445

/-! ## A002445.P8614129664687357997

`A051717(A000035(n)+2*n)`
-/

namespace A002445.P8614129664687357997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A000035 n + (2 * n : ℤ)).toNat

end

end A002445.P8614129664687357997

namespace A002445

/-- `A051717(A000035(n)+2*n)` -/
def P8614129664687357997.Spec : Prop :=
  ∀ n, P8614129664687357997.a n = A002445 n

end A002445

/-! ## A002445.P5351503078857611707

`A051717(n*(A063524(n)+2))`
-/

namespace A002445.P5351503078857611707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 ((n : ℤ) * (A063524 n + 2)).toNat

end

end A002445.P5351503078857611707

namespace A002445

/-- `A051717(n*(A063524(n)+2))` -/
def P5351503078857611707.Spec : Prop :=
  ∀ n, P5351503078857611707.a n = A002445 n

end A002445

/-! ## A002445.P17242669619871547224

`A051717(A001969(n+1))`
-/

namespace A002445.P17242669619871547224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A001969 (n + 1)).toNat

end

end A002445.P17242669619871547224

namespace A002445

/-- `A051717(A001969(n+1))` -/
def P17242669619871547224.Spec : Prop :=
  ∀ n, P17242669619871547224.a n = A002445 n

end A002445

/-! ## A002445.P3419130480294245858

`A051717(A047231(n+1))`
-/

namespace A002445.P3419130480294245858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A047231 (n + 1)).toNat

end

end A002445.P3419130480294245858

namespace A002445

/-- `A051717(A047231(n+1))` -/
def P3419130480294245858.Spec : Prop :=
  ∀ n, P3419130480294245858.a n = A002445 n

end A002445

/-! ## A002445.P12451127924230673925

`A051717(A047271(n+1))`
-/

namespace A002445.P12451127924230673925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A047271 (n + 1)).toNat

end

end A002445.P12451127924230673925

namespace A002445

/-- `A051717(A047271(n+1))` -/
def P12451127924230673925.Spec : Prop :=
  ∀ n, P12451127924230673925.a n = A002445 n

end A002445

/-! ## A002445.P4075546238549474878

`A051717(A227130(n+1))`
-/

namespace A002445.P4075546238549474878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (A227130 (n + 1)).toNat

end

end A002445.P4075546238549474878

namespace A002445

/-- `A051717(A227130(n+1))` -/
def P4075546238549474878.Spec : Prop :=
  ∀ n, P4075546238549474878.a n = A002445 n

end A002445

/-! ## A002445.P9498490276713163904

`A051717(2*n+1-A000007(n))`
-/

namespace A002445.P9498490276713163904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 ((2 * n + 1 : ℤ) - A000007 n).toNat

end

end A002445.P9498490276713163904

namespace A002445

/-- `A051717(2*n+1-A000007(n))` -/
def P9498490276713163904.Spec : Prop :=
  ∀ n, P9498490276713163904.a n = A002445 n

end A002445

/-!
# A002446: a(n) = 2^(2*n+1) - 2.

The programs for A002446, the canonical program `A002446.P10853448081415230219` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002446 has offset 0).

The definition of A002446 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2*n+1)-2` (program `A002446.P10853448081415230219`, by `A002446.P10853448081415230219.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002446.P11496901018271898902

`2*(4^n-1)`
-/

namespace A002446.P11496901018271898902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((4 ^ n : ℤ) - 1)

end

end A002446.P11496901018271898902

namespace A002446

/-- `2*(4^n-1)` -/
def P11496901018271898902.Spec : Prop :=
  ∀ n, P11496901018271898902.a n = A002446 n

end A002446

/-! ## A002446.P10853448081415230219

`2^(2*n+1)-2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002446

/-- `2^(2*n+1)-2` -/
def P10853448081415230219.Spec : Prop :=
  ∀ n, P10853448081415230219.a n = A002446 n

theorem P10853448081415230219.correct : P10853448081415230219.Spec := by
  intro n
  simp only [A002446]

end A002446

/-! ## A002446.P15926889578557845234

`lcm(2, 1-4^n)`
-/

namespace A002446.P15926889578557845234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - (4 ^ n : ℤ))

end

end A002446.P15926889578557845234

namespace A002446

/-- `lcm(2, 1-4^n)` -/
def P15926889578557845234.Spec : Prop :=
  ∀ n, (P15926889578557845234.a n : ℤ) = A002446 n

end A002446

/-! ## A002446.P13630677709444707735

`ogf(6x/(1-5x+4x^2))`
-/

namespace A002446.P13630677709444707735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -5, 4] n

end

end A002446.P13630677709444707735

namespace A002446

/-- `ogf(6x/(1-5x+4x^2))` -/
def P13630677709444707735.Spec : Prop :=
  ∀ n, P13630677709444707735.a n = A002446 n

end A002446

/-! ## A002446.P12194290037980650323

`record[2^xor(1, n)-2]`
-/

namespace A002446.P12194290037980650323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.xor 1 n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002446.P12194290037980650323

namespace A002446

/-- `record[2^xor(1, n)-2]` -/
def P12194290037980650323.Spec : Prop :=
  ∀ n, P12194290037980650323.a n = A002446 n

end A002446

/-! ## A002446.P5792903536080676583

`xor(-(2*4^n), -2)`
-/

namespace A002446.P5792903536080676583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(2 * 4 ^ n : ℤ)) (-2)

end

end A002446.P5792903536080676583

namespace A002446

/-- `xor(-(2*4^n), -2)` -/
def P5792903536080676583.Spec : Prop :=
  ∀ n, P5792903536080676583.a n = A002446 n

end A002446

/-! ## A002446.P15140092979948469287

`or(6, 4*a(n-1))` with `a(0)=0`
-/

namespace A002446.P15140092979948469287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 6 (4 * a (n - 1))

end

end A002446.P15140092979948469287

namespace A002446

/-- `or(6, 4*a(n-1))` -/
def P15140092979948469287.Spec : Prop :=
  ∀ n, (P15140092979948469287.a n : ℤ) = A002446 n

end A002446

/-! ## A002446.P2128854495361927453

`∑[4*a(n-1)]` with `a(0)=0, a(1)=6`
-/

namespace A002446.P2128854495361927453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002446.P2128854495361927453

namespace A002446

/-- `∑[4*a(n-1)]` -/
def P2128854495361927453.Spec : Prop :=
  ∀ n, (P2128854495361927453.a n : ℤ) = A002446 n

end A002446

/-! ## A002446.P2080665913910334829

`record[-((-2)^(n+1)+2)]`
-/

namespace A002446.P2080665913910334829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-2) ^ (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002446.P2080665913910334829

namespace A002446

/-- `record[-((-2)^(n+1)+2)]` -/
def P2080665913910334829.Spec : Prop :=
  ∀ n, P2080665913910334829.a n = A002446 n

end A002446

/-! ## A002446.P10153496442087680356

`∑[a(n-1)/(1/2)²]` with `a(0)=0, a(1)=6`
-/

namespace A002446.P10153496442087680356
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002446.P10153496442087680356

namespace A002446

/-- `∑[a(n-1)/(1/2)²]` -/
def P10153496442087680356.Spec : Prop :=
  ∀ n, P10153496442087680356.a n = (A002446 n : ℚ)

end A002446

/-! ## A002446.P18387671713956432548

`A101622(2*n)`
-/

namespace A002446.P18387671713956432548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101622 (2 * n)

end

end A002446.P18387671713956432548

namespace A002446

/-- `A101622(2*n)` -/
def P18387671713956432548.Spec : Prop :=
  ∀ n, P18387671713956432548.a n = A002446 n

end A002446

/-!
# A002447: Expansion of 1/(1-2*x^2-3*x^3).

The programs for A002447, the canonical program `A002447.P6467090130734221289` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002447 has offset 0).

The definition of A002447 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x^2-3x^3))` (program `A002447.P6467090130734221289`, by `A002447.P6467090130734221289.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002447.P6467090130734221289

`ogf(1/(1-2x^2-3x^3))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002447

/-- `ogf(1/(1-2x^2-3x^3))` -/
def P6467090130734221289.Spec : Prop :=
  ∀ n, P6467090130734221289.a n = A002447 n

theorem P6467090130734221289.correct : P6467090130734221289.Spec := by
  intro n
  simp only [A002447]

end A002447

/-! ## A002447.P13780943063920679385

`2*a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A002447.P13780943063920679385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  2 * a (n - 2) + 3 * a (n - 3)

end

end A002447.P13780943063920679385

namespace A002447

/-- `2*a(n-2)+3*a(n-3)` -/
def P13780943063920679385.Spec : Prop :=
  ∀ n, (P13780943063920679385.a n : ℤ) = A002447 n

end A002447

/-!
# A002448: Expansion of Jacobi theta function theta_4(x).

The programs for A002448, the canonical program `A002448.P16712108532167547424` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002448 has offset 0).

The definition of A002448 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000122, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002448.P16712108532167547424

`(-1)^n*A000122(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002448

/-- `(-1)^n*A000122(n)` -/
def P16712108532167547424.Spec : Prop :=
  ∀ n, P16712108532167547424.a n = A002448 n

theorem P16712108532167547424.correct : P16712108532167547424.Spec := by
  intro n
  simp only [A002448]

end A002448

/-! ## A002448.P11965543556391012348

`(char[(n+1)²]+char[n²])*(-1)^n`
-/

namespace A002448.P11965543556391012348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ) * (-1) ^ n

end

end A002448.P11965543556391012348

namespace A002448

/-- `(char[(n+1)²]+char[n²])*(-1)^n` -/
def P11965543556391012348.Spec : Prop :=
  ∀ n, P11965543556391012348.a n = A002448 n

end A002448

/-! ## A002448.P505481653816312009

`dr(char[(n+1)²]+char[n²])/(-1)^n`
-/

namespace A002448.P505481653816312009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ) : ℚ) / ((-1) ^ n : ℚ)

end

end A002448.P505481653816312009

namespace A002448

/-- `dr(char[(n+1)²]+char[n²])/(-1)^n` -/
def P505481653816312009.Spec : Prop :=
  ∀ n, P505481653816312009.a n = (A002448 n : ℚ)

end A002448

/-! ## A002448.P15642943532394467936

`(char[(n+1)²]+char[n²])/Δ[val(n+1, 2)]`
-/

namespace A002448.P15642943532394467936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℚ) / ((f3 (n + 1) : ℤ) - (f3 n : ℤ) : ℚ)

end

end A002448.P15642943532394467936

namespace A002448

/-- `(char[(n+1)²]+char[n²])/Δ[val(n+1, 2)]` -/
def P15642943532394467936.Spec : Prop :=
  ∀ n, P15642943532394467936.a n = (A002448 n : ℚ)

end A002448

/-! ## A002448.P4253496836167429139

`(char[(n+1)²]+char[n²])/ratio[1-and(2, n)]`
-/

namespace A002448.P4253496836167429139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℚ) / ((f3 (n + 1) : ℚ) / (f3 n : ℚ))

end

end A002448.P4253496836167429139

namespace A002448

/-- `(char[(n+1)²]+char[n²])/ratio[1-and(2, n)]` -/
def P4253496836167429139.Spec : Prop :=
  ∀ n, P4253496836167429139.a n = (A002448 n : ℚ)

end A002448

/-! ## A002448.P8599481604367437616

`(char[(n+1)²]+char[n²])/(-1)^val(n+1, 2)`
-/

namespace A002448.P8599481604367437616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℚ) / ((-1) ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A002448.P8599481604367437616

namespace A002448

/-- `(char[(n+1)²]+char[n²])/(-1)^val(n+1, 2)` -/
def P8599481604367437616.Spec : Prop :=
  ∀ n, P8599481604367437616.a n = (A002448 n : ℚ)

end A002448

/-! ## A002448.P13682303847119047704

`(char[(n+1)²]+char[n²])/Δ[or(n+2, 2*(n+1))]%2`
-/

namespace A002448.P13682303847119047704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 2) (2 * (n + 1))

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℚ) / (Int.tmod ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) 2 : ℚ)

end

end A002448.P13682303847119047704

namespace A002448

/-- `(char[(n+1)²]+char[n²])/Δ[or(n+2, 2*(n+1))]%2` -/
def P13682303847119047704.Spec : Prop :=
  ∀ n, P13682303847119047704.a n = (A002448 n : ℚ)

end A002448

/-! ## A002448.P10587824851609371822

`A212885(n)%4`
-/

namespace A002448.P10587824851609371822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212885 n) 4

end

end A002448.P10587824851609371822

namespace A002448

/-- `A212885(n)%4` -/
def P10587824851609371822.Spec : Prop :=
  ∀ n, P10587824851609371822.a n = A002448 n

end A002448

/-! ## A002448.P6948888529915802303

`A213384(n)%4`
-/

namespace A002448.P6948888529915802303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213384 n) 4

end

end A002448.P6948888529915802303

namespace A002448

/-- `A213384(n)%4` -/
def P6948888529915802303.Spec : Prop :=
  ∀ n, P6948888529915802303.a n = A002448 n

end A002448

/-! ## A002448.P16002152954501930751

`A224822(n)%4`
-/

namespace A002448.P16002152954501930751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224822 n) 4

end

end A002448.P16002152954501930751

namespace A002448

/-- `A224822(n)%4` -/
def P16002152954501930751.Spec : Prop :=
  ∀ n, P16002152954501930751.a n = A002448 n

end A002448

/-! ## A002448.P16222130766652602267

`A000122(n)/(-1)^n`
-/

namespace A002448.P16222130766652602267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 n : ℚ) / ((-1) ^ n : ℚ)

end

end A002448.P16222130766652602267

namespace A002448

/-- `A000122(n)/(-1)^n` -/
def P16222130766652602267.Spec : Prop :=
  ∀ n, P16222130766652602267.a n = (A002448 n : ℚ)

end A002448

/-! ## A002448.P16387508338950852194

`A000007(n)-2*A258998(n)`
-/

namespace A002448.P16387508338950852194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - 2 * A258998 n

end

end A002448.P16387508338950852194

namespace A002448

/-- `A000007(n)-2*A258998(n)` -/
def P16387508338950852194.Spec : Prop :=
  ∀ n, P16387508338950852194.a n = A002448 n

end A002448

/-! ## A002448.P14562775392052002831

`A000122(n)*A000143(n)/A035016(n)`
-/

namespace A002448.P14562775392052002831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 n * A000143 n : ℚ) / (A035016 n : ℚ)

end

end A002448.P14562775392052002831

namespace A002448

/-- `A000122(n)*A000143(n)/A035016(n)` -/
def P14562775392052002831.Spec : Prop :=
  ∀ n, P14562775392052002831.a n = (A002448 n : ℚ)

end A002448

/-! ## A002448.P7268359429573861815

`A000009(n)*A000122(n)/A081360(n)`
-/

namespace A002448.P7268359429573861815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n * A000122 n : ℚ) / (A081360 n : ℚ)

end

end A002448.P7268359429573861815

namespace A002448

/-- `A000009(n)*A000122(n)/A081360(n)` -/
def P7268359429573861815.Spec : Prop :=
  ∀ n, P7268359429573861815.a n = (A002448 n : ℚ)

end A002448

/-! ## A002448.P5431356384248113882

`A000122(n)*A004011(n)/A103640(n)`
-/

namespace A002448.P5431356384248113882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 n * A004011 n : ℚ) / (A103640 n : ℚ)

end

end A002448.P5431356384248113882

namespace A002448

/-- `A000122(n)*A004011(n)/A103640(n)` -/
def P5431356384248113882.Spec : Prop :=
  ∀ n, P5431356384248113882.a n = (A002448 n : ℚ)

end A002448

/-! ## A002448.P14965779153501701659

`A000122(n)*A029839(n)/A082304(n)`
-/

namespace A002448.P14965779153501701659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 n * A029839 n : ℚ) / (A082304 n : ℚ)

end

end A002448.P14965779153501701659

namespace A002448

/-- `A000122(n)*A029839(n)/A082304(n)` -/
def P14965779153501701659.Spec : Prop :=
  ∀ n, P14965779153501701659.a n = (A002448 n : ℚ)

end A002448

/-! ## A002448.P15134306632075610161

`A000122(n)*A036018(n)/A101195(n)`
-/

namespace A002448.P15134306632075610161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 n * A036018 n : ℚ) / (A101195 n : ℚ)

end

end A002448.P15134306632075610161

namespace A002448

/-- `A000122(n)*A036018(n)/A101195(n)` -/
def P15134306632075610161.Spec : Prop :=
  ∀ n, P15134306632075610161.a n = (A002448 n : ℚ)

end A002448

/-! ## A002448.P16276621158303165064

`A000122(n)*A132217(n)/A262160(n)`
-/

namespace A002448.P16276621158303165064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 n * A132217 n : ℚ) / (A262160 n : ℚ)

end

end A002448.P16276621158303165064

namespace A002448

/-- `A000122(n)*A132217(n)/A262160(n)` -/
def P16276621158303165064.Spec : Prop :=
  ∀ n, P16276621158303165064.a n = (A002448 n : ℚ)

end A002448

/-! ## A002448.P9746737934497067122

`A000122(n)*A128770(n)/A261988(n)`
-/

namespace A002448.P9746737934497067122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 n * A128770 n : ℚ) / (A261988 n : ℚ)

end

end A002448.P9746737934497067122

namespace A002448

/-- `A000122(n)*A128770(n)/A261988(n)` -/
def P9746737934497067122.Spec : Prop :=
  ∀ n, P9746737934497067122.a n = (A002448 n : ℚ)

end A002448

/-! ## A002448.P18023363679051066645

`A000122(n)*A007262(n)/A132107(n)`
-/

namespace A002448.P18023363679051066645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 n * A007262 n : ℚ) / (A132107 n : ℚ)

end

end A002448.P18023363679051066645

namespace A002448

/-- `A000122(n)*A007262(n)/A132107(n)` -/
def P18023363679051066645.Spec : Prop :=
  ∀ n, P18023363679051066645.a n = (A002448 n : ℚ)

end A002448

/-!
# A002449: Number of different types of binary trees of height n.

The programs for A002449, there is no canonical definition to state claims against.
-/

/-! ## A002449.P2866969676909167520

`abs(Δ[A002577(abs(1-n))])`
-/

namespace A002449.P2866969676909167520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002577 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A002449.P2866969676909167520

/-! ## A002449.P11046198333117034079

`A000123(A011782(n)-1)`
-/

namespace A002449.P11046198333117034079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (A011782 n - 1).toNat

end

end A002449.P11046198333117034079

/-! ## A002449.P10763652080153484659

`A000123(floor(A000225(n)/2))`
-/

namespace A002449.P10763652080153484659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 ⌊(A000225 n : ℚ) / 2⌋.toNat

end

end A002449.P10763652080153484659

/-! ## A002449.P2053818178512972316

`A000123(A000079(n)-A094373(n))`
-/

namespace A002449.P2053818178512972316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (A000079 n - A094373 n).toNat

end

end A002449.P2053818178512972316

/-! ## A002449.P14636448657810906073

`A000123(A000225(n)%A011782(n))`
-/

namespace A002449.P14636448657810906073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (Int.tmod (A000225 n) (A011782 n)).toNat

end

end A002449.P14636448657810906073

/-!
# A002450: a(n) = (4^n - 1)/3.

The programs for A002450, the canonical program `A002450.P11965591501849022414` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002450 has offset 0).

The definition of A002450 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4^n-1)/3` (program `A002450.P10385940704750983778`, by `A002450.P10385940704750983778.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002450.P10385940704750983778

`(4^n-1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002450.P10385940704750983778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) - 1 : ℚ) / 3

end

end A002450.P10385940704750983778

namespace A002450

/-- `(4^n-1)/3` -/
def P10385940704750983778.Spec : Prop :=
  ∀ n, P10385940704750983778.a n = (A002450 n : ℚ)

theorem P10385940704750983778.correct : P10385940704750983778.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A002450, Nat.add_sub_cancel, A002450.P10385940704750983778.a, A002450.P11965591501849022414.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A002450, Nat.add_sub_cancel, A002450.P10385940704750983778.a, A002450.P11965591501849022414.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002450

/-! ## A002450.P7476001016518297290

`4^(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A002450.P7476001016518297290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + a (n - 1)

end

end A002450.P7476001016518297290

namespace A002450

/-- `4^(n-1)+a(n-1)` -/
def P7476001016518297290.Spec : Prop :=
  ∀ n, P7476001016518297290.a n = (A002450 n : ℚ)

end A002450

/-! ## A002450.P11965591501849022414

`5*a(n-1)-4*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002450

/-- `5*a(n-1)-4*a(n-2)` -/
def P11965591501849022414.Spec : Prop :=
  ∀ n, P11965591501849022414.a n = A002450 n

theorem P11965591501849022414.correct : P11965591501849022414.Spec := by
  intro n
  simp only [A002450]

end A002450

/-! ## A002450.P3580453206962554826

`A047849(n)-1`
-/

namespace A002450.P3580453206962554826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n - 1

end

end A002450.P3580453206962554826

namespace A002450

/-- `A047849(n)-1` -/
def P3580453206962554826.Spec : Prop :=
  ∀ n, P3580453206962554826.a n = A002450 n

end A002450

/-! ## A002450.P4176982354140343766

`A163834(n)-2`
-/

namespace A002450.P4176982354140343766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163834 n - 2

end

end A002450.P4176982354140343766

namespace A002450

/-- `A163834(n)-2` -/
def P4176982354140343766.Spec : Prop :=
  ∀ n, P4176982354140343766.a n = A002450 n

end A002450

/-! ## A002450.P4856278636830399008

`A001045(2*n)`
-/

namespace A002450.P4856278636830399008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * n)

end

end A002450.P4856278636830399008

namespace A002450

/-- `A001045(2*n)` -/
def P4856278636830399008.Spec : Prop :=
  ∀ n, P4856278636830399008.a n = A002450 n

end A002450

/-! ## A002450.P13157123225211469298

`A155701(n)-3`
-/

namespace A002450.P13157123225211469298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155701 n - 3

end

end A002450.P13157123225211469298

namespace A002450

/-- `A155701(n)-3` -/
def P13157123225211469298.Spec : Prop :=
  ∀ n, P13157123225211469298.a n = A002450 n

end A002450

/-! ## A002450.P6919700096220911870

`A163868(n)-4`
-/

namespace A002450.P6919700096220911870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163868 n - 4

end

end A002450.P6919700096220911870

namespace A002450

/-- `A163868(n)-4` -/
def P6919700096220911870.Spec : Prop :=
  ∀ n, P6919700096220911870.a n = A002450 n

end A002450

/-! ## A002450.P12190280609541983357

`A156605(n)-7`
-/

namespace A002450.P12190280609541983357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156605 n - 7

end

end A002450.P12190280609541983357

namespace A002450

/-- `A156605(n)-7` -/
def P12190280609541983357.Spec : Prop :=
  ∀ n, P12190280609541983357.a n = A002450 n

end A002450

/-! ## A002450.P7314586487571270113

`ogf(x/(1-5x+4x^2))`
-/

namespace A002450.P7314586487571270113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -5, 4] n

end

end A002450.P7314586487571270113

namespace A002450

/-- `ogf(x/(1-5x+4x^2))` -/
def P7314586487571270113.Spec : Prop :=
  ∀ n, P7314586487571270113.a n = A002450 n

end A002450

/-! ## A002450.P9435195903777574999

`record[round((-2)^n/3)]`
-/

namespace A002450.P9435195903777574999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((-2) ^ n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002450.P9435195903777574999

namespace A002450

/-- `record[round((-2)^n/3)]` -/
def P9435195903777574999.Spec : Prop :=
  ∀ n, P9435195903777574999.a n = A002450 n

end A002450

/-! ## A002450.P11764945014487922306

`1+4*a(n-1)` with `a(0)=0`
-/

namespace A002450.P11764945014487922306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + 4 * a (n - 1)

end

end A002450.P11764945014487922306

namespace A002450

/-- `1+4*a(n-1)` -/
def P11764945014487922306.Spec : Prop :=
  ∀ n, (P11764945014487922306.a n : ℤ) = A002450 n

end A002450

/-! ## A002450.P12212580913138599559

`xor(2, (4^n+5)/3)`
-/

namespace A002450.P12212580913138599559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (SequenceMachineLib.roundAway ((4 ^ n + 5 : ℚ) / 3))

end

end A002450.P12212580913138599559

namespace A002450

/-- `xor(2, (4^n+5)/3)` -/
def P12212580913138599559.Spec : Prop :=
  ∀ n, P12212580913138599559.a n = A002450 n

end A002450

/-! ## A002450.P9316424626534934369

`lcm(4, a(n-1))+1` with `a(0)=0`
-/

namespace A002450.P9316424626534934369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 4 (a (n - 1)) + 1

end

end A002450.P9316424626534934369

namespace A002450

/-- `lcm(4, a(n-1))+1` -/
def P9316424626534934369.Spec : Prop :=
  ∀ n, (P9316424626534934369.a n : ℤ) = A002450 n

end A002450

/-! ## A002450.P13022915586176914502

`or(1, 4*a(n-1))` with `a(0)=0`
-/

namespace A002450.P13022915586176914502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (4 * a (n - 1))

end

end A002450.P13022915586176914502

namespace A002450

/-- `or(1, 4*a(n-1))` -/
def P13022915586176914502.Spec : Prop :=
  ∀ n, (P13022915586176914502.a n : ℤ) = A002450 n

end A002450

/-! ## A002450.P876835928245230231

`∑[4*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A002450.P876835928245230231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002450.P876835928245230231

namespace A002450

/-- `∑[4*a(n-1)]` -/
def P876835928245230231.Spec : Prop :=
  ∀ n, (P876835928245230231.a n : ℤ) = A002450 n

end A002450

/-! ## A002450.P16687112203005342905

`round(2^lcm(2, 2*n)/3)`
-/

namespace A002450.P16687112203005342905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ Nat.lcm 2 (2 * n) : ℚ) / 3)

end

end A002450.P16687112203005342905

namespace A002450

/-- `round(2^lcm(2, 2*n)/3)` -/
def P16687112203005342905.Spec : Prop :=
  ∀ n, P16687112203005342905.a n = A002450 n

end A002450

/-! ## A002450.P16619841112783591278

`round(4^gcd(n, 2*n)/3)`
-/

namespace A002450.P16619841112783591278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 ^ Nat.gcd n (2 * n) : ℚ) / 3)

end

end A002450.P16619841112783591278

namespace A002450

/-- `round(4^gcd(n, 2*n)/3)` -/
def P16619841112783591278.Spec : Prop :=
  ∀ n, P16619841112783591278.a n = A002450 n

end A002450

/-! ## A002450.P4066910432110823471

`5-4*(1-a(n-1))` with `a(0)=0`
-/

namespace A002450.P4066910432110823471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 - 4 * (1 - a (n - 1))

end

end A002450.P4066910432110823471

namespace A002450

/-- `5-4*(1-a(n-1))` -/
def P4066910432110823471.Spec : Prop :=
  ∀ n, P4066910432110823471.a n = A002450 n

end A002450

/-! ## A002450.P12590121757141072059

`or(4^(n-1), a(n-1))` with `a(0)=0`
-/

namespace A002450.P12590121757141072059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (SequenceMachineLib.roundAway ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1))

end

end A002450.P12590121757141072059

namespace A002450

/-- `or(4^(n-1), a(n-1))` -/
def P12590121757141072059.Spec : Prop :=
  ∀ n, P12590121757141072059.a n = A002450 n

end A002450

/-!
# A002451: Expansion of 1/((1-x)*(1-4*x)*(1-9*x)).

The programs for A002451, the canonical program `A002451.P3369278863301505239` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002451 has offset 0).

The definition of A002451 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-14x+49x^2-36x^3))` (program `A002451.P3369278863301505239`, by `A002451.P3369278863301505239.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002451.P3369278863301505239

`ogf(1/(1-14x+49x^2-36x^3))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002451

/-- `ogf(1/(1-14x+49x^2-36x^3))` -/
def P3369278863301505239.Spec : Prop :=
  ∀ n, P3369278863301505239.a n = A002451 n

theorem P3369278863301505239.correct : P3369278863301505239.Spec := by
  intro n
  simp only [A002451]

end A002451

/-! ## A002451.P15663564658898940830

`13*a(n-1)-36*a(n-2)+1` with `a(0)=1, a(1)=14`
-/

namespace A002451.P15663564658898940830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 14] fun n a =>
  13 * a (n - 1) - 36 * a (n - 2) + 1

end

end A002451.P15663564658898940830

namespace A002451

/-- `13*a(n-1)-36*a(n-2)+1` -/
def P15663564658898940830.Spec : Prop :=
  ∀ n, P15663564658898940830.a n = A002451 n

end A002451

/-! ## A002451.P9843922005426913548

`1/24-4^(n+2)/15+9^(n+2)/40`
-/

namespace A002451.P9843922005426913548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 24 - (4 ^ (n + 2) : ℚ) / 15 + (9 ^ (n + 2) : ℚ) / 40

end

end A002451.P9843922005426913548

namespace A002451

/-- `1/24-4^(n+2)/15+9^(n+2)/40` -/
def P9843922005426913548.Spec : Prop :=
  ∀ n, P9843922005426913548.a n = (A002451 n : ℚ)

end A002451

/-! ## A002451.P10415599214412621733

`A394882(Δ[n²])`
-/

namespace A002451.P10415599214412621733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394882 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002451.P10415599214412621733

namespace A002451

/-- `A394882(Δ[n²])` -/
def P10415599214412621733.Spec : Prop :=
  ∀ n, P10415599214412621733.a n = A002451 n

end A002451

/-! ## A002451.P2208997869017370896

`∑[∑[A277491(n)]]`
-/

namespace A002451.P2208997869017370896
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277491 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002451.P2208997869017370896

namespace A002451

/-- `∑[∑[A277491(n)]]` -/
def P2208997869017370896.Spec : Prop :=
  ∀ n, P2208997869017370896.a n = A002451 n

end A002451

/-! ## A002451.P12971351561446641859

`∑[A016153(n+1)]`
-/

namespace A002451.P12971351561446641859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002451.P12971351561446641859

namespace A002451

/-- `∑[A016153(n+1)]` -/
def P12971351561446641859.Spec : Prop :=
  ∀ n, P12971351561446641859.a n = A002451 n

end A002451

/-! ## A002451.P13272297085465465768

`∑[A015441(2*(n+1))]`
-/

namespace A002451.P13272297085465465768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002451.P13272297085465465768

namespace A002451

/-- `∑[A015441(2*(n+1))]` -/
def P13272297085465465768.Spec : Prop :=
  ∀ n, P13272297085465465768.a n = A002451 n

end A002451

/-! ## A002451.P16899960361182822555

`∑[A167910(2*(n+1))]`
-/

namespace A002451.P16899960361182822555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167910 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002451.P16899960361182822555

namespace A002451

/-- `∑[A167910(2*(n+1))]` -/
def P16899960361182822555.Spec : Prop :=
  ∀ n, P16899960361182822555.a n = A002451 n

end A002451

/-! ## A002451.P11984871362718452545

`∑[∑[A102901(2*n+1)+A102901(2*n)]]`
-/

namespace A002451.P11984871362718452545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102901 (2 * n + 1) + A102901 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002451.P11984871362718452545

namespace A002451

/-- `∑[∑[A102901(2*n+1)+A102901(2*n)]]` -/
def P11984871362718452545.Spec : Prop :=
  ∀ n, P11984871362718452545.a n = A002451 n

end A002451

/-! ## A002451.P2635070511149826481

`∑[∑[A133467(2*n+1)-A133467(2*n)]]`
-/

namespace A002451.P2635070511149826481
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133467 (2 * n + 1) - A133467 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002451.P2635070511149826481

namespace A002451

/-- `∑[∑[A133467(2*n+1)-A133467(2*n)]]` -/
def P2635070511149826481.Spec : Prop :=
  ∀ n, P2635070511149826481.a n = A002451 n

end A002451

/-!
# A002452: a(n) = (9^n - 1)/8.

The programs for A002452, the canonical program `A002452.P5938841596421156250` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002452 has offset 0).

The definition of A002452 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9^n-1)/8` (program `A002452.P15726424913037246278`, by `A002452.P15726424913037246278.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002452.P5938841596421156250

`9*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002452

/-- `9*a(n-1)+1` -/
def P5938841596421156250.Spec : Prop :=
  ∀ n, (P5938841596421156250.a n : ℤ) = A002452 n

theorem P5938841596421156250.correct : P5938841596421156250.Spec := by
  intro n
  simp only [A002452]

end A002452

/-! ## A002452.P15726424913037246278

`(9^n-1)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002452.P15726424913037246278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ n : ℤ) - 1 : ℚ) / 8

end

end A002452.P15726424913037246278

namespace A002452

/-- `(9^n-1)/8` -/
def P15726424913037246278.Spec : Prop :=
  ∀ n, P15726424913037246278.a n = (A002452 n : ℚ)

theorem P15726424913037246278.correct : P15726424913037246278.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A002452, Nat.add_sub_cancel, A002452.P15726424913037246278.a, A002452.P5938841596421156250.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A002452, Nat.add_sub_cancel, A002452.P15726424913037246278.a, A002452.P5938841596421156250.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002452

/-! ## A002452.P13682264098829266788

`ogf(x/(1-10x+9x^2))`
-/

namespace A002452.P13682264098829266788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -10, 9] n

end

end A002452.P13682264098829266788

namespace A002452

/-- `ogf(x/(1-10x+9x^2))` -/
def P13682264098829266788.Spec : Prop :=
  ∀ n, P13682264098829266788.a n = A002452 n

end A002452

/-! ## A002452.P15793721106430880593

`C(ceil(3^n/2), 2)`
-/

namespace A002452.P15793721106430880593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(3 ^ n : ℚ) / 2⌉.toNat 2

end

end A002452.P15793721106430880593

namespace A002452

/-- `C(ceil(3^n/2), 2)` -/
def P15793721106430880593.Spec : Prop :=
  ∀ n, (P15793721106430880593.a n : ℤ) = A002452 n

end A002452

/-! ## A002452.P17550066509847697955

`lcm(9, a(n-1))+1` with `a(0)=0`
-/

namespace A002452.P17550066509847697955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 9 (a (n - 1)) + 1

end

end A002452.P17550066509847697955

namespace A002452

/-- `lcm(9, a(n-1))+1` -/
def P17550066509847697955.Spec : Prop :=
  ∀ n, (P17550066509847697955.a n : ℤ) = A002452 n

end A002452

/-! ## A002452.P8612072176248636585

`∑[9*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A002452.P8612072176248636585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002452.P8612072176248636585

namespace A002452

/-- `∑[9*a(n-1)]` -/
def P8612072176248636585.Spec : Prop :=
  ∀ n, (P8612072176248636585.a n : ℤ) = A002452 n

end A002452

/-! ## A002452.P14049336740648268872

`10-9*(1-a(n-1))` with `a(0)=0`
-/

namespace A002452.P14049336740648268872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  10 - 9 * (1 - a (n - 1))

end

end A002452.P14049336740648268872

namespace A002452

/-- `10-9*(1-a(n-1))` -/
def P14049336740648268872.Spec : Prop :=
  ∀ n, P14049336740648268872.a n = A002452 n

end A002452

/-! ## A002452.P7149673092763987281

`a(n-1)+9^(n-1)` with `a(0)=0`
-/

namespace A002452.P7149673092763987281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (9 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A002452.P7149673092763987281

namespace A002452

/-- `a(n-1)+9^(n-1)` -/
def P7149673092763987281.Spec : Prop :=
  ∀ n, P7149673092763987281.a n = (A002452 n : ℚ)

end A002452

/-! ## A002452.P13777304943918446142

`round(∑[9^((n-1)%(n+2))])`
-/

namespace A002452.P13777304943918446142
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002452.P13777304943918446142

namespace A002452

/-- `round(∑[9^((n-1)%(n+2))])` -/
def P13777304943918446142.Spec : Prop :=
  ∀ n, P13777304943918446142.a n = A002452 n

end A002452

/-! ## A002452.P3064773773397496222

`a(n-1)/(1/3)²+1` with `a(0)=0`
-/

namespace A002452.P3064773773397496222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 + 1

end

end A002452.P3064773773397496222

namespace A002452

/-- `a(n-1)/(1/3)²+1` -/
def P3064773773397496222.Spec : Prop :=
  ∀ n, P3064773773397496222.a n = (A002452 n : ℚ)

end A002452

/-! ## A002452.P953605243812269890

`A047854(n)-1`
-/

namespace A002452.P953605243812269890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047854 n - 1

end

end A002452.P953605243812269890

namespace A002452

/-- `A047854(n)-1` -/
def P953605243812269890.Spec : Prop :=
  ∀ n, P953605243812269890.a n = A002452 n

end A002452

/-! ## A002452.P9131592192937081659

`A099583(2*n)`
-/

namespace A002452.P9131592192937081659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099583 (2 * n)

end

end A002452.P9131592192937081659

namespace A002452

/-- `A099583(2*n)` -/
def P9131592192937081659.Spec : Prop :=
  ∀ n, P9131592192937081659.a n = A002452 n

end A002452

/-! ## A002452.P5906163254255082185

`A152298(2*n)`
-/

namespace A002452.P5906163254255082185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152298 (2 * n)

end

end A002452.P5906163254255082185

namespace A002452

/-- `A152298(2*n)` -/
def P5906163254255082185.Spec : Prop :=
  ∀ n, P5906163254255082185.a n = A002452 n

end A002452

/-! ## A002452.P12990840086076814137

`∑[A140429(n)²]`
-/

namespace A002452.P12990840086076814137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002452.P12990840086076814137

namespace A002452

/-- `∑[A140429(n)²]` -/
def P12990840086076814137.Spec : Prop :=
  ∀ n, P12990840086076814137.a n = A002452 n

end A002452

/-! ## A002452.P10818217543936344578

`∑[record[A141413(n)]]`
-/

namespace A002452.P10818217543936344578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141413 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002452.P10818217543936344578

namespace A002452

/-- `∑[record[A141413(n)]]` -/
def P10818217543936344578.Spec : Prop :=
  ∀ n, P10818217543936344578.a n = A002452 n

end A002452

/-! ## A002452.P12069532011445566452

`∑[record[A287479(n)]]`
-/

namespace A002452.P12069532011445566452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287479 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002452.P12069532011445566452

namespace A002452

/-- `∑[record[A287479(n)]]` -/
def P12069532011445566452.Spec : Prop :=
  ∀ n, P12069532011445566452.a n = A002452 n

end A002452

/-! ## A002452.P16018927084535630072

`floor(A054879(n)/2)`
-/

namespace A002452.P16018927084535630072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054879 n : ℚ) / 2⌋

end

end A002452.P16018927084535630072

namespace A002452

/-- `floor(A054879(n)/2)` -/
def P16018927084535630072.Spec : Prop :=
  ∀ n, P16018927084535630072.a n = A002452 n

end A002452

/-! ## A002452.P12316707752463868706

`∑[A141413(2*n)]`
-/

namespace A002452.P12316707752463868706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141413 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002452.P12316707752463868706

namespace A002452

/-- `∑[A141413(2*n)]` -/
def P12316707752463868706.Spec : Prop :=
  ∀ n, P12316707752463868706.a n = A002452 n

end A002452

/-! ## A002452.P16055871066264761921

`Δ[A002754(n)/4]`
-/

namespace A002452.P16055871066264761921
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002754 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002452.P16055871066264761921

namespace A002452

/-- `Δ[A002754(n)/4]` -/
def P16055871066264761921.Spec : Prop :=
  ∀ n, P16055871066264761921.a n = (A002452 n : ℚ)

end A002452

/-! ## A002452.P15035938409322585913

`∑[(1-A094388(n))²]`
-/

namespace A002452.P15035938409322585913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A094388 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002452.P15035938409322585913

namespace A002452

/-- `∑[(1-A094388(n))²]` -/
def P15035938409322585913.Spec : Prop :=
  ∀ n, P15035938409322585913.a n = A002452 n

end A002452

/-!
# A002453: Central factorial numbers: 2nd subdiagonal of A008958.

The programs for A002453, the canonical program `A002453.P16756775674461632123` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002453 has offset 0).

The definition of A002453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002453.P16756775674461632123

`35*a(n-1)-259*a(n-2)+225*a(n-3)` with `a(0)=1, a(1)=35, a(2)=966`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002453

/-- `35*a(n-1)-259*a(n-2)+225*a(n-3)` -/
def P16756775674461632123.Spec : Prop :=
  ∀ n, P16756775674461632123.a n = A002453 n

theorem P16756775674461632123.correct : P16756775674461632123.Spec := by
  intro n
  simp only [A002453]

end A002453

/-! ## A002453.P15594904263458090829

`25*a(n-1)+A002452(n+1)` with `a(0)=1`
-/

namespace A002453.P15594904263458090829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  25 * a (n - 1) + A002452 (n + 1)

end

end A002453.P15594904263458090829

namespace A002453

/-- `25*a(n-1)+A002452(n+1)` -/
def P15594904263458090829.Spec : Prop :=
  ∀ n, P15594904263458090829.a n = A002453 n

end A002453

/-! ## A002453.P3584036709928673431

`(5^(2*n+4)-3^(2*n+5)+2)/384`
-/

namespace A002453.P3584036709928673431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ (2 * n + 4) : ℤ) - (3 ^ (2 * n + 5) : ℤ) + 2 : ℚ) / 384

end

end A002453.P3584036709928673431

namespace A002453

/-- `(5^(2*n+4)-3^(2*n+5)+2)/384` -/
def P3584036709928673431.Spec : Prop :=
  ∀ n, P3584036709928673431.a n = (A002453 n : ℚ)

theorem P3584036709928673431.correct : P3584036709928673431.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A002453, Nat.add_sub_cancel, A002453.P3584036709928673431.a, A002453.P16756775674461632123.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A002453, Nat.add_sub_cancel, A002453.P3584036709928673431.a, A002453.P16756775674461632123.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002453

/-! ## A002453.P14229234526246301811

`∑[A005059(2*(n+1))/8]`
-/

namespace A002453.P14229234526246301811
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005059 (2 * (n + 1)) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002453.P14229234526246301811

namespace A002453

/-- `∑[A005059(2*(n+1))/8]` -/
def P14229234526246301811.Spec : Prop :=
  ∀ n, P14229234526246301811.a n = (A002453 n : ℚ)

end A002453

/-! ## A002453.P13600277195894729050

`A160562(∑[n+2]+3)`
-/

namespace A002453.P13600277195894729050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160562 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A002453.P13600277195894729050

namespace A002453

/-- `A160562(∑[n+2]+3)` -/
def P13600277195894729050.Spec : Prop :=
  ∀ n, P13600277195894729050.a n = A002453 n

end A002453

/-!
# A002454: Central factorial numbers: a(n) = 4^n * (n!)^2.

The programs for A002454, the canonical program `A002454.P94837291486151535` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002454 has offset 0).

The definition of A002454 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n*n!²` (program `A002454.P94837291486151535`, by `A002454.P94837291486151535.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002454.P94837291486151535

`4^n*n!²`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002454

/-- `4^n*n!²` -/
def P94837291486151535.Spec : Prop :=
  ∀ n, (P94837291486151535.a n : ℤ) = A002454 n

theorem P94837291486151535.correct : P94837291486151535.Spec := by
  intro n
  simp only [A002454]

end A002454

/-! ## A002454.P15999449685790203607

`4*n²*a(n-1)` with `a(0)=1`
-/

namespace A002454.P15999449685790203607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  4 * n ^ 2 * a (n - 1)

end

end A002454.P15999449685790203607

namespace A002454

/-- `4*n²*a(n-1)` -/
def P15999449685790203607.Spec : Prop :=
  ∀ n, (P15999449685790203607.a n : ℤ) = A002454 n

end A002454

/-! ## A002454.P2891161883300578277

`∏[floor(2/acot(n))²]`
-/

namespace A002454.P2891161883300578277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002454.P2891161883300578277

namespace A002454

/-- `∏[floor(2/acot(n))²]` -/
def P2891161883300578277.Spec : Prop :=
  ∀ n, P2891161883300578277.a n = A002454 n

end A002454

/-! ## A002454.P5682705744520770623

`(2^n*n!)^2`
-/

namespace A002454.P5682705744520770623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.factorial n) ^ 2

end

end A002454.P5682705744520770623

namespace A002454

/-- `(2^n*n!)^2` -/
def P5682705744520770623.Spec : Prop :=
  ∀ n, (P5682705744520770623.a n : ℤ) = A002454 n

end A002454

/-!
# A002455: Central factorial numbers: unsigned 1st subdiagonal of A182867.

The programs for A002455, the canonical program `A002455.P5240017714733338936` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002455 has offset 0).

The definition of A002455 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002455.P5240017714733338936

`4*(2*n²-2*n+1)*a(n-1)-16*(n-1)^4*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002455

/-- `4*(2*n²-2*n+1)*a(n-1)-16*(n-1)^4*a(n-2)` -/
def P5240017714733338936.Spec : Prop :=
  ∀ n, P5240017714733338936.a n = A002455 n

theorem P5240017714733338936.correct : P5240017714733338936.Spec := by
  intro n
  simp only [A002455]

end A002455

/-! ## A002455.P14302994711660488717

`A001819(n)*A011782(n)²`
-/

namespace A002455.P14302994711660488717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001819 n * A011782 n ^ 2

end

end A002455.P14302994711660488717

namespace A002455

/-- `A001819(n)*A011782(n)²` -/
def P14302994711660488717.Spec : Prop :=
  ∀ n, P14302994711660488717.a n = A002455 n

end A002455

/-! ## A002455.P7880112117179444300

`A001819(n)*A034008(2*n)`
-/

namespace A002455.P7880112117179444300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001819 n * A034008 (2 * n)

end

end A002455.P7880112117179444300

namespace A002455

/-- `A001819(n)*A034008(2*n)` -/
def P7880112117179444300.Spec : Prop :=
  ∀ n, P7880112117179444300.a n = A002455 n

end A002455

/-! ## A002455.P16224797150758187207

`Δ[A094373(n)]²*A001819(n)`
-/

namespace A002455.P16224797150758187207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A001819 n

end

end A002455.P16224797150758187207

namespace A002455

/-- `Δ[A094373(n)]²*A001819(n)` -/
def P16224797150758187207.Spec : Prop :=
  ∀ n, P16224797150758187207.a n = A002455 n

end A002455

/-! ## A002455.P12305723930058176831

`A121408(A236453(2*n+1)+2)`
-/

namespace A002455.P12305723930058176831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121408 (A236453 (2 * n + 1) + 2).toNat

end

end A002455.P12305723930058176831

namespace A002455

/-- `A121408(A236453(2*n+1)+2)` -/
def P12305723930058176831.Spec : Prop :=
  ∀ n, P12305723930058176831.a n = A002455 n

end A002455

/-!
# A002456: Joffe's central differences of 0, A241171(n,n-1).

The programs for A002456, there is no canonical definition to state claims against.
-/

/-! ## A002456.P11070455393959563387

`∑[n²]*A000680(n)`
-/

namespace A002456.P11070455393959563387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000680 n

end

end A002456.P11070455393959563387

/-! ## A002456.P16795874258066692447

`∑[n²]*A090932(2*n)`
-/

namespace A002456.P16795874258066692447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A090932 (2 * n)

end

end A002456.P16795874258066692447

/-! ## A002456.P3835776050861149139

`n*∏[A000217(A267872(n))]`
-/

namespace A002456.P3835776050861149139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A267872 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A002456.P3835776050861149139

/-! ## A002456.P8508999493645917266

`A000217(n)/3*A007019(n)`
-/

namespace A002456.P8508999493645917266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n : ℚ) / 3 * (A007019 n : ℚ)

end

end A002456.P8508999493645917266

/-! ## A002456.P7487615976014187927

`record[A073424(n+2)*A241171(n+1)]`
-/

namespace A002456.P7487615976014187927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 2) * A241171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002456.P7487615976014187927

/-!
# A002457: a(n) = (2n+1)!/n!^2.

The programs for A002457, the canonical program `A002457.P9253550667326779954` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002457 has offset 0).

The definition of A002457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002457.P9253550667326779954

`(2*n+1)*A000984(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002457

/-- `(2*n+1)*A000984(n)` -/
def P9253550667326779954.Spec : Prop :=
  ∀ n, P9253550667326779954.a n = A002457 n

theorem P9253550667326779954.correct : P9253550667326779954.Spec := by
  intro n
  simp only [A002457]

end A002457

/-! ## A002457.P1012635899673532702

`A002011(n)/4`
-/

namespace A002457.P1012635899673532702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002011 n : ℚ) / 4

end

end A002457.P1012635899673532702

namespace A002457

/-- `A002011(n)/4` -/
def P1012635899673532702.Spec : Prop :=
  ∀ n, P1012635899673532702.a n = (A002457 n : ℚ)

end A002457

/-! ## A002457.P15136491039814266025

`A005430(n+1)/2`
-/

namespace A002457.P15136491039814266025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005430 (n + 1) : ℚ) / 2

end

end A002457.P15136491039814266025

namespace A002457

/-- `A005430(n+1)/2` -/
def P15136491039814266025.Spec : Prop :=
  ∀ n, P15136491039814266025.a n = (A002457 n : ℚ)

end A002457

/-! ## A002457.P6272808643670954741

`(2*n+1)*C(2*n, n)`
-/

namespace A002457.P6272808643670954741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.choose (2 * n) n

end

end A002457.P6272808643670954741

namespace A002457

/-- `(2*n+1)*C(2*n, n)` -/
def P6272808643670954741.Spec : Prop :=
  ∀ n, (P6272808643670954741.a n : ℤ) = A002457 n

end A002457

/-! ## A002457.P2530284844164559196

`(2*n+1)!/n!²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002457.P2530284844164559196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n + 1) : ℚ) / (Nat.factorial n ^ 2 : ℚ)

end

end A002457.P2530284844164559196

namespace A002457

/-- `(2*n+1)!/n!²` -/
def P2530284844164559196.Spec : Prop :=
  ∀ n, P2530284844164559196.a n = (A002457 n : ℚ)

end A002457

/-!
# A002458: a(n) = binomial(4*n+1, 2*n).

The programs for A002458, the canonical program `A002458.P4749957331109458579` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002458 has offset 0).

The definition of A002458 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(4*n+1, 2*n)` (program `A002458.P4749957331109458579`, by `A002458.P4749957331109458579.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002458.P10412614072790413872

`A001700(2*n)`
-/

namespace A002458.P10412614072790413872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (2 * n)

end

end A002458.P10412614072790413872

namespace A002458

/-- `A001700(2*n)` -/
def P10412614072790413872.Spec : Prop :=
  ∀ n, P10412614072790413872.a n = A002458 n

end A002458

/-! ## A002458.P12261067872023234456

`A024492(n)*(n+1)`
-/

namespace A002458.P12261067872023234456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024492 n * (n + 1 : ℤ)

end

end A002458.P12261067872023234456

namespace A002458

/-- `A024492(n)*(n+1)` -/
def P12261067872023234456.Spec : Prop :=
  ∀ n, P12261067872023234456.a n = A002458 n

end A002458

/-! ## A002458.P14824947686361939310

`(n+1)*A000108(2*n+1)`
-/

namespace A002458.P14824947686361939310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 (2 * n + 1)

end

end A002458.P14824947686361939310

namespace A002458

/-- `(n+1)*A000108(2*n+1)` -/
def P14824947686361939310.Spec : Prop :=
  ∀ n, P14824947686361939310.a n = A002458 n

end A002458

/-! ## A002458.P4749957331109458579

`C(4*n+1, 2*n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002458

/-- `C(4*n+1, 2*n)` -/
def P4749957331109458579.Spec : Prop :=
  ∀ n, (P4749957331109458579.a n : ℤ) = A002458 n

theorem P4749957331109458579.correct : P4749957331109458579.Spec := by
  intro n
  simp only [A002458]

end A002458

/-! ## A002458.P4077769840496941749

`record[(2/n-4)*a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A002458.P4077769840496941749
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (2 / (n : ℚ) - 4) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002458.P4077769840496941749

namespace A002458

/-- `record[(2/n-4)*a(n-1)]` -/
def P4077769840496941749.Spec : Prop :=
  ∀ n, P4077769840496941749.a n = (A002458 n : ℚ)

end A002458

/-! ## A002458.P9534507949342025349

`record[-(2*(2-n^(-1))*a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A002458.P9534507949342025349
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  -(2 * ((2 - (n : ℚ) ^ (-1 : ℤ)) * f1 (n - 1)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002458.P9534507949342025349

namespace A002458

/-- `record[-(2*(2-n^(-1))*a(n-1))]` -/
def P9534507949342025349.Spec : Prop :=
  ∀ n, P9534507949342025349.a n = (A002458 n : ℚ)

end A002458

/-! ## A002458.P12946883470186453132

`A099976(n)/2`
-/

namespace A002458.P12946883470186453132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099976 n : ℚ) / 2

end

end A002458.P12946883470186453132

namespace A002458

/-- `A099976(n)/2` -/
def P12946883470186453132.Spec : Prop :=
  ∀ n, P12946883470186453132.a n = (A002458 n : ℚ)

end A002458

/-! ## A002458.P10025174620093942146

`A128015(4*n)`
-/

namespace A002458.P10025174620093942146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128015 (4 * n)

end

end A002458.P10025174620093942146

namespace A002458

/-- `A128015(4*n)` -/
def P10025174620093942146.Spec : Prop :=
  ∀ n, P10025174620093942146.a n = A002458 n

end A002458

/-! ## A002458.P4387240596302025020

`A032123(Δ[n²])`
-/

namespace A002458.P4387240596302025020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032123 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002458.P4387240596302025020

namespace A002458

/-- `A032123(Δ[n²])` -/
def P4387240596302025020.Spec : Prop :=
  ∀ n, P4387240596302025020.a n = A002458 n

end A002458

/-! ## A002458.P3657424089522668243

`A058621(Δ[n²])`
-/

namespace A002458.P3657424089522668243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058621 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002458.P3657424089522668243

namespace A002458

/-- `A058621(Δ[n²])` -/
def P3657424089522668243.Spec : Prop :=
  ∀ n, P3657424089522668243.a n = A002458 n

end A002458

/-!
# A002459: Nearest integer to cosh(n).

The programs for A002459, the canonical program `A002459.P17296491257886822107` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002459 has offset 0).

The definition of A002459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 231 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002459.P15067848229224655734

`char[1-n^8]+floor(ceil(exp(n))/2)`
-/

namespace A002459.P15067848229224655734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 8 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + ⌊(⌈Real.exp (n : ℝ)⌉ : ℚ) / 2⌋

end

end A002459.P15067848229224655734

namespace A002459

/-- `char[1-n^8]+floor(ceil(exp(n))/2)` -/
def P15067848229224655734.Spec : Prop :=
  ∀ n, P15067848229224655734.a n = A002459 n

end A002459

/-! ## A002459.P17296491257886822107

`xor(A000495(n), A169585(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002459

/-- `xor(A000495(n), A169585(n))` -/
def P17296491257886822107.Spec : Prop :=
  ∀ n, P17296491257886822107.a n = A002459 n

theorem P17296491257886822107.correct : P17296491257886822107.Spec := by
  intro n
  simp only [A002459]

end A002459

/-! ## A002459.P11118630713804354448

`xor(A000149(n)-A000501(n), A169585(n))`
-/

namespace A002459.P11118630713804354448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000149 n - A000501 n) (A169585 n)

end

end A002459.P11118630713804354448

namespace A002459

/-- `xor(A000149(n)-A000501(n), A169585(n))` -/
def P11118630713804354448.Spec : Prop :=
  ∀ n, P11118630713804354448.a n = A002459 n

end A002459

/-! ## A002459.P15893834982151051337

`abs(A019590(n+1)+A000149(n)-A000501(n))`
-/

namespace A002459.P15893834982151051337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A019590 (n + 1) + (A000149 n - A000501 n)|

end

end A002459.P15893834982151051337

namespace A002459

/-- `abs(A019590(n+1)+A000149(n)-A000501(n))` -/
def P15893834982151051337.Spec : Prop :=
  ∀ n, P15893834982151051337.a n = A002459 n

end A002459

/-! ## A002459.P18438843307895463260

`round(cosh(n))`
-/

namespace A002459.P18438843307895463260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (n : ℝ))

end

end A002459.P18438843307895463260

namespace A002459

/-- `round(cosh(n))` -/
def P18438843307895463260.Spec : Prop :=
  ∀ n, P18438843307895463260.a n = A002459 n

end A002459

/-! ## A002459.P9275022455544363810

`round(exp(n)-sinh(n))`
-/

namespace A002459.P9275022455544363810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (n : ℝ) - Real.sinh (n : ℝ))

end

end A002459.P9275022455544363810

namespace A002459

/-- `round(exp(n)-sinh(n))` -/
def P9275022455544363810.Spec : Prop :=
  ∀ n, P9275022455544363810.a n = A002459 n

end A002459

/-! ## A002459.P10155289087315827427

`floor(cosh(n)+1/2)`
-/

namespace A002459.P10155289087315827427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (n : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋

end

end A002459.P10155289087315827427

namespace A002459

/-- `floor(cosh(n)+1/2)` -/
def P10155289087315827427.Spec : Prop :=
  ∀ n, P10155289087315827427.a n = A002459 n

end A002459

/-! ## A002459.P12275775095598226729

`ceil(cosh(n)-1/2)`
-/

namespace A002459.P12275775095598226729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (n : ℝ) - ((1 : ℚ) / 2 : ℝ)⌉

end

end A002459.P12275775095598226729

namespace A002459

/-- `ceil(cosh(n)-1/2)` -/
def P12275775095598226729.Spec : Prop :=
  ∀ n, P12275775095598226729.a n = A002459 n

end A002459

/-! ## A002459.P244692916335859459

`round(sinh(n)+(n+1)/sinh(n+1))`
-/

namespace A002459.P244692916335859459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (n : ℝ) + (n + 1 : ℝ) / Real.sinh (n + 1 : ℝ))

end

end A002459.P244692916335859459

namespace A002459

/-- `round(sinh(n)+(n+1)/sinh(n+1))` -/
def P244692916335859459.Spec : Prop :=
  ∀ n, P244692916335859459.a n = A002459 n

end A002459

/-! ## A002459.P17305501310088890407

`floor(cosh(n)²/floor(cosh(n)))`
-/

namespace A002459.P17305501310088890407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (n : ℝ) ^ 2 / (⌊Real.cosh (n : ℝ)⌋ : ℝ)⌋

end

end A002459.P17305501310088890407

namespace A002459

/-- `floor(cosh(n)²/floor(cosh(n)))` -/
def P17305501310088890407.Spec : Prop :=
  ∀ n, P17305501310088890407.a n = A002459 n

end A002459

/-! ## A002459.P13255210721401012030

`ceil(cosh(n)²/ceil(cosh(n)))`
-/

namespace A002459.P13255210721401012030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (n : ℝ) ^ 2 / (⌈Real.cosh (n : ℝ)⌉ : ℝ)⌉

end

end A002459.P13255210721401012030

namespace A002459

/-- `ceil(cosh(n)²/ceil(cosh(n)))` -/
def P13255210721401012030.Spec : Prop :=
  ∀ n, P13255210721401012030.a n = A002459 n

end A002459

/-! ## A002459.P6723827015346742644

`round(sinh(1-tanh(n)+n))`
-/

namespace A002459.P6723827015346742644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (1 - Real.tanh (n : ℝ) + (n : ℝ)))

end

end A002459.P6723827015346742644

namespace A002459

/-- `round(sinh(1-tanh(n)+n))` -/
def P6723827015346742644.Spec : Prop :=
  ∀ n, P6723827015346742644.a n = A002459 n

end A002459

/-!
# A002460: Nearest integer to exponential integral of n.

The programs for A002460, there is no canonical definition to state claims against.
-/

/-! ## A002460.P16415026248562478401

`A047784(ceil(exp(n+1)))`
-/

namespace A002460.P16415026248562478401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047784 ⌈Real.exp (n + 1 : ℝ)⌉.toNat

end

end A002460.P16415026248562478401

/-! ## A002460.P10258886085092246886

`A047784(A045650(n+1)+1)-1`
-/

namespace A002460.P10258886085092246886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047784 (A045650 (n + 1) + 1).toNat - 1

end

end A002460.P10258886085092246886

/-! ## A002460.P13940909498919090601

`A047742(floor(exp(n+1)))`
-/

namespace A002460.P13940909498919090601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047742 ⌊Real.exp (n + 1 : ℝ)⌋.toNat

end

end A002460.P13940909498919090601

/-!
# A002461: Coefficients of Legendre polynomials.

The programs for A002461, the canonical program `A002461.P10741353629423927786` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002461 has offset 2).

The definition of A002461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002461.P10741353629423927786

`lcm(n+2, floor((2*n+1)/(n+1)*a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002461

/-- `lcm(n+2, floor((2*n+1)/(n+1)*a(n-1)))` -/
def P10741353629423927786.Spec : Prop :=
  ∀ n, (P10741353629423927786.a n : ℤ) = A002461 (n + 2)

theorem P10741353629423927786.correct : P10741353629423927786.Spec := by
  intro n
  simp only [A002461, Nat.add_sub_cancel]

end A002461

/-! ## A002461.P12550542920167675346

`record[(A267872(n)-n)*A098597(n)]`
-/

namespace A002461.P12550542920167675346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A267872 n - (n : ℤ)) * A098597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002461.P12550542920167675346

namespace A002461

/-- `record[(A267872(n)-n)*A098597(n)]` -/
def P12550542920167675346.Spec : Prop :=
  ∀ n, P12550542920167675346.a n = A002461 (n + 2)

end A002461

/-! ## A002461.P15319635256111064756

`(A103517(n)-n)*A098597(n+1)`
-/

namespace A002461.P15319635256111064756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A103517 n - (n : ℤ)) * A098597 (n + 1)

end

end A002461.P15319635256111064756

namespace A002461

/-- `(A103517(n)-n)*A098597(n+1)` -/
def P15319635256111064756.Spec : Prop :=
  ∀ n, P15319635256111064756.a n = A002461 (n + 2)

end A002461

/-! ## A002461.P1704834295466744001

`gcd(A004730(2*n), A092486(n+1))*A004730(2*n+1)`
-/

namespace A002461.P1704834295466744001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A004730 (2 * n)) (A092486 (n + 1)) : ℤ) * A004730 (2 * n + 1)

end

end A002461.P1704834295466744001

namespace A002461

/-- `gcd(A004730(2*n), A092486(n+1))*A004730(2*n+1)` -/
def P1704834295466744001.Spec : Prop :=
  ∀ n, P1704834295466744001.a n = A002461 (n + 2)

end A002461

/-! ## A002461.P2568004617434144240

`lcm(A065475(n+1), A163590(2*(n+1)))`
-/

namespace A002461.P2568004617434144240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065475 (n + 1)) (A163590 (2 * (n + 1)))

end

end A002461.P2568004617434144240

namespace A002461

/-- `lcm(A065475(n+1), A163590(2*(n+1)))` -/
def P2568004617434144240.Spec : Prop :=
  ∀ n, (P2568004617434144240.a n : ℤ) = A002461 (n + 2)

end A002461

/-!
# A002462: Coefficients of Legendre polynomials.

The programs for A002462, there is no canonical definition to state claims against.
-/

/-! ## A002462.P9025347199495104940

`A001790(n)*A088218(n)`
-/

namespace A002462.P9025347199495104940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n * A088218 n

end

end A002462.P9025347199495104940

/-! ## A002462.P13096420020107614010

`lcm(A001790(n)², A120588(n))`
-/

namespace A002462.P13096420020107614010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001790 n ^ 2) (A120588 n)

end

end A002462.P13096420020107614010

/-! ## A002462.P559183312789947005

`A036069(2*n)*A088218(n)`
-/

namespace A002462.P559183312789947005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036069 (2 * n) * A088218 n

end

end A002462.P559183312789947005

/-! ## A002462.P2053817551557138236

`A001405(A004273(n))*A001790(n)`
-/

namespace A002462.P2053817551557138236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A004273 n).toNat * A001790 n

end

end A002462.P2053817551557138236

/-! ## A002462.P9062997095987505837

`A088218(n)*A100258(A000217(n)+n)`
-/

namespace A002462.P9062997095987505837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * A100258 (A000217 n + (n : ℤ)).toNat

end

end A002462.P9062997095987505837

/-! ## A002462.P9963689060397513870

`A000984(n)/A167275(n)*A000984(n)`
-/

namespace A002462.P9963689060397513870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A167275 n : ℚ) * (A000984 n : ℚ)

end

end A002462.P9963689060397513870

/-! ## A002462.P17839696863353595150

`A163590(2*n)²*A000010(A001316(n))`
-/

namespace A002462.P17839696863353595150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 (2 * n) ^ 2 * A000010 (A001316 n).toNat

end

end A002462.P17839696863353595150

/-! ## A002462.P16533438905116161806

`A273171(C(n, 2))²*A000010(A001316(n))`
-/

namespace A002462.P16533438905116161806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273171 (Nat.choose n 2) ^ 2 * A000010 (A001316 n).toNat

end

end A002462.P16533438905116161806

/-! ## A002462.P18023643143724981332

`A144815(∑[n]+n)²*A000010(A001316(n))`
-/

namespace A002462.P18023643143724981332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144815 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2 * A000010 (A001316 n).toNat

end

end A002462.P18023643143724981332

/-! ## A002462.P6295234991965467518

`A273171(∑[n]-n)²*A000010(A001316(n))`
-/

namespace A002462.P6295234991965467518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273171 (∑ j ∈ Finset.range (n + 1), f1 j - n) ^ 2 * A000010 (A001316 n).toNat

end

end A002462.P6295234991965467518

/-!
# A002463: Coefficients of Legendre polynomials.

The programs for A002463, there is no canonical definition to state claims against.
-/

/-! ## A002463.P17059153241933148480

`A000108(n)*A001803(n)`
-/

namespace A002463.P17059153241933148480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A001803 n

end

end A002463.P17059153241933148480

/-! ## A002463.P16184883402696060370

`A001700(n)*A001790(n)`
-/

namespace A002463.P16184883402696060370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A001790 n

end

end A002463.P16184883402696060370

/-! ## A002463.P7305963182404680286

`A000108(n)*record[A163590(n)]`
-/

namespace A002463.P7305963182404680286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002463.P7305963182404680286

/-! ## A002463.P8471633260737339874

`A001790(n)*A088218(n+1)`
-/

namespace A002463.P8471633260737339874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n * A088218 (n + 1)

end

end A002463.P8471633260737339874

/-! ## A002463.P16062208520646457264

`(A120304(n)+2)*A001803(n)`
-/

namespace A002463.P16062208520646457264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120304 n + 2) * A001803 n

end

end A002463.P16062208520646457264

/-! ## A002463.P16945266743704798246

`A001803(n)*A028303(2*n)`
-/

namespace A002463.P16945266743704798246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n * A028303 (2 * n)

end

end A002463.P16945266743704798246

/-! ## A002463.P9433648856422404472

`A001700(n)*A036069(2*n)`
-/

namespace A002463.P9433648856422404472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n * A036069 (2 * n)

end

end A002463.P9433648856422404472

/-! ## A002463.P16528979045470129128

`A001803(n)*A057977(2*n)`
-/

namespace A002463.P16528979045470129128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 n * A057977 (2 * n)

end

end A002463.P16528979045470129128

/-! ## A002463.P10354049772464861170

`A001405(2*n+1)*A001790(n)`
-/

namespace A002463.P10354049772464861170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n + 1) * A001790 n

end

end A002463.P10354049772464861170

/-! ## A002463.P9652735452684620008

`A001790(n)*A057977(2*n+1)`
-/

namespace A002463.P9652735452684620008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001790 n * A057977 (2 * n + 1)

end

end A002463.P9652735452684620008

/-!
# A002464: Hertzsprung's problem: ways to arrange n non-attacking kings on an n X n board, with 1 in each row and column. Also number of permutations of length n without rising or falling successions.

The programs for A002464, there is no canonical definition to state claims against.
-/

/-! ## A002464.P7402400242367618581

`(n+1)*a(n-1)-(n-2)*a(n-2)-(n-5)*a(n-3)+(n-3)*a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A002464.P7402400242367618581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 0] fun n a =>
  (n + 1 : ℤ) * a (n - 1) - ((n : ℤ) - 2) * a (n - 2) - ((n : ℤ) - 5) * a (n - 3) + ((n : ℤ) - 3) * a (n - 4)

end

end A002464.P7402400242367618581

/-! ## A002464.P1625530170330728783

`A001100(C(n, 2)+1)`
-/

namespace A002464.P1625530170330728783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001100 (Nat.choose n 2 + 1)

end

end A002464.P1625530170330728783

/-! ## A002464.P13946496708943512888

`A001100(∑[abs(1-n)])`
-/

namespace A002464.P13946496708943512888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001100 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002464.P13946496708943512888

/-! ## A002464.P5728510703798123573

`gcd(A000038(n), A001100(A152947(n+1)))`
-/

namespace A002464.P5728510703798123573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A001100 (A152947 (n + 1)).toNat)

end

end A002464.P5728510703798123573

/-! ## A002464.P13246286678964688864

`A346462(∑[n])`
-/

namespace A002464.P13246286678964688864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346462 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002464.P13246286678964688864

/-!
# A002465: Number of ways to place n nonattacking bishops on an n X n board.

The programs for A002465, there is no canonical definition to state claims against.
-/

/-! ## A002465.P4429650375098277061

`A378590(A118403(n+1))`
-/

namespace A002465.P4429650375098277061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378590 (A118403 (n + 1)).toNat

end

end A002465.P4429650375098277061

/-! ## A002465.P13954150087767394321

`A378590(A002061(n)+2)`
-/

namespace A002465.P13954150087767394321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378590 (A002061 n + 2).toNat

end

end A002465.P13954150087767394321

/-!
# A002466: A jumping problem.

The programs for A002466, the canonical program `A002466.P13629758916333991494` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002466 has offset 1).

The definition of A002466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002466.P13629758916333991494

`15*a(n-5)+2*a(n-10)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7, a(5)=13, a(6)=17, a(7)=30, a(8)=60, a(9)=107`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002466

/-- `15*a(n-5)+2*a(n-10)` -/
def P13629758916333991494.Spec : Prop :=
  ∀ n, (P13629758916333991494.a n : ℤ) = A002466 (n + 1)

theorem P13629758916333991494.correct : P13629758916333991494.Spec := by
  intro n
  simp only [A002466, Nat.add_sub_cancel]

end A002466

/-! ## A002466.P5826607077873895223

`A354757(n)+A328578(A189237(n))`
-/

namespace A002466.P5826607077873895223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354757 n + A328578 (A189237 n).toNat

end

end A002466.P5826607077873895223

namespace A002466

/-- `A354757(n)+A328578(A189237(n))` -/
def P5826607077873895223.Spec : Prop :=
  ∀ n, P5826607077873895223.a n = A002466 (n + 1)

end A002466

/-! ## A002466.P12941706044976673287

`A104368(A110758(n+1))+A038505(n)`
-/

namespace A002466.P12941706044976673287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104368 (A110758 (n + 1)).toNat + A038505 n

end

end A002466.P12941706044976673287

namespace A002466

/-- `A104368(A110758(n+1))+A038505(n)` -/
def P12941706044976673287.Spec : Prop :=
  ∀ n, P12941706044976673287.a n = A002466 (n + 1)

end A002466

/-! ## A002466.P4513140839740961162

`A089866(A158415(n+1)+A011848(n))`
-/

namespace A002466.P4513140839740961162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089866 (A158415 (n + 1) + A011848 n).toNat

end

end A002466.P4513140839740961162

namespace A002466

/-- `A089866(A158415(n+1)+A011848(n))` -/
def P4513140839740961162.Spec : Prop :=
  ∀ n, P4513140839740961162.a n = A002466 (n + 1)

end A002466

/-!
# A002467: The game of Mousetrap with n cards (given n letters and n envelopes, how many ways are there to fill the envelopes so that at least one letter goes into its right envelope?).

The programs for A002467, the canonical program `A002467.P9174529206492877380` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002467 has offset 0).

The definition of A002467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002467.P9174529206492877380

`n*a(n-1)-(-1)^n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002467

/-- `n*a(n-1)-(-1)^n` -/
def P9174529206492877380.Spec : Prop :=
  ∀ n, P9174529206492877380.a n = A002467 n

theorem P9174529206492877380.correct : P9174529206492877380.Spec := by
  intro n
  simp only [A002467]

end A002467

/-! ## A002467.P2395707513394489973

`(n-1)*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A002467.P2395707513394489973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n : ℤ) - 1) * (a (n - 1) + a (n - 2))

end

end A002467.P2395707513394489973

namespace A002467

/-- `(n-1)*(a(n-1)+a(n-2))` -/
def P2395707513394489973.Spec : Prop :=
  ∀ n, P2395707513394489973.a n = A002467 n

end A002467

/-! ## A002467.P8510172343393966824

`n!-A000166(n)`
-/

namespace A002467.P8510172343393966824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A000166 n

end

end A002467.P8510172343393966824

namespace A002467

/-- `n!-A000166(n)` -/
def P8510172343393966824.Spec : Prop :=
  ∀ n, P8510172343393966824.a n = A002467 n

end A002467

/-! ## A002467.P12008489682143005445

`A000142(n)-A000166(n)`
-/

namespace A002467.P12008489682143005445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A000166 n

end

end A002467.P12008489682143005445

namespace A002467

/-- `A000142(n)-A000166(n)` -/
def P12008489682143005445.Spec : Prop :=
  ∀ n, P12008489682143005445.a n = A002467 n

end A002467

/-! ## A002467.P15927569709724803077

`abs(xor(1, -(n*a(n-1))))` with `a(0)=0`
-/

namespace A002467.P15927569709724803077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |Int.xor 1 (-((n : ℤ) * a (n - 1)))|

end

end A002467.P15927569709724803077

namespace A002467

/-- `abs(xor(1, -(n*a(n-1))))` -/
def P15927569709724803077.Spec : Prop :=
  ∀ n, P15927569709724803077.a n = A002467 n

end A002467

/-! ## A002467.P8697698857189907243

`-xor(1, -(n*a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A002467.P8697698857189907243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  -Int.xor 1 (-((n : ℤ) * a (n - 1)))

end

end A002467.P8697698857189907243

namespace A002467

/-- `-xor(1, -(n*a(n-1)))` -/
def P8697698857189907243.Spec : Prop :=
  ∀ n, P8697698857189907243.a n = A002467 n

end A002467

/-! ## A002467.P4553357148820155988

`a(n-1)/n^(-1)-(-1)^n` with `a(0)=0`
-/

namespace A002467.P4553357148820155988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ) - ((-1) ^ n : ℚ)

end

end A002467.P4553357148820155988

namespace A002467

/-- `a(n-1)/n^(-1)-(-1)^n` -/
def P4553357148820155988.Spec : Prop :=
  ∀ n, P4553357148820155988.a n = (A002467 n : ℚ)

end A002467

/-! ## A002467.P2724224988259091103

`abs(xor(1, n*a(n-1)+1)-1)` with `a(0)=0`
-/

namespace A002467.P2724224988259091103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |Int.xor 1 ((n : ℤ) * a (n - 1) + 1) - 1|

end

end A002467.P2724224988259091103

namespace A002467

/-- `abs(xor(1, n*a(n-1)+1)-1)` -/
def P2724224988259091103.Spec : Prop :=
  ∀ n, P2724224988259091103.a n = A002467 n

end A002467

/-! ## A002467.P3799194225454079154

`Δ[or(1, n)]-(1-n*a(n-1))` with `a(0)=0`
-/

namespace A002467.P3799194225454079154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (1 - (n : ℤ) * a (n - 1))

end

end A002467.P3799194225454079154

namespace A002467

/-- `Δ[or(1, n)]-(1-n*a(n-1))` -/
def P3799194225454079154.Spec : Prop :=
  ∀ n, P3799194225454079154.a n = A002467 n

end A002467

/-! ## A002467.P51713077906519328

`A306015(∑[n])`
-/

namespace A002467.P51713077906519328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306015 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002467.P51713077906519328

namespace A002467

/-- `A306015(∑[n])` -/
def P51713077906519328.Spec : Prop :=
  ∀ n, P51713077906519328.a n = A002467 n

end A002467

/-!
# A002468: The game of Mousetrap with n cards: the number of permutations of n cards having at least one hit after 2.

The programs for A002468, there is no canonical definition to state claims against.
-/

/-! ## A002468.P6824677449333233732

`A103221(A050006(n!))`
-/

namespace A002468.P6824677449333233732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A050006 (Nat.factorial n)).toNat

end

end A002468.P6824677449333233732

/-! ## A002468.P14770224799473408073

`A340763(∑[A000040(n!)])`
-/

namespace A002468.P14770224799473408073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340763 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002468.P14770224799473408073

/-! ## A002468.P5049269281917572928

`A008616(A266332(n+1)+n)`
-/

namespace A002468.P5049269281917572928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A266332 (n + 1) + (n : ℤ)).toNat

end

end A002468.P5049269281917572928

/-!
# A002469: The game of Mousetrap with n cards: the number of permutations of n cards in which 2 is the only hit.

The programs for A002469, there is no canonical definition to state claims against.
-/

/-! ## A002469.P14128513544911334665

`Δ[n!]-A002468(n+2)`
-/

namespace A002469.P14128513544911334665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A002468 (n + 2)

end

end A002469.P14128513544911334665

/-! ## A002469.P14400420197192116065

`A001563(n)-A002468(n+2)`
-/

namespace A002469.P14400420197192116065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n - A002468 (n + 2)

end

end A002469.P14400420197192116065

/-! ## A002469.P6509027486508395749

`Δ[A033312(n)]-A002468(n+2)`
-/

namespace A002469.P6509027486508395749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002468 (n + 2)

end

end A002469.P6509027486508395749

/-! ## A002469.P14223467102581359636

`n*A000142(n)-A002468(n+2)`
-/

namespace A002469.P14223467102581359636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000142 n - A002468 (n + 2)

end

end A002469.P14223467102581359636

/-! ## A002469.P3237895885221647129

`A000142(n+1)-(A002468(n+2)+A000142(n))`
-/

namespace A002469.P3237895885221647129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - (A002468 (n + 2) + A000142 n)

end

end A002469.P3237895885221647129

/-! ## A002469.P2296437371576159442

`A001563(n)+A002468(n+2)*A082551(A020639(n+2))`
-/

namespace A002469.P2296437371576159442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n + A002468 (n + 2) * A082551 (A020639 (n + 2)).toNat

end

end A002469.P2296437371576159442

/-!
# A002471: Number of partitions of n into a prime and a square.

The programs for A002471, there is no canonical definition to state claims against.
-/

/-! ## A002471.P15852202425960357023

`ceil(A283183(n+1)/2)`
-/

namespace A002471.P15852202425960357023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A283183 (n + 1) : ℚ) / 2⌉

end

end A002471.P15852202425960357023

/-! ## A002471.P15888250131438136556

`A110654(A283183(n+1))`
-/

namespace A002471.P15888250131438136556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A283183 (n + 1)).toNat

end

end A002471.P15888250131438136556

/-! ## A002471.P562749683656382106

`A004526(A283183(n+1)+1)`
-/

namespace A002471.P562749683656382106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A283183 (n + 1) + 1).toNat

end

end A002471.P562749683656382106

/-! ## A002471.P18384675494599902051

`A123108(A283183(n+1)+1)`
-/

namespace A002471.P18384675494599902051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A283183 (n + 1) + 1).toNat

end

end A002471.P18384675494599902051

/-! ## A002471.P1708653834046449180

`A110655(2*A283183(n+1))`
-/

namespace A002471.P1708653834046449180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * A283183 (n + 1)).toNat

end

end A002471.P1708653834046449180

/-! ## A002471.P1876441445638815480

`A110656(4*A283183(n+1))`
-/

namespace A002471.P1876441445638815480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (4 * A283183 (n + 1)).toNat

end

end A002471.P1876441445638815480

/-! ## A002471.P3967113548612346317

`A028242(xor(1, A283183(n+1)))`
-/

namespace A002471.P3967113548612346317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A283183 (n + 1))).toNat

end

end A002471.P3967113548612346317

/-! ## A002471.P11194810720770274596

`A008619(A283183(n+1)+1)-1`
-/

namespace A002471.P11194810720770274596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A283183 (n + 1) + 1).toNat - 1

end

end A002471.P11194810720770274596

/-! ## A002471.P16748466143315181862

`A002265(2*(A283183(n+1)+1))`
-/

namespace A002471.P16748466143315181862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A283183 (n + 1) + 1)).toNat

end

end A002471.P16748466143315181862

/-! ## A002471.P14968251788885928810

`val(A007052(A283183(n+1)+1), 2)`
-/

namespace A002471.P14968251788885928810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007052 (A283183 (n + 1) + 1).toNat).toNat 2

end

end A002471.P14968251788885928810

/-! ## A002471.P7235527238230434464

`A317684(n+1)-A317685(n+1)`
-/

namespace A002471.P7235527238230434464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317684 (n + 1) - A317685 (n + 1)

end

end A002471.P7235527238230434464

/-! ## A002471.P4945334499108829603

`(A283183(n+1)+A010051(n+1))/2`
-/

namespace A002471.P4945334499108829603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283183 (n + 1) + A010051 (n + 1) : ℚ) / 2

end

end A002471.P4945334499108829603

/-! ## A002471.P17674737075418717821

`A002265(A283183(n+1)+A283183(n+1)+2)`
-/

namespace A002471.P17674737075418717821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A283183 (n + 1) + (A283183 (n + 1) + 2)).toNat

end

end A002471.P17674737075418717821

/-!
# A002472: Number of pairs x,y such that y-x=2, (x,n)=1, (y,n)=1 and 1 <= x <= n.

The programs for A002472, the canonical program `A002472.P6913863358796282125` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002472 has offset 1).

The definition of A002472 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A058026, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002472.P6913863358796282125

`A160467(n+1)*A058026(A000265(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A002472

/-- `A160467(n+1)*A058026(A000265(n+1))` -/
def P6913863358796282125.Spec : Prop :=
  ∀ n, P6913863358796282125.a n = A002472 (n + 1)

theorem P6913863358796282125.correct : P6913863358796282125.Spec := by
  intro n
  simp only [A002472, Nat.add_sub_cancel]

end A002472

/-! ## A002472.P13462251180330877874

`A177704(n)*A184997(n+1)`
-/

namespace A002472.P13462251180330877874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 n * A184997 (n + 1)

end

end A002472.P13462251180330877874

namespace A002472

/-- `A177704(n)*A184997(n+1)` -/
def P13462251180330877874.Spec : Prop :=
  ∀ n, P13462251180330877874.a n = A002472 (n + 1)

end A002472

/-! ## A002472.P6936052400183609366

`A390299(n+1)/A177702(n)`
-/

namespace A002472.P6936052400183609366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390299 (n + 1) : ℚ) / (A177702 n : ℚ)

end

end A002472.P6936052400183609366

namespace A002472

/-- `A390299(n+1)/A177702(n)` -/
def P6936052400183609366.Spec : Prop :=
  ∀ n, P6936052400183609366.a n = (A002472 (n + 1) : ℚ)

end A002472

/-! ## A002472.P580287726073740322

`A003557(n+1)*A305444(n+1)`
-/

namespace A002472.P580287726073740322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A305444 (n + 1)

end

end A002472.P580287726073740322

namespace A002472

/-- `A003557(n+1)*A305444(n+1)` -/
def P580287726073740322.Spec : Prop :=
  ∀ n, P580287726073740322.a n = A002472 (n + 1)

end A002472

/-! ## A002472.P13636678950044341965

`lcm(A003557(n+1), A184997(n+1))`
-/

namespace A002472.P13636678950044341965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003557 (n + 1)) (A184997 (n + 1))

end

end A002472.P13636678950044341965

namespace A002472

/-- `lcm(A003557(n+1), A184997(n+1))` -/
def P13636678950044341965.Spec : Prop :=
  ∀ n, (P13636678950044341965.a n : ℤ) = A002472 (n + 1)

end A002472

/-! ## A002472.P12920312356713021615

`A390299(n+1)/A107751(2*n+1)`
-/

namespace A002472.P12920312356713021615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390299 (n + 1) : ℚ) / (A107751 (2 * n + 1) : ℚ)

end

end A002472.P12920312356713021615

namespace A002472

/-- `A390299(n+1)/A107751(2*n+1)` -/
def P12920312356713021615.Spec : Prop :=
  ∀ n, P12920312356713021615.a n = (A002472 (n + 1) : ℚ)

end A002472

/-! ## A002472.P13633995509512880531

`∑{d}[n+1, A226177(#)*A267092((n+1)/#)]`
-/

namespace A002472.P13633995509512880531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A226177 d * A267092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A002472.P13633995509512880531

namespace A002472

/-- `∑{d}[n+1, A226177(#)*A267092((n+1)/#)]` -/
def P13633995509512880531.Spec : Prop :=
  ∀ n, P13633995509512880531.a n = A002472 (n + 1)

end A002472

/-! ## A002472.P9348583400026406738

`∑{d}[n+1, A306408(#)*A361984((n+1)/#)]`
-/

namespace A002472.P9348583400026406738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A306408 d * A361984 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A002472.P9348583400026406738

namespace A002472

/-- `∑{d}[n+1, A306408(#)*A361984((n+1)/#)]` -/
def P9348583400026406738.Spec : Prop :=
  ∀ n, P9348583400026406738.a n = A002472 (n + 1)

end A002472

/-! ## A002472.P2628611979713836468

`A000010(n+1)/A173557(n+1)*A305444(n+1)`
-/

namespace A002472.P2628611979713836468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ) * (A305444 (n + 1) : ℚ)

end

end A002472.P2628611979713836468

namespace A002472

/-- `A000010(n+1)/A173557(n+1)*A305444(n+1)` -/
def P2628611979713836468.Spec : Prop :=
  ∀ n, P2628611979713836468.a n = (A002472 (n + 1) : ℚ)

end A002472

/-! ## A002472.P1818624917119698159

`A390299(n+1)/A100063(n+1)`
-/

namespace A002472.P1818624917119698159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390299 (n + 1) : ℚ) / (A100063 (n + 1) : ℚ)

end

end A002472.P1818624917119698159

namespace A002472

/-- `A390299(n+1)/A100063(n+1)` -/
def P1818624917119698159.Spec : Prop :=
  ∀ n, P1818624917119698159.a n = (A002472 (n + 1) : ℚ)

end A002472

/-! ## A002472.P634880967666576875

`A390299(n+1)/A131534(n+2)`
-/

namespace A002472.P634880967666576875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390299 (n + 1) : ℚ) / (A131534 (n + 2) : ℚ)

end

end A002472.P634880967666576875

namespace A002472

/-- `A390299(n+1)/A131534(n+2)` -/
def P634880967666576875.Spec : Prop :=
  ∀ n, P634880967666576875.a n = (A002472 (n + 1) : ℚ)

end A002472

/-! ## A002472.P7569917572402519985

`A184997(A022998(n+1))`
-/

namespace A002472.P7569917572402519985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184997 (A022998 (n + 1)).toNat

end

end A002472.P7569917572402519985

namespace A002472

/-- `A184997(A022998(n+1))` -/
def P7569917572402519985.Spec : Prop :=
  ∀ n, P7569917572402519985.a n = A002472 (n + 1)

end A002472

/-! ## A002472.P5572948621680560155

`A184997(A257088(n+1))`
-/

namespace A002472.P5572948621680560155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184997 (A257088 (n + 1)).toNat

end

end A002472.P5572948621680560155

namespace A002472

/-- `A184997(A257088(n+1))` -/
def P5572948621680560155.Spec : Prop :=
  ∀ n, P5572948621680560155.a n = A002472 (n + 1)

end A002472

/-! ## A002472.P3334654743646976946

`A184997(2*(n+1))`
-/

namespace A002472.P3334654743646976946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184997 (2 * (n + 1))

end

end A002472.P3334654743646976946

namespace A002472

/-- `A184997(2*(n+1))` -/
def P3334654743646976946.Spec : Prop :=
  ∀ n, P3334654743646976946.a n = A002472 (n + 1)

end A002472

/-! ## A002472.P13582174541523702722

`A390299(n+1)/A101825(2*n+1)`
-/

namespace A002472.P13582174541523702722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390299 (n + 1) : ℚ) / (A101825 (2 * n + 1) : ℚ)

end

end A002472.P13582174541523702722

namespace A002472

/-- `A390299(n+1)/A101825(2*n+1)` -/
def P13582174541523702722.Spec : Prop :=
  ∀ n, P13582174541523702722.a n = (A002472 (n + 1) : ℚ)

end A002472

/-! ## A002472.P9980834122185996466

`gcd(A259877(n+2), A390299(n+1))`
-/

namespace A002472.P9980834122185996466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A259877 (n + 2)) (A390299 (n + 1))

end

end A002472.P9980834122185996466

namespace A002472

/-- `gcd(A259877(n+2), A390299(n+1))` -/
def P9980834122185996466.Spec : Prop :=
  ∀ n, (P9980834122185996466.a n : ℤ) = A002472 (n + 1)

end A002472

/-!
# A002473: 7-smooth numbers: positive numbers whose prime divisors are all <= 7.

The programs for A002473, there is no canonical definition to state claims against.
-/

/-! ## A002473.P12076433357267573362

`sqrt(A352618(n+1))`
-/

namespace A002473.P12076433357267573362
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A352618 (n + 1) : ℝ)

end

end A002473.P12076433357267573362

/-! ## A002473.P4976515359849994928

`A085125(n+1)/2`
-/

namespace A002473.P4976515359849994928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085125 (n + 1) : ℚ) / 2

end

end A002473.P4976515359849994928

/-! ## A002473.P8123487769178147706

`A085126(n+1)/3`
-/

namespace A002473.P8123487769178147706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085126 (n + 1) : ℚ) / 3

end

end A002473.P8123487769178147706

/-! ## A002473.P14853403389059341789

`A085127(n+1)/4`
-/

namespace A002473.P14853403389059341789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085127 (n + 1) : ℚ) / 4

end

end A002473.P14853403389059341789

/-! ## A002473.P8040363670785644900

`A085128(n+1)/5`
-/

namespace A002473.P8040363670785644900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085128 (n + 1) : ℚ) / 5

end

end A002473.P8040363670785644900

/-! ## A002473.P9796330220675177649

`A085129(n+1)/6`
-/

namespace A002473.P9796330220675177649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085129 (n + 1) : ℚ) / 6

end

end A002473.P9796330220675177649

/-! ## A002473.P6530313541062367626

`A080194(n+1)/7`
-/

namespace A002473.P6530313541062367626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080194 (n + 1) : ℚ) / 7

end

end A002473.P6530313541062367626

/-! ## A002473.P10955956838456875040

`A085131(n+1)/8`
-/

namespace A002473.P10955956838456875040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085131 (n + 1) : ℚ) / 8

end

end A002473.P10955956838456875040

/-! ## A002473.P8619644175063311949

`A085132(n+1)/9`
-/

namespace A002473.P8619644175063311949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085132 (n + 1) : ℚ) / 9

end

end A002473.P8619644175063311949

/-! ## A002473.P9590384583949838246

`∏{digits}[A280249(n+1), #]`
-/

namespace A002473.P9590384583949838246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280249 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A002473.P9590384583949838246

/-! ## A002473.P2307404988978793356

`∏{digits}[A341634(n+1), #]`
-/

namespace A002473.P2307404988978793356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341634 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A002473.P2307404988978793356

/-! ## A002473.P7711264992562618005

`A086247(n)+a(n-1)` with `a(0)=1`
-/

namespace A002473.P7711264992562618005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A086247 n + a (n - 1)

end

end A002473.P7711264992562618005

/-! ## A002473.P5597471785111220019

`A080194(n+1)-A085129(n+1)`
-/

namespace A002473.P5597471785111220019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1) - A085129 (n + 1)

end

end A002473.P5597471785111220019

/-! ## A002473.P7075380819669853149

`A085131(n+1)-A080194(n+1)`
-/

namespace A002473.P7075380819669853149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085131 (n + 1) - A080194 (n + 1)

end

end A002473.P7075380819669853149

/-! ## A002473.P14121715754193927576

`A085126(n+1)-A085125(n+1)`
-/

namespace A002473.P14121715754193927576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085126 (n + 1) - A085125 (n + 1)

end

end A002473.P14121715754193927576

/-! ## A002473.P6296656480464673333

`A085127(n+1)-A085126(n+1)`
-/

namespace A002473.P6296656480464673333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085127 (n + 1) - A085126 (n + 1)

end

end A002473.P6296656480464673333

/-! ## A002473.P11003923623161337427

`A085128(n+1)-A085127(n+1)`
-/

namespace A002473.P11003923623161337427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1) - A085127 (n + 1)

end

end A002473.P11003923623161337427

/-! ## A002473.P17671504509844413497

`A085129(n+1)-A085128(n+1)`
-/

namespace A002473.P17671504509844413497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085129 (n + 1) - A085128 (n + 1)

end

end A002473.P17671504509844413497

/-! ## A002473.P2877758806891884057

`A085132(n+1)-A085131(n+1)`
-/

namespace A002473.P2877758806891884057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085132 (n + 1) - A085131 (n + 1)

end

end A002473.P2877758806891884057

/-! ## A002473.P11108683465028014104

`A080194(n+1)%A085125(n+1)`
-/

namespace A002473.P11108683465028014104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080194 (n + 1)) (A085125 (n + 1))

end

end A002473.P11108683465028014104

/-!
# A002474: Denominators of coefficients of odd powers of x of the expansion of Bessel function J_1(x).

The programs for A002474, the canonical program `A002474.P16488384738285800801` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002474 has offset 0).

The definition of A002474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002474.P16488384738285800801

`2^(2*n+1)*n!*(n+1)!`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002474

/-- `2^(2*n+1)*n!*(n+1)!` -/
def P16488384738285800801.Spec : Prop :=
  ∀ n, (P16488384738285800801.a n : ℤ) = A002474 n

theorem P16488384738285800801.correct : P16488384738285800801.Spec := by
  intro n
  simp only [A002474]

end A002474

/-! ## A002474.P7981032810236936220

`2^(2*n+1)*A010790(n)`
-/

namespace A002474.P7981032810236936220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (2 * n + 1) : ℤ) * A010790 n

end

end A002474.P7981032810236936220

namespace A002474

/-- `2^(2*n+1)*A010790(n)` -/
def P7981032810236936220.Spec : Prop :=
  ∀ n, P7981032810236936220.a n = A002474 n

end A002474

/-! ## A002474.P8658909436210276211

`∏[floor(4/acot(n²+n))]`
-/

namespace A002474.P8658909436210276211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 / SequenceMachineLib.acot (n ^ 2 + n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002474.P8658909436210276211

namespace A002474

/-- `∏[floor(4/acot(n²+n))]` -/
def P8658909436210276211.Spec : Prop :=
  ∀ n, P8658909436210276211.a n = A002474 n

end A002474

/-! ## A002474.P17136759150667304317

`8*a(n-1)*∑[n]` with `a(0)=2`
-/

namespace A002474.P17136759150667304317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  8 * (a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A002474.P17136759150667304317

namespace A002474

/-- `8*a(n-1)*∑[n]` -/
def P17136759150667304317.Spec : Prop :=
  ∀ n, (P17136759150667304317.a n : ℤ) = A002474 n

end A002474

/-! ## A002474.P4943566062065043997

`∏[abs(2-(2*n+1)²)+1]`
-/

namespace A002474.P4943566062065043997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ((2 * n + 1) ^ 2 : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002474.P4943566062065043997

namespace A002474

/-- `∏[abs(2-(2*n+1)²)+1]` -/
def P4943566062065043997.Spec : Prop :=
  ∀ n, P4943566062065043997.a n = A002474 n

end A002474

/-!
# A002475: Numbers k such that x^k + x + 1 is irreducible over GF(2).

The programs for A002475, there is no canonical definition to state claims against.
-/

/-! ## A002475.P8203569377629292468

`eq[3, A344185(abs(1-n)+1)]`
-/

namespace A002475.P8203569377629292468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344185 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002475.P8203569377629292468

/-! ## A002475.P21424548584714055

`A057427(n)+lt[A344185(n+1), 4]`
-/

namespace A002475.P21424548584714055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344185 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A002475.P21424548584714055

/-! ## A002475.P11016689848568868985

`eq[A344185(A028310(n))/3, A057427(n)]`
-/

namespace A002475.P11016689848568868985
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344185 (A028310 n).toNat : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A002475.P11016689848568868985

/-! ## A002475.P1457444363862871380

`eq[n, n*A175190(A028310(n))]`
-/

namespace A002475.P1457444363862871380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A175190 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002475.P1457444363862871380

/-! ## A002475.P3038964243267374290

`A057427(n)+lt[A175190(n+1), 2]`
-/

namespace A002475.P3038964243267374290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175190 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A002475.P3038964243267374290

/-!
# A002476: Primes of the form 6m + 1.

The programs for A002476, the canonical program `A002476.P3741233015524542667` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002476 has offset 1).

The definition of A002476 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024899, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002476.P3741233015524542667

`6*A024899(n+1)+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A002476

/-- `6*A024899(n+1)+1` -/
def P3741233015524542667.Spec : Prop :=
  ∀ n, P3741233015524542667.a n = A002476 (n + 1)

theorem P3741233015524542667.correct : P3741233015524542667.Spec := by
  intro n
  simp only [A002476, Nat.add_sub_cancel]

end A002476

/-! ## A002476.P1721331990999675874

`p?[3*n+1]`
-/

namespace A002476.P1721331990999675874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A002476.P1721331990999675874

namespace A002476

/-- `p?[3*n+1]` -/
def P1721331990999675874.Spec : Prop :=
  ∀ n, (P1721331990999675874.a n : ℤ) = A002476 (n + 1)

end A002476

/-! ## A002476.P9078777985238099718

`or(1, p?[3*n-2])`
-/

namespace A002476.P9078777985238099718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A002476.P9078777985238099718

namespace A002476

/-- `or(1, p?[3*n-2])` -/
def P9078777985238099718.Spec : Prop :=
  ∀ n, P9078777985238099718.a n = A002476 (n + 1)

end A002476

/-! ## A002476.P9452955578874817521

`∏{d}[p?[3*n-2], #]`
-/

namespace A002476.P9452955578874817521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A002476.P9452955578874817521

namespace A002476

/-- `∏{d}[p?[3*n-2], #]` -/
def P9452955578874817521.Spec : Prop :=
  ∀ n, (P9452955578874817521.a n : ℤ) = A002476 (n + 1)

end A002476

/-! ## A002476.P7245618169666650833

`∑{p}[p?[3*n-2], #]`
-/

namespace A002476.P7245618169666650833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A002476.P7245618169666650833

namespace A002476

/-- `∑{p}[p?[3*n-2], #]` -/
def P7245618169666650833.Spec : Prop :=
  ∀ n, (P7245618169666650833.a n : ℤ) = A002476 (n + 1)

end A002476

/-! ## A002476.P6333871649351315916

`∏{p}[p?[3*n-2], #]`
-/

namespace A002476.P6333871649351315916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A002476.P6333871649351315916

namespace A002476

/-- `∏{p}[p?[3*n-2], #]` -/
def P6333871649351315916.Spec : Prop :=
  ∀ n, (P6333871649351315916.a n : ℤ) = A002476 (n + 1)

end A002476

/-! ## A002476.P14066674248302264968

`A112772(n+1)/2`
-/

namespace A002476.P14066674248302264968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112772 (n + 1) : ℚ) / 2

end

end A002476.P14066674248302264968

namespace A002476

/-- `A112772(n+1)/2` -/
def P14066674248302264968.Spec : Prop :=
  ∀ n, P14066674248302264968.a n = (A002476 (n + 1) : ℚ)

end A002476

/-! ## A002476.P14007808620276336968

`3*A024892(n+1)+1`
-/

namespace A002476.P14007808620276336968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A024892 (n + 1) + 1

end

end A002476.P14007808620276336968

namespace A002476

/-- `3*A024892(n+1)+1` -/
def P14007808620276336968.Spec : Prop :=
  ∀ n, P14007808620276336968.a n = A002476 (n + 1)

end A002476

/-! ## A002476.P9838849959235681128

`2*A173177(n+1)+3`
-/

namespace A002476.P9838849959235681128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173177 (n + 1) + 3

end

end A002476.P9838849959235681128

namespace A002476

/-- `2*A173177(n+1)+3` -/
def P9838849959235681128.Spec : Prop :=
  ∀ n, P9838849959235681128.a n = A002476 (n + 1)

end A002476

/-! ## A002476.P7156176143895380593

`3*A153183(n+1)-2`
-/

namespace A002476.P7156176143895380593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A153183 (n + 1) - 2

end

end A002476.P7156176143895380593

namespace A002476

/-- `3*A153183(n+1)-2` -/
def P7156176143895380593.Spec : Prop :=
  ∀ n, P7156176143895380593.a n = A002476 (n + 1)

end A002476

/-! ## A002476.P15812194347433582501

`3*A034936(n+1)+4`
-/

namespace A002476.P15812194347433582501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A034936 (n + 1) + 4

end

end A002476.P15812194347433582501

namespace A002476

/-- `3*A034936(n+1)+4` -/
def P15812194347433582501.Spec : Prop :=
  ∀ n, P15812194347433582501.a n = A002476 (n + 1)

end A002476

/-! ## A002476.P13218784216530750333

`3*A107303(n+1)-5`
-/

namespace A002476.P13218784216530750333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A107303 (n + 1) - 5

end

end A002476.P13218784216530750333

namespace A002476

/-- `3*A107303(n+1)-5` -/
def P13218784216530750333.Spec : Prop :=
  ∀ n, P13218784216530750333.a n = A002476 (n + 1)

end A002476

/-! ## A002476.P4135874457847614857

`A022759(n+1)-A007528(n+1)`
-/

namespace A002476.P4135874457847614857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022759 (n + 1) - A007528 (n + 1)

end

end A002476.P4135874457847614857

namespace A002476

/-- `A022759(n+1)-A007528(n+1)` -/
def P4135874457847614857.Spec : Prop :=
  ∀ n, P4135874457847614857.a n = A002476 (n + 1)

end A002476

/-! ## A002476.P9574482558173237964

`A048629(n+1)/A007528(n+1)`
-/

namespace A002476.P9574482558173237964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048629 (n + 1) : ℚ) / (A007528 (n + 1) : ℚ)

end

end A002476.P9574482558173237964

namespace A002476

/-- `A048629(n+1)/A007528(n+1)` -/
def P9574482558173237964.Spec : Prop :=
  ∀ n, P9574482558173237964.a n = (A002476 (n + 1) : ℚ)

end A002476

/-! ## A002476.P14154987442704385016

`A048629(n+1)%A112772(n+1)`
-/

namespace A002476.P14154987442704385016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048629 (n + 1)) (A112772 (n + 1))

end

end A002476.P14154987442704385016

namespace A002476

/-- `A048629(n+1)%A112772(n+1)` -/
def P14154987442704385016.Spec : Prop :=
  ∀ n, P14154987442704385016.a n = A002476 (n + 1)

end A002476

/-! ## A002476.P15803872800474850847

`A024892(n+1)+A107303(n+1)+A034936(n+1)`
-/

namespace A002476.P15803872800474850847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1) + (A107303 (n + 1) + A034936 (n + 1))

end

end A002476.P15803872800474850847

namespace A002476

/-- `A024892(n+1)+A107303(n+1)+A034936(n+1)` -/
def P15803872800474850847.Spec : Prop :=
  ∀ n, P15803872800474850847.a n = A002476 (n + 1)

end A002476

/-! ## A002476.P10011752857900050411

`A024892(n+1)+A153183(n+1)+A024892(n+1)`
-/

namespace A002476.P10011752857900050411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1) + (A153183 (n + 1) + A024892 (n + 1))

end

end A002476.P10011752857900050411

namespace A002476

/-- `A024892(n+1)+A153183(n+1)+A024892(n+1)` -/
def P10011752857900050411.Spec : Prop :=
  ∀ n, P10011752857900050411.a n = A002476 (n + 1)

end A002476

/-! ## A002476.P3421149135101090420

`A007645(n+2)`
-/

namespace A002476.P3421149135101090420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2)

end

end A002476.P3421149135101090420

namespace A002476

/-- `A007645(n+2)` -/
def P3421149135101090420.Spec : Prop :=
  ∀ n, P3421149135101090420.a n = A002476 (n + 1)

end A002476

/-! ## A002476.P3709671903108786617

`A045375(n+2)`
-/

namespace A002476.P3709671903108786617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 2)

end

end A002476.P3709671903108786617

namespace A002476

/-- `A045375(n+2)` -/
def P3709671903108786617.Spec : Prop :=
  ∀ n, P3709671903108786617.a n = A002476 (n + 1)

end A002476

/-! ## A002476.P6042086489999055556

`A123365(n+2)`
-/

namespace A002476.P6042086489999055556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 2)

end

end A002476.P6042086489999055556

namespace A002476

/-- `A123365(n+2)` -/
def P6042086489999055556.Spec : Prop :=
  ∀ n, P6042086489999055556.a n = A002476 (n + 1)

end A002476

/-!
# A002477: Wonderful Demlo numbers: a(n) = ((10^n - 1)/9)^2.

The programs for A002477, the canonical program `A002477.P10075369365096777681` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002477 has offset 1).

The definition of A002477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002477.P10075369365096777681

`((10^(n+1)-1)/9)²`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002477

/-- `((10^(n+1)-1)/9)²` -/
def P10075369365096777681.Spec : Prop :=
  ∀ n, P10075369365096777681.a n = (A002477 (n + 1) : ℚ)

end A002477

/-! ## A002477.P7188947604548483206

`A075412(n+1)/9`
-/

namespace A002477.P7188947604548483206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075412 (n + 1) : ℚ) / 9

end

end A002477.P7188947604548483206

namespace A002477

/-- `A075412(n+1)/9` -/
def P7188947604548483206.Spec : Prop :=
  ∀ n, P7188947604548483206.a n = (A002477 (n + 1) : ℚ)

end A002477

/-! ## A002477.P5456486291786088855

`A178630(n+1)/18`
-/

namespace A002477.P5456486291786088855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178630 (n + 1) : ℚ) / 18

end

end A002477.P5456486291786088855

namespace A002477

/-- `A178630(n+1)/18` -/
def P5456486291786088855.Spec : Prop :=
  ∀ n, P5456486291786088855.a n = (A002477 (n + 1) : ℚ)

end A002477

/-! ## A002477.P13095724566251210250

`A178631(n+1)/27`
-/

namespace A002477.P13095724566251210250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178631 (n + 1) : ℚ) / 27

end

end A002477.P13095724566251210250

namespace A002477

/-- `A178631(n+1)/27` -/
def P13095724566251210250.Spec : Prop :=
  ∀ n, P13095724566251210250.a n = (A002477 (n + 1) : ℚ)

end A002477

/-! ## A002477.P15232832590072628323

`A075415(n+1)/36`
-/

namespace A002477.P15232832590072628323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075415 (n + 1) : ℚ) / 36

end

end A002477.P15232832590072628323

namespace A002477

/-- `A075415(n+1)/36` -/
def P15232832590072628323.Spec : Prop :=
  ∀ n, P15232832590072628323.a n = (A002477 (n + 1) : ℚ)

end A002477

/-! ## A002477.P18006745408478601932

`A178632(n+1)/45`
-/

namespace A002477.P18006745408478601932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178632 (n + 1) : ℚ) / 45

end

end A002477.P18006745408478601932

namespace A002477

/-- `A178632(n+1)/45` -/
def P18006745408478601932.Spec : Prop :=
  ∀ n, P18006745408478601932.a n = (A002477 (n + 1) : ℚ)

end A002477

/-! ## A002477.P16369896075003967463

`A178633(n+1)/54`
-/

namespace A002477.P16369896075003967463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178633 (n + 1) : ℚ) / 54

end

end A002477.P16369896075003967463

namespace A002477

/-- `A178633(n+1)/54` -/
def P16369896075003967463.Spec : Prop :=
  ∀ n, P16369896075003967463.a n = (A002477 (n + 1) : ℚ)

end A002477

/-! ## A002477.P1479301022814593951

`A178634(n+1)/63`
-/

namespace A002477.P1479301022814593951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178634 (n + 1) : ℚ) / 63

end

end A002477.P1479301022814593951

namespace A002477

/-- `A178634(n+1)/63` -/
def P1479301022814593951.Spec : Prop :=
  ∀ n, P1479301022814593951.a n = (A002477 (n + 1) : ℚ)

end A002477

/-! ## A002477.P8936183357591827320

`A178635(n+1)/72`
-/

namespace A002477.P8936183357591827320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178635 (n + 1) : ℚ) / 72

end

end A002477.P8936183357591827320

namespace A002477

/-- `A178635(n+1)/72` -/
def P8936183357591827320.Spec : Prop :=
  ∀ n, P8936183357591827320.a n = (A002477 (n + 1) : ℚ)

end A002477

/-! ## A002477.P3028613761234643432

`A059988(n+1)/81`
-/

namespace A002477.P3028613761234643432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059988 (n + 1) : ℚ) / 81

end

end A002477.P3028613761234643432

namespace A002477

/-- `A059988(n+1)/81` -/
def P3028613761234643432.Spec : Prop :=
  ∀ n, P3028613761234643432.a n = (A002477 (n + 1) : ℚ)

end A002477

/-!
# A002478: Bisection of A000930.

The programs for A002478, the canonical program `A002478.P15217715468948657098` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002478 has offset 0).

The definition of A002478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002478.P15217715468948657098

`a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002478

/-- `a(n-1)+2*a(n-2)+a(n-3)` -/
def P15217715468948657098.Spec : Prop :=
  ∀ n, (P15217715468948657098.a n : ℤ) = A002478 n

theorem P15217715468948657098.correct : P15217715468948657098.Spec := by
  intro n
  simp only [A002478]

end A002478

/-! ## A002478.P10181188588017626411

`ogf(-1/(-1+x+2x^2+x^3))`
-/

namespace A002478.P10181188588017626411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -2, -1] n

end

end A002478.P10181188588017626411

namespace A002478

/-- `ogf(-1/(-1+x+2x^2+x^3))` -/
def P10181188588017626411.Spec : Prop :=
  ∀ n, P10181188588017626411.a n = A002478 n

end A002478

/-! ## A002478.P11970283197113156809

`a(n-1)+a(n-2)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A002478.P11970283197113156809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + a (n - 3)))

end

end A002478.P11970283197113156809

namespace A002478

/-- `a(n-1)+a(n-2)+a(n-2)+a(n-3)` -/
def P11970283197113156809.Spec : Prop :=
  ∀ n, (P11970283197113156809.a n : ℤ) = A002478 n

theorem P11970283197113156809.correct : P11970283197113156809.Spec := by
  intro n
  simp only [A002478, Nat.add_sub_cancel, A002478.P11970283197113156809.a, A002478.P15217715468948657098.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A002478

/-! ## A002478.P14138273649898139897

`∑[A078007(n)]`
-/

namespace A002478.P14138273649898139897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002478.P14138273649898139897

namespace A002478

/-- `∑[A078007(n)]` -/
def P14138273649898139897.Spec : Prop :=
  ∀ n, P14138273649898139897.a n = A002478 n

end A002478

/-! ## A002478.P6051956358307013899

`A000930(2*n)`
-/

namespace A002478.P6051956358307013899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (2 * n)

end

end A002478.P6051956358307013899

namespace A002478

/-- `A000930(2*n)` -/
def P6051956358307013899.Spec : Prop :=
  ∀ n, P6051956358307013899.a n = A002478 n

end A002478

/-! ## A002478.P17098199276033651375

`A199804(2*n)`
-/

namespace A002478.P17098199276033651375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199804 (2 * n)

end

end A002478.P17098199276033651375

namespace A002478

/-- `A199804(2*n)` -/
def P17098199276033651375.Spec : Prop :=
  ∀ n, P17098199276033651375.a n = A002478 n

end A002478

/-! ## A002478.P10295276346563221272

`A109532(3*n)`
-/

namespace A002478.P10295276346563221272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109532 (3 * n)

end

end A002478.P10295276346563221272

namespace A002478

/-- `A109532(3*n)` -/
def P10295276346563221272.Spec : Prop :=
  ∀ n, P10295276346563221272.a n = A002478 n

end A002478

/-! ## A002478.P8502773096676491153

`A108104(4*n)`
-/

namespace A002478.P8502773096676491153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 (4 * n)

end

end A002478.P8502773096676491153

namespace A002478

/-- `A108104(4*n)` -/
def P8502773096676491153.Spec : Prop :=
  ∀ n, P8502773096676491153.a n = A002478 n

end A002478

/-! ## A002478.P18355238784147048234

`abs(∑[A078039(n)])`
-/

namespace A002478.P18355238784147048234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A002478.P18355238784147048234

namespace A002478

/-- `abs(∑[A078039(n)])` -/
def P18355238784147048234.Spec : Prop :=
  ∀ n, P18355238784147048234.a n = A002478 n

end A002478

/-! ## A002478.P6679158496354820724

`Δ[A192805(n+2)]`
-/

namespace A002478.P6679158496354820724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192805 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002478.P6679158496354820724

namespace A002478

/-- `Δ[A192805(n+2)]` -/
def P6679158496354820724.Spec : Prop :=
  ∀ n, P6679158496354820724.a n = A002478 n

end A002478

/-! ## A002478.P5217928496136844750

`∑[A058278(2*n)]`
-/

namespace A002478.P5217928496136844750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002478.P5217928496136844750

namespace A002478

/-- `∑[A058278(2*n)]` -/
def P5217928496136844750.Spec : Prop :=
  ∀ n, P5217928496136844750.a n = A002478 n

end A002478

/-! ## A002478.P17229802452979829904

`Δ[A167704(2*n)]`
-/

namespace A002478.P17229802452979829904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167704 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002478.P17229802452979829904

namespace A002478

/-- `Δ[A167704(2*n)]` -/
def P17229802452979829904.Spec : Prop :=
  ∀ n, P17229802452979829904.a n = A002478 n

end A002478

/-! ## A002478.P17922140385287381505

`Δ[A013979(Δ[n²])]`
-/

namespace A002478.P17922140385287381505
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002478.P17922140385287381505

namespace A002478

/-- `Δ[A013979(Δ[n²])]` -/
def P17922140385287381505.Spec : Prop :=
  ∀ n, P17922140385287381505.a n = A002478 n

end A002478

/-! ## A002478.P4098174441454898526

`A109531(3*n+1)`
-/

namespace A002478.P4098174441454898526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109531 (3 * n + 1)

end

end A002478.P4098174441454898526

namespace A002478

/-- `A109531(3*n+1)` -/
def P4098174441454898526.Spec : Prop :=
  ∀ n, P4098174441454898526.a n = A002478 n

end A002478

/-! ## A002478.P1096329288944532274

`A078012(2*n+3)`
-/

namespace A002478.P1096329288944532274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (2 * n + 3)

end

end A002478.P1096329288944532274

namespace A002478

/-- `A078012(2*n+3)` -/
def P1096329288944532274.Spec : Prop :=
  ∀ n, P1096329288944532274.a n = A002478 n

end A002478

/-! ## A002478.P3944403742884162699

`A135851(2*n+5)`
-/

namespace A002478.P3944403742884162699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (2 * n + 5)

end

end A002478.P3944403742884162699

namespace A002478

/-- `A135851(2*n+5)` -/
def P3944403742884162699.Spec : Prop :=
  ∀ n, P3944403742884162699.a n = A002478 n

end A002478

/-! ## A002478.P15457194530566958766

`A226916(4*n+7)`
-/

namespace A002478.P15457194530566958766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (4 * n + 7)

end

end A002478.P15457194530566958766

namespace A002478

/-- `A226916(4*n+7)` -/
def P15457194530566958766.Spec : Prop :=
  ∀ n, P15457194530566958766.a n = A002478 n

end A002478

/-! ## A002478.P1955225251298485710

`abs(record[A199804(n+1)])`
-/

namespace A002478.P1955225251298485710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A002478.P1955225251298485710

namespace A002478

/-- `abs(record[A199804(n+1)])` -/
def P1955225251298485710.Spec : Prop :=
  ∀ n, P1955225251298485710.a n = A002478 n

end A002478

/-! ## A002478.P18309289221195064388

`A141015(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A002478.P18309289221195064388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A141015 (n + 1) - a (n - 1)

end

end A002478.P18309289221195064388

namespace A002478

/-- `A141015(n+1)-a(n-1)` -/
def P18309289221195064388.Spec : Prop :=
  ∀ n, P18309289221195064388.a n = A002478 n

end A002478

/-! ## A002478.P14989404539187400554

`A141683(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A002478.P14989404539187400554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A141683 (n + 2) - a (n - 1)

end

end A002478.P14989404539187400554

namespace A002478

/-- `A141683(n+2)-a(n-1)` -/
def P14989404539187400554.Spec : Prop :=
  ∀ n, P14989404539187400554.a n = A002478 n

end A002478

/-!
# A002479: Numbers of the form x^2 + 2*y^2.

The programs for A002479, the canonical program `A002479.P5051516851553002121` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002479 has offset 1).

The definition of A002479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002479.P5051516851553002121

`∪[A154777(n+1), A083854(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A002479

/-- `∪[A154777(n+1), A083854(n)]` -/
def P5051516851553002121.Spec : Prop :=
  ∀ n, (P5051516851553002121.a n : ℤ) = A002479 (n + 1)

theorem P5051516851553002121.correct : P5051516851553002121.Spec := by
  intro n
  simp only [A002479, Nat.add_sub_cancel]

end A002479

/-! ## A002479.P623158701724053215

`∪[A034030(n+1), A034031(n+1)]`
-/

namespace A002479.P623158701724053215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002479.P623158701724053215

namespace A002479

/-- `∪[A034030(n+1), A034031(n+1)]` -/
def P623158701724053215.Spec : Prop :=
  ∀ n, (P623158701724053215.a n : ℤ) = A002479 (n + 1)

end A002479

/-! ## A002479.P15911281056020816841

`∪[A034030(n+1), A034034(n+1)]`
-/

namespace A002479.P15911281056020816841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002479.P15911281056020816841

namespace A002479

/-- `∪[A034030(n+1), A034034(n+1)]` -/
def P15911281056020816841.Spec : Prop :=
  ∀ n, (P15911281056020816841.a n : ℤ) = A002479 (n + 1)

end A002479

/-! ## A002479.P14317149364405604256

`∪[A034033(n+1), A034034(n+1)]`
-/

namespace A002479.P14317149364405604256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002479.P14317149364405604256

namespace A002479

/-- `∪[A034033(n+1), A034034(n+1)]` -/
def P14317149364405604256.Spec : Prop :=
  ∀ n, (P14317149364405604256.a n : ℤ) = A002479 (n + 1)

end A002479

/-! ## A002479.P4570582213225834508

`∪[A034030(n+1), A057127(n+1)]`
-/

namespace A002479.P4570582213225834508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002479.P4570582213225834508

namespace A002479

/-- `∪[A034030(n+1), A057127(n+1)]` -/
def P4570582213225834508.Spec : Prop :=
  ∀ n, (P4570582213225834508.a n : ℤ) = A002479 (n + 1)

end A002479

/-! ## A002479.P7579024935388433279

`∪[A034032(n+1), A057127(n+1)]`
-/

namespace A002479.P7579024935388433279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002479.P7579024935388433279

namespace A002479

/-- `∪[A034032(n+1), A057127(n+1)]` -/
def P7579024935388433279.Spec : Prop :=
  ∀ n, (P7579024935388433279.a n : ℤ) = A002479 (n + 1)

end A002479

/-! ## A002479.P17704005944714569940

`∪[A034034(n+1), A057127(n+1)]`
-/

namespace A002479.P17704005944714569940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002479.P17704005944714569940

namespace A002479

/-- `∪[A034034(n+1), A057127(n+1)]` -/
def P17704005944714569940.Spec : Prop :=
  ∀ n, (P17704005944714569940.a n : ℤ) = A002479 (n + 1)

end A002479

/-! ## A002479.P11738401430024546283

`∪[A154777(n+1), A034034(n+1)]`
-/

namespace A002479.P11738401430024546283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002479.P11738401430024546283

namespace A002479

/-- `∪[A154777(n+1), A034034(n+1)]` -/
def P11738401430024546283.Spec : Prop :=
  ∀ n, (P11738401430024546283.a n : ℤ) = A002479 (n + 1)

end A002479

/-! ## A002479.P4771629609201610012

`∪[A154777(n+1), A155562(n+1)]`
-/

namespace A002479.P4771629609201610012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002479.P4771629609201610012

namespace A002479

/-- `∪[A154777(n+1), A155562(n+1)]` -/
def P4771629609201610012.Spec : Prop :=
  ∀ n, (P4771629609201610012.a n : ℤ) = A002479 (n + 1)

end A002479

/-! ## A002479.P2108234369967730534

`lt[0, A033715(n)]`
-/

namespace A002479.P2108234369967730534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002479.P2108234369967730534

namespace A002479

/-- `lt[0, A033715(n)]` -/
def P2108234369967730534.Spec : Prop :=
  ∀ n, (P2108234369967730534.a n : ℤ) = A002479 (n + 1)

end A002479

/-! ## A002479.P6171220445702501700

`eq[1, A391183(n)]`
-/

namespace A002479.P6171220445702501700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391183 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002479.P6171220445702501700

namespace A002479

/-- `eq[1, A391183(n)]` -/
def P6171220445702501700.Spec : Prop :=
  ∀ n, (P6171220445702501700.a n : ℤ) = A002479 (n + 1)

end A002479

/-! ## A002479.P11869667317885865227

`lt[0, A139093(n)²]`
-/

namespace A002479.P11869667317885865227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139093 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002479.P11869667317885865227

namespace A002479

/-- `lt[0, A139093(n)²]` -/
def P11869667317885865227.Spec : Prop :=
  ∀ n, (P11869667317885865227.a n : ℤ) = A002479 (n + 1)

end A002479

/-! ## A002479.P17805292133917864379

`eq[1, A019425(A033715(n)²)]`
-/

namespace A002479.P17805292133917864379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A033715 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002479.P17805292133917864379

namespace A002479

/-- `eq[1, A019425(A033715(n)²)]` -/
def P17805292133917864379.Spec : Prop :=
  ∀ n, (P17805292133917864379.a n : ℤ) = A002479 (n + 1)

end A002479

/-! ## A002479.P13842030471940275657

`eq[1, A158388(A033715(n)²)]`
-/

namespace A002479.P13842030471940275657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A033715 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002479.P13842030471940275657

namespace A002479

/-- `eq[1, A158388(A033715(n)²)]` -/
def P13842030471940275657.Spec : Prop :=
  ∀ n, (P13842030471940275657.a n : ℤ) = A002479 (n + 1)

end A002479

/-! ## A002479.P13383818522205800234

`eq[2, A000122(A033715(n)²)]`
-/

namespace A002479.P13383818522205800234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A033715 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002479.P13383818522205800234

namespace A002479

/-- `eq[2, A000122(A033715(n)²)]` -/
def P13383818522205800234.Spec : Prop :=
  ∀ n, (P13383818522205800234.a n : ℤ) = A002479 (n + 1)

end A002479

/-! ## A002479.P3374768681583069206

`eq[1, A261143(A033715(n)+2)]`
-/

namespace A002479.P3374768681583069206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 (A033715 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002479.P3374768681583069206

namespace A002479

/-- `eq[1, A261143(A033715(n)+2)]` -/
def P3374768681583069206.Spec : Prop :=
  ∀ n, (P3374768681583069206.a n : ℤ) = A002479 (n + 1)

end A002479

/-! ## A002479.P9844916170387540137

`eq[2, A000122(A033715(n)^2)]`
-/

namespace A002479.P9844916170387540137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A033715 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002479.P9844916170387540137

namespace A002479

/-- `eq[2, A000122(A033715(n)^2)]` -/
def P9844916170387540137.Spec : Prop :=
  ∀ n, (P9844916170387540137.a n : ℤ) = A002479 (n + 1)

end A002479

/-! ## A002479.P17762636049882759687

`filter[A000378(n+1), A391183(#)]`
-/

namespace A002479.P17762636049882759687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A002479.P17762636049882759687

namespace A002479

/-- `filter[A000378(n+1), A391183(#)]` -/
def P17762636049882759687.Spec : Prop :=
  ∀ n, P17762636049882759687.a n = A002479 (n + 1)

end A002479

/-! ## A002479.P16973484625852985638

`filter[A000398(n+1), A391183(#)]`
-/

namespace A002479.P16973484625852985638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A002479.P16973484625852985638

namespace A002479

/-- `filter[A000398(n+1), A391183(#)]` -/
def P16973484625852985638.Spec : Prop :=
  ∀ n, P16973484625852985638.a n = A002479 (n + 1)

end A002479

/-! ## A002479.P16337472437383518842

`filter[A000401(n+1), A391183(#)]`
-/

namespace A002479.P16337472437383518842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A002479.P16337472437383518842

namespace A002479

/-- `filter[A000401(n+1), A391183(#)]` -/
def P16337472437383518842.Spec : Prop :=
  ∀ n, P16337472437383518842.a n = A002479 (n + 1)

end A002479

/-!
# A002480: Numbers of the form 2x^2 + 3y^2.

The programs for A002480, there is no canonical definition to state claims against.
-/

/-! ## A002480.P2633064825701051634

`lt[0, A108563(n)]`
-/

namespace A002480.P2633064825701051634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002480.P2633064825701051634

/-! ## A002480.P6862459339841271795

`lt[0, A263577(n)²]`
-/

namespace A002480.P6862459339841271795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263577 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002480.P6862459339841271795

/-! ## A002480.P17294881005878604023

`lt[A115660(abs(1-n)+1)+1, 1]`
-/

namespace A002480.P17294881005878604023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (|1 - (n : ℤ)| + 1).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A002480.P17294881005878604023

/-! ## A002480.P7466328421142199843

`eq[0, A000038(A108563(n)²)]`
-/

namespace A002480.P7466328421142199843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A108563 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002480.P7466328421142199843

/-! ## A002480.P10494935553675286198

`eq[0, A108563(A108563(n)²)]`
-/

namespace A002480.P10494935553675286198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108563 (A108563 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002480.P10494935553675286198

/-! ## A002480.P650072949190752333

`eq[2, A286016(A108563(n)+2)]`
-/

namespace A002480.P650072949190752333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286016 (A108563 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002480.P650072949190752333

/-! ## A002480.P13289316186088371652

`eq[1, A101666(2*A108563(n))]`
-/

namespace A002480.P13289316186088371652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101666 (2 * A108563 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002480.P13289316186088371652

/-! ## A002480.P17190078384713144353

`lt[1, A046113(2*n)+1]`
-/

namespace A002480.P17190078384713144353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002480.P17190078384713144353

/-! ## A002480.P11583063758756140082

`record[A025480(A002481(n+1))]`
-/

namespace A002480.P11583063758756140082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A002481 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002480.P11583063758756140082

/-! ## A002480.P1310027084087699220

`eq[0, A000038(A046113(2*n))]`
-/

namespace A002480.P1310027084087699220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A046113 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002480.P1310027084087699220

/-! ## A002480.P17492917077187334703

`eq[2, A000122(A046113(2*n)²)]`
-/

namespace A002480.P17492917077187334703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A046113 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002480.P17492917077187334703

/-! ## A002480.P17701822752602827742

`lt[1, A046113(A046113(2*n)²)]`
-/

namespace A002480.P17701822752602827742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 (A046113 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002480.P17701822752602827742

/-! ## A002480.P1698929007691429320

`eq[1, gcd(A000040(n+2), A046113(2*n))]`
-/

namespace A002480.P1698929007691429320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 2)) (A046113 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002480.P1698929007691429320

/-! ## A002480.P9909537965464510550

`lt[1, A000122(A229723(2*n)²)]`
-/

namespace A002480.P9909537965464510550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A229723 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002480.P9909537965464510550

/-!
# A002481: Numbers of form x^2 + 6y^2.

The programs for A002481, there is no canonical definition to state claims against.
-/

/-! ## A002481.P948947451727424248

`∪[A155569(n+1), A155716(n+1)]`
-/

namespace A002481.P948947451727424248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002481.P948947451727424248

/-! ## A002481.P859550963835447154

`lt[0, A046113(n)]`
-/

namespace A002481.P859550963835447154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002481.P859550963835447154

/-! ## A002481.P6296404991756225095

`eq[2, A000122(A046113(n)²)]`
-/

namespace A002481.P6296404991756225095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A046113 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002481.P6296404991756225095

/-! ## A002481.P10050645397833654661

`eq[2, A178815(A046113(n)+1)]`
-/

namespace A002481.P10050645397833654661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (A046113 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002481.P10050645397833654661

/-! ## A002481.P3446535477962641658

`eq[1, A261143(A046113(n)+2)]`
-/

namespace A002481.P3446535477962641658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 (A046113 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002481.P3446535477962641658

/-! ## A002481.P14868734332236637799

`eq[1, A001113(A046113(A046113(n)²))]`
-/

namespace A002481.P14868734332236637799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A046113 (A046113 n ^ 2).toNat).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002481.P14868734332236637799

/-! ## A002481.P7340213180970088797

`eq[1, A001222(A046113(A046113(n))+3)]`
-/

namespace A002481.P7340213180970088797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046113 (A046113 n).toNat + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002481.P7340213180970088797

/-! ## A002481.P15849872688867078936

`eq[1, A001113(A046113(A046113(n)^2))]`
-/

namespace A002481.P15849872688867078936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A046113 (A046113 n ^ 2).toNat).toNat + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002481.P15849872688867078936

/-! ## A002481.P13893298425817819635

`lt[0, abs(A229723(n))]`
-/

namespace A002481.P13893298425817819635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A229723 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002481.P13893298425817819635

/-! ## A002481.P15295177401633158950

`lt[1, A000122(A229723(n)²)]`
-/

namespace A002481.P15295177401633158950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A229723 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002481.P15295177401633158950

/-! ## A002481.P9645529995634364369

`eq[1, gcd(A000040(n+1), A046113(n))]`
-/

namespace A002481.P9645529995634364369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A046113 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002481.P9645529995634364369

/-! ## A002481.P12548995275796941746

`lt[1, A108563(2*n)+1]`
-/

namespace A002481.P12548995275796941746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108563 (2 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002481.P12548995275796941746

/-! ## A002481.P5055984866029669175

`eq[A000007(A108563(2*n)), 0]`
-/

namespace A002481.P5055984866029669175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A108563 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A002481.P5055984866029669175

/-! ## A002481.P16555274514581037426

`lt[A021913(n), A108563(2*n)]`
-/

namespace A002481.P16555274514581037426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108563 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A002481.P16555274514581037426

/-! ## A002481.P2885499894857188779

`eq[1, A002828(A108563(2*n)²)]`
-/

namespace A002481.P2885499894857188779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A108563 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002481.P2885499894857188779

/-! ## A002481.P12683194531418252016

`lt[A000007(A108563(2*n)²), 1]`
-/

namespace A002481.P12683194531418252016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A108563 (2 * n) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A002481.P12683194531418252016

/-! ## A002481.P6812750035919370285

`lt[1, A000122(A108563(2*n)²)]`
-/

namespace A002481.P6812750035919370285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A108563 (2 * n) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A002481.P6812750035919370285

/-! ## A002481.P17241110509386848329

`lt[A108563(A108563(2*n)²), 1]`
-/

namespace A002481.P17241110509386848329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108563 (A108563 (2 * n) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A002481.P17241110509386848329

/-! ## A002481.P7359140149865473419

`lt[A000007(n), 2*A108563(2*n)]`
-/

namespace A002481.P7359140149865473419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108563 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A002481.P7359140149865473419

/-! ## A002481.P6912103706628893840

`eq[A000038(A108563(2*n)), A000038(n+1)]`
-/

namespace A002481.P6912103706628893840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A108563 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002481.P6912103706628893840

/-!
# A002482: Theta series of Borcherds' 27-dimensional unimodular lattice U_27.

The programs for A002482, there is no canonical definition to state claims against.
-/

/-! ## A002482.P7860101400408611939

`A002434(n)+A002495(n)-A002490(n)`
-/

namespace A002482.P7860101400408611939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002434 n + (A002495 n - A002490 n)

end

end A002482.P7860101400408611939

/-!
# A002483: Expansion of Jacobi theta function {theta_1}'(q) in powers of q^(1/4).

The programs for A002483, the canonical program `A002483.P17529204388127574909` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002483 has offset 0).

The definition of A002483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002483.P17529204388127574909

`A000122(n)*A340944(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A002483

/-- `A000122(n)*A340944(n)` -/
def P17529204388127574909.Spec : Prop :=
  ∀ n, P17529204388127574909.a n = A002483 n

theorem P17529204388127574909.correct : P17529204388127574909.Spec := by
  intro n
  simp only [A002483]

end A002483

/-! ## A002483.P10035232776248211233

`A034949(2*(a(n-1)+n))` with `a(0)=0`
-/

namespace A002483.P10035232776248211233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A034949 (2 * (a (n - 1) + (n : ℤ))).toNat

end

end A002483.P10035232776248211233

namespace A002483

/-- `A034949(2*(a(n-1)+n))` -/
def P10035232776248211233.Spec : Prop :=
  ∀ n, P10035232776248211233.a n = A002483 n

end A002483

/-! ## A002483.P7346359934455784783

`A034949(a(n-1)+n+n)` with `a(0)=0`
-/

namespace A002483.P7346359934455784783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A034949 (a (n - 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A002483.P7346359934455784783

namespace A002483

/-- `A034949(a(n-1)+n+n)` -/
def P7346359934455784783.Spec : Prop :=
  ∀ n, P7346359934455784783.a n = A002483 n

end A002483

/-! ## A002483.P2172269684713616721

`A034949(2*(A093178(n)+A059841(n)))`
-/

namespace A002483.P2172269684713616721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034949 (2 * (A093178 n + A059841 n)).toNat

end

end A002483.P2172269684713616721

namespace A002483

/-- `A034949(2*(A093178(n)+A059841(n)))` -/
def P2172269684713616721.Spec : Prop :=
  ∀ n, P2172269684713616721.a n = A002483 n

end A002483

/-! ## A002483.P6336945462597542399

`A000035(n)*A034949(2*A093178(n))`
-/

namespace A002483.P6336945462597542399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A034949 (2 * A093178 n).toNat

end

end A002483.P6336945462597542399

namespace A002483

/-- `A000035(n)*A034949(2*A093178(n))` -/
def P6336945462597542399.Spec : Prop :=
  ∀ n, P6336945462597542399.a n = A002483 n

end A002483

/-! ## A002483.P8346060443473431511

`A034949(A093178(n)+A093178(n)+A059841(n))`
-/

namespace A002483.P8346060443473431511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034949 (A093178 n + (A093178 n + A059841 n)).toNat

end

end A002483.P8346060443473431511

namespace A002483

/-- `A034949(A093178(n)+A093178(n)+A059841(n))` -/
def P8346060443473431511.Spec : Prop :=
  ∀ n, P8346060443473431511.a n = A002483 n

end A002483

/-! ## A002483.P15547058074500771456

`A034949(2*(xor(1, n)+1))`
-/

namespace A002483.P15547058074500771456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034949 (2 * (Nat.xor 1 n + 1))

end

end A002483.P15547058074500771456

namespace A002483

/-- `A034949(2*(xor(1, n)+1))` -/
def P15547058074500771456.Spec : Prop :=
  ∀ n, P15547058074500771456.a n = A002483 n

end A002483

/-! ## A002483.P7230694817455489038

`A034949(A166519(n)+1)`
-/

namespace A002483.P7230694817455489038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034949 (A166519 n + 1).toNat

end

end A002483.P7230694817455489038

namespace A002483

/-- `A034949(A166519(n)+1)` -/
def P7230694817455489038.Spec : Prop :=
  ∀ n, P7230694817455489038.a n = A002483 n

end A002483

/-! ## A002483.P17795670844272242329

`A000035(n)*A034949(2*A109613(n))`
-/

namespace A002483.P17795670844272242329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A034949 (2 * A109613 n).toNat

end

end A002483.P17795670844272242329

namespace A002483

/-- `A000035(n)*A034949(2*A109613(n))` -/
def P17795670844272242329.Spec : Prop :=
  ∀ n, P17795670844272242329.a n = A002483 n

end A002483

/-! ## A002483.P8515029158060087782

`A034949(2*n+A034949(n+2)²)`
-/

namespace A002483.P8515029158060087782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034949 ((2 * n : ℤ) + A034949 (n + 2) ^ 2).toNat

end

end A002483.P8515029158060087782

namespace A002483

/-- `A034949(2*n+A034949(n+2)²)` -/
def P8515029158060087782.Spec : Prop :=
  ∀ n, P8515029158060087782.a n = A002483 n

end A002483

/-! ## A002483.P10278369180156077408

`A034949(2*A261671(n))`
-/

namespace A002483.P10278369180156077408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034949 (2 * A261671 n).toNat

end

end A002483.P10278369180156077408

namespace A002483

/-- `A034949(2*A261671(n))` -/
def P10278369180156077408.Spec : Prop :=
  ∀ n, P10278369180156077408.a n = A002483 n

end A002483

/-!
# A002484: Number of ménage permutations.

The programs for A002484, there is no canonical definition to state claims against.
-/

/-! ## A002484.P16555068005376260494

`A205580(n)+A129363(A333370(n))`
-/

namespace A002484.P16555068005376260494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205580 n + A129363 (A333370 n).toNat

end

end A002484.P16555068005376260494

/-! ## A002484.P10731565332353103466

`A262170(n+1)+A184983(A000105(n))`
-/

namespace A002484.P10731565332353103466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262170 (n + 1) + A184983 (A000105 n).toNat

end

end A002484.P10731565332353103466

/-!
# A002485: Numerators of convergents to Pi.

The programs for A002485, there is no canonical definition to state claims against.
-/

/-! ## A002485.P11218172732563965582

`A046947(A028310(n)-1)*A057427(n)`
-/

namespace A002485.P11218172732563965582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046947 (A028310 n - 1).toNat * A057427 n

end

end A002485.P11218172732563965582

/-! ## A002485.P5070683633528663140

`A046947(n-A057427(n))*A057427(n)`
-/

namespace A002485.P5070683633528663140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046947 ((n : ℤ) - A057427 n).toNat * A057427 n

end

end A002485.P5070683633528663140

/-! ## A002485.P16036337795388094656

`A046947(A014681(n))%A046947(n)`
-/

namespace A002485.P16036337795388094656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046947 (A014681 n).toNat) (A046947 n)

end

end A002485.P16036337795388094656

/-! ## A002485.P2557065976695966591

`A046947(n+1)%A046947(n)`
-/

namespace A002485.P2557065976695966591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046947 (n + 1)) (A046947 n)

end

end A002485.P2557065976695966591

/-! ## A002485.P4263672658334566104

`record[A057082(n+2)%A057082(n)]`
-/

namespace A002485.P4263672658334566104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057082 (n + 2)) (A057082 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002485.P4263672658334566104

/-! ## A002485.P4414549872741554407

`record[A046947(A008624(n))]%A046947(n)`
-/

namespace A002485.P4414549872741554407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046947 (A008624 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A046947 n)

end

end A002485.P4414549872741554407

/-! ## A002485.P4823717538869424382

`A046947(n+1)-A001203(n)*A046947(n)`
-/

namespace A002485.P4823717538869424382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046947 (n + 1) - A001203 n * A046947 n

end

end A002485.P4823717538869424382

/-!
# A002486: Apart from two leading terms (which are present by convention), denominators of convergents to Pi (A002485 and A046947 give numerators).

The programs for A002486, there is no canonical definition to state claims against.
-/

/-! ## A002486.P13284127251016087795

`A008624(n)*A093178(A242859(n+1))`
-/

namespace A002486.P13284127251016087795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 n * A093178 (A242859 (n + 1)).toNat

end

end A002486.P13284127251016087795

/-!
# A002487: Stern's diatomic series (or Stern-Brocot sequence): a(0) = 0, a(1) = 1; for n > 0: a(2*n) = a(n), a(2*n+1) = a(n) + a(n+1).

The programs for A002487, the canonical program `A002487.P6236436194084017932` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002487 has offset 0).

The definition of A002487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002487.P6956273171725176700

`A126606(n+1)/2`
-/

namespace A002487.P6956273171725176700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126606 (n + 1) : ℚ) / 2

end

end A002487.P6956273171725176700

namespace A002487

/-- `A126606(n+1)/2` -/
def P6956273171725176700.Spec : Prop :=
  ∀ n, P6956273171725176700.a n = (A002487 n : ℚ)

end A002487

/-! ## A002487.P13678100913426369200

`A000120(A277020(n))`
-/

namespace A002487.P13678100913426369200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A277020 n).toNat

end

end A002487.P13678100913426369200

namespace A002487

/-- `A000120(A277020(n))` -/
def P13678100913426369200.Spec : Prop :=
  ∀ n, P13678100913426369200.a n = A002487 n

end A002487

/-! ## A002487.P6188165215470754337

`A001222(A260443(n))`
-/

namespace A002487.P6188165215470754337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A260443 n).toNat

end

end A002487.P6188165215470754337

namespace A002487

/-- `A001222(A260443(n))` -/
def P6188165215470754337.Spec : Prop :=
  ∀ n, P6188165215470754337.a n = A002487 n

end A002487

/-! ## A002487.P6236436194084017932

`A000120(A168081(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A002487

/-- `A000120(A168081(n))` -/
def P6236436194084017932.Spec : Prop :=
  ∀ n, P6236436194084017932.a n = A002487 n

theorem P6236436194084017932.correct : P6236436194084017932.Spec := by
  intro n
  simp only [A002487]

end A002487

/-! ## A002487.P4798925417441417126

`a(n-1)+a(n-2)-2*a(n-2)%a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A002487.P4798925417441417126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (a (n - 2) - 2 * Int.tmod (a (n - 2)) (a (n - 1)))

end

end A002487.P4798925417441417126

namespace A002487

/-- `a(n-1)+a(n-2)-2*a(n-2)%a(n-1)` -/
def P4798925417441417126.Spec : Prop :=
  ∀ n, P4798925417441417126.a n = A002487 n

end A002487

/-! ## A002487.P13861849563088604754

`n-A284013(n)`
-/

namespace A002487.P13861849563088604754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A284013 n

end

end A002487.P13861849563088604754

namespace A002487

/-- `n-A284013(n)` -/
def P13861849563088604754.Spec : Prop :=
  ∀ n, P13861849563088604754.a n = A002487 n

end A002487

/-! ## A002487.P5970255936811959190

`∑{d}[n, A317839(#)]`
-/

namespace A002487.P5970255936811959190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317839 d

end

end A002487.P5970255936811959190

namespace A002487

/-- `∑{d}[n, A317839(#)]` -/
def P5970255936811959190.Spec : Prop :=
  ∀ n, P5970255936811959190.a n = A002487 n

end A002487

/-! ## A002487.P1059474062302478272

`n-∑{d}[n, A317841(#)]`
-/

namespace A002487.P1059474062302478272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ d ∈ Nat.divisors (f1 n), A317841 d

end

end A002487.P1059474062302478272

namespace A002487

/-- `n-∑{d}[n, A317841(#)]` -/
def P1059474062302478272.Spec : Prop :=
  ∀ n, P1059474062302478272.a n = A002487 n

end A002487

/-! ## A002487.P14623116885641691728

`A324337(xor(n, floor(n/2)))`
-/

namespace A002487.P14623116885641691728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A002487.P14623116885641691728

namespace A002487

/-- `A324337(xor(n, floor(n/2)))` -/
def P14623116885641691728.Spec : Prop :=
  ∀ n, P14623116885641691728.a n = A002487 n

end A002487

/-! ## A002487.P15445768153563357807

`A007306(n)-a(n-1)` with `a(0)=0`
-/

namespace A002487.P15445768153563357807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007306 n - a (n - 1)

end

end A002487.P15445768153563357807

namespace A002487

/-- `A007306(n)-a(n-1)` -/
def P15445768153563357807.Spec : Prop :=
  ∀ n, P15445768153563357807.a n = A002487 n

end A002487

/-! ## A002487.P14714631109266891450

`A324337(A003188(n))`
-/

namespace A002487.P14714631109266891450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A003188 n).toNat

end

end A002487.P14714631109266891450

namespace A002487

/-- `A324337(A003188(n))` -/
def P14714631109266891450.Spec : Prop :=
  ∀ n, P14714631109266891450.a n = A002487 n

end A002487

/-! ## A002487.P16200544600840639325

`A283978(n)+A283976(n)`
-/

namespace A002487.P16200544600840639325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283978 n + A283976 n

end

end A002487.P16200544600840639325

namespace A002487

/-- `A283978(n)+A283976(n)` -/
def P16200544600840639325.Spec : Prop :=
  ∀ n, P16200544600840639325.a n = A002487 n

end A002487

/-! ## A002487.P15822412972588331633

`A284272(n)+A284271(n)`
-/

namespace A002487.P15822412972588331633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284272 n + A284271 n

end

end A002487.P15822412972588331633

namespace A002487

/-- `A284272(n)+A284271(n)` -/
def P15822412972588331633.Spec : Prop :=
  ∀ n, P15822412972588331633.a n = A002487 n

end A002487

/-! ## A002487.P12820947019603698797

`A156140(n)-A321154(n)`
-/

namespace A002487.P12820947019603698797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156140 n - A321154 n

end

end A002487.P12820947019603698797

namespace A002487

/-- `A156140(n)-A321154(n)` -/
def P12820947019603698797.Spec : Prop :=
  ∀ n, P12820947019603698797.a n = A002487 n

end A002487

/-! ## A002487.P4847860708845181929

`A323901(n)-A331749(n)`
-/

namespace A002487.P4847860708845181929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323901 n - A331749 n

end

end A002487.P4847860708845181929

namespace A002487

/-- `A323901(n)-A331749(n)` -/
def P4847860708845181929.Spec : Prop :=
  ∀ n, P4847860708845181929.a n = A002487 n

end A002487

/-! ## A002487.P13098638154869636174

`xor(A323901(n), A331748(n))`
-/

namespace A002487.P13098638154869636174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A323901 n) (A331748 n)

end

end A002487.P13098638154869636174

namespace A002487

/-- `xor(A323901(n), A331748(n))` -/
def P13098638154869636174.Spec : Prop :=
  ∀ n, P13098638154869636174.a n = A002487 n

end A002487

/-! ## A002487.P4251288003520084460

`A102283(n)+2*A284556(n)`
-/

namespace A002487.P4251288003520084460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n + 2 * A284556 n

end

end A002487.P4251288003520084460

namespace A002487

/-- `A102283(n)+2*A284556(n)` -/
def P4251288003520084460.Spec : Prop :=
  ∀ n, P4251288003520084460.a n = A002487 n

end A002487

/-! ## A002487.P7712099394283579786

`A283977(n)+2*A283978(n)`
-/

namespace A002487.P7712099394283579786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 n + 2 * A283978 n

end

end A002487.P7712099394283579786

namespace A002487

/-- `A283977(n)+2*A283978(n)` -/
def P7712099394283579786.Spec : Prop :=
  ∀ n, P7712099394283579786.a n = A002487 n

end A002487

/-! ## A002487.P3945797497658649255

`A287896(n+1)-A288003(n+1)`
-/

namespace A002487.P3945797497658649255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (n + 1) - A288003 (n + 1)

end

end A002487.P3945797497658649255

namespace A002487

/-- `A287896(n+1)-A288003(n+1)` -/
def P3945797497658649255.Spec : Prop :=
  ∀ n, P3945797497658649255.a n = A002487 n

end A002487

/-! ## A002487.P1478227939819984886

`∑{d}[n+1, A209229(#)*A295515((n+1)/#)]`
-/

namespace A002487.P1478227939819984886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A209229 d * A295515 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A002487.P1478227939819984886

namespace A002487

/-- `∑{d}[n+1, A209229(#)*A295515((n+1)/#)]` -/
def P1478227939819984886.Spec : Prop :=
  ∀ n, P1478227939819984886.a n = A002487 n

end A002487

/-!
# A002488: a(n) = n^(n^n).

The programs for A002488, there is no canonical definition to state claims against.
-/

/-! ## A002488.P319376943801659086

`(n-1)^(n-1)^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002488.P319376943801659086
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℝ) ^ (((n : ℤ) - 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)

end

end A002488.P319376943801659086

/-!
# A002489: a(n) = n^(n^2), or (n^n)^n.

The programs for A002489, the canonical program `A002489.P2755551993716312646` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002489 has offset 0).

The definition of A002489 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n²` (program `A002489.P10577126304249273050`, by `A002489.P10577126304249273050.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002489.P10577126304249273050

`n^n²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002489.P10577126304249273050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n ^ 2

end

end A002489.P10577126304249273050

namespace A002489

/-- `n^n²` -/
def P10577126304249273050.Spec : Prop :=
  ∀ n, (P10577126304249273050.a n : ℤ) = A002489 n

theorem P10577126304249273050.correct : P10577126304249273050.Spec := by
  intro n
  simp only [A002489, Nat.add_sub_cancel, A002489.P10577126304249273050.a, A002489.P2755551993716312646.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A002489

/-! ## A002489.P2755551993716312646

`(n^n)^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002489

/-- `(n^n)^n` -/
def P2755551993716312646.Spec : Prop :=
  ∀ n, (P2755551993716312646.a n : ℤ) = A002489 n

theorem P2755551993716312646.correct : P2755551993716312646.Spec := by
  intro n
  simp only [A002489]

end A002489

/-!
# A002490: Theta series of 27-dimensional unimodular lattice with root system A_1 and a parity vector of norm 3.

The programs for A002490, there is no canonical definition to state claims against.
-/

/-! ## A002490.P3462897836402324607

`A002434(n)+A002495(n)-A002482(n)`
-/

namespace A002490.P3462897836402324607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002434 n + (A002495 n - A002482 n)

end

end A002490.P3462897836402324607

/-!
# A002491: Smallest number of stones in Tchoukaillon (or Mancala, or Kalahari) solitaire that make use of n-th hole.

The programs for A002491, there is no canonical definition to state claims against.
-/

/-! ## A002491.P3900244975292133514

`A007952(n)+1`
-/

namespace A002491.P3900244975292133514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007952 n + 1

end

end A002491.P3900244975292133514

/-! ## A002491.P2475055245266773895

`∑[A028913(abs(1-n))]-1`
-/

namespace A002491.P2475055245266773895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028913 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A002491.P2475055245266773895

/-! ## A002491.P582435418083353191

`A028913(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A002491.P582435418083353191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028913 (n - 1) + a (n - 1)

end

end A002491.P582435418083353191

/-! ## A002491.P18265815495640778141

`∑[A028913(n-A057427(n))]`
-/

namespace A002491.P18265815495640778141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028913 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002491.P18265815495640778141

/-! ## A002491.P11069440661674997200

`∑[A028913(n)]-A028913(n)+1`
-/

namespace A002491.P11069440661674997200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A028913 n + 1

end

end A002491.P11069440661674997200

/-! ## A002491.P14567012691901053136

`A108696(n+2)-1`
-/

namespace A002491.P14567012691901053136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108696 (n + 2) - 1

end

end A002491.P14567012691901053136

/-! ## A002491.P4346224096592205031

`∑[abs(Δ[A108696(n+1)])]`
-/

namespace A002491.P4346224096592205031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108696 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002491.P4346224096592205031

/-! ## A002491.P16029265087076022103

`2*A104738(n+1)-A028913(n)`
-/

namespace A002491.P16029265087076022103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104738 (n + 1) - A028913 n

end

end A002491.P16029265087076022103

/-! ## A002491.P14111430477406542296

`∑[A028310(Δ[A108696(n+1)])]`
-/

namespace A002491.P14111430477406542296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108696 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002491.P14111430477406542296

/-! ## A002491.P4429002076703083525

`lt[n, A028920(n)²]+1`
-/

namespace A002491.P4429002076703083525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A002491.P4429002076703083525

/-! ## A002491.P10519845611403612943

`eq[1, A130747(n+1)]+1`
-/

namespace A002491.P10519845611403612943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002491.P10519845611403612943

/-! ## A002491.P8107431137932562674

`A015906(A007952(n))`
-/

namespace A002491.P8107431137932562674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A007952 n).toNat

end

end A002491.P8107431137932562674

/-! ## A002491.P16838957509057120392

`A023443(A108696(n+2))`
-/

namespace A002491.P16838957509057120392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A108696 (n + 2)).toNat

end

end A002491.P16838957509057120392

/-! ## A002491.P12538272389735358697

`A023444(A108696(n+2)+1)`
-/

namespace A002491.P12538272389735358697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A108696 (n + 2) + 1).toNat

end

end A002491.P12538272389735358697

/-! ## A002491.P2853253382988172993

`record[A000027(n+1)*A028920(n)]/A000027(n+1)`
-/

namespace A002491.P2853253382988172993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A028920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000027 (n + 1) : ℚ)

end

end A002491.P2853253382988172993

/-! ## A002491.P5186726761635508670

`eq[A028920(n), A082447(n+1)]+1`
-/

namespace A002491.P5186726761635508670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A002491.P5186726761635508670

/-! ## A002491.P17296211393716972787

`A113749(∑[n+2])`
-/

namespace A002491.P17296211393716972787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113749 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002491.P17296211393716972787

/-! ## A002491.P9766991680158189574

`A130747(xor(1, 2*A007952(n)))`
-/

namespace A002491.P9766991680158189574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (Int.xor 1 (2 * A007952 n)).toNat

end

end A002491.P9766991680158189574

/-! ## A002491.P3054463166636747885

`record[A004525(n+1)/A130747(A004525(n+1))]`
-/

namespace A002491.P3054463166636747885
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 (n + 1) : ℚ) / (A130747 (A004525 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002491.P3054463166636747885

/-! ## A002491.P6149575587675448432

`record[A130747(n+2)/A130747(A130747(n+2))]`
-/

namespace A002491.P6149575587675448432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130747 (n + 2) : ℚ) / (A130747 (A130747 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002491.P6149575587675448432

/-!
# A002492: Sum of the first n even squares: a(n) = 2*n*(n+1)*(2*n+1)/3.

The programs for A002492, the canonical program `A002492.P13381774757906209524` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002492 has offset 0).

The definition of A002492 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002492.P13381774757906209524

`C(2*n+2, 3)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002492

/-- `C(2*n+2, 3)` -/
def P13381774757906209524.Spec : Prop :=
  ∀ n, (P13381774757906209524.a n : ℤ) = A002492 n

theorem P13381774757906209524.correct : P13381774757906209524.Spec := by
  intro n
  simp only [A002492]

end A002492

/-! ## A002492.P15831678356386983600

`2*n*(n+1)*(2*n+1)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002492.P15831678356386983600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n * (n + 1) * (2 * n + 1) : ℚ) / 3

end

end A002492.P15831678356386983600

namespace A002492

/-- `2*n*(n+1)*(2*n+1)/3` -/
def P15831678356386983600.Spec : Prop :=
  ∀ n, P15831678356386983600.a n = (A002492 n : ℚ)

end A002492

/-! ## A002492.P15777747973247992323

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=20, a(3)=56`
-/

namespace A002492.P15777747973247992323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 20, 56] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A002492.P15777747973247992323

namespace A002492

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P15777747973247992323.Spec : Prop :=
  ∀ n, P15777747973247992323.a n = A002492 n

end A002492

/-! ## A002492.P12932520052735264725

`A166464(n)-1`
-/

namespace A002492.P12932520052735264725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166464 n - 1

end

end A002492.P12932520052735264725

namespace A002492

/-- `A166464(n)-1` -/
def P12932520052735264725.Spec : Prop :=
  ∀ n, P12932520052735264725.a n = A002492 n

end A002492

/-! ## A002492.P4347241022586102456

`2*A006331(n)`
-/

namespace A002492.P4347241022586102456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006331 n

end

end A002492.P4347241022586102456

namespace A002492

/-- `2*A006331(n)` -/
def P4347241022586102456.Spec : Prop :=
  ∀ n, P4347241022586102456.a n = A002492 n

end A002492

/-! ## A002492.P2434597142758576457

`4*A000330(n)`
-/

namespace A002492.P2434597142758576457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000330 n

end

end A002492.P2434597142758576457

namespace A002492

/-- `4*A000330(n)` -/
def P2434597142758576457.Spec : Prop :=
  ∀ n, P2434597142758576457.a n = A002492 n

end A002492

/-! ## A002492.P10117165901853080407

`A002412(n)+A016061(n)`
-/

namespace A002492.P10117165901853080407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 n + A016061 n

end

end A002492.P10117165901853080407

namespace A002492

/-- `A002412(n)+A016061(n)` -/
def P10117165901853080407.Spec : Prop :=
  ∀ n, P10117165901853080407.a n = A002492 n

end A002492

/-! ## A002492.P18336176141197704407

`A000292(2*n)`
-/

namespace A002492.P18336176141197704407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * n)

end

end A002492.P18336176141197704407

namespace A002492

/-- `A000292(2*n)` -/
def P18336176141197704407.Spec : Prop :=
  ∀ n, P18336176141197704407.a n = A002492 n

end A002492

/-! ## A002492.P16867158338778556216

`lcm(2, ∑[(2*n)²])`
-/

namespace A002492.P16867158338778556216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002492.P16867158338778556216

namespace A002492

/-- `lcm(2, ∑[(2*n)²])` -/
def P16867158338778556216.Spec : Prop :=
  ∀ n, (P16867158338778556216.a n : ℤ) = A002492 n

end A002492

/-! ## A002492.P3618121156234239691

`record[C(abs(xor(n, -2)), 3)]`
-/

namespace A002492.P3618121156234239691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |Int.xor (n : ℤ) (-2)|.toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002492.P3618121156234239691

namespace A002492

/-- `record[C(abs(xor(n, -2)), 3)]` -/
def P3618121156234239691.Spec : Prop :=
  ∀ n, (P3618121156234239691.a n : ℤ) = A002492 n

end A002492

/-! ## A002492.P7144620036058631123

`record[C(xor(1, n)+1, 3)]`
-/

namespace A002492.P7144620036058631123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002492.P7144620036058631123

namespace A002492

/-- `record[C(xor(1, n)+1, 3)]` -/
def P7144620036058631123.Spec : Prop :=
  ∀ n, (P7144620036058631123.a n : ℤ) = A002492 n

end A002492

/-! ## A002492.P8926273308667122131

`record[C(and(n, n+1), 3)]`
-/

namespace A002492.P8926273308667122131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land n (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002492.P8926273308667122131

namespace A002492

/-- `record[C(and(n, n+1), 3)]` -/
def P8926273308667122131.Spec : Prop :=
  ∀ n, (P8926273308667122131.a n : ℤ) = A002492 n

end A002492

/-! ## A002492.P7909225968921498260

`Δ[2*C(n², 2)/3]`
-/

namespace A002492.P7909225968921498260
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose (n ^ 2) 2 : ℚ) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002492.P7909225968921498260

namespace A002492

/-- `Δ[2*C(n², 2)/3]` -/
def P7909225968921498260.Spec : Prop :=
  ∀ n, P7909225968921498260.a n = (A002492 n : ℚ)

end A002492

/-! ## A002492.P5579451039031159193

`∑[∑[a(n-1)+8]]` with `a(0)=0, a(1)=4`
-/

namespace A002492.P5579451039031159193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002492.P5579451039031159193

namespace A002492

/-- `∑[∑[a(n-1)+8]]` -/
def P5579451039031159193.Spec : Prop :=
  ∀ n, (P5579451039031159193.a n : ℤ) = A002492 n

end A002492

/-! ## A002492.P9845092844479976170

`a(n-1)+(2*n)²` with `a(0)=0`
-/

namespace A002492.P9845092844479976170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (2 * n) ^ 2

end

end A002492.P9845092844479976170

namespace A002492

/-- `a(n-1)+(2*n)²` -/
def P9845092844479976170.Spec : Prop :=
  ∀ n, (P9845092844479976170.a n : ℤ) = A002492 n

end A002492

/-! ## A002492.P8624063233860975394

`and(-2, C(n+2+n, 3))`
-/

namespace A002492.P8624063233860975394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (Nat.choose (n + 2 + n) 3 : ℤ)

end

end A002492.P8624063233860975394

namespace A002492

/-- `and(-2, C(n+2+n, 3))` -/
def P8624063233860975394.Spec : Prop :=
  ∀ n, P8624063233860975394.a n = A002492 n

end A002492

/-! ## A002492.P15490176946841465864

`∑[∑[ogf((4x+4x^2)/(1-2x+x^2))]]`
-/

namespace A002492.P15490176946841465864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002492.P15490176946841465864

namespace A002492

/-- `∑[∑[ogf((4x+4x^2)/(1-2x+x^2))]]` -/
def P15490176946841465864.Spec : Prop :=
  ∀ n, P15490176946841465864.a n = A002492 n

end A002492

/-! ## A002492.P14155904177779379828

`ogf((4x+4x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A002492.P14155904177779379828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 4] [1, -4, 6, -4, 1] n

end

end A002492.P14155904177779379828

namespace A002492

/-- `ogf((4x+4x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P14155904177779379828.Spec : Prop :=
  ∀ n, P14155904177779379828.a n = A002492 n

end A002492

/-! ## A002492.P7787494332472478907

`∑[(2*n)²%((n+1)^10)]`
-/

namespace A002492.P7787494332472478907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2 % (n + 1) ^ 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002492.P7787494332472478907

namespace A002492

/-- `∑[(2*n)²%((n+1)^10)]` -/
def P7787494332472478907.Spec : Prop :=
  ∀ n, (P7787494332472478907.a n : ℤ) = A002492 n

end A002492

/-! ## A002492.P10028777960802997058

`A050407(2*n+3)-1`
-/

namespace A002492.P10028777960802997058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 (2 * n + 3) - 1

end

end A002492.P10028777960802997058

namespace A002492

/-- `A050407(2*n+3)-1` -/
def P10028777960802997058.Spec : Prop :=
  ∀ n, P10028777960802997058.a n = A002492 n

end A002492

/-!
# A002493: Number of ways to arrange n non-attacking kings on an n X n board, with 2 sides identified to form a cylinder, with 1 in each row and column.

The programs for A002493, there is no canonical definition to state claims against.
-/

/-! ## A002493.P13323984974165397009

`A338838(∑[n+2])`
-/

namespace A002493.P13323984974165397009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338838 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002493.P13323984974165397009

/-! ## A002493.P8529882616907486783

`A325189(A005505(n+1))`
-/

namespace A002493.P8529882616907486783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325189 (A005505 (n + 1)).toNat

end

end A002493.P8529882616907486783

/-! ## A002493.P1734389222119886022

`A324749(A000125(n))-A082355(n)`
-/

namespace A002493.P1734389222119886022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324749 (A000125 n).toNat - A082355 n

end

end A002493.P1734389222119886022

/-!
# A002494: Number of n-node graphs without isolated nodes.

The programs for A002494, there is no canonical definition to state claims against.
-/

/-! ## A002494.P4152730135384815779

`A217653(∑[n])`
-/

namespace A002494.P4152730135384815779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217653 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002494.P4152730135384815779

/-! ## A002494.P690812485200500573

`A369202(n)+A368834(n)`
-/

namespace A002494.P690812485200500573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369202 n + A368834 n

end

end A002494.P690812485200500573

/-! ## A002494.P4711495531618499595

`A324693(A028310(n))+A261919(n)`
-/

namespace A002494.P4711495531618499595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324693 (A028310 n).toNat + A261919 n

end

end A002494.P4711495531618499595

/-! ## A002494.P16619140955235442288

`A000088(n)+A367142(n)-A001349(n)`
-/

namespace A002494.P16619140955235442288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n + (A367142 n - A001349 n)

end

end A002494.P16619140955235442288

/-! ## A002494.P8038633594601087857

`A327075(n)+A001349(n)%A000088(n)`
-/

namespace A002494.P8038633594601087857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327075 n + Int.tmod (A001349 n) (A000088 n)

end

end A002494.P8038633594601087857

/-!
# A002495: Theta series of 27-dimensional unimodular lattice with root system A_1 with no parity vector of norm 3.

The programs for A002495, there is no canonical definition to state claims against.
-/

/-! ## A002495.P4503677800205729814

`A002482(n)+A002490(n)-A002434(n)`
-/

namespace A002495.P4503677800205729814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002482 n + (A002490 n - A002434 n)

end

end A002495.P4503677800205729814

/-!
# A002496: Primes of the form k^2 + 1.

The programs for A002496, the canonical program `A002496.P13667531374760205001` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002496 has offset 1).

The definition of A002496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002496.P5364547111178281642

`1+A005574(n+1)²`
-/

namespace A002496.P5364547111178281642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A005574 (n + 1) ^ 2

end

end A002496.P5364547111178281642

namespace A002496

/-- `1+A005574(n+1)²` -/
def P5364547111178281642.Spec : Prop :=
  ∀ n, P5364547111178281642.a n = A002496 (n + 1)

end A002496

/-! ## A002496.P2014173796494255932

`A075408(n+1)+1`
-/

namespace A002496.P2014173796494255932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075408 (n + 1) + 1

end

end A002496.P2014173796494255932

namespace A002496

/-- `A075408(n+1)+1` -/
def P2014173796494255932.Spec : Prop :=
  ∀ n, P2014173796494255932.a n = A002496 (n + 1)

end A002496

/-! ## A002496.P12063536120101135245

`(A059793(n)/2)²+1`
-/

namespace A002496.P12063536120101135245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A059793 n : ℚ) / 2) ^ 2 + 1

end

end A002496.P12063536120101135245

namespace A002496

/-- `(A059793(n)/2)²+1` -/
def P12063536120101135245.Spec : Prop :=
  ∀ n, P12063536120101135245.a n = (A002496 (n + 1) : ℚ)

end A002496

/-! ## A002496.P9256930998982070249

`A193558(n)+a(n-1)` with `a(0)=2`
-/

namespace A002496.P9256930998982070249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A193558 n + a (n - 1)

end

end A002496.P9256930998982070249

namespace A002496

/-- `A193558(n)+a(n-1)` -/
def P9256930998982070249.Spec : Prop :=
  ∀ n, P9256930998982070249.a n = A002496 (n + 1)

end A002496

/-! ## A002496.P13667531374760205001

`A121326(n%a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A002496

/-- `A121326(n%a(n-1))` -/
def P13667531374760205001.Spec : Prop :=
  ∀ n, P13667531374760205001.a n = A002496 (n + 1)

theorem P13667531374760205001.correct : P13667531374760205001.Spec := by
  intro n
  simp only [A002496, Nat.add_sub_cancel]

end A002496

/-! ## A002496.P13883139585318523908

`(A089593(n+1)+1)²+1`
-/

namespace A002496.P13883139585318523908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A089593 (n + 1) + 1) ^ 2 + 1

end

end A002496.P13883139585318523908

namespace A002496

/-- `(A089593(n+1)+1)²+1` -/
def P13883139585318523908.Spec : Prop :=
  ∀ n, P13883139585318523908.a n = A002496 (n + 1)

end A002496

/-! ## A002496.P8953906409072008766

`(A090693(n+1)-1)²+1`
-/

namespace A002496.P8953906409072008766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090693 (n + 1) - 1) ^ 2 + 1

end

end A002496.P8953906409072008766

namespace A002496

/-- `(A090693(n+1)-1)²+1` -/
def P8953906409072008766.Spec : Prop :=
  ∀ n, P8953906409072008766.a n = A002496 (n + 1)

end A002496

/-! ## A002496.P8340021203818017293

`A121326(n+1)-A193558(n+1)`
-/

namespace A002496.P8340021203818017293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (n + 1) - A193558 (n + 1)

end

end A002496.P8340021203818017293

namespace A002496

/-- `A121326(n+1)-A193558(n+1)` -/
def P8340021203818017293.Spec : Prop :=
  ∀ n, P8340021203818017293.a n = A002496 (n + 1)

end A002496

/-! ## A002496.P964930205645822265

`A382617(n+1)/A005574(n+1)`
-/

namespace A002496.P964930205645822265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382617 (n + 1) : ℚ) / (A005574 (n + 1) : ℚ)

end

end A002496.P964930205645822265

namespace A002496

/-- `A382617(n+1)/A005574(n+1)` -/
def P964930205645822265.Spec : Prop :=
  ∀ n, P964930205645822265.a n = (A002496 (n + 1) : ℚ)

end A002496

/-! ## A002496.P18392291659817782802

`∩[A054755(n+1), A054964(n+1)]`
-/

namespace A002496.P18392291659817782802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002496.P18392291659817782802

namespace A002496

/-- `∩[A054755(n+1), A054964(n+1)]` -/
def P18392291659817782802.Spec : Prop :=
  ∀ n, (P18392291659817782802.a n : ℤ) = A002496 (n + 1)

end A002496

/-! ## A002496.P8647644049907897456

`∪[A037896(n+1), A121326(n+1)]`
-/

namespace A002496.P8647644049907897456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002496.P8647644049907897456

namespace A002496

/-- `∪[A037896(n+1), A121326(n+1)]` -/
def P8647644049907897456.Spec : Prop :=
  ∀ n, (P8647644049907897456.a n : ℤ) = A002496 (n + 1)

end A002496

/-! ## A002496.P6450570886979051838

`A090693(n+1)+A005574(n+1)*A089593(n+1)`
-/

namespace A002496.P6450570886979051838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1) + A005574 (n + 1) * A089593 (n + 1)

end

end A002496.P6450570886979051838

namespace A002496

/-- `A090693(n+1)+A005574(n+1)*A089593(n+1)` -/
def P6450570886979051838.Spec : Prop :=
  ∀ n, P6450570886979051838.a n = A002496 (n + 1)

end A002496

/-! ## A002496.P15119916429840418500

`A163588(A065475(n+1))`
-/

namespace A002496.P15119916429840418500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (A065475 (n + 1)).toNat

end

end A002496.P15119916429840418500

namespace A002496

/-- `A163588(A065475(n+1))` -/
def P15119916429840418500.Spec : Prop :=
  ∀ n, P15119916429840418500.a n = A002496 (n + 1)

end A002496

/-! ## A002496.P6756454225432624411

`A163588(A181440(n+2))`
-/

namespace A002496.P6756454225432624411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (A181440 (n + 2)).toNat

end

end A002496.P6756454225432624411

namespace A002496

/-- `A163588(A181440(n+2))` -/
def P6756454225432624411.Spec : Prop :=
  ∀ n, P6756454225432624411.a n = A002496 (n + 1)

end A002496

/-! ## A002496.P7456691730648424846

`A163588(A184985(n+2))`
-/

namespace A002496.P7456691730648424846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (A184985 (n + 2)).toNat

end

end A002496.P7456691730648424846

namespace A002496

/-- `A163588(A184985(n+2))` -/
def P7456691730648424846.Spec : Prop :=
  ∀ n, P7456691730648424846.a n = A002496 (n + 1)

end A002496

/-! ## A002496.P3824919027099609443

`∩[A054755(n+1), A163588(n+1)]`
-/

namespace A002496.P3824919027099609443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002496.P3824919027099609443

namespace A002496

/-- `∩[A054755(n+1), A163588(n+1)]` -/
def P3824919027099609443.Spec : Prop :=
  ∀ n, (P3824919027099609443.a n : ℤ) = A002496 (n + 1)

end A002496

/-! ## A002496.P1267348718425078848

`∩[A054964(n+1), A163588(n+1)]`
-/

namespace A002496.P1267348718425078848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002496.P1267348718425078848

namespace A002496

/-- `∩[A054964(n+1), A163588(n+1)]` -/
def P1267348718425078848.Spec : Prop :=
  ∀ n, (P1267348718425078848.a n : ℤ) = A002496 (n + 1)

end A002496

/-! ## A002496.P17983082688740924876

`A163588(n+2)-A010051(2*(n+1))`
-/

namespace A002496.P17983082688740924876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (n + 2) - A010051 (2 * (n + 1))

end

end A002496.P17983082688740924876

namespace A002496

/-- `A163588(n+2)-A010051(2*(n+1))` -/
def P17983082688740924876.Spec : Prop :=
  ∀ n, P17983082688740924876.a n = A002496 (n + 1)

end A002496

/-! ## A002496.P16841048041721478869

`∩[A276460(n+1), A054755(n+1)]`
-/

namespace A002496.P16841048041721478869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002496.P16841048041721478869

namespace A002496

/-- `∩[A276460(n+1), A054755(n+1)]` -/
def P16841048041721478869.Spec : Prop :=
  ∀ n, (P16841048041721478869.a n : ℤ) = A002496 (n + 1)

end A002496

/-! ## A002496.P13658445243237110432

`∩[A054754(n+1), A163588(n+1)]`
-/

namespace A002496.P13658445243237110432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002496.P13658445243237110432

namespace A002496

/-- `∩[A054754(n+1), A163588(n+1)]` -/
def P13658445243237110432.Spec : Prop :=
  ∀ n, (P13658445243237110432.a n : ℤ) = A002496 (n + 1)

end A002496

/-!
# A002497: Numbers N in A002809 such that there is rho > 0 such that for all A > 0, A008475(A)-A008475(N) >= rho*log(A/N).

The programs for A002497, there is no canonical definition to state claims against.
-/

/-! ## A002497.P3210550753001253039

`A074103(A002498(n+1))`
-/

namespace A002497.P3210550753001253039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074103 (A002498 (n + 1)).toNat

end

end A002497.P3210550753001253039

/-! ## A002497.P16605831293472574414

`A051703(A002498(n+1)%A049059(n))`
-/

namespace A002497.P16605831293472574414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051703 (Int.tmod (A002498 (n + 1)) (A049059 n)).toNat

end

end A002497.P16605831293472574414

/-!
# A002499: Number of self-converse digraphs with n nodes.

The programs for A002499, there is no canonical definition to state claims against.
-/

/-! ## A002499.P6061611976779737658

`A054933(n+1)+A054933(n+1)-A000273(n+1)`
-/

namespace A002499.P6061611976779737658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054933 (n + 1) + (A054933 (n + 1) - A000273 (n + 1))

end

end A002499.P6061611976779737658

