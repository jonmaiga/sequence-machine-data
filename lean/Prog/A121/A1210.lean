import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A121001: Denominators of partial sums of Catalan numbers scaled by powers of 1/18^2 = 1/324.

The programs for A121001, there is no canonical definition to state claims against.
-/

/-! ## A121001.P18156191503534470292

`A000578(A000244(n))*A120783(n)`
-/

namespace A121001.P18156191503534470292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000244 n).toNat * A120783 n

end

end A121001.P18156191503534470292

/-!
# A121002: Numerators of partial sums of Catalan numbers scaled by powers of 1/5.

The programs for A121002, the canonical program `A121002.P11480597165247636129` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121002 has offset 0).

The definition of A121002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121002.P11480597165247636129

`A046714(n)/gcd(A000351(n), A046714(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A121002

/-- `A046714(n)/gcd(A000351(n), A046714(n))` -/
def P11480597165247636129.Spec : Prop :=
  ∀ n, P11480597165247636129.a n = (A121002 n : ℚ)

end A121002

/-! ## A121002.P2455101878571706896

`A046714(n)%A251048(A251074(n))`
-/

namespace A121002.P2455101878571706896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046714 n) (A251048 (A251074 n).toNat)

end

end A121002.P2455101878571706896

namespace A121002

/-- `A046714(n)%A251048(A251074(n))` -/
def P2455101878571706896.Spec : Prop :=
  ∀ n, P2455101878571706896.a n = A121002 n

end A121002

/-! ## A121002.P4743330140738488871

`A046714(n)/A324198(A270665(n))`
-/

namespace A121002.P4743330140738488871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046714 n : ℚ) / (A324198 (A270665 n).toNat : ℚ)

end

end A121002.P4743330140738488871

namespace A121002

/-- `A046714(n)/A324198(A270665(n))` -/
def P4743330140738488871.Spec : Prop :=
  ∀ n, P4743330140738488871.a n = (A121002 n : ℚ)

end A121002

/-!
# A121003: Denominators of partial sums of Catalan numbers scaled by powers of 1/5.

The programs for A121003, the canonical program `A121003.P1301101587900139317` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121003 has offset 0).

The definition of A121003 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121003.P1301101587900139317

`A000351(n)/gcd(A000351(n), A046714(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A121003

/-- `A000351(n)/gcd(A000351(n), A046714(n))` -/
def P1301101587900139317.Spec : Prop :=
  ∀ n, P1301101587900139317.a n = (A121003 n : ℚ)

end A121003

/-! ## A121003.P5395923760060034315

`lcm(A000351(n), A046885(n+1))/A046885(n+1)`
-/

namespace A121003.P5395923760060034315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000351 n) (A046885 (n + 1)) : ℚ) / (A046885 (n + 1) : ℚ)

end

end A121003.P5395923760060034315

namespace A121003

/-- `lcm(A000351(n), A046885(n+1))/A046885(n+1)` -/
def P5395923760060034315.Spec : Prop :=
  ∀ n, P5395923760060034315.a n = (A121003 n : ℚ)

end A121003

/-! ## A121003.P7113229849117448033

`A151780(A183120(n+1))`
-/

namespace A121003.P7113229849117448033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151780 (A183120 (n + 1)).toNat

end

end A121003.P7113229849117448033

namespace A121003

/-- `A151780(A183120(n+1))` -/
def P7113229849117448033.Spec : Prop :=
  ∀ n, P7113229849117448033.a n = A121003 n

end A121003

/-! ## A121003.P14822629281458918701

`A121007(n)/A121007(A143403(n))²`
-/

namespace A121003.P14822629281458918701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121007 n : ℚ) / (A121007 (A143403 n).toNat ^ 2 : ℚ)

end

end A121003.P14822629281458918701

namespace A121003

/-- `A121007(n)/A121007(A143403(n))²` -/
def P14822629281458918701.Spec : Prop :=
  ∀ n, P14822629281458918701.a n = (A121003 n : ℚ)

end A121003

/-!
# A121005: Denominators of partial alternating sums of Catalan numbers scaled by powers of 1/125.

The programs for A121005, there is no canonical definition to state claims against.
-/

/-! ## A121005.P2079113787079548116

`A000351(3*n)/A269268(A002997(n+1))`
-/

namespace A121005.P2079113787079548116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000351 (3 * n) : ℚ) / (A269268 (A002997 (n + 1)).toNat : ℚ)

end

end A121005.P2079113787079548116

/-!
# A121006: Numerators of partial alternating sums of Catalan numbers scaled by powers of 1/5.

The programs for A121006, there is no canonical definition to state claims against.
-/

/-! ## A121006.P5818277949861557222

`A323257(C(n+3, and(n, floor(-(n/2)))))`
-/

namespace A121006.P5818277949861557222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323257 (Nat.choose (n + 3) (Int.land (n : ℤ) ⌊-((n : ℚ) / 2)⌋).toNat)

end

end A121006.P5818277949861557222

/-!
# A121007: Denominators of partial alternating sums of Catalan numbers scaled by powers of 1/5.

The programs for A121007, there is no canonical definition to state claims against.
-/

/-! ## A121007.P5223490479928280115

`gcd(A120787(n), A195948(n+1))`
-/

namespace A121007.P5223490479928280115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A120787 n) (A195948 (n + 1))

end

end A121007.P5223490479928280115

/-! ## A121007.P13238006455320570620

`A166591(A000079(n)/A130782(3*(n+1)))`
-/

namespace A121007.P13238006455320570620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166591 (SequenceMachineLib.roundAway ((A000079 n : ℚ) / (A130782 (3 * (n + 1)) : ℚ))).toNat

end

end A121007.P13238006455320570620

/-! ## A121007.P9820780815810645186

`A017988(3*n)/A109009(A000070(2*n))`
-/

namespace A121007.P9820780815810645186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017988 (3 * n) : ℚ) / (A109009 (A000070 (2 * n)).toNat : ℚ)

end

end A121007.P9820780815810645186

/-! ## A121007.P2519283675949302203

`gcd(A000351(n²), A120787(n))`
-/

namespace A121007.P2519283675949302203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000351 (n ^ 2)) (A120787 n)

end

end A121007.P2519283675949302203

/-! ## A121007.P6976034896228693756

`A151780(A083329(n+1)*A366833(n+1))`
-/

namespace A121007.P6976034896228693756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151780 (A083329 (n + 1) * A366833 (n + 1)).toNat

end

end A121007.P6976034896228693756

/-!
# A121009: Denominators of partial alternating sums of Catalan numbers scaled by powers of 1/(5*3^2) = 1/45.

The programs for A121009, there is no canonical definition to state claims against.
-/

/-! ## A121009.P1403312908095199952

`A120997(A004891(n+1))*A121003(n)`
-/

namespace A121009.P1403312908095199952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120997 (A004891 (n + 1)).toNat * A121003 n

end

end A121009.P1403312908095199952

/-! ## A121009.P831158729129294848

`A120997(A004891(n+1))*A121007(n)`
-/

namespace A121009.P831158729129294848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120997 (A004891 (n + 1)).toNat * A121007 n

end

end A121009.P831158729129294848

/-! ## A121009.P13590970952808613426

`lcm(A120997(n), A121003(A004891(n+1)))`
-/

namespace A121009.P13590970952808613426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A120997 n) (A121003 (A004891 (n + 1)).toNat)

end

end A121009.P13590970952808613426

/-! ## A121009.P3598518558650691534

`A120787(n)/A120777(n)*A120997(A004891(n+1))`
-/

namespace A121009.P3598518558650691534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120787 n : ℚ) / (A120777 n : ℚ) * (A120997 (A004891 (n + 1)).toNat : ℚ)

end

end A121009.P3598518558650691534

/-!
# A121011: Denominators of partial alternating sums of Catalan numbers scaled by powers of 1/(5*8^2) = 1/320.

The programs for A121011, there is no canonical definition to state claims against.
-/

/-! ## A121011.P163769306395263530

`A120796(n)*A166629(A000079(n))`
-/

namespace A121011.P163769306395263530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120796 n * A166629 (A000079 n).toNat

end

end A121011.P163769306395263530

/-!
# A121013: Denominators of partial alternating sums of Catalan numbers scaled by powers of 1/(11^2) = 1/121.

The programs for A121013, there is no canonical definition to state claims against.
-/

/-! ## A121013.P13849721073459212683

`11^A056239(A107231(n))`
-/

namespace A121013.P13849721073459212683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A056239 (A107231 n).toNat : ℤ)

end

end A121013.P13849721073459212683

/-! ## A121013.P11526109023191253904

`11^A000523(A006148(n))`
-/

namespace A121013.P11526109023191253904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A000523 (A006148 n).toNat : ℤ)

end

end A121013.P11526109023191253904

/-! ## A121013.P17937421248183624095

`11^A029837(A279785(3*n))`
-/

namespace A121013.P17937421248183624095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A029837 (A279785 (3 * n)).toNat : ℤ)

end

end A121013.P17937421248183624095

/-!
# A121014: Nonprime terms in A121912.

The programs for A121014, there is no canonical definition to state claims against.
-/

/-! ## A121014.P17003685729678787285

`∪[A002997(n+1), A153519(n+1)]`
-/

namespace A121014.P17003685729678787285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121014.P17003685729678787285

/-! ## A121014.P2565990408633457402

`∪[A081703(n+1)*A141710(n+1), A153519(n+1)]`
-/

namespace A121014.P2565990408633457402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081703 (n + 1) * A141710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121014.P2565990408633457402

/-! ## A121014.P13933950395212686273

`∪[A153519(n+1), A174590(n+1)*A306414(n+1)+1]`
-/

namespace A121014.P13933950395212686273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174590 (n + 1) * A306414 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121014.P13933950395212686273

/-! ## A121014.P12831013208494955958

`filter[A121912(n+1), A005171(#)]`
-/

namespace A121014.P12831013208494955958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A121014.P12831013208494955958

/-! ## A121014.P6380140300980025283

`∩[A018252(n+1), A121912(n+1)]`
-/

namespace A121014.P6380140300980025283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121014.P6380140300980025283

/-! ## A121014.P5535655222671638521

`∩[A121912(n+1), A377880(n+1)]`
-/

namespace A121014.P5535655222671638521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121014.P5535655222671638521

/-! ## A121014.P7146964685540562269

`∩[A056653(n+1), A121912(n+1)]`
-/

namespace A121014.P7146964685540562269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121014.P7146964685540562269

/-! ## A121014.P2448272120357755249

`record[A288469(A121912(n+1))]`
-/

namespace A121014.P2448272120357755249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A121912 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121014.P2448272120357755249

/-! ## A121014.P12140387001584138769

`A028310(∪[A087788(n+1), A153519(n+1)])`
-/

namespace A121014.P12140387001584138769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153519 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A121014.P12140387001584138769

/-!
# A121016: Numbers whose binary expansion is properly periodic.

The programs for A121016, there is no canonical definition to state claims against.
-/

/-! ## A121016.P7511943538026482392

`lt[sinh(A302291(n)), n]`
-/

namespace A121016.P7511943538026482392
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sinh (A302291 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A121016.P7511943538026482392

/-! ## A121016.P10212179015423844279

`lt[A302291(n), A070939(n)]`
-/

namespace A121016.P10212179015423844279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121016.P10212179015423844279

/-! ## A121016.P8522056727972967747

`lt[A302291(n), log(A028310(n))]`
-/

namespace A121016.P8522056727972967747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A028310 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A121016.P8522056727972967747

/-! ## A121016.P4078733854100989841

`lt[A302291(n), log2(A000267(n))]`
-/

namespace A121016.P4078733854100989841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000267 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A121016.P4078733854100989841

/-! ## A121016.P5070978709521595340

`lt[A302291(n), A000523(n+1)]`
-/

namespace A121016.P5070978709521595340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121016.P5070978709521595340

/-! ## A121016.P16082433756311541138

`lt[A341766(n), A091064(n)+1]`
-/

namespace A121016.P16082433756311541138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341766 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091064 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121016.P16082433756311541138

/-! ## A121016.P2923129507426001521

`lt[A000072(2*A302291(n)), n]`
-/

namespace A121016.P2923129507426001521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000072 (2 * A302291 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A121016.P2923129507426001521

/-! ## A121016.P12233915734502184087

`lt[A302291(n), log2(A003967(n+1))]`
-/

namespace A121016.P12233915734502184087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A003967 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A121016.P12233915734502184087

/-! ## A121016.P12336786522388290299

`lt[A302291(n), log2(A070321(n+1))]`
-/

namespace A121016.P12336786522388290299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A070321 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A121016.P12336786522388290299

/-! ## A121016.P4649546864976928780

`lt[A302291(n), log2(A102548(n+1))]`
-/

namespace A121016.P4649546864976928780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A102548 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A121016.P4649546864976928780

/-!
# A121017: Stirling transform of A104600.

The programs for A121017, there is no canonical definition to state claims against.
-/

/-! ## A121017.P12928809141029804627

`A000670(n)*A000110(n)`
-/

namespace A121017.P12928809141029804627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n * A000110 n

end

end A121017.P12928809141029804627

/-! ## A121017.P9689691433268449843

`abs(A000670(n)*A292935(n))`
-/

namespace A121017.P9689691433268449843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000670 n * A292935 n|

end

end A121017.P9689691433268449843

/-! ## A121017.P7568110537841524096

`A000670(n)*A095149(∑[n])`
-/

namespace A121017.P7568110537841524096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n * A095149 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121017.P7568110537841524096

/-! ## A121017.P323719618872158401

`A000670(n)*A123081(∑[n])`
-/

namespace A121017.P323719618872158401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n * A123081 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121017.P323719618872158401

/-! ## A121017.P9103507387287521751

`A000110(n)*A154921(∑[n])`
-/

namespace A121017.P9103507387287521751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A154921 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121017.P9103507387287521751

/-!
# A121018: Value of n written in Braille, seen as 3 X 2 bit-code: 1 for a raised dot and 0 for an empty dot position.

The programs for A121018, the canonical program `A121018.P9823339418205826963` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121018 has offset 0).

The definition of A121018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121018.P9823339418205826963

`a(floor(n/10))*64+a(n%10)` with `a(0)=28, a(1)=32, a(2)=40, a(3)=48, a(4)=52, a(5)=36, a(6)=56, a(7)=60, a(8)=44, a(9)=24`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121018

/-- `a(floor(n/10))*64+a(n%10)` -/
def P9823339418205826963.Spec : Prop :=
  ∀ n, (P9823339418205826963.a n : ℤ) = A121018 n

theorem P9823339418205826963.correct : P9823339418205826963.Spec := by
  intro n
  simp only [A121018]

end A121018

/-!
# A121019: Value of n written in Braille, seen as 2 X 3 bit-code: 1 for a raised dot and 0 for an empty dot position.

The programs for A121019, the canonical program `A121019.P16637167658699508980` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121019 has offset 0).

The definition of A121019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121019.P16637167658699508980

`a(floor(n/10))*64+a(n%10)` with `a(0)=22, a(1)=32, a(2)=48, a(3)=36, a(4)=38, a(5)=34, a(6)=52, a(7)=54, a(8)=50, a(9)=20`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121019

/-- `a(floor(n/10))*64+a(n%10)` -/
def P16637167658699508980.Spec : Prop :=
  ∀ n, (P16637167658699508980.a n : ℤ) = A121019 n

theorem P16637167658699508980.correct : P16637167658699508980.Spec := by
  intro n
  simp only [A121019]

end A121019

/-!
# A121020: Lah transform of A104600.

The programs for A121020, there is no canonical definition to state claims against.
-/

/-! ## A121020.P2453582451372676107

`A004525(A395093(n))`
-/

namespace A121020.P2453582451372676107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A395093 n).toNat

end

end A121020.P2453582451372676107

/-!
# A121021: Number of crossing-optimal drawings of the complete graph K_n.

The programs for A121021, there is no canonical definition to state claims against.
-/

/-! ## A121021.P13804404748180962899

`A241709(n+1)%A041333(A342001(n+1))`
-/

namespace A121021.P13804404748180962899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241709 (n + 1)) (A041333 (A342001 (n + 1)).toNat)

end

end A121021.P13804404748180962899

/-!
# A121022: Even numbers containing a 2 in their decimal representation.

The programs for A121022, the canonical program `A121022.P12101257241342669327` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121022 has offset 1).

The definition of A121022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5729 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121022.P12101257241342669327

`∩[2*n, A011532(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A121022

/-- `∩[2*n, A011532(n+1)]` -/
def P12101257241342669327.Spec : Prop :=
  ∀ n, (P12101257241342669327.a n : ℤ) = A121022 (n + 1)

theorem P12101257241342669327.correct : P12101257241342669327.Spec := by
  intro n
  simp only [A121022, Nat.add_sub_cancel]

end A121022

/-! ## A121022.P3306987619174552351

`∩[A011532(n+1), A004277(n)]`
-/

namespace A121022.P3306987619174552351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121022.P3306987619174552351

namespace A121022

/-- `∩[A011532(n+1), A004277(n)]` -/
def P3306987619174552351.Spec : Prop :=
  ∀ n, (P3306987619174552351.a n : ℤ) = A121022 (n + 1)

end A121022

/-! ## A121022.P4898599564626220320

`∩[A011532(n+1), A005843(n)]`
-/

namespace A121022.P4898599564626220320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121022.P4898599564626220320

namespace A121022

/-- `∩[A011532(n+1), A005843(n)]` -/
def P4898599564626220320.Spec : Prop :=
  ∀ n, (P4898599564626220320.a n : ℤ) = A121022 (n + 1)

end A121022

/-! ## A121022.P14753554365163689771

`∩[A011532(n+1), A257637(n+1)]`
-/

namespace A121022.P14753554365163689771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121022.P14753554365163689771

namespace A121022

/-- `∩[A011532(n+1), A257637(n+1)]` -/
def P14753554365163689771.Spec : Prop :=
  ∀ n, (P14753554365163689771.a n : ℤ) = A121022 (n + 1)

end A121022

/-! ## A121022.P5919069973244166755

`∩[A011532(n+1), A299232(n+1)]`
-/

namespace A121022.P5919069973244166755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121022.P5919069973244166755

namespace A121022

/-- `∩[A011532(n+1), A299232(n+1)]` -/
def P5919069973244166755.Spec : Prop :=
  ∀ n, (P5919069973244166755.a n : ℤ) = A121022 (n + 1)

end A121022

/-! ## A121022.P9229173310883050303

`∩[A011532(n+1), A004271(n)]`
-/

namespace A121022.P9229173310883050303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121022.P9229173310883050303

namespace A121022

/-- `∩[A011532(n+1), A004271(n)]` -/
def P9229173310883050303.Spec : Prop :=
  ∀ n, (P9229173310883050303.a n : ℤ) = A121022 (n + 1)

end A121022

/-! ## A121022.P16701532251315137197

`∩[A011532(n+1), A004272(n)]`
-/

namespace A121022.P16701532251315137197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121022.P16701532251315137197

namespace A121022

/-- `∩[A011532(n+1), A004272(n)]` -/
def P16701532251315137197.Spec : Prop :=
  ∀ n, (P16701532251315137197.a n : ℤ) = A121022 (n + 1)

end A121022

/-! ## A121022.P17685297889717192939

`∩[A011532(n+1), A004275(n)]`
-/

namespace A121022.P17685297889717192939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121022.P17685297889717192939

namespace A121022

/-- `∩[A011532(n+1), A004275(n)]` -/
def P17685297889717192939.Spec : Prop :=
  ∀ n, (P17685297889717192939.a n : ℤ) = A121022 (n + 1)

end A121022

/-! ## A121022.P3343487425316875515

`∩[A011532(n+1), A004279(n)]`
-/

namespace A121022.P3343487425316875515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121022.P3343487425316875515

namespace A121022

/-- `∩[A011532(n+1), A004279(n)]` -/
def P3343487425316875515.Spec : Prop :=
  ∀ n, (P3343487425316875515.a n : ℤ) = A121022 (n + 1)

end A121022

/-! ## A121022.P9145918801479862945

`∩[A011532(n+1), A316571(n+1)]`
-/

namespace A121022.P9145918801479862945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121022.P9145918801479862945

namespace A121022

/-- `∩[A011532(n+1), A316571(n+1)]` -/
def P9145918801479862945.Spec : Prop :=
  ∀ n, (P9145918801479862945.a n : ℤ) = A121022 (n + 1)

end A121022

/-! ## A121022.P7287208904933727515

`eq[2, gcd(n, A211396(n))]`
-/

namespace A121022.P7287208904933727515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A211396 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121022.P7287208904933727515

namespace A121022

/-- `eq[2, gcd(n, A211396(n))]` -/
def P7287208904933727515.Spec : Prop :=
  ∀ n, (P7287208904933727515.a n : ℤ) = A121022 (n + 1)

end A121022

/-! ## A121022.P17525863691246023628

`2*eq[2, A211396(2*n)]`
-/

namespace A121022.P17525863691246023628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121022.P17525863691246023628

namespace A121022

/-- `2*eq[2, A211396(2*n)]` -/
def P17525863691246023628.Spec : Prop :=
  ∀ n, (P17525863691246023628.a n : ℤ) = A121022 (n + 1)

end A121022

/-! ## A121022.P14442906943068937210

`2*lt[A004177(2*n), n]`
-/

namespace A121022.P14442906943068937210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A121022.P14442906943068937210

namespace A121022

/-- `2*lt[A004177(2*n), n]` -/
def P14442906943068937210.Spec : Prop :=
  ∀ n, (P14442906943068937210.a n : ℤ) = A121022 (n + 1)

end A121022

/-! ## A121022.P8475984021189221198

`eq[A010694(n), A211396(n)]`
-/

namespace A121022.P8475984021189221198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010694 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121022.P8475984021189221198

namespace A121022

/-- `eq[A010694(n), A211396(n)]` -/
def P8475984021189221198.Spec : Prop :=
  ∀ n, (P8475984021189221198.a n : ℤ) = A121022 (n + 1)

end A121022

/-! ## A121022.P7817215218896860504

`eq[A010696(n), A211396(n)]`
-/

namespace A121022.P7817215218896860504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010696 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121022.P7817215218896860504

namespace A121022

/-- `eq[A010696(n), A211396(n)]` -/
def P7817215218896860504.Spec : Prop :=
  ∀ n, (P7817215218896860504.a n : ℤ) = A121022 (n + 1)

end A121022

/-! ## A121022.P13493293591016654527

`eq[A010698(n), A211396(n)]`
-/

namespace A121022.P13493293591016654527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121022.P13493293591016654527

namespace A121022

/-- `eq[A010698(n), A211396(n)]` -/
def P13493293591016654527.Spec : Prop :=
  ∀ n, (P13493293591016654527.a n : ℤ) = A121022 (n + 1)

end A121022

/-! ## A121022.P14392633459654304857

`eq[A010699(n), A211396(n)]`
-/

namespace A121022.P14392633459654304857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121022.P14392633459654304857

namespace A121022

/-- `eq[A010699(n), A211396(n)]` -/
def P14392633459654304857.Spec : Prop :=
  ∀ n, (P14392633459654304857.a n : ℤ) = A121022 (n + 1)

end A121022

/-! ## A121022.P15624026555453927170

`eq[A010700(n), A211396(n)]`
-/

namespace A121022.P15624026555453927170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121022.P15624026555453927170

namespace A121022

/-- `eq[A010700(n), A211396(n)]` -/
def P15624026555453927170.Spec : Prop :=
  ∀ n, (P15624026555453927170.a n : ℤ) = A121022 (n + 1)

end A121022

/-! ## A121022.P10734287573807143648

`eq[A040001(n), A211396(n)]`
-/

namespace A121022.P10734287573807143648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121022.P10734287573807143648

namespace A121022

/-- `eq[A040001(n), A211396(n)]` -/
def P10734287573807143648.Spec : Prop :=
  ∀ n, (P10734287573807143648.a n : ℤ) = A121022 (n + 1)

end A121022

/-! ## A121022.P12774245012713977799

`eq[A106469(n), A211396(n)]`
-/

namespace A121022.P12774245012713977799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106469 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121022.P12774245012713977799

namespace A121022

/-- `eq[A106469(n), A211396(n)]` -/
def P12774245012713977799.Spec : Prop :=
  ∀ n, (P12774245012713977799.a n : ℤ) = A121022 (n + 1)

end A121022

/-!
# A121023: Multiples of 3 containing a 3 in their decimal representation.

The programs for A121023, the canonical program `A121023.P11383018328225784367` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121023 has offset 1).

The definition of A121023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121023.P11383018328225784367

`A011533(3*n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121023

/-- `A011533(3*n+1)` -/
def P11383018328225784367.Spec : Prop :=
  ∀ n, P11383018328225784367.a n = A121023 (n + 1)

theorem P11383018328225784367.correct : P11383018328225784367.Spec := by
  intro n
  simp only [A121023, Nat.add_sub_cancel]

end A121023

/-! ## A121023.P13270208434146517778

`lcm(3, A011533(A016777(n)))`
-/

namespace A121023.P13270208434146517778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A011533 (A016777 n).toNat)

end

end A121023.P13270208434146517778

namespace A121023

/-- `lcm(3, A011533(A016777(n)))` -/
def P13270208434146517778.Spec : Prop :=
  ∀ n, (P13270208434146517778.a n : ℤ) = A121023 (n + 1)

end A121023

/-! ## A121023.P5268640585224484373

`∩[A011533(n+1), A008486(n)]`
-/

namespace A121023.P5268640585224484373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121023.P5268640585224484373

namespace A121023

/-- `∩[A011533(n+1), A008486(n)]` -/
def P5268640585224484373.Spec : Prop :=
  ∀ n, (P5268640585224484373.a n : ℤ) = A121023 (n + 1)

end A121023

/-! ## A121023.P7753474162595800396

`∩[A011533(n+1), A008585(n)]`
-/

namespace A121023.P7753474162595800396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121023.P7753474162595800396

namespace A121023

/-- `∩[A011533(n+1), A008585(n)]` -/
def P7753474162595800396.Spec : Prop :=
  ∀ n, (P7753474162595800396.a n : ℤ) = A121023 (n + 1)

end A121023

/-! ## A121023.P8916621551234214026

`record[A011533(n+1)^A049347(n)]`
-/

namespace A121023.P8916621551234214026
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011533 (n + 1) : ℚ) ^ (A049347 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121023.P8916621551234214026

namespace A121023

/-- `record[A011533(n+1)^A049347(n)]` -/
def P8916621551234214026.Spec : Prop :=
  ∀ n, P8916621551234214026.a n = (A121023 (n + 1) : ℚ)

end A121023

/-! ## A121023.P34883119963728973

`∩[A011533(n+1), A204502(n+1)]`
-/

namespace A121023.P34883119963728973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121023.P34883119963728973

namespace A121023

/-- `∩[A011533(n+1), A204502(n+1)]` -/
def P34883119963728973.Spec : Prop :=
  ∀ n, (P34883119963728973.a n : ℤ) = A121023 (n + 1)

end A121023

/-! ## A121023.P6753010934677181253

`A011533(A016777(n))%A017104(n)`
-/

namespace A121023.P6753010934677181253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011533 (A016777 n).toNat) (A017104 n)

end

end A121023.P6753010934677181253

namespace A121023

/-- `A011533(A016777(n))%A017104(n)` -/
def P6753010934677181253.Spec : Prop :=
  ∀ n, P6753010934677181253.a n = A121023 (n + 1)

end A121023

/-! ## A121023.P16387578813172887306

`or(A000007(n), A011533(A016777(n)))`
-/

namespace A121023.P16387578813172887306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A011533 (A016777 n).toNat)

end

end A121023.P16387578813172887306

namespace A121023

/-- `or(A000007(n), A011533(A016777(n)))` -/
def P16387578813172887306.Spec : Prop :=
  ∀ n, P16387578813172887306.a n = A121023 (n + 1)

end A121023

/-! ## A121023.P15950429776701794271

`or(A000038(n), A011533(A016777(n)))`
-/

namespace A121023.P15950429776701794271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A011533 (A016777 n).toNat)

end

end A121023.P15950429776701794271

namespace A121023

/-- `or(A000038(n), A011533(A016777(n)))` -/
def P15950429776701794271.Spec : Prop :=
  ∀ n, P15950429776701794271.a n = A121023 (n + 1)

end A121023

/-! ## A121023.P3643039565611578903

`A011533(A016813(n)-n)%A063990(n+1)`
-/

namespace A121023.P3643039565611578903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011533 (A016813 n - (n : ℤ)).toNat) (A063990 (n + 1))

end

end A121023.P3643039565611578903

namespace A121023

/-- `A011533(A016813(n)-n)%A063990(n+1)` -/
def P3643039565611578903.Spec : Prop :=
  ∀ n, P3643039565611578903.a n = A121023 (n + 1)

end A121023

/-! ## A121023.P9510270209897123773

`∩[A011533(n+1), A084434(n+1)]`
-/

namespace A121023.P9510270209897123773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121023.P9510270209897123773

namespace A121023

/-- `∩[A011533(n+1), A084434(n+1)]` -/
def P9510270209897123773.Spec : Prop :=
  ∀ n, (P9510270209897123773.a n : ℤ) = A121023 (n + 1)

end A121023

/-! ## A121023.P6191723851917688152

`filter[A011533(n+1), A079978(#)]`
-/

namespace A121023.P6191723851917688152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A121023.P6191723851917688152

namespace A121023

/-- `filter[A011533(n+1), A079978(#)]` -/
def P6191723851917688152.Spec : Prop :=
  ∀ n, P6191723851917688152.a n = A121023 (n + 1)

end A121023

/-! ## A121023.P8900048968966550980

`filter[A011533(n+1), A173857(#)]`
-/

namespace A121023.P8900048968966550980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173857 (f1 j).toNat = 1) n)

end

end A121023.P8900048968966550980

namespace A121023

/-- `filter[A011533(n+1), A173857(#)]` -/
def P8900048968966550980.Spec : Prop :=
  ∀ n, P8900048968966550980.a n = A121023 (n + 1)

end A121023

/-! ## A121023.P11549034021380973518

`filter[A011533(n+1), A329680(#)]`
-/

namespace A121023.P11549034021380973518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A121023.P11549034021380973518

namespace A121023

/-- `filter[A011533(n+1), A329680(#)]` -/
def P11549034021380973518.Spec : Prop :=
  ∀ n, P11549034021380973518.a n = A121023 (n + 1)

end A121023

/-!
# A121024: Multiples of 4 containing a 4 in their decimal representation.

The programs for A121024, the canonical program `A121024.P16747478931446409711` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121024 has offset 1).

The definition of A121024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3021 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121024.P13094532653676590070

`∩[A011534(n+1), 4*n]`
-/

namespace A121024.P13094532653676590070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A121024.P13094532653676590070

namespace A121024

/-- `∩[A011534(n+1), 4*n]` -/
def P13094532653676590070.Spec : Prop :=
  ∀ n, (P13094532653676590070.a n : ℤ) = A121024 (n + 1)

end A121024

/-! ## A121024.P16747478931446409711

`record[A088440(A011534(n+1))]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A121024

/-- `record[A088440(A011534(n+1))]` -/
def P16747478931446409711.Spec : Prop :=
  ∀ n, P16747478931446409711.a n = A121024 (n + 1)

theorem P16747478931446409711.correct : P16747478931446409711.Spec := by
  intro n
  simp only [A121024, Nat.add_sub_cancel]

end A121024

/-! ## A121024.P7958258105612757633

`filter[A011534(n+1), A121262(#)]`
-/

namespace A121024.P7958258105612757633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A121024.P7958258105612757633

namespace A121024

/-- `filter[A011534(n+1), A121262(#)]` -/
def P7958258105612757633.Spec : Prop :=
  ∀ n, P7958258105612757633.a n = A121024 (n + 1)

end A121024

/-! ## A121024.P3818786844383556482

`∩[A008574(n), A011534(n+1)]`
-/

namespace A121024.P3818786844383556482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121024.P3818786844383556482

namespace A121024

/-- `∩[A008574(n), A011534(n+1)]` -/
def P3818786844383556482.Spec : Prop :=
  ∀ n, (P3818786844383556482.a n : ℤ) = A121024 (n + 1)

end A121024

/-! ## A121024.P12328660051220300695

`∩[A008586(n), A011534(n+1)]`
-/

namespace A121024.P12328660051220300695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121024.P12328660051220300695

namespace A121024

/-- `∩[A008586(n), A011534(n+1)]` -/
def P12328660051220300695.Spec : Prop :=
  ∀ n, (P12328660051220300695.a n : ℤ) = A121024 (n + 1)

end A121024

/-! ## A121024.P17198537507003973287

`filter[A011534(n+1), A011765(#)]`
-/

namespace A121024.P17198537507003973287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A121024.P17198537507003973287

namespace A121024

/-- `filter[A011534(n+1), A011765(#)]` -/
def P17198537507003973287.Spec : Prop :=
  ∀ n, P17198537507003973287.a n = A121024 (n + 1)

end A121024

/-! ## A121024.P8607482225332778427

`eq[gcd(2-n, 2*n), A211396(A222228(n))]`
-/

namespace A121024.P8607482225332778427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - (n : ℤ)) (2 * n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (A222228 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121024.P8607482225332778427

namespace A121024

/-- `eq[gcd(2-n, 2*n), A211396(A222228(n))]` -/
def P8607482225332778427.Spec : Prop :=
  ∀ n, (P8607482225332778427.a n : ℤ) = A121024 (n + 1)

end A121024

/-! ## A121024.P12218449642973117118

`lt[A004179(n), A131738(A004525(n))]`
-/

namespace A121024.P12218449642973117118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (A004525 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121024.P12218449642973117118

namespace A121024

/-- `lt[A004179(n), A131738(A004525(n))]` -/
def P12218449642973117118.Spec : Prop :=
  ∀ n, (P12218449642973117118.a n : ℤ) = A121024 (n + 1)

end A121024

/-! ## A121024.P440586982996061650

`lt[A004179(n), A166514(A166514(n))]`
-/

namespace A121024.P440586982996061650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166514 (A166514 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121024.P440586982996061650

namespace A121024

/-- `lt[A004179(n), A166514(A166514(n))]` -/
def P440586982996061650.Spec : Prop :=
  ∀ n, (P440586982996061650.a n : ℤ) = A121024 (n + 1)

end A121024

/-! ## A121024.P5639210363996049843

`lt[A000041(A004179(n)), A137830(n)]`
-/

namespace A121024.P5639210363996049843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A004179 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121024.P5639210363996049843

namespace A121024

/-- `lt[A000041(A004179(n)), A137830(n)]` -/
def P5639210363996049843.Spec : Prop :=
  ∀ n, (P5639210363996049843.a n : ℤ) = A121024 (n + 1)

end A121024

/-! ## A121024.P611153968881260205

`lt[A137830(2*A004179(n)), A137830(n)]`
-/

namespace A121024.P611153968881260205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137830 (2 * A004179 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137830 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121024.P611153968881260205

namespace A121024

/-- `lt[A137830(2*A004179(n)), A137830(n)]` -/
def P611153968881260205.Spec : Prop :=
  ∀ n, (P611153968881260205.a n : ℤ) = A121024 (n + 1)

end A121024

/-!
# A121025: Multiples of 5 containing a 5 in their decimal representation.

The programs for A121025, the canonical program `A121025.P17073191121720962736` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121025 has offset 1).

The definition of A121025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3668 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121025.P843126467479956402

`A008587(comp[2*A004724(n)])`
-/

namespace A121025.P843126467479956402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004724 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A121025.P843126467479956402

namespace A121025

/-- `A008587(comp[2*A004724(n)])` -/
def P843126467479956402.Spec : Prop :=
  ∀ n, P843126467479956402.a n = A121025 (n + 1)

end A121025

/-! ## A121025.P17073191121720962736

`∩[A011535(n+1), A008587(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A121025

/-- `∩[A011535(n+1), A008587(n)]` -/
def P17073191121720962736.Spec : Prop :=
  ∀ n, (P17073191121720962736.a n : ℤ) = A121025 (n + 1)

theorem P17073191121720962736.correct : P17073191121720962736.Spec := by
  intro n
  simp only [A121025, Nat.add_sub_cancel]

end A121025

/-! ## A121025.P13830925013206029947

`∩[A011535(n+1), A008706(n)]`
-/

namespace A121025.P13830925013206029947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121025.P13830925013206029947

namespace A121025

/-- `∩[A011535(n+1), A008706(n)]` -/
def P13830925013206029947.Spec : Prop :=
  ∀ n, (P13830925013206029947.a n : ℤ) = A121025 (n + 1)

end A121025

/-! ## A121025.P10670303612253608404

`∩[A011535(n+1), A135042(n)]`
-/

namespace A121025.P10670303612253608404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121025.P10670303612253608404

namespace A121025

/-- `∩[A011535(n+1), A135042(n)]` -/
def P10670303612253608404.Spec : Prop :=
  ∀ n, (P10670303612253608404.a n : ℤ) = A121025 (n + 1)

end A121025

/-! ## A121025.P5203747775607146749

`∩[A011535(n+1), A064509(n+1)]`
-/

namespace A121025.P5203747775607146749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121025.P5203747775607146749

namespace A121025

/-- `∩[A011535(n+1), A064509(n+1)]` -/
def P5203747775607146749.Spec : Prop :=
  ∀ n, (P5203747775607146749.a n : ℤ) = A121025 (n + 1)

end A121025

/-! ## A121025.P2445706098448175271

`∩[A011535(n+1), A335365(n+1)]`
-/

namespace A121025.P2445706098448175271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121025.P2445706098448175271

namespace A121025

/-- `∩[A011535(n+1), A335365(n+1)]` -/
def P2445706098448175271.Spec : Prop :=
  ∀ n, (P2445706098448175271.a n : ℤ) = A121025 (n + 1)

end A121025

/-! ## A121025.P15493143041905445207

`∩[A011535(n+1), A008574(n)+n]`
-/

namespace A121025.P15493143041905445207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121025.P15493143041905445207

namespace A121025

/-- `∩[A011535(n+1), A008574(n)+n]` -/
def P15493143041905445207.Spec : Prop :=
  ∀ n, (P15493143041905445207.a n : ℤ) = A121025 (n + 1)

end A121025

/-! ## A121025.P15604017490920583332

`filter[A011535(n+1), A079998(#)]`
-/

namespace A121025.P15604017490920583332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A121025.P15604017490920583332

namespace A121025

/-- `filter[A011535(n+1), A079998(#)]` -/
def P15604017490920583332.Spec : Prop :=
  ∀ n, P15604017490920583332.a n = A121025 (n + 1)

end A121025

/-! ## A121025.P9406272669155438362

`eq[2*A070609(A051801(n)), A070609(n)]`
-/

namespace A121025.P9406272669155438362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A070609 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121025.P9406272669155438362

namespace A121025

/-- `eq[2*A070609(A051801(n)), A070609(n)]` -/
def P9406272669155438362.Spec : Prop :=
  ∀ n, (P9406272669155438362.a n : ℤ) = A121025 (n + 1)

end A121025

/-! ## A121025.P1093544246789364900

`A277592(n+1)%A346365(n+1)`
-/

namespace A121025.P1093544246789364900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277592 (n + 1)) (A346365 (n + 1))

end

end A121025.P1093544246789364900

namespace A121025

/-- `A277592(n+1)%A346365(n+1)` -/
def P1093544246789364900.Spec : Prop :=
  ∀ n, P1093544246789364900.a n = A121025 (n + 1)

end A121025

/-!
# A121026: Multiples of 6 containing a 6 in their decimal representation.

The programs for A121026, the canonical program `A121026.P3500916075753283321` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121026 has offset 1).

The definition of A121026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2015 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121026.P3500916075753283321

`filter[A011536(n+1), A079979(#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A121026

/-- `filter[A011536(n+1), A079979(#)]` -/
def P3500916075753283321.Spec : Prop :=
  ∀ n, P3500916075753283321.a n = A121026 (n + 1)

theorem P3500916075753283321.correct : P3500916075753283321.Spec := by
  intro n
  simp only [A121026, Nat.add_sub_cancel]

end A121026

/-! ## A121026.P885405144507660090

`∩[A011536(n+1), A008458(n)]`
-/

namespace A121026.P885405144507660090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121026.P885405144507660090

namespace A121026

/-- `∩[A011536(n+1), A008458(n)]` -/
def P885405144507660090.Spec : Prop :=
  ∀ n, (P885405144507660090.a n : ℤ) = A121026 (n + 1)

end A121026

/-! ## A121026.P2603984927627834013

`∩[A011536(n+1), A008588(n)]`
-/

namespace A121026.P2603984927627834013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121026.P2603984927627834013

namespace A121026

/-- `∩[A011536(n+1), A008588(n)]` -/
def P2603984927627834013.Spec : Prop :=
  ∀ n, (P2603984927627834013.a n : ℤ) = A121026 (n + 1)

end A121026

/-! ## A121026.P13406017958814569309

`filter[A011536(3*n+1), A374197(#)]`
-/

namespace A121026.P13406017958814569309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A121026.P13406017958814569309

namespace A121026

/-- `filter[A011536(3*n+1), A374197(#)]` -/
def P13406017958814569309.Spec : Prop :=
  ∀ n, P13406017958814569309.a n = A121026 (n + 1)

end A121026

/-! ## A121026.P17822038237405691803

`∩[A004275(3*n+1), A011536(n+1)]`
-/

namespace A121026.P17822038237405691803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121026.P17822038237405691803

namespace A121026

/-- `∩[A004275(3*n+1), A011536(n+1)]` -/
def P17822038237405691803.Spec : Prop :=
  ∀ n, (P17822038237405691803.a n : ℤ) = A121026 (n + 1)

end A121026

/-! ## A121026.P10547566942348760933

`∩[A011536(n+1), A004275(A004275(n)+n)]`
-/

namespace A121026.P10547566942348760933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A004275 n + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121026.P10547566942348760933

namespace A121026

/-- `∩[A011536(n+1), A004275(A004275(n)+n)]` -/
def P10547566942348760933.Spec : Prop :=
  ∀ n, (P10547566942348760933.a n : ℤ) = A121026 (n + 1)

end A121026

/-! ## A121026.P6283652563485075261

`∩[A052380(3*n+1), comp[A052414(n+1)]]`
-/

namespace A121026.P6283652563485075261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052380 (3 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A121026.P6283652563485075261

namespace A121026

/-- `∩[A052380(3*n+1), comp[A052414(n+1)]]` -/
def P6283652563485075261.Spec : Prop :=
  ∀ n, (P6283652563485075261.a n : ℤ) = A121026 (n + 1)

end A121026

/-! ## A121026.P11405438725518359342

`lt[n*A097325(n), A316867(n)]`
-/

namespace A121026.P11405438725518359342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A097325 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121026.P11405438725518359342

namespace A121026

/-- `lt[n*A097325(n), A316867(n)]` -/
def P11405438725518359342.Spec : Prop :=
  ∀ n, (P11405438725518359342.a n : ℤ) = A121026 (n + 1)

end A121026

/-! ## A121026.P9275396065485730556

`filter[A011536(3*n+1), A059841(#)]`
-/

namespace A121026.P9275396065485730556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A121026.P9275396065485730556

namespace A121026

/-- `filter[A011536(3*n+1), A059841(#)]` -/
def P9275396065485730556.Spec : Prop :=
  ∀ n, P9275396065485730556.a n = A121026 (n + 1)

end A121026

/-! ## A121026.P5186845227438477485

`filter[A011536(3*n+1), A088911(#)]`
-/

namespace A121026.P5186845227438477485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088911 (f1 j).toNat = 1) n)

end

end A121026.P5186845227438477485

namespace A121026

/-- `filter[A011536(3*n+1), A088911(#)]` -/
def P5186845227438477485.Spec : Prop :=
  ∀ n, P5186845227438477485.a n = A121026 (n + 1)

end A121026

/-! ## A121026.P4037135468189048804

`filter[A011536(3*n+1), A135528(#)]`
-/

namespace A121026.P4037135468189048804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A121026.P4037135468189048804

namespace A121026

/-- `filter[A011536(3*n+1), A135528(#)]` -/
def P4037135468189048804.Spec : Prop :=
  ∀ n, P4037135468189048804.a n = A121026 (n + 1)

end A121026

/-! ## A121026.P8723356855526078448

`filter[A011536(3*n+1), A232991(#)]`
-/

namespace A121026.P8723356855526078448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A232991 (f1 j).toNat = 1) n)

end

end A121026.P8723356855526078448

namespace A121026

/-- `filter[A011536(3*n+1), A232991(#)]` -/
def P8723356855526078448.Spec : Prop :=
  ∀ n, P8723356855526078448.a n = A121026 (n + 1)

end A121026

/-! ## A121026.P5779649811856668124

`filter[A011536(3*n+1), A266591(#)]`
-/

namespace A121026.P5779649811856668124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A121026.P5779649811856668124

namespace A121026

/-- `filter[A011536(3*n+1), A266591(#)]` -/
def P5779649811856668124.Spec : Prop :=
  ∀ n, P5779649811856668124.a n = A121026 (n + 1)

end A121026

/-! ## A121026.P11747791125492060560

`filter[A011536(3*n+1), A267043(#)]`
-/

namespace A121026.P11747791125492060560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A121026.P11747791125492060560

namespace A121026

/-- `filter[A011536(3*n+1), A267043(#)]` -/
def P11747791125492060560.Spec : Prop :=
  ∀ n, P11747791125492060560.a n = A121026 (n + 1)

end A121026

/-!
# A121027: Multiples of 7 containing a 7 in their decimal representation.

The programs for A121027, the canonical program `A121027.P4388213834179774910` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121027 has offset 1).

The definition of A121027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121027.P4388213834179774910

`∩[A011537(n+1), 7*(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A121027

/-- `∩[A011537(n+1), 7*(n+1)]` -/
def P4388213834179774910.Spec : Prop :=
  ∀ n, (P4388213834179774910.a n : ℤ) = A121027 (n + 1)

theorem P4388213834179774910.correct : P4388213834179774910.Spec := by
  intro n
  simp only [A121027, Nat.add_sub_cancel]

end A121027

/-! ## A121027.P9151232295367096630

`∩[A008589(n), A011537(n+1)]`
-/

namespace A121027.P9151232295367096630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121027.P9151232295367096630

namespace A121027

/-- `∩[A008589(n), A011537(n+1)]` -/
def P9151232295367096630.Spec : Prop :=
  ∀ n, (P9151232295367096630.a n : ℤ) = A121027 (n + 1)

end A121027

/-! ## A121027.P3054082258347887855

`∩[A017053(n)+1, A011537(n+1)]`
-/

namespace A121027.P3054082258347887855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121027.P3054082258347887855

namespace A121027

/-- `∩[A017053(n)+1, A011537(n+1)]` -/
def P3054082258347887855.Spec : Prop :=
  ∀ n, (P3054082258347887855.a n : ℤ) = A121027 (n + 1)

end A121027

/-! ## A121027.P4401221333750048980

`A000027(∩[A011537(n+1), 7*n])`
-/

namespace A121027.P4401221333750048980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A121027.P4401221333750048980

namespace A121027

/-- `A000027(∩[A011537(n+1), 7*n])` -/
def P4401221333750048980.Spec : Prop :=
  ∀ n, P4401221333750048980.a n = A121027 (n + 1)

end A121027

/-! ## A121027.P15959919565287533302

`filter[A011537(n+1), A082784(#)]`
-/

namespace A121027.P15959919565287533302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A082784 (f1 j).toNat = 1) n)

end

end A121027.P15959919565287533302

namespace A121027

/-- `filter[A011537(n+1), A082784(#)]` -/
def P15959919565287533302.Spec : Prop :=
  ∀ n, P15959919565287533302.a n = A121027 (n + 1)

end A121027

/-! ## A121027.P13706576705676424064

`lt[n*A109720(n), A316868(n)]`
-/

namespace A121027.P13706576705676424064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A109720 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121027.P13706576705676424064

namespace A121027

/-- `lt[n*A109720(n), A316868(n)]` -/
def P13706576705676424064.Spec : Prop :=
  ∀ n, (P13706576705676424064.a n : ℤ) = A121027 (n + 1)

end A121027

/-! ## A121027.P11346027765233379138

`eq[A006530(A051801(n)), A053674(n+1)]`
-/

namespace A121027.P11346027765233379138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053674 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121027.P11346027765233379138

namespace A121027

/-- `eq[A006530(A051801(n)), A053674(n+1)]` -/
def P11346027765233379138.Spec : Prop :=
  ∀ n, (P11346027765233379138.a n : ℤ) = A121027 (n + 1)

end A121027

/-!
# A121028: Multiples of 8 containing an 8 in their decimal representation.

The programs for A121028, the canonical program `A121028.P12208025731756267144` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121028 has offset 1).

The definition of A121028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1514 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121028.P12208025731756267144

`∩[8*n, A011538(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A121028

/-- `∩[8*n, A011538(n+1)]` -/
def P12208025731756267144.Spec : Prop :=
  ∀ n, (P12208025731756267144.a n : ℤ) = A121028 (n + 1)

theorem P12208025731756267144.correct : P12208025731756267144.Spec := by
  intro n
  simp only [A121028, Nat.add_sub_cancel]

end A121028

/-! ## A121028.P6142710754701095620

`∩[A011538(n+1), A008590(n)]`
-/

namespace A121028.P6142710754701095620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121028.P6142710754701095620

namespace A121028

/-- `∩[A011538(n+1), A008590(n)]` -/
def P6142710754701095620.Spec : Prop :=
  ∀ n, (P6142710754701095620.a n : ℤ) = A121028 (n + 1)

end A121028

/-! ## A121028.P10938544809573757975

`∩[A011538(n+1), A022144(n)]`
-/

namespace A121028.P10938544809573757975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121028.P10938544809573757975

namespace A121028

/-- `∩[A011538(n+1), A022144(n)]` -/
def P10938544809573757975.Spec : Prop :=
  ∀ n, (P10938544809573757975.a n : ℤ) = A121028 (n + 1)

end A121028

/-! ## A121028.P18297236736937646755

`∩[A011538(n+1), A008574(A004271(n))]`
-/

namespace A121028.P18297236736937646755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A004271 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121028.P18297236736937646755

namespace A121028

/-- `∩[A011538(n+1), A008574(A004271(n))]` -/
def P18297236736937646755.Spec : Prop :=
  ∀ n, (P18297236736937646755.a n : ℤ) = A121028 (n + 1)

end A121028

/-! ## A121028.P1818893062173093798

`filter[A011538(n+1), A253513(#)]`
-/

namespace A121028.P1818893062173093798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A253513 (f1 j).toNat = 1) n)

end

end A121028.P1818893062173093798

namespace A121028

/-- `filter[A011538(n+1), A253513(#)]` -/
def P1818893062173093798.Spec : Prop :=
  ∀ n, P1818893062173093798.a n = A121028 (n + 1)

end A121028

/-! ## A121028.P10654103268620402167

`lt[A284054(n+1), A054055(A107130(n))]`
-/

namespace A121028.P10654103268620402167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A107130 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A121028.P10654103268620402167

namespace A121028

/-- `lt[A284054(n+1), A054055(A107130(n))]` -/
def P10654103268620402167.Spec : Prop :=
  ∀ n, (P10654103268620402167.a n : ℤ) = A121028 (n + 1)

end A121028

/-!
# A121029: Multiples of 9 containing a 9 in their decimal representation.

The programs for A121029, there is no canonical definition to state claims against.
-/

/-! ## A121029.P2981058153124257657

`∩[A154389(n+1), A008591(n)]`
-/

namespace A121029.P2981058153124257657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121029.P2981058153124257657

/-! ## A121029.P10385153118766837154

`∩[A154389(n+1), A017377(n)-n]`
-/

namespace A121029.P10385153118766837154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121029.P10385153118766837154

/-! ## A121029.P5714536516307891405

`A011539(9*n+1)`
-/

namespace A121029.P5714536516307891405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (9 * n + 1)

end

end A121029.P5714536516307891405

/-! ## A121029.P3742405283127551285

`lcm(3, A011539(A017173(n)))`
-/

namespace A121029.P3742405283127551285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A011539 (A017173 n).toNat)

end

end A121029.P3742405283127551285

/-! ## A121029.P9436496525406906681

`∩[A011539(n+1), A008591(n)]`
-/

namespace A121029.P9436496525406906681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121029.P9436496525406906681

/-! ## A121029.P7203089900968272205

`∩[A011539(n+1), A071204(n+1)]`
-/

namespace A121029.P7203089900968272205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121029.P7203089900968272205

/-! ## A121029.P6453675531050796356

`∩[A011539(n+1), A107085(n+1)]`
-/

namespace A121029.P6453675531050796356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121029.P6453675531050796356

/-! ## A121029.P12400282877864107057

`A000041(C(2, 2*n))*A011539(A017173(n))`
-/

namespace A121029.P12400282877864107057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A011539 (A017173 n).toNat

end

end A121029.P12400282877864107057

/-! ## A121029.P16156168128284917756

`filter[A011539(n+1), A267142(#)]`
-/

namespace A121029.P16156168128284917756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267142 (f1 j).toNat = 1) n)

end

end A121029.P16156168128284917756

/-! ## A121029.P15177195560285181349

`filter[A154389(n+1), A267142(#)]`
-/

namespace A121029.P15177195560285181349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267142 (f1 j).toNat = 1) n)

end

end A121029.P15177195560285181349

/-! ## A121029.P357115446186094723

`filter[A107085(n+2), A267142(#)]`
-/

namespace A121029.P357115446186094723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107085 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267142 (f1 j).toNat = 1) n)

end

end A121029.P357115446186094723

/-!
# A121030: Multiples of 10 containing a 10 in their decimal representation.

The programs for A121030, there is no canonical definition to state claims against.
-/

/-! ## A121030.P8487837972381095581

`∩[A293870(n+1), A396948(n+1)]`
-/

namespace A121030.P8487837972381095581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121030.P8487837972381095581

/-! ## A121030.P13710941234308486123

`∩[A293870(n+1), A008592(n)]`
-/

namespace A121030.P13710941234308486123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121030.P13710941234308486123

/-! ## A121030.P16621698948018200851

`∩[A293870(n+1), A370532(n+1)]`
-/

namespace A121030.P16621698948018200851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121030.P16621698948018200851

/-! ## A121030.P246093529184192592

`∩[A293870(n+1), A359841(n+1)]`
-/

namespace A121030.P246093529184192592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121030.P246093529184192592

/-! ## A121030.P5271216049914143269

`∩[A293870(n+1), A352464(n+1)]`
-/

namespace A121030.P5271216049914143269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121030.P5271216049914143269

/-! ## A121030.P12129150708757184169

`(10*A298849(n+1))%A001952(A125169(n)+A124388(n))`
-/

namespace A121030.P12129150708757184169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (10 * A298849 (n + 1)) (A001952 (A125169 n + A124388 n).toNat)

end

end A121030.P12129150708757184169

/-! ## A121030.P5829274753378873574

`A322452(A077256(n+1))+10*A298849(n+1)`
-/

namespace A121030.P5829274753378873574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322452 (A077256 (n + 1)).toNat + 10 * A298849 (n + 1)

end

end A121030.P5829274753378873574

/-! ## A121030.P4325066689094323970

`(10*A298849(n+1))%A003378(A007349(n+1))`
-/

namespace A121030.P4325066689094323970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (10 * A298849 (n + 1)) (A003378 (A007349 (n + 1)).toNat)

end

end A121030.P4325066689094323970

/-! ## A121030.P10466495537583736141

`lcm(10*A298849(n+1), A177704(A248144(n+2)))`
-/

namespace A121030.P10466495537583736141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (10 * A298849 (n + 1)) (A177704 (A248144 (n + 2)).toNat)

end

end A121030.P10466495537583736141

/-! ## A121030.P14462057502306199377

`A040020(A121040(n+1))*A298849(n+1)`
-/

namespace A121030.P14462057502306199377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040020 (A121040 (n + 1)).toNat * A298849 (n + 1)

end

end A121030.P14462057502306199377

/-! ## A121030.P13791267942854603396

`A010700(A106070(n+1))*A298849(n+1)`
-/

namespace A121030.P13791267942854603396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010700 (A106070 (n + 1)).toNat * A298849 (n + 1)

end

end A121030.P13791267942854603396

/-! ## A121030.P111527805879286141

`A051516(A014673(n+1)²)+10*A298849(n+1)`
-/

namespace A121030.P111527805879286141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (A014673 (n + 1) ^ 2).toNat + 10 * A298849 (n + 1)

end

end A121030.P111527805879286141

/-! ## A121030.P3305213531064819336

`A165831(A065724(n+1))*A298849(n+1)`
-/

namespace A121030.P3305213531064819336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (A065724 (n + 1)).toNat * A298849 (n + 1)

end

end A121030.P3305213531064819336

/-! ## A121030.P1895077992479542604

`lcm(10*A298849(n+1), A020639(A060626(n)))`
-/

namespace A121030.P1895077992479542604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (10 * A298849 (n + 1)) (A020639 (A060626 n).toNat)

end

end A121030.P1895077992479542604

/-! ## A121030.P8919294466154103100

`A298849(A001316(A056672(n+1)))*A298849(n+1)`
-/

namespace A121030.P8919294466154103100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298849 (A001316 (A056672 (n + 1)).toNat).toNat * A298849 (n + 1)

end

end A121030.P8919294466154103100

/-! ## A121030.P12303702806748784231

`A260436(10*A298849(n+1))`
-/

namespace A121030.P12303702806748784231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260436 (10 * A298849 (n + 1)).toNat

end

end A121030.P12303702806748784231

/-! ## A121030.P5190133052599777779

`A010077(A282689(n+1))*A298849(n+1)`
-/

namespace A121030.P5190133052599777779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010077 (A282689 (n + 1)).toNat * A298849 (n + 1)

end

end A121030.P5190133052599777779

/-! ## A121030.P13338796158650801517

`A165831(sqrt(A282689(n+1)))*A298849(n+1)`
-/

namespace A121030.P13338796158650801517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (SequenceMachineLib.roundAway (Real.sqrt (A282689 (n + 1) : ℝ))).toNat * A298849 (n + 1)

end

end A121030.P13338796158650801517

/-!
# A121031: Multiples of 11 containing an 11 in their decimal representation.

The programs for A121031, there is no canonical definition to state claims against.
-/

/-! ## A121031.P2720986017101766612

`∩[A293871(n+1), A008593(n)]`
-/

namespace A121031.P2720986017101766612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121031.P2720986017101766612

/-! ## A121031.P6680056432575556338

`∩[A293871(n+1), A352535(n+1)]`
-/

namespace A121031.P6680056432575556338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121031.P6680056432575556338

/-!
# A121032: Multiples of 12 containing a 12 in their decimal representation.

The programs for A121032, there is no canonical definition to state claims against.
-/

/-! ## A121032.P12408860550532133294

`∩[A293872(n+1), 12*n]`
-/

namespace A121032.P12408860550532133294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A121032.P12408860550532133294

/-! ## A121032.P16301350839106309857

`∩[A008594(n), A293872(n+1)]`
-/

namespace A121032.P16301350839106309857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121032.P16301350839106309857

/-! ## A121032.P6354661308093125312

`∩[A014766(n+1), A293872(n+1)]`
-/

namespace A121032.P6354661308093125312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121032.P6354661308093125312

/-! ## A121032.P13825386985896422596

`∩[A008458(A004277(n)), A293872(n+1)]`
-/

namespace A121032.P13825386985896422596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121032.P13825386985896422596

/-! ## A121032.P13253573690844489821

`∩[A008585(A341016(n+1)), A293872(n+1)]`
-/

namespace A121032.P13253573690844489821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A341016 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121032.P13253573690844489821

/-! ## A121032.P15077518125038198040

`∩[A341016(A016777(n+1)), A293872(n+1)]`
-/

namespace A121032.P15077518125038198040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341016 (A016777 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121032.P15077518125038198040

/-!
# A121033: Multiples of 13 containing a 13 in their decimal representation.

The programs for A121033, there is no canonical definition to state claims against.
-/

/-! ## A121033.P13071573546342829690

`∩[A293873(n+1), A008595(n)]`
-/

namespace A121033.P13071573546342829690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121033.P13071573546342829690

/-!
# A121034: Multiples of 14 containing a 14 in their decimal representation.

The programs for A121034, there is no canonical definition to state claims against.
-/

/-! ## A121034.P14624300686888326879

`∩[2*A121027(n+1), A293874(n+1)]`
-/

namespace A121034.P14624300686888326879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121034.P14624300686888326879

/-! ## A121034.P5555792950516379370

`∩[A293874(n+1), A008596(n)]`
-/

namespace A121034.P5555792950516379370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121034.P5555792950516379370

/-! ## A121034.P9517436561644239036

`∩[A005843(A121027(n+1)), A293874(n+1)]`
-/

namespace A121034.P9517436561644239036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A121027 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121034.P9517436561644239036

/-!
# A121035: Multiples of 15 containing a 15 in their decimal representation.

The programs for A121035, there is no canonical definition to state claims against.
-/

/-! ## A121035.P17768229509200013328

`∩[A293875(n+1), A008597(n)]`
-/

namespace A121035.P17768229509200013328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121035.P17768229509200013328

/-! ## A121035.P4905024183287739552

`∩[A130484(6*(n+1)), A293875(n+1)]`
-/

namespace A121035.P4905024183287739552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130484 (6 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121035.P4905024183287739552

/-!
# A121036: Multiples of 16 containing a 16 in their decimal representation.

The programs for A121036, there is no canonical definition to state claims against.
-/

/-! ## A121036.P14501334101589404397

`∩[2*A121028(n+1), A293876(n+1)]`
-/

namespace A121036.P14501334101589404397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121036.P14501334101589404397

/-! ## A121036.P8029530941227712492

`∩[A293876(n+1), A008598(n)]`
-/

namespace A121036.P8029530941227712492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121036.P8029530941227712492

/-! ## A121036.P14790847215772207994

`∩[A293876(n+1), A008599(n)-n]`
-/

namespace A121036.P14790847215772207994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121036.P14790847215772207994

/-! ## A121036.P16663335306868216700

`∩[A301694(3*n), A293876(n+1)]`
-/

namespace A121036.P16663335306868216700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121036.P16663335306868216700

/-! ## A121036.P7925403481242723313

`∩[A004277(A121028(n+1)), A293876(n+1)]`
-/

namespace A121036.P7925403481242723313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A121028 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293876 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121036.P7925403481242723313

/-!
# A121037: Multiples of 17 containing a 17 in their decimal representation.

The programs for A121037, there is no canonical definition to state claims against.
-/

/-! ## A121037.P949473804270532705

`∩[A293877(n+1), A008599(n)]`
-/

namespace A121037.P949473804270532705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121037.P949473804270532705

/-!
# A121038: Multiples of 18 containing a 18 in their decimal representation.

The programs for A121038, there is no canonical definition to state claims against.
-/

/-! ## A121038.P303426101499232111

`∩[2*A121029(n+1), A293878(n+1)]`
-/

namespace A121038.P303426101499232111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121038.P303426101499232111

/-! ## A121038.P3021250635456461761

`∩[A293878(n+1), A008600(n)]`
-/

namespace A121038.P3021250635456461761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121038.P3021250635456461761

/-!
# A121039: Multiples of 19 containing a 19 in their decimal representation.

The programs for A121039, there is no canonical definition to state claims against.
-/

/-! ## A121039.P7124759094862017754

`∩[A293879(n+1), A008601(n)]`
-/

namespace A121039.P7124759094862017754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008601 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121039.P7124759094862017754

/-!
# A121040: Multiples of 20 containing a 20 in their decimal representation.

The programs for A121040, there is no canonical definition to state claims against.
-/

/-! ## A121040.P11764487647067318760

`∩[10*A121022(n+1), A293880(n+1)]`
-/

namespace A121040.P11764487647067318760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A121022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293880 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121040.P11764487647067318760

/-! ## A121040.P10036837849920017016

`∩[A293880(n+1), A008602(n)]`
-/

namespace A121040.P10036837849920017016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008602 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121040.P10036837849920017016

/-! ## A121040.P7006148751912014984

`A010700(A118180(n))*A277589(n+1)`
-/

namespace A121040.P7006148751912014984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010700 (A118180 n).toNat * A277589 (n + 1)

end

end A121040.P7006148751912014984

/-! ## A121040.P1061851033419485275

`A040020(A242386(n+1))*A277589(n+1)`
-/

namespace A121040.P1061851033419485275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040020 (A242386 (n + 1)).toNat * A277589 (n + 1)

end

end A121040.P1061851033419485275

/-! ## A121040.P4797676421895731437

`A010700(A116886(n+3))*A277589(n+1)`
-/

namespace A121040.P4797676421895731437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010700 (A116886 (n + 3)).toNat * A277589 (n + 1)

end

end A121040.P4797676421895731437

/-!
# A121044: Greatest cluster prime less than 10^n.

The programs for A121044, there is no canonical definition to state claims against.
-/

/-! ## A121044.P11818156434195341342

`A038134(A039506(n+1))`
-/

namespace A121044.P11818156434195341342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038134 (A039506 (n + 1)).toNat

end

end A121044.P11818156434195341342

/-!
# A121045: Least cluster prime greater than 10^n.

The programs for A121045, there is no canonical definition to state claims against.
-/

/-! ## A121045.P16646641000403554065

`A030665(a(n-1)+n-3)` with `a(0)=3`
-/

namespace A121045.P16646641000403554065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A030665 (a (n - 1) + ((n : ℤ) - 3)).toNat

end

end A121045.P16646641000403554065

/-!
# A121046: Approximation to the (10^n)-th prime by applying a bisection to Gram's formula for Riemann's approximation of the prime counting function.

The programs for A121046, there is no canonical definition to state claims against.
-/

/-! ## A121046.P143821991728083438

`A006988(n+1)-A123233(n+1)`
-/

namespace A121046.P143821991728083438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006988 (n + 1) - A123233 (n + 1)

end

end A121046.P143821991728083438

/-!
# A121048: a(n) = n + phi(n), where phi is the Euler totient function.

The programs for A121048, the canonical program `A121048.P10222907602682812102` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121048 has offset 1).

The definition of A121048 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A121048.P10222907602682812102

`n+1+A000010(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A121048

/-- `n+1+A000010(n+1)` -/
def P10222907602682812102.Spec : Prop :=
  ∀ n, P10222907602682812102.a n = A121048 (n + 1)

theorem P10222907602682812102.correct : P10222907602682812102.Spec := by
  intro n
  simp only [A121048, Nat.add_sub_cancel]

end A121048

/-! ## A121048.P5717554691700214218

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1+n`
-/

namespace A121048.P5717554691700214218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1 + (n : ℚ)

end

end A121048.P5717554691700214218

namespace A121048

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1+n` -/
def P5717554691700214218.Spec : Prop :=
  ∀ n, P5717554691700214218.a n = (A121048 (n + 1) : ℚ)

end A121048

/-! ## A121048.P10050208301766134526

`A039649(n+1)+n`
-/

namespace A121048.P10050208301766134526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) + (n : ℤ)

end

end A121048.P10050208301766134526

namespace A121048

/-- `A039649(n+1)+n` -/
def P10050208301766134526.Spec : Prop :=
  ∀ n, P10050208301766134526.a n = A121048 (n + 1)

theorem P10050208301766134526.correct : P10050208301766134526.Spec := by
  intro n
  simp only [A121048, Nat.add_sub_cancel, A121048.P10050208301766134526.a, A121048.P10222907602682812102.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A121048

/-! ## A121048.P14352182795330331341

`Δ[A002088(n)]+1+n`
-/

namespace A121048.P14352182795330331341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A121048.P14352182795330331341

namespace A121048

/-- `Δ[A002088(n)]+1+n` -/
def P14352182795330331341.Spec : Prop :=
  ∀ n, P14352182795330331341.a n = A121048 (n + 1)

end A121048

/-! ## A121048.P4572571251151537042

`Δ[A005728(n)]+1+n`
-/

namespace A121048.P4572571251151537042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℤ)

end

end A121048.P4572571251151537042

namespace A121048

/-- `Δ[A005728(n)]+1+n` -/
def P4572571251151537042.Spec : Prop :=
  ∀ n, P4572571251151537042.a n = A121048 (n + 1)

end A121048

/-! ## A121048.P9078576525734370230

`A109606(n+1)+2+n`
-/

namespace A121048.P9078576525734370230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 2 + (n : ℤ)

end

end A121048.P9078576525734370230

namespace A121048

/-- `A109606(n+1)+2+n` -/
def P9078576525734370230.Spec : Prop :=
  ∀ n, P9078576525734370230.a n = A121048 (n + 1)

theorem P9078576525734370230.correct : P9078576525734370230.Spec := by
  intro n
  simp only [A121048, Nat.add_sub_cancel, A121048.P9078576525734370230.a, A121048.P10222907602682812102.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A121048

/-! ## A121048.P16500275298217837829

`A349137(Δ[n²])+n+1`
-/

namespace A121048.P16500275298217837829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)

end

end A121048.P16500275298217837829

namespace A121048

/-- `A349137(Δ[n²])+n+1` -/
def P16500275298217837829.Spec : Prop :=
  ∀ n, P16500275298217837829.a n = A121048 (n + 1)

end A121048

/-! ## A121048.P6596049852721831790

`Δ[n²]-A219428(n+1)`
-/

namespace A121048.P6596049852721831790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A219428 (n + 1)

end

end A121048.P6596049852721831790

namespace A121048

/-- `Δ[n²]-A219428(n+1)` -/
def P6596049852721831790.Spec : Prop :=
  ∀ n, P6596049852721831790.a n = A121048 (n + 1)

theorem P6596049852721831790.correct : P6596049852721831790.Spec := by
  intro n
  simp only [A121048, Nat.add_sub_cancel, A121048.P6596049852721831790.f1, A121048.P6596049852721831790.a, A121048.P10222907602682812102.a, A000010, A000010.P4673923239450215316.a, A219428, A219428.P9184341513320465947.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A121048

/-! ## A121048.P17636398376583280455

`sqrt(A127473(n+1))+1+n`
-/

namespace A121048.P17636398376583280455
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) + 1 + (n : ℝ)

end

end A121048.P17636398376583280455

namespace A121048

/-- `sqrt(A127473(n+1))+1+n` -/
def P17636398376583280455.Spec : Prop :=
  ∀ n, P17636398376583280455.a n = (A121048 (n + 1) : ℝ)

end A121048

/-! ## A121048.P17324985628873771803

`A264724(n+1)-(n²+n)`
-/

namespace A121048.P17324985628873771803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264724 (n + 1) - (n ^ 2 + n : ℤ)

end

end A121048.P17324985628873771803

namespace A121048

/-- `A264724(n+1)-(n²+n)` -/
def P17324985628873771803.Spec : Prop :=
  ∀ n, P17324985628873771803.a n = A121048 (n + 1)

theorem P17324985628873771803.correct : P17324985628873771803.Spec := by
  intro n
  simp only [A121048, Nat.add_sub_cancel, A121048.P17324985628873771803.a, A121048.P10222907602682812102.a, A000010, A000010.P4673923239450215316.a, A264724, A264724.P2483294076025266206.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A121048

/-! ## A121048.P8207155914326652841

`A349137(2*n+1)+1+n`
-/

namespace A121048.P8207155914326652841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1) + 1 + (n : ℤ)

end

end A121048.P8207155914326652841

namespace A121048

/-- `A349137(2*n+1)+1+n` -/
def P8207155914326652841.Spec : Prop :=
  ∀ n, P8207155914326652841.a n = A121048 (n + 1)

end A121048

/-! ## A121048.P13837204938801014060

`2*(n+1)-A051953(n+1)`
-/

namespace A121048.P13837204938801014060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A051953 (n + 1)

end

end A121048.P13837204938801014060

namespace A121048

/-- `2*(n+1)-A051953(n+1)` -/
def P13837204938801014060.Spec : Prop :=
  ∀ n, P13837204938801014060.a n = A121048 (n + 1)

theorem P13837204938801014060.correct : P13837204938801014060.Spec := by
  intro n
  simp only [A121048, Nat.add_sub_cancel, A121048.P13837204938801014060.a, A121048.P10222907602682812102.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A121048

/-! ## A121048.P13454747914847034149

`3*(n+1)-A053158(n+1)`
-/

namespace A121048.P13454747914847034149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A053158 (n + 1)

end

end A121048.P13454747914847034149

namespace A121048

/-- `3*(n+1)-A053158(n+1)` -/
def P13454747914847034149.Spec : Prop :=
  ∀ n, P13454747914847034149.a n = A121048 (n + 1)

theorem P13454747914847034149.correct : P13454747914847034149.Spec := by
  intro n
  simp only [A121048, Nat.add_sub_cancel, A121048.P13454747914847034149.a, A121048.P10222907602682812102.a, A000010, A000010.P4673923239450215316.a, A053158, A053158.P11533641159092355549.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A121048

/-! ## A121048.P3095221095938504152

`A200905(n+1)/3+n+1`
-/

namespace A121048.P3095221095938504152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200905 (n + 1) : ℚ) / 3 + (n + 1 : ℚ)

end

end A121048.P3095221095938504152

namespace A121048

/-- `A200905(n+1)/3+n+1` -/
def P3095221095938504152.Spec : Prop :=
  ∀ n, P3095221095938504152.a n = (A121048 (n + 1) : ℚ)

theorem P3095221095938504152.correct : P3095221095938504152.Spec := by
  intro n
  simp only [A121048, Nat.add_sub_cancel, A121048.P3095221095938504152.a, A121048.P10222907602682812102.a, A000010, A000010.P4673923239450215316.a, A200905, A200905.P16128160975711994279.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A121048

/-! ## A121048.P7438654717824687819

`a(n-1)+A057000(n)+1` with `a(0)=2`
-/

namespace A121048.P7438654717824687819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A057000 n + 1)

end

end A121048.P7438654717824687819

namespace A121048

/-- `a(n-1)+A057000(n)+1` -/
def P7438654717824687819.Spec : Prop :=
  ∀ n, P7438654717824687819.a n = A121048 (n + 1)

end A121048

/-! ## A121048.P6216535381367703064

`A002618(n+1)/(n+1)+n+1`
-/

namespace A121048.P6216535381367703064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A121048.P6216535381367703064

namespace A121048

/-- `A002618(n+1)/(n+1)+n+1` -/
def P6216535381367703064.Spec : Prop :=
  ∀ n, P6216535381367703064.a n = (A121048 (n + 1) : ℚ)

theorem P6216535381367703064.correct : P6216535381367703064.Spec := by
  intro n
  simp only [A121048, Nat.add_sub_cancel, A121048.P6216535381367703064.a, A121048.P10222907602682812102.a, A000010, A000010.P4673923239450215316.a, A002618, A002618.P8397693677428532773.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A121048

/-! ## A121048.P1762086763063164527

`2*n-(n-1-A000010(2*n-(n-1)))`
-/

namespace A121048.P1762086763063164527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1 - A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

end

end A121048.P1762086763063164527

namespace A121048

/-- `2*n-(n-1-A000010(2*n-(n-1)))` -/
def P1762086763063164527.Spec : Prop :=
  ∀ n, P1762086763063164527.a n = A121048 (n + 1)

end A121048

/-! ## A121048.P13011462299337646297

`∑{d}[n+1, #*A008683((n+1)/#)]+1+n`
-/

namespace A121048.P13011462299337646297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat + 1 + (n : ℤ)

end

end A121048.P13011462299337646297

namespace A121048

/-- `∑{d}[n+1, #*A008683((n+1)/#)]+1+n` -/
def P13011462299337646297.Spec : Prop :=
  ∀ n, P13011462299337646297.a n = A121048 (n + 1)

end A121048

/-! ## A121048.P16770379567298623545

`Δ[A002088(n)+A000217(n)]`
-/

namespace A121048.P16770379567298623545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121048.P16770379567298623545

namespace A121048

/-- `Δ[A002088(n)+A000217(n)]` -/
def P16770379567298623545.Spec : Prop :=
  ∀ n, P16770379567298623545.a n = A121048 (n + 1)

end A121048

/-! ## A121048.P18309366839785674298

`A280577(n+1)+A008619(n)`
-/

namespace A121048.P18309366839785674298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280577 (n + 1) + A008619 n

end

end A121048.P18309366839785674298

namespace A121048

/-- `A280577(n+1)+A008619(n)` -/
def P18309366839785674298.Spec : Prop :=
  ∀ n, P18309366839785674298.a n = A121048 (n + 1)

end A121048

/-!
# A121049: Let p_n be the polynomial of degree n-1 that interpolates the first n primes (i.e., p_n(i) = prime(i) for 1 <= i <= n.) Then a(n) = p_n(n+1)/2.

The programs for A121049, there is no canonical definition to state claims against.
-/

/-! ## A121049.P13335045748285169710

`A140119(n+1)/2`
-/

namespace A121049.P13335045748285169710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140119 (n + 1) : ℚ) / 2

end

end A121049.P13335045748285169710

/-! ## A121049.P14561753364865933235

`(1-1/2)*A140119(A008619(2*n))`
-/

namespace A121049.P14561753364865933235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (1 : ℚ) / 2) * (A140119 (A008619 (2 * n)).toNat : ℚ)

end

end A121049.P14561753364865933235

/-! ## A121049.P15958021343645132274

`(A000040(n+2)-A007442(n+2))/2`
-/

namespace A121049.P15958021343645132274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) - A007442 (n + 2) : ℚ) / 2

end

end A121049.P15958021343645132274

/-! ## A121049.P14167759093673142847

`(A008578(n+3)-A007442(n+2))/2`
-/

namespace A121049.P14167759093673142847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008578 (n + 3) - A007442 (n + 2) : ℚ) / 2

end

end A121049.P14167759093673142847

/-! ## A121049.P3860737417765508210

`(Δ[A007504(n+1)]-A007442(n+2))/2`
-/

namespace A121049.P3860737417765508210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A007442 (n + 2) : ℚ) / 2

end

end A121049.P3860737417765508210

/-!
# A121050: Partial sums of floor(n!/e^n).

The programs for A121050, there is no canonical definition to state claims against.
-/

/-! ## A121050.P12882586090723701282

`∑[floor(∏[(n+1)/e])]`
-/

namespace A121050.P12882586090723701282
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.exp 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121050.P12882586090723701282

/-! ## A121050.P10851430868834207409

`∑[A174300(n+1)]-(n+1)`
-/

namespace A121050.P10851430868834207409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A121050.P10851430868834207409

/-! ## A121050.P15912990638310086232

`A001478(n+1)+∑[A174300(n+1)]`
-/

namespace A121050.P15912990638310086232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121050.P15912990638310086232

/-! ## A121050.P14110988559678998311

`A174299(n+1)+a(n-1)` with `a(0)=0`
-/

namespace A121050.P14110988559678998311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A174299 (n + 1) + a (n - 1)

end

end A121050.P14110988559678998311

/-! ## A121050.P3610630393570988996

`A014963(∑[n+3])*∑[A174299(n+1)]`
-/

namespace A121050.P3610630393570988996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A121050.P3610630393570988996

/-!
# A121051: Semiprimes which are sums of 4 but no fewer nonzero squares.

The programs for A121051, the canonical program `A121051.P2553886155727565146` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121051 has offset 1).

The definition of A121051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4571 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121051.P6135552630700618764

`filter[A176404(n+1), A359162(#)]`
-/

namespace A121051.P6135552630700618764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359162 (f1 j).toNat = 1) n)

end

end A121051.P6135552630700618764

namespace A121051

/-- `filter[A176404(n+1), A359162(#)]` -/
def P6135552630700618764.Spec : Prop :=
  ∀ n, P6135552630700618764.a n = A121051 (n + 1)

end A121051

/-! ## A121051.P11203870500351109618

`filter[A176404(n+1), A360109(#)]`
-/

namespace A121051.P11203870500351109618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360109 (f1 j).toNat = 1) n)

end

end A121051.P11203870500351109618

namespace A121051

/-- `filter[A176404(n+1), A360109(#)]` -/
def P11203870500351109618.Spec : Prop :=
  ∀ n, P11203870500351109618.a n = A121051 (n + 1)

end A121051

/-! ## A121051.P2553886155727565146

`filter[A176404(n+1), A373979(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A121051

/-- `filter[A176404(n+1), A373979(#)]` -/
def P2553886155727565146.Spec : Prop :=
  ∀ n, P2553886155727565146.a n = A121051 (n + 1)

theorem P2553886155727565146.correct : P2553886155727565146.Spec := by
  intro n
  simp only [A121051, Nat.add_sub_cancel]

end A121051

/-! ## A121051.P11835282177516423083

`∩[8*n-1, A001358(n+1)]`
-/

namespace A121051.P11835282177516423083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121051.P11835282177516423083

namespace A121051

/-- `∩[8*n-1, A001358(n+1)]` -/
def P11835282177516423083.Spec : Prop :=
  ∀ n, (P11835282177516423083.a n : ℤ) = A121051 (n + 1)

end A121051

/-! ## A121051.P12952693421568529429

`filter[A004771(n), A359828(#)]`
-/

namespace A121051.P12952693421568529429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A121051.P12952693421568529429

namespace A121051

/-- `filter[A004771(n), A359828(#)]` -/
def P12952693421568529429.Spec : Prop :=
  ∀ n, P12952693421568529429.a n = A121051 (n + 1)

end A121051

/-! ## A121051.P11959494596456479648

`∩[A001358(n+1), A004771(n)]`
-/

namespace A121051.P11959494596456479648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121051.P11959494596456479648

namespace A121051

/-- `∩[A001358(n+1), A004771(n)]` -/
def P11959494596456479648.Spec : Prop :=
  ∀ n, (P11959494596456479648.a n : ℤ) = A121051 (n + 1)

end A121051

/-! ## A121051.P13693391964352157125

`∩[A080774(n+1), A004771(n)]`
-/

namespace A121051.P13693391964352157125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121051.P13693391964352157125

namespace A121051

/-- `∩[A080774(n+1), A004771(n)]` -/
def P13693391964352157125.Spec : Prop :=
  ∀ n, (P13693391964352157125.a n : ℤ) = A121051 (n + 1)

end A121051

/-! ## A121051.P6467277465464735984

`∩[A001358(n+1), A133655(n)]`
-/

namespace A121051.P6467277465464735984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121051.P6467277465464735984

namespace A121051

/-- `∩[A001358(n+1), A133655(n)]` -/
def P6467277465464735984.Spec : Prop :=
  ∀ n, (P6467277465464735984.a n : ℤ) = A121051 (n + 1)

end A121051

/-! ## A121051.P4347941047215644931

`∩[A176404(n+1), A004771(n)]`
-/

namespace A121051.P4347941047215644931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121051.P4347941047215644931

namespace A121051

/-- `∩[A176404(n+1), A004771(n)]` -/
def P4347941047215644931.Spec : Prop :=
  ∀ n, (P4347941047215644931.a n : ℤ) = A121051 (n + 1)

end A121051

/-! ## A121051.P14002996665750968206

`∩[A080774(n+1), A133655(n)]`
-/

namespace A121051.P14002996665750968206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121051.P14002996665750968206

namespace A121051

/-- `∩[A080774(n+1), A133655(n)]` -/
def P14002996665750968206.Spec : Prop :=
  ∀ n, (P14002996665750968206.a n : ℤ) = A121051 (n + 1)

end A121051

/-! ## A121051.P16638492545545111267

`∩[A176404(n+1), A133655(n)]`
-/

namespace A121051.P16638492545545111267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121051.P16638492545545111267

namespace A121051

/-- `∩[A176404(n+1), A133655(n)]` -/
def P16638492545545111267.Spec : Prop :=
  ∀ n, (P16638492545545111267.a n : ℤ) = A121051 (n + 1)

end A121051

/-! ## A121051.P185464129543481330

`filter[A004771(n), A064911(#)]`
-/

namespace A121051.P185464129543481330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A121051.P185464129543481330

namespace A121051

/-- `filter[A004771(n), A064911(#)]` -/
def P185464129543481330.Spec : Prop :=
  ∀ n, P185464129543481330.a n = A121051 (n + 1)

end A121051

/-! ## A121051.P9862521192483573701

`filter[A133655(n), A064911(#)]`
-/

namespace A121051.P9862521192483573701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A121051.P9862521192483573701

namespace A121051

/-- `filter[A133655(n), A064911(#)]` -/
def P9862521192483573701.Spec : Prop :=
  ∀ n, P9862521192483573701.a n = A121051 (n + 1)

end A121051

/-! ## A121051.P8906672747096326839

`filter[A004771(n), A280710(#)]`
-/

namespace A121051.P8906672747096326839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A121051.P8906672747096326839

namespace A121051

/-- `filter[A004771(n), A280710(#)]` -/
def P8906672747096326839.Spec : Prop :=
  ∀ n, P8906672747096326839.a n = A121051 (n + 1)

end A121051

/-! ## A121051.P7577850143283241420

`filter[A004771(n), A340370(#)]`
-/

namespace A121051.P7577850143283241420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A121051.P7577850143283241420

namespace A121051

/-- `filter[A004771(n), A340370(#)]` -/
def P7577850143283241420.Spec : Prop :=
  ∀ n, P7577850143283241420.a n = A121051 (n + 1)

end A121051

/-! ## A121051.P18046312481886564073

`filter[A004771(n), A353479(#)]`
-/

namespace A121051.P18046312481886564073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353479 (f1 j).toNat = 1) n)

end

end A121051.P18046312481886564073

namespace A121051

/-- `filter[A004771(n), A353479(#)]` -/
def P18046312481886564073.Spec : Prop :=
  ∀ n, P18046312481886564073.a n = A121051 (n + 1)

end A121051

/-! ## A121051.P15141022456567054410

`filter[A004771(n), A353480(#)]`
-/

namespace A121051.P15141022456567054410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A121051.P15141022456567054410

namespace A121051

/-- `filter[A004771(n), A353480(#)]` -/
def P15141022456567054410.Spec : Prop :=
  ∀ n, P15141022456567054410.a n = A121051 (n + 1)

end A121051

/-! ## A121051.P12453895900987880236

`filter[A004771(n), A353481(#)]`
-/

namespace A121051.P12453895900987880236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A121051.P12453895900987880236

namespace A121051

/-- `filter[A004771(n), A353481(#)]` -/
def P12453895900987880236.Spec : Prop :=
  ∀ n, P12453895900987880236.a n = A121051 (n + 1)

end A121051

/-! ## A121051.P13156385972509186814

`filter[A055466(n+1), A280710(#)]`
-/

namespace A121051.P13156385972509186814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A121051.P13156385972509186814

namespace A121051

/-- `filter[A055466(n+1), A280710(#)]` -/
def P13156385972509186814.Spec : Prop :=
  ∀ n, P13156385972509186814.a n = A121051 (n + 1)

end A121051

/-! ## A121051.P14215058149509583767

`filter[A055466(n+1), A353479(#)]`
-/

namespace A121051.P14215058149509583767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353479 (f1 j).toNat = 1) n)

end

end A121051.P14215058149509583767

namespace A121051

/-- `filter[A055466(n+1), A353479(#)]` -/
def P14215058149509583767.Spec : Prop :=
  ∀ n, P14215058149509583767.a n = A121051 (n + 1)

end A121051

/-!
# A121054: Sizes of successive clusters in f.c.c. lattice centered at a tetrahedral hole.

The programs for A121054, there is no canonical definition to state claims against.
-/

/-! ## A121054.P16607530571127385976

`∑[A005886(n)]`
-/

namespace A121054.P16607530571127385976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121054.P16607530571127385976

/-! ## A121054.P7306747556211980386

`2*A121055(n)`
-/

namespace A121054.P7306747556211980386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121055 n

end

end A121054.P7306747556211980386

/-! ## A121054.P15515821103152486326

`4*A038835(n)`
-/

namespace A121054.P15515821103152486326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A038835 n

end

end A121054.P15515821103152486326

/-! ## A121054.P6008541545303098583

`∑[2*A005869(n)]`
-/

namespace A121054.P6008541545303098583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121054.P6008541545303098583

/-! ## A121054.P5616932337577706799

`∑[4*A008443(n)]`
-/

namespace A121054.P5616932337577706799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121054.P5616932337577706799

/-! ## A121054.P10578384998395277648

`A121055(n)²/A038835(n)`
-/

namespace A121054.P10578384998395277648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121055 n ^ 2 : ℚ) / (A038835 n : ℚ)

end

end A121054.P10578384998395277648

/-! ## A121054.P15522020199741347687

`A121055(n+1)+A121055(n)-A005869(n+1)`
-/

namespace A121054.P15522020199741347687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121055 (n + 1) + (A121055 n - A005869 (n + 1))

end

end A121054.P15522020199741347687

/-! ## A121054.P18204754605951161490

`A121055(n+1)+A121055(n+1)-A005886(n+1)`
-/

namespace A121054.P18204754605951161490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121055 (n + 1) + (A121055 (n + 1) - A005886 (n + 1))

end

end A121054.P18204754605951161490

/-! ## A121054.P11167648662129670440

`∑[A005878(n)/2]`
-/

namespace A121054.P11167648662129670440
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005878 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121054.P11167648662129670440

/-! ## A121054.P17975746709511438387

`∑[A072068(2*(2*n+1))]`
-/

namespace A121054.P17975746709511438387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072068 (2 * (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121054.P17975746709511438387

/-! ## A121054.P17736064171971477481

`∑[4*A292511(2*n)]`
-/

namespace A121054.P17736064171971477481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A292511 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121054.P17736064171971477481

/-! ## A121054.P9571869895565851463

`∑[A005925(8*n+3)]`
-/

namespace A121054.P9571869895565851463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005925 (8 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121054.P9571869895565851463

/-! ## A121054.P16109993597470634964

`∑[A259825(8*n+3)]`
-/

namespace A121054.P16109993597470634964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259825 (8 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121054.P16109993597470634964

/-! ## A121054.P2124605919340122050

`A008574(A038835(n))`
-/

namespace A121054.P2124605919340122050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A038835 n).toNat

end

end A121054.P2124605919340122050

/-! ## A121054.P13766865656898252974

`A004277(A121055(n))`
-/

namespace A121054.P13766865656898252974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A121055 n).toNat

end

end A121054.P13766865656898252974

/-!
# A121055: Sizes of successive clusters in b.c.c. lattice centered at midpoint of a short edge.

The programs for A121055, there is no canonical definition to state claims against.
-/

/-! ## A121055.P7407286064828883658

`∑[A005869(n)]`
-/

namespace A121055.P7407286064828883658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121055.P7407286064828883658

/-! ## A121055.P6291951912985905381

`2*A038835(n)`
-/

namespace A121055.P6291951912985905381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038835 n

end

end A121055.P6291951912985905381

/-! ## A121055.P3462509239846059575

`A121054(n)/2`
-/

namespace A121055.P3462509239846059575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121054 n : ℚ) / 2

end

end A121055.P3462509239846059575

/-! ## A121055.P5789556494911450198

`∑[2*A008443(n)]`
-/

namespace A121055.P5789556494911450198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121055.P5789556494911450198

/-! ## A121055.P4089668582668476862

`∑[A005886(n)/2]`
-/

namespace A121055.P4089668582668476862
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005886 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121055.P4089668582668476862

/-! ## A121055.P8551907260977479317

`A038835(n)+∑[A008443(n)]`
-/

namespace A121055.P8551907260977479317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038835 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121055.P8551907260977479317

/-! ## A121055.P7758071737392948908

`A121054(n)-(A038835(n)+A038835(n))`
-/

namespace A121055.P7758071737392948908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121054 n - (A038835 n + A038835 n)

end

end A121055.P7758071737392948908

/-! ## A121055.P5654757825687882295

`A038835(n+1)+A038835(n)-A008443(n+1)`
-/

namespace A121055.P5654757825687882295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038835 (n + 1) + (A038835 n - A008443 (n + 1))

end

end A121055.P5654757825687882295

/-! ## A121055.P18121147906283188974

`A038835(n+1)+A038835(n+1)-A005869(n+1)`
-/

namespace A121055.P18121147906283188974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038835 (n + 1) + (A038835 (n + 1) - A005869 (n + 1))

end

end A121055.P18121147906283188974

/-! ## A121055.P6119906548473926598

`∑[2*A238872(2*n+1)]`
-/

namespace A121055.P6119906548473926598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238872 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121055.P6119906548473926598

/-! ## A121055.P8151590826321664775

`∑[A005878(n)/4]`
-/

namespace A121055.P8151590826321664775
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005878 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121055.P8151590826321664775

/-! ## A121055.P17593926645842014356

`∑[2*A292511(2*n)]`
-/

namespace A121055.P17593926645842014356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292511 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121055.P17593926645842014356

/-! ## A121055.P11701934789989698256

`∑[A005925(8*n+3)/2]`
-/

namespace A121055.P11701934789989698256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005925 (8 * n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121055.P11701934789989698256

/-! ## A121055.P5783041115057679285

`A004277(A038835(n))`
-/

namespace A121055.P5783041115057679285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A038835 n).toNat

end

end A121055.P5783041115057679285

/-! ## A121055.P15178230187784718078

`A001281(A121054(n))`
-/

namespace A121055.P15178230187784718078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A121054 n).toNat

end

end A121055.P15178230187784718078

/-! ## A121055.P3586373369213094034

`∑[2*A130695(2*n+1)]`
-/

namespace A121055.P3586373369213094034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130695 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121055.P3586373369213094034

/-!
# A121057: Triangle read by rows: T(n,m) = prime(n)^m*(prime(n) - 1)/2, 1 <= m <= n.

The programs for A121057, the canonical program `A121057.P4166192659528076731` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121057 has offset 1).

The definition of A121057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121057.P4166192659528076731

`A000040(row(n)+1)^(col(n)+1)*(A000040(row(n)+1)-1)/2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121057

/-- `A000040(row(n)+1)^(col(n)+1)*(A000040(row(n)+1)-1)/2` -/
def P4166192659528076731.Spec : Prop :=
  ∀ n, P4166192659528076731.a n = (A121057 (n + 1) : ℚ)

end A121057

/-! ## A121057.P6865550744031152232

`A178479(A215005(n+1))`
-/

namespace A121057.P6865550744031152232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178479 (A215005 (n + 1)).toNat

end

end A121057.P6865550744031152232

namespace A121057

/-- `A178479(A215005(n+1))` -/
def P6865550744031152232.Spec : Prop :=
  ∀ n, P6865550744031152232.a n = A121057 (n + 1)

end A121057

/-!
# A121058: Positive integers x such that x+d+1 is composite for all divisors d of x.

The programs for A121058, there is no canonical definition to state claims against.
-/

/-! ## A121058.P3211295042155491648

`lt[∑{d}[n, A020639(n+1+#)], n]`
-/

namespace A121058.P3211295042155491648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A020639 (n + 1 + d)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A121058.P3211295042155491648

/-!
# A121059: a(1)=2; a(n) = the reversal of (a(n-1) * maxdigit(a(n-1))).

The programs for A121059, there is no canonical definition to state claims against.
-/

/-! ## A121059.P6053669849235080597

`A004086(6*a(n-1))` with `a(0)=2, a(1)=4, a(2)=61`
-/

namespace A121059.P6053669849235080597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 61] fun n a =>
  A004086 (6 * a (n - 1)).toNat

end

end A121059.P6053669849235080597

/-!
# A121060: Sum of the first n digits to the right of the decimal expansion of 1/n.

The programs for A121060, there is no canonical definition to state claims against.
-/

/-! ## A121060.P2710249521320626620

`∑{digits}[A060156(n+1), #]-A000007(n)`
-/

namespace A121060.P2710249521320626620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A000007 n

end

end A121060.P2710249521320626620

/-! ## A121060.P1640207606923357021

`∑{digits}[A060156(n+1), #*A057427(n)]`
-/

namespace A121060.P1640207606923357021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℤ) * A057427 n).sum

end

end A121060.P1640207606923357021

/-! ## A121060.P6035610592516458408

`∑{digits}[A060156(n+1), #]%A005891(n)`
-/

namespace A121060.P6035610592516458408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A005891 n)

end

end A121060.P6035610592516458408

/-! ## A121060.P4880402648533178709

`∑{digits}[A060156(n+1), #%A022622(n)]`
-/

namespace A121060.P4880402648533178709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.tmod (x : ℤ) (A022622 n)).sum

end

end A121060.P4880402648533178709

/-! ## A121060.P12567952401246759349

`∑{digits}[A060156(n+1), #]-A008683(A000118(n))`
-/

namespace A121060.P12567952401246759349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A008683 (A000118 n).toNat

end

end A121060.P12567952401246759349

/-! ## A121060.P14556992944185762189

`∑{digits}[A060156(n+1), #]-A008683(A008574(n))`
-/

namespace A121060.P14556992944185762189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - A008683 (A008574 n).toNat

end

end A121060.P14556992944185762189

/-! ## A121060.P1750476527050056260

`∑{digits}[A060156(n+1), #*A001221(A001316(n))]`
-/

namespace A121060.P1750476527050056260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℤ) * A001221 (A001316 n).toNat).sum

end

end A121060.P1750476527050056260

/-! ## A121060.P10742122888104758875

`A001221(A000961(n+1))*∑{digits}[A060156(n+1), #]`
-/

namespace A121060.P10742122888104758875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060156 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000961 (n + 1)).toNat * ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A121060.P10742122888104758875

/-!
# A121061: Numbers k such that k-th partition number A000041(k) is a 3-almost prime (A014612).

The programs for A121061, there is no canonical definition to state claims against.
-/

/-! ## A121061.P10606307825318895474

`eq[3, A085561(n)]`
-/

namespace A121061.P10606307825318895474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121061.P10606307825318895474

/-! ## A121061.P17364789350197100375

`lt[A001221(C(A085561(n)+7, 3)+1), 2]`
-/

namespace A121061.P17364789350197100375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A085561 n + 7).toNat 3 + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A121061.P17364789350197100375

/-! ## A121061.P11250912902314858992

`lt[A200520(2^A085561(n)), 3]`
-/

namespace A121061.P11250912902314858992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200520 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A085561 n : ℤ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A121061.P11250912902314858992

/-! ## A121061.P6733628995184281370

`eq[1, A066520(A278241(n))]`
-/

namespace A121061.P6733628995184281370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066520 (A278241 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121061.P6733628995184281370

/-! ## A121061.P8760100007346383659

`eq[1, A337599(A278241(n)+1)]`
-/

namespace A121061.P8760100007346383659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337599 (A278241 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A121061.P8760100007346383659

/-!
# A121062: Partition numbers mod 4.

The programs for A121062, there is no canonical definition to state claims against.
-/

/-! ## A121062.P15464497556936657807

`A000041(n)%4`
-/

namespace A121062.P15464497556936657807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 4

end

end A121062.P15464497556936657807

/-! ## A121062.P11632144179190554933

`A010873(A000041(n))`
-/

namespace A121062.P11632144179190554933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A000041 n).toNat

end

end A121062.P11632144179190554933

/-! ## A121062.P10675791879747128632

`and(3, A000025(n))`
-/

namespace A121062.P10675791879747128632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000025 n)

end

end A121062.P10675791879747128632

/-! ## A121062.P2978932571566286082

`and(3, A085261(n))`
-/

namespace A121062.P2978932571566286082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A085261 n)

end

end A121062.P2978932571566286082

/-! ## A121062.P8741553568733524479

`and(3, A132970(n))`
-/

namespace A121062.P8741553568733524479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A132970 n)

end

end A121062.P8741553568733524479

/-! ## A121062.P14074413945099354152

`and(3, A138559(n))`
-/

namespace A121062.P14074413945099354152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A138559 n)

end

end A121062.P14074413945099354152

/-! ## A121062.P17163689860075852786

`∑[A002865(n)]%4`
-/

namespace A121062.P17163689860075852786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 4

end

end A121062.P17163689860075852786

/-! ## A121062.P2872992040888107613

`and(3, A000041(n-char[1]))`
-/

namespace A121062.P2872992040888107613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000041 (n - (if ∃ j, f1 j = n then 1 else 0)))

end

end A121062.P2872992040888107613

/-! ## A121062.P16652047338091536345

`and(A000041(n), A122553(n))`
-/

namespace A121062.P16652047338091536345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000041 n) (A122553 n)

end

end A121062.P16652047338091536345

/-! ## A121062.P4471763134323524903

`A040051(n)+and(2, A000041(n))`
-/

namespace A121062.P4471763134323524903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040051 n + Int.land 2 (A000041 n)

end

end A121062.P4471763134323524903

/-! ## A121062.P2144189340133731651

`and(A000041(n), A157532(n+2))`
-/

namespace A121062.P2144189340133731651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000041 n) (A157532 (n + 2))

end

end A121062.P2144189340133731651

/-! ## A121062.P8861719021848183724

`and(A000041(n), A000032((2*n+2)/(n+1)))`
-/

namespace A121062.P8861719021848183724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000041 n) (A000032 (SequenceMachineLib.roundAway ((2 * n + 2 : ℚ) / (n + 1 : ℚ))).toNat)

end

end A121062.P8861719021848183724

/-! ## A121062.P10205464987214364407

`and(A000041(n), A000040((2*n+2)/(n+1)))`
-/

namespace A121062.P10205464987214364407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000041 n) (A000040 (SequenceMachineLib.roundAway ((2 * n + 2 : ℚ) / (n + 1 : ℚ))).toNat)

end

end A121062.P10205464987214364407

/-! ## A121062.P5892856984256120806

`and(A000041(n), A000203((2*n+2)/(n+1)))`
-/

namespace A121062.P5892856984256120806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000041 n) (A000203 (SequenceMachineLib.roundAway ((2 * n + 2 : ℚ) / (n + 1 : ℚ))).toNat)

end

end A121062.P5892856984256120806

/-! ## A121062.P18258730731041132493

`A035363(2*n)%4`
-/

namespace A121062.P18258730731041132493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035363 (2 * n)) 4

end

end A121062.P18258730731041132493

/-! ## A121062.P5921008102164793125

`A119620(2*n)%4`
-/

namespace A121062.P5921008102164793125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119620 (2 * n)) 4

end

end A121062.P5921008102164793125

/-! ## A121062.P10232636389076978044

`A246712(2*n)%4`
-/

namespace A121062.P10232636389076978044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246712 (2 * n)) 4

end

end A121062.P10232636389076978044

/-! ## A121062.P10512158522554984632

`A360191(n)%4`
-/

namespace A121062.P10512158522554984632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360191 n) 4

end

end A121062.P10512158522554984632

/-! ## A121062.P9759085256737631099

`and(A122553(n), A360191(n))`
-/

namespace A121062.P9759085256737631099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 n) (A360191 n)

end

end A121062.P9759085256737631099

/-! ## A121062.P2951568284863717434

`A051136(2*n)%4`
-/

namespace A121062.P2951568284863717434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051136 (2 * n)) 4

end

end A121062.P2951568284863717434

/-!
# A121063: Number of labeled directed multigraphs with n arcs for which every vertex has in-degree at least one and out-degree at least one.

The programs for A121063, there is no canonical definition to state claims against.
-/

/-! ## A121063.P16682450154377129446

`A054591(2*a(n-1)+1-a(and(n, n-1)))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A121063.P16682450154377129446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 4] fun n a =>
  A054591 (2 * a (n - 1) + (1 - a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)).toNat

end

end A121063.P16682450154377129446

/-! ## A121063.P17797629402425144582

`Δ[A060715(∑[A138211(n)])]`
-/

namespace A121063.P17797629402425144582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138211 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121063.P17797629402425144582

/-!
# A121067: a(n) = the n-th divisor of n^n (when the positive divisors of n^n are written in order from smallest to largest).

The programs for A121067, there is no canonical definition to state claims against.
-/

/-! ## A121067.P10153217815982353892

`A119361(n+1)/∏{p}[n+1, #]`
-/

namespace A121067.P10153217815982353892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119361 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)

end

end A121067.P10153217815982353892

/-! ## A121067.P16081242724918473032

`A119361(n+1)/A007947(n+1)`
-/

namespace A121067.P16081242724918473032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119361 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A121067.P16081242724918473032

/-! ## A121067.P16512652649546396304

`A276237((n+1)²+(1-n)²)`
-/

namespace A121067.P16512652649546396304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276237 (((n + 1) ^ 2 : ℤ) + (1 - (n : ℤ)) ^ 2).toNat

end

end A121067.P16512652649546396304

/-! ## A121067.P9761312908272827406

`A020639(n+1)^A014499(A004154(n))`
-/

namespace A121067.P9761312908272827406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A014499 (A004154 n).toNat : ℤ)

end

end A121067.P9761312908272827406

/-!
# A121068: Numbers k such that 8*k^2 + 7 is prime.

The programs for A121068, there is no canonical definition to state claims against.
-/

/-! ## A121068.P12605468379277857304

`floor(sqrt(A201704(n+1)/8))`
-/

namespace A121068.P12605468379277857304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A201704 (n + 1) : ℚ) / 8 : ℝ)⌋

end

end A121068.P12605468379277857304

/-! ## A121068.P16066730010526179853

`round(sqrt(A201704(n+1)/8)-A000007(n))`
-/

namespace A121068.P16066730010526179853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A201704 (n + 1) : ℚ) / 8 : ℝ) - (A000007 n : ℝ))

end

end A121068.P16066730010526179853

/-! ## A121068.P9199700152816443576

`round(sqrt(A201704(n+1)/8)*A057427(n))`
-/

namespace A121068.P9199700152816443576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A201704 (n + 1) : ℚ) / 8 : ℝ) * (A057427 n : ℝ))

end

end A121068.P9199700152816443576

/-! ## A121068.P4336524602286413505

`round(sqrt(A201704(n+1)/8))%A299279(n)`
-/

namespace A121068.P4336524602286413505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt ((A201704 (n + 1) : ℚ) / 8 : ℝ))) (A299279 n)

end

end A121068.P4336524602286413505

/-! ## A121068.P3543406328369121303

`ceil(A260196(n+2)+sqrt(A201704(n+1)/8))`
-/

namespace A121068.P3543406328369121303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A260196 (n + 2) : ℝ) + Real.sqrt ((A201704 (n + 1) : ℚ) / 8 : ℝ)⌉

end

end A121068.P3543406328369121303

/-! ## A121068.P7995925902898170150

`-ceil(A048298(3*n)-sqrt(A201704(n+1)/8))`
-/

namespace A121068.P7995925902898170150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈(A048298 (3 * n) : ℝ) - Real.sqrt ((A201704 (n + 1) : ℚ) / 8 : ℝ)⌉

end

end A121068.P7995925902898170150

/-!
# A121069: Conjectured sequence for jumping champions greater than 1 (most common prime gaps up to x, for some x).

The programs for A121069, there is no canonical definition to state claims against.
-/

/-! ## A121069.P3384258416701320403

`∏[eq[n, ∏{d}[n, #]]]+C(2, n²)`
-/

namespace A121069.P3384258416701320403
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + Nat.choose 2 (n ^ 2)

end

end A121069.P3384258416701320403

/-! ## A121069.P12914724654066579362

`∏[lt[n-2, 2*(n+1)-∑{d}[n+1, #]]+1]+C(2, n²)`
-/

namespace A121069.P12914724654066579362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - ((∑ d ∈ Nat.divisors (f4 n), d : ℕ) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + Nat.choose 2 (n ^ 2)

end

end A121069.P12914724654066579362

/-! ## A121069.P8076787372170747925

`A002110(n)+C(2, n²)`
-/

namespace A121069.P8076787372170747925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n + (Nat.choose 2 (n ^ 2) : ℤ)

end

end A121069.P8076787372170747925

/-! ## A121069.P15662324276719423526

`A002110(n%a(n-1))` with `a(0)=2, a(1)=4`
-/

namespace A121069.P15662324276719423526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  A002110 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A121069.P15662324276719423526

/-! ## A121069.P5712774719805660750

`a(n-1)*A000040(n)` with `a(0)=2, a(1)=4, a(2)=6`
-/

namespace A121069.P5712774719805660750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 6] fun n a =>
  a (n - 1) * A000040 n

end

end A121069.P5712774719805660750

/-!
# A121070: Nonisomorphic catacondensed monoheptafusenes (see reference for precise definition).

The programs for A121070, there is no canonical definition to state claims against.
-/

/-! ## A121070.P15619352153542789670

`A121073(n)+A121072(A028310(n))`
-/

namespace A121070.P15619352153542789670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121073 n + A121072 (A028310 n).toNat

end

end A121070.P15619352153542789670

/-! ## A121070.P8903998151621686

`A046697(n+1)+A045904(n)+A044046(n)`
-/

namespace A121070.P8903998151621686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046697 (n + 1) + (A045904 n + A044046 n)

end

end A121070.P8903998151621686

/-!
# A121071: Nonisomorphic catacondensed monoheptafusenes (see reference for precise definition).

The programs for A121071, there is no canonical definition to state claims against.
-/

/-! ## A121071.P11726594608306502410

`2*A044046(n)`
-/

namespace A121071.P11726594608306502410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A044046 n

end

end A121071.P11726594608306502410

/-! ## A121071.P10702676477039498134

`A044046(n)/abs(A065357(n)/2)`
-/

namespace A121071.P10702676477039498134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044046 n : ℚ) / |(A065357 n : ℚ) / 2|

end

end A121071.P10702676477039498134

/-! ## A121071.P3712324659711053052

`2*(Δ[A044045(n)]-A002212(n))`
-/

namespace A121071.P3712324659711053052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - A002212 n)

end

end A121071.P3712324659711053052

/-! ## A121071.P7522106644856412010

`Δ[2*A044045(n)%A181768(n)]`
-/

namespace A121071.P7522106644856412010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A044045 n) (A181768 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121071.P7522106644856412010

/-! ## A121071.P3378162955376808260

`2*(A030520(n+2)-∑[A045908(n)])`
-/

namespace A121071.P3378162955376808260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A030520 (n + 2) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121071.P3378162955376808260

/-! ## A121071.P1435452775726181711

`2*(A046697(n+1)-A038392(n+1))`
-/

namespace A121071.P1435452775726181711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A046697 (n + 1) - A038392 (n + 1))

end

end A121071.P1435452775726181711

/-! ## A121071.P2607008210950361446

`A044046(A028310(n))+A044046(n)`
-/

namespace A121071.P2607008210950361446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044046 (A028310 n).toNat + A044046 n

end

end A121071.P2607008210950361446

/-! ## A121071.P1401588276713073001

`A000007(n+1)+A044046(n)+A044046(n)`
-/

namespace A121071.P1401588276713073001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A044046 n + A044046 n)

end

end A121071.P1401588276713073001

/-! ## A121071.P1190213483546206302

`A046697(n+1)+A044046(n)-A038392(n+1)`
-/

namespace A121071.P1190213483546206302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046697 (n + 1) + (A044046 n - A038392 (n + 1))

end

end A121071.P1190213483546206302

/-!
# A121072: Nonisomorphic catacondensed monoheptafusenes (see reference for precise definition).

The programs for A121072, there is no canonical definition to state claims against.
-/

/-! ## A121072.P8234568589674881196

`A060372(A121074(n))`
-/

namespace A121072.P8234568589674881196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 (A121074 n).toNat

end

end A121072.P8234568589674881196

/-! ## A121072.P7471374809498781049

`A121074(n)+A308872(n)²`
-/

namespace A121072.P7471374809498781049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121074 n + A308872 n ^ 2

end

end A121072.P7471374809498781049

/-! ## A121072.P7650412027076396161

`A121074(n)+A308910(n)²`
-/

namespace A121072.P7650412027076396161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121074 n + A308910 n ^ 2

end

end A121072.P7650412027076396161

/-! ## A121072.P5396139112849062236

`A000196(A000206(n)*A022998(n))+A308872(n)²`
-/

namespace A121072.P5396139112849062236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000206 n * A022998 n).toNat + A308872 n ^ 2

end

end A121072.P5396139112849062236

/-! ## A121072.P16425541385302384519

`(A121076(n)-A121075(n))%A121080(n)+A308872(n)²`
-/

namespace A121072.P16425541385302384519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121076 n - A121075 n) (A121080 n) + A308872 n ^ 2

end

end A121072.P16425541385302384519

/-!
# A121073: Nonisomorphic catacondensed monoheptafusenes (see reference for precise definition).

The programs for A121073, there is no canonical definition to state claims against.
-/

/-! ## A121073.P18311139743451800683

`A121070(n)-A121072(A028310(n))`
-/

namespace A121073.P18311139743451800683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121070 n - A121072 (A028310 n).toNat

end

end A121073.P18311139743451800683

/-! ## A121073.P16250930460001903239

`∑[A243168(A113774(n))]`
-/

namespace A121073.P16250930460001903239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243168 (A113774 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121073.P16250930460001903239

/-!
# A121074: Nonisomorphic catacondensed monoheptabenzenoids (see reference for precise definition).

The programs for A121074, there is no canonical definition to state claims against.
-/

/-! ## A121074.P15492000929883466150

`A121072(n)-A308872(n)²`
-/

namespace A121074.P15492000929883466150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121072 n - A308872 n ^ 2

end

end A121074.P15492000929883466150

/-! ## A121074.P9233201261792821165

`A121072(n)-A308910(n)²`
-/

namespace A121074.P9233201261792821165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121072 n - A308910 n ^ 2

end

end A121074.P9233201261792821165

/-! ## A121074.P17338472890330955516

`floor(sqrt(A000206(n)*A022998(n)))`
-/

namespace A121074.P17338472890330955516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000206 n * A022998 n)

end

end A121074.P17338472890330955516

/-! ## A121074.P9188704595735499550

`A000196(n*gcd(2, n)*A000206(n))`
-/

namespace A121074.P9188704595735499550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n * Nat.gcd 2 n : ℤ) * A000206 n).toNat

end

end A121074.P9188704595735499550

/-! ## A121074.P15717149416093077095

`A000196(A000206(n)*A022998(n))`
-/

namespace A121074.P15717149416093077095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000206 n * A022998 n).toNat

end

end A121074.P15717149416093077095

/-!
# A121075: Nonisomorphic catacondensed monoheptabenzenoids (see reference for precise definition).

The programs for A121075, there is no canonical definition to state claims against.
-/

/-! ## A121075.P7870086696494171953

`A121076(n)-A121074(A028310(n))`
-/

namespace A121075.P7870086696494171953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121076 n - A121074 (A028310 n).toNat

end

end A121075.P7870086696494171953

/-! ## A121075.P6843103028362013322

`A121076(n)-A121074(A000007(n)+n)`
-/

namespace A121075.P6843103028362013322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121076 n - A121074 (A000007 n + (n : ℤ)).toNat

end

end A121075.P6843103028362013322

/-! ## A121075.P15638838140610636022

`A121076(n)-A000007(n)-A121074(n)`
-/

namespace A121075.P15638838140610636022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121076 n - A000007 n - A121074 n

end

end A121075.P15638838140610636022

/-! ## A121075.P17850534482903653715

`(A121076(n)-A121074(n))%A020527(n)`
-/

namespace A121075.P17850534482903653715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121076 n - A121074 n) (A020527 n)

end

end A121075.P17850534482903653715

/-! ## A121075.P2872393640844778240

`A121076(n)%A121080(n)-A121074(n)`
-/

namespace A121075.P2872393640844778240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121076 n) (A121080 n) - A121074 n

end

end A121075.P2872393640844778240

/-!
# A121076: Nonisomorphic catacondensed monoheptabenzenoids (see reference for precise definition).

The programs for A121076, there is no canonical definition to state claims against.
-/

/-! ## A121076.P15725407626996243691

`A121075(n)+A121074(round(sqrt(n²+1)))`
-/

namespace A121076.P15725407626996243691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121075 n + A121074 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A121076.P15725407626996243691

/-! ## A121076.P2879954530669002915

`A121075(n)+A028310(A121074(n))`
-/

namespace A121076.P2879954530669002915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121075 n + A028310 (A121074 n).toNat

end

end A121076.P2879954530669002915

/-!
# A121079: a(n) = Sum_{i=0..n} C(n,i)^2*i!*4^i + 2^n*n!.

The programs for A121079, there is no canonical definition to state claims against.
-/

/-! ## A121079.P8899648939606027161

`A102773(n)+A000165(n)`
-/

namespace A121079.P8899648939606027161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102773 n + A000165 n

end

end A121079.P8899648939606027161

/-! ## A121079.P9719795890642589072

`A341014(eq[4, A025581(n)])+A000165(n)`
-/

namespace A121079.P9719795890642589072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000165 n

end

end A121079.P9719795890642589072

/-! ## A121079.P11007977198613583883

`A341014(eq[6, A113678(n)])+A000165(n)`
-/

namespace A121079.P11007977198613583883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000165 n

end

end A121079.P11007977198613583883

/-! ## A121079.P18298648404021680216

`A341014(eq[16, A130321(n)])+A000165(n)`
-/

namespace A121079.P18298648404021680216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000165 n

end

end A121079.P18298648404021680216

/-! ## A121079.P7598842227014443991

`A341014(eq[5, A004736(n+1)])+A000165(n)`
-/

namespace A121079.P7598842227014443991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000165 n

end

end A121079.P7598842227014443991

/-!
# A121080: a(n) = Sum_{i=0..n} C(n,i)^2*i!*4^i + (1-2^n)*2^(n-1)*n!.

The programs for A121080, there is no canonical definition to state claims against.
-/

/-! ## A121080.P13519623711515085338

`A001481(A279843(n+1)+A001227(n+1))`
-/

namespace A121080.P13519623711515085338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (A279843 (n + 1) + A001227 (n + 1)).toNat

end

end A121080.P13519623711515085338

/-!
# A121081: Number of partitions of n into parts with at most one 1 and at most one 2.

The programs for A121081, there is no canonical definition to state claims against.
-/

/-! ## A121081.P13747033351694417727

`A008483(n+1)+∑[A008484(n)]`
-/

namespace A121081.P13747033351694417727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121081.P13747033351694417727

/-! ## A121081.P10861860247978277287

`A026796(n+4)+∑[A008484(n)]`
-/

namespace A121081.P10861860247978277287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121081.P10861860247978277287

/-! ## A121081.P17516405360225349895

`A121659(n+1)+A026796(n+1)`
-/

namespace A121081.P17516405360225349895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121659 (n + 1) + A026796 (n + 1)

end

end A121081.P17516405360225349895

/-! ## A121081.P4542134530152134003

`∑[A008483(n+1)-A026796(n)]+1`
-/

namespace A121081.P4542134530152134003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (n + 1) - A026796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A121081.P4542134530152134003

/-! ## A121081.P14334481084071448619

`A008483(n+1)+∑[A026797(n+4)]`
-/

namespace A121081.P14334481084071448619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026797 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121081.P14334481084071448619

/-! ## A121081.P9360557571471726372

`A181531(n)+Δ[A027339(n)]`
-/

namespace A121081.P9360557571471726372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181531 n + (f1 (n + 1) - f1 n)

end

end A121081.P9360557571471726372

/-! ## A121081.P12411571649437972496

`Δ[A084376(n)]-∑[A026796(n)]`
-/

namespace A121081.P12411571649437972496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A121081.P12411571649437972496

/-! ## A121081.P9561268749168082617

`Δ[A194805(n)]-∑[A026796(n)]`
-/

namespace A121081.P9561268749168082617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194805 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026796 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A121081.P9561268749168082617

/-! ## A121081.P2061963642167541469

`∑[A239493(n+1)]+1`
-/

namespace A121081.P2061963642167541469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A121081.P2061963642167541469

/-! ## A121081.P14522270805738622799

`a(n-1)+A239493(n+1)%A000041(n)` with `a(0)=1`
-/

namespace A121081.P14522270805738622799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A239493 (n + 1)) (A000041 n)

end

end A121081.P14522270805738622799

/-!
# A121084: Number of primitive Pythagorean-like triples a^2+b^2=c^2+k for k=2 with 0

The programs for A121084, there is no canonical definition to state claims against.
-/

/-! ## A121084.P7358009396212072219

`A135654(n+1)-A098072(A287892(n))`
-/

namespace A121084.P7358009396212072219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135654 (n + 1) - A098072 (A287892 n).toNat

end

end A121084.P7358009396212072219

/-!
# A121090: Period of unit fractions having periodic decimal expansions.

The programs for A121090, there is no canonical definition to state claims against.
-/

/-! ## A121090.P10749014535817944794

`A007732(A085837(n+1))`
-/

namespace A121090.P10749014535817944794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (A085837 (n + 1)).toNat

end

end A121090.P10749014535817944794

/-! ## A121090.P17101174041512215240

`A007732(lt[A227071(n+1), n])`
-/

namespace A121090.P17101174041512215240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227071 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A121090.P17101174041512215240

/-! ## A121090.P1198056381793061610

`A051626(lt[A227071(n+1), n])`
-/

namespace A121090.P1198056381793061610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227071 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A121090.P1198056381793061610

/-! ## A121090.P6246134356627338646

`A051626(A085837(root(n+1, 2)²))`
-/

namespace A121090.P6246134356627338646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A085837 (SequenceMachineLib.roundAway (((n + 1 : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat).toNat

end

end A121090.P6246134356627338646

/-! ## A121090.P1401277939977633027

`A007732(lt[2, A001221(10*(n+1))]+1)`
-/

namespace A121090.P1401277939977633027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (10 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A121090.P1401277939977633027

/-! ## A121090.P4060456966800840490

`A051626(lt[2, A001221(10*(n+1))]+1)`
-/

namespace A121090.P4060456966800840490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (10 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A121090.P4060456966800840490

/-! ## A121090.P4688378711217311373

`A051626(2*A085837(n+1))`
-/

namespace A121090.P4688378711217311373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (2 * A085837 (n + 1)).toNat

end

end A121090.P4688378711217311373

/-! ## A121090.P4437676957626093243

`A051626(lcm(2, A085837(n+1)))`
-/

namespace A121090.P4437676957626093243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (Int.lcm 2 (A085837 (n + 1)))

end

end A121090.P4437676957626093243

/-! ## A121090.P2879377460588727068

`A051626(A085837(n+1)+A085837(n+1))`
-/

namespace A121090.P2879377460588727068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A085837 (n + 1) + A085837 (n + 1)).toNat

end

end A121090.P2879377460588727068

/-! ## A121090.P3206525545386951776

`A307070(A085837(2*n+1-n))`
-/

namespace A121090.P3206525545386951776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307070 (A085837 (2 * n + 1 - n)).toNat

end

end A121090.P3206525545386951776

/-!
# A121091: Smallest nexus prime of the form n^p - (n-1)^p, where p is an odd prime.

The programs for A121091, there is no canonical definition to state claims against.
-/

/-! ## A121091.P2939562569518730366

`p?[record[A047969(3*round(2*n/5)+n)]]`
-/

namespace A121091.P2939562569518730366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 (3 * SequenceMachineLib.roundAway (2 * ((n : ℚ) / 5)) + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121091.P2939562569518730366

/-!
# A121092: Isomers of polyenes attached to benzene (see Cyvin et al. for precise definition).

The programs for A121092, there is no canonical definition to state claims against.
-/

/-! ## A121092.P15846135520852470575

`A149191(n)+A002487(A121117(n+1))`
-/

namespace A121092.P15846135520852470575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149191 n + A002487 (A121117 (n + 1)).toNat

end

end A121092.P15846135520852470575

/-! ## A121092.P4142770633031735943

`A130446(A047091(n))`
-/

namespace A121092.P4142770633031735943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A047091 n).toNat

end

end A121092.P4142770633031735943

/-!
# A121093: Isomers of polyenes attached to benzene (see Cyvin et al. for precise definition).

The programs for A121093, there is no canonical definition to state claims against.
-/

/-! ## A121093.P10774208471097294663

`A045344(A002293(n))%A000110(n+1)`
-/

namespace A121093.P10774208471097294663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045344 (A002293 n).toNat) (A000110 (n + 1))

end

end A121093.P10774208471097294663

/-! ## A121093.P10134685450696499019

`A071940(A149741(n))`
-/

namespace A121093.P10134685450696499019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071940 (A149741 n).toNat

end

end A121093.P10134685450696499019

/-!
# A121096: Isomers of polyenes attached to benzene (see Cyvin et al. for precise definition).

The programs for A121096, there is no canonical definition to state claims against.
-/

/-! ## A121096.P4541400262919722633

`A194986(2*A091218(n+1)-n)`
-/

namespace A121096.P4541400262919722633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194986 (2 * A091218 (n + 1) - (n : ℤ)).toNat

end

end A121096.P4541400262919722633

/-! ## A121096.P7125049848637560658

`A149252(n)+A087071(A204197(n+1))`
-/

namespace A121096.P7125049848637560658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149252 n + A087071 (A204197 (n + 1)).toNat

end

end A121096.P7125049848637560658

/-! ## A121096.P5847521094676146877

`A292287(n)-A008687(A121114(n+1))`
-/

namespace A121096.P5847521094676146877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292287 n - A008687 (A121114 (n + 1)).toNat

end

end A121096.P5847521094676146877

/-!
# A121097: Isomers of polyenes attached to benzene (see Cyvin et al. for precise definition).

The programs for A121097, there is no canonical definition to state claims against.
-/

/-! ## A121097.P9715711398869501098

`A105514(A011782(n)*A035618(3*n+4))`
-/

namespace A121097.P9715711398869501098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105514 (A011782 n * A035618 (3 * n + 4)).toNat

end

end A121097.P9715711398869501098

/-! ## A121097.P3653639497843831840

`A266715(6*n!+1)`
-/

namespace A121097.P3653639497843831840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266715 (6 * Nat.factorial n + 1)

end

end A121097.P3653639497843831840

/-!
# A121098: Isomers of polyenes attached to benzene (see Cyvin et al. for precise definition).

The programs for A121098, there is no canonical definition to state claims against.
-/

/-! ## A121098.P5881750435962853633

`A163529(A014211(n)-A058355(n))`
-/

namespace A121098.P5881750435962853633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A014211 n - A058355 n).toNat

end

end A121098.P5881750435962853633

/-! ## A121098.P5518750459814979141

`A000188(A000244(n))-A035145(n+1)`
-/

namespace A121098.P5518750459814979141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000244 n).toNat - A035145 (n + 1)

end

end A121098.P5518750459814979141

/-! ## A121098.P10279684403092033641

`A000188(A000244(n))-A216266(n+1)`
-/

namespace A121098.P10279684403092033641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000244 n).toNat - A216266 (n + 1)

end

end A121098.P10279684403092033641

/-! ## A121098.P1878488812453924198

`A030439(n)-A000035(A207436(n+1))`
-/

namespace A121098.P1878488812453924198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030439 n - A000035 (A207436 (n + 1)).toNat

end

end A121098.P1878488812453924198

/-!
# A121099: Isomers of polyenes attached to benzene (see Cyvin et al. for precise definition).

The programs for A121099, there is no canonical definition to state claims against.
-/

/-! ## A121099.P18292804906024586782

`A121092(n+5)-A121096(n+5)`
-/

namespace A121099.P18292804906024586782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121092 (n + 5) - A121096 (n + 5)

end

end A121099.P18292804906024586782

