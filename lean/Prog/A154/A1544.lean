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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
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
import Seq.B008.C000
import Seq.B009.C000
import Seq.B009.C001
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

/-!
# A154402: Inverse Moebius transform of Fredholm-Rueppel sequence, cf. A036987.

The programs for A154402, the canonical program `A154402.P17788350560659442917` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154402 has offset 1).

The definition of A154402 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305426, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A154402.P17788350560659442917

`A305426(n+1)+A036987(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A154402

/-- `A305426(n+1)+A036987(n+1)` -/
def P17788350560659442917.Spec : Prop :=
  ∀ n, P17788350560659442917.a n = A154402 (n + 1)

theorem P17788350560659442917.correct : P17788350560659442917.Spec := by
  intro n
  simp only [A154402, Nat.add_sub_cancel]

end A154402

/-! ## A154402.P16502249578903599835

`A147645(n+1)+A353786(n+1)`
-/

namespace A154402.P16502249578903599835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147645 (n + 1) + A353786 (n + 1)

end

end A154402.P16502249578903599835

namespace A154402

/-- `A147645(n+1)+A353786(n+1)` -/
def P16502249578903599835.Spec : Prop :=
  ∀ n, P16502249578903599835.a n = A154402 (n + 1)

end A154402

/-! ## A154402.P2498085566391198652

`A305426(2*(n+1))`
-/

namespace A154402.P2498085566391198652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305426 (2 * (n + 1))

end

end A154402.P2498085566391198652

namespace A154402

/-- `A305426(2*(n+1))` -/
def P2498085566391198652.Spec : Prop :=
  ∀ n, P2498085566391198652.a n = A154402 (n + 1)

end A154402

/-! ## A154402.P7932923765603874828

`∑{d}[n+1, A036987(#)]`
-/

namespace A154402.P7932923765603874828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 d

end

end A154402.P7932923765603874828

namespace A154402

/-- `∑{d}[n+1, A036987(#)]` -/
def P7932923765603874828.Spec : Prop :=
  ∀ n, P7932923765603874828.a n = A154402 (n + 1)

end A154402

/-! ## A154402.P4743954475234787140

`∑{d}[n+1, val(A006530(#+1), 2)]`
-/

namespace A154402.P4743954475234787140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A006530 (d + 1)).toNat 2

end

end A154402.P4743954475234787140

namespace A154402

/-- `∑{d}[n+1, val(A006530(#+1), 2)]` -/
def P4743954475234787140.Spec : Prop :=
  ∀ n, (P4743954475234787140.a n : ℤ) = A154402 (n + 1)

end A154402

/-! ## A154402.P9234618124790339051

`A141197(A000265(n+1))`
-/

namespace A154402.P9234618124790339051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141197 (A000265 (n + 1)).toNat

end

end A154402.P9234618124790339051

namespace A154402

/-- `A141197(A000265(n+1))` -/
def P9234618124790339051.Spec : Prop :=
  ∀ n, P9234618124790339051.a n = A154402 (n + 1)

end A154402

/-! ## A154402.P16714591321721054621

`A305426(n+1)+A209229(n+2)`
-/

namespace A154402.P16714591321721054621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305426 (n + 1) + A209229 (n + 2)

end

end A154402.P16714591321721054621

namespace A154402

/-- `A305426(n+1)+A209229(n+2)` -/
def P16714591321721054621.Spec : Prop :=
  ∀ n, P16714591321721054621.a n = A154402 (n + 1)

end A154402

/-! ## A154402.P6423278090575758020

`∑{d}[n+1, A010051(A006530(#+1)+1)]`
-/

namespace A154402.P6423278090575758020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 (A006530 (d + 1) + 1).toNat

end

end A154402.P6423278090575758020

namespace A154402

/-- `∑{d}[n+1, A010051(A006530(#+1)+1)]` -/
def P6423278090575758020.Spec : Prop :=
  ∀ n, P6423278090575758020.a n = A154402 (n + 1)

end A154402

/-! ## A154402.P17862336169311306365

`∑{d}[n+1, val(A014963(#+1), 2)]`
-/

namespace A154402.P17862336169311306365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A014963 (d + 1)).toNat 2

end

end A154402.P17862336169311306365

namespace A154402

/-- `∑{d}[n+1, val(A014963(#+1), 2)]` -/
def P17862336169311306365.Spec : Prop :=
  ∀ n, (P17862336169311306365.a n : ℤ) = A154402 (n + 1)

end A154402

/-! ## A154402.P5168692519228026004

`∑{d}[n+1, A000108(#)%2]`
-/

namespace A154402.P5168692519228026004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000108 d) 2

end

end A154402.P5168692519228026004

namespace A154402

/-- `∑{d}[n+1, A000108(#)%2]` -/
def P5168692519228026004.Spec : Prop :=
  ∀ n, P5168692519228026004.a n = A154402 (n + 1)

end A154402

/-! ## A154402.P13780634860830534203

`A141197(A140211(n+1))`
-/

namespace A154402.P13780634860830534203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141197 (A140211 (n + 1)).toNat

end

end A154402.P13780634860830534203

namespace A154402

/-- `A141197(A140211(n+1))` -/
def P13780634860830534203.Spec : Prop :=
  ∀ n, P13780634860830534203.a n = A154402 (n + 1)

end A154402

/-!
# A154403: Number of ways to write n as a sum a_1 + ... + a_k where a_i >= 2 * a_{i-1} > 1.

The programs for A154403, there is no canonical definition to state claims against.
-/

/-! ## A154403.P1098006645512617061

`A000929(n)-a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A154403.P1098006645512617061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A000929 n - a (n - 1)

end

end A154403.P1098006645512617061

/-! ## A154403.P10552766630483520599

`A089052(A046092(n))-a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A154403.P10552766630483520599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A089052 (A046092 n).toNat - a (n - 1)

end

end A154403.P10552766630483520599

/-! ## A154403.P8684478630804370150

`∑[A025430(n)%A213373(n+1)]+1`
-/

namespace A154403.P8684478630804370150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025430 n) (A213373 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A154403.P8684478630804370150

/-! ## A154403.P4940558165203082711

`A182008(A351005(3*n))-A351005(n)`
-/

namespace A154403.P4940558165203082711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182008 (A351005 (3 * n)).toNat - A351005 n

end

end A154403.P4940558165203082711

/-!
# A154404: Number of ways to express n as the sum of an odd prime, a positive Fibonacci number and a Catalan number.

The programs for A154404, there is no canonical definition to state claims against.
-/

/-! ## A154404.P11902619294353918313

`A007895(∑[A059291(n)]*A000212(n))`
-/

namespace A154404.P11902619294353918313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 ((∑ j ∈ Finset.range (n + 1), f1 j) * A000212 n).toNat

end

end A154404.P11902619294353918313

/-!
# A154405: Primes of the form 20n^2+8n+1.

The programs for A154405, the canonical program `A154405.P12804035702119283874` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154405 has offset 1).

The definition of A154405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1026 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154405.P12804035702119283874

`A079273(A155133(n+1)+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A154405

/-- `A079273(A155133(n+1)+1)` -/
def P12804035702119283874.Spec : Prop :=
  ∀ n, P12804035702119283874.a n = A154405 (n + 1)

theorem P12804035702119283874.correct : P12804035702119283874.Spec := by
  intro n
  simp only [A154405, Nat.add_sub_cancel]

end A154405

/-! ## A154405.P699515795098927275

`record[A014442(10*n+12)]`
-/

namespace A154405.P699515795098927275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (10 * n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154405.P699515795098927275

namespace A154405

/-- `record[A014442(10*n+12)]` -/
def P699515795098927275.Spec : Prop :=
  ∀ n, P699515795098927275.a n = A154405 (n + 1)

end A154405

/-! ## A154405.P7396493599776446280

`record[A250069(10*n+12)+1]`
-/

namespace A154405.P7396493599776446280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (10 * n + 12) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154405.P7396493599776446280

namespace A154405

/-- `record[A250069(10*n+12)+1]` -/
def P7396493599776446280.Spec : Prop :=
  ∀ n, P7396493599776446280.a n = A154405 (n + 1)

end A154405

/-! ## A154405.P10918542930288907130

`record[A259036(A017293(n+1))]`
-/

namespace A154405.P10918542930288907130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (A017293 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154405.P10918542930288907130

namespace A154405

/-- `record[A259036(A017293(n+1))]` -/
def P10918542930288907130.Spec : Prop :=
  ∀ n, P10918542930288907130.a n = A154405 (n + 1)

end A154405

/-! ## A154405.P3763925010651584688

`record[A259036(A116727(n+4))]`
-/

namespace A154405.P3763925010651584688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (A116727 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154405.P3763925010651584688

namespace A154405

/-- `record[A259036(A116727(n+4))]` -/
def P3763925010651584688.Spec : Prop :=
  ∀ n, P3763925010651584688.a n = A154405 (n + 1)

end A154405

/-! ## A154405.P1147958126924914394

`∩[A265889(n+1), A381196(n)]`
-/

namespace A154405.P1147958126924914394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381196 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154405.P1147958126924914394

namespace A154405

/-- `∩[A265889(n+1), A381196(n)]` -/
def P1147958126924914394.Spec : Prop :=
  ∀ n, (P1147958126924914394.a n : ℤ) = A154405 (n + 1)

end A154405

/-! ## A154405.P6571482517527567788

`∩[A079273(n+1), A265889(n+1)]`
-/

namespace A154405.P6571482517527567788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265889 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154405.P6571482517527567788

namespace A154405

/-- `∩[A079273(n+1), A265889(n+1)]` -/
def P6571482517527567788.Spec : Prop :=
  ∀ n, (P6571482517527567788.a n : ℤ) = A154405 (n + 1)

end A154405

/-! ## A154405.P15064523861915142810

`p?[∑[comp[3*n]+n]]`
-/

namespace A154405.P15064523861915142810
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A154405.P15064523861915142810

namespace A154405

/-- `p?[∑[comp[3*n]+n]]` -/
def P15064523861915142810.Spec : Prop :=
  ∀ n, (P15064523861915142810.a n : ℤ) = A154405 (n + 1)

end A154405

/-! ## A154405.P13408447336955254532

`or(1, p?[(2*n+1)²+n²])`
-/

namespace A154405.P13408447336955254532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A154405.P13408447336955254532

namespace A154405

/-- `or(1, p?[(2*n+1)²+n²])` -/
def P13408447336955254532.Spec : Prop :=
  ∀ n, (P13408447336955254532.a n : ℤ) = A154405 (n + 1)

end A154405

/-! ## A154405.P323518130229879633

`∑{p}[p?[n*A016897(n)+1], #]`
-/

namespace A154405.P323518130229879633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A016897 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A154405.P323518130229879633

namespace A154405

/-- `∑{p}[p?[n*A016897(n)+1], #]` -/
def P323518130229879633.Spec : Prop :=
  ∀ n, (P323518130229879633.a n : ℤ) = A154405 (n + 1)

end A154405

/-!
# A154406: Larger twin primes in A061237.

The programs for A154406, there is no canonical definition to state claims against.
-/

/-! ## A154406.P49080564543693815

`p?[p?[abs(1-9*n)]+2]`
-/

namespace A154406.P49080564543693815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (9 * n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154406.P49080564543693815

/-! ## A154406.P7000069718305881437

`p?[A061242(n+1)+2]`
-/

namespace A154406.P7000069718305881437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061242 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154406.P7000069718305881437

/-! ## A154406.P17380584369078960360

`p?[A129805(n+1)+2]`
-/

namespace A154406.P17380584369078960360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129805 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154406.P17380584369078960360

/-! ## A154406.P1542455654276666290

`record[A006530(p?[9*n-1]+2)]`
-/

namespace A154406.P1542455654276666290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154406.P1542455654276666290

/-! ## A154406.P10714943224264477288

`A161705(A137877(n+1))`
-/

namespace A154406.P10714943224264477288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (A137877 (n + 1)).toNat

end

end A154406.P10714943224264477288

/-!
# A154407: a(n) = 5*2^(n-1) + 3*6^n/2.

The programs for A154407, the canonical program `A154407.P5402970059274799052` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154407 has offset 0).

The definition of A154407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154407.P5402970059274799052

`5*2^(n-1)+3*6^n/2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154407

/-- `5*2^(n-1)+3*6^n/2` -/
def P5402970059274799052.Spec : Prop :=
  ∀ n, P5402970059274799052.a n = (A154407 n : ℚ)

end A154407

/-! ## A154407.P16534753865339829573

`ogf((4-18x)/(1-8x+12x^2))`
-/

namespace A154407.P16534753865339829573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -18] [1, -8, 12] n

end

end A154407.P16534753865339829573

namespace A154407

/-- `ogf((4-18x)/(1-8x+12x^2))` -/
def P16534753865339829573.Spec : Prop :=
  ∀ n, P16534753865339829573.a n = A154407 n

end A154407

/-! ## A154407.P4041408469815622698

`2^n*A289521(n+1)`
-/

namespace A154407.P4041408469815622698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A289521 (n + 1)

end

end A154407.P4041408469815622698

namespace A154407

/-- `2^n*A289521(n+1)` -/
def P4041408469815622698.Spec : Prop :=
  ∀ n, P4041408469815622698.a n = A154407 n

end A154407

/-! ## A154407.P13300577067502162383

`lcm(2, A000400(n)+2*a(n-1))` with `a(0)=4`
-/

namespace A154407.P13300577067502162383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Int.lcm 2 (A000400 n + (2 * a (n - 1) : ℤ))

end

end A154407.P13300577067502162383

namespace A154407

/-- `lcm(2, A000400(n)+2*a(n-1))` -/
def P13300577067502162383.Spec : Prop :=
  ∀ n, (P13300577067502162383.a n : ℤ) = A154407 n

end A154407

/-! ## A154407.P17791410360724532447

`(2+A007051(n+1))*A011782(n+1)`
-/

namespace A154407.P17791410360724532447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 + A007051 (n + 1)) * A011782 (n + 1)

end

end A154407.P17791410360724532447

namespace A154407

/-- `(2+A007051(n+1))*A011782(n+1)` -/
def P17791410360724532447.Spec : Prop :=
  ∀ n, P17791410360724532447.a n = A154407 n

end A154407

/-!
# A154408: Primes p such that (p^2 + 1)/10 is also prime.

The programs for A154408, there is no canonical definition to state claims against.
-/

/-! ## A154408.P9785591078242154384

`p?[A002733(n+1)]`
-/

namespace A154408.P9785591078242154384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154408.P9785591078242154384

/-! ## A154408.P1331364071213530244

`∩[A002733(n+1), A003631(n+1)]`
-/

namespace A154408.P1331364071213530244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154408.P1331364071213530244

/-! ## A154408.P7067913205310470356

`∩[A002733(n+1), A042993(n+1)]`
-/

namespace A154408.P7067913205310470356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154408.P7067913205310470356

/-! ## A154408.P14943928760305853302

`∩[A002733(n+1), A040106(n+1)]`
-/

namespace A154408.P14943928760305853302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154408.P14943928760305853302

/-! ## A154408.P1295323535574091465

`∩[A002733(n+1), A040148(n+1)]`
-/

namespace A154408.P1295323535574091465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154408.P1295323535574091465

/-! ## A154408.P8717730443075735137

`∩[A002733(n+1), A380468(n+1)]`
-/

namespace A154408.P8717730443075735137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154408.P8717730443075735137

/-! ## A154408.P4189068238539051340

`∩[A002733(n+1), A040179(n+1)]`
-/

namespace A154408.P4189068238539051340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154408.P4189068238539051340

/-! ## A154408.P3448483465126419116

`∩[A002733(n+1), A040159(n+1)]`
-/

namespace A154408.P3448483465126419116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154408.P3448483465126419116

/-! ## A154408.P15296932929349333068

`∩[A002733(n+1), A040161(n+1)]`
-/

namespace A154408.P15296932929349333068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154408.P15296932929349333068

/-! ## A154408.P15666916827619859138

`∩[A002733(n+1), A040169(n+1)]`
-/

namespace A154408.P15666916827619859138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154408.P15666916827619859138

/-! ## A154408.P13685368804343332913

`∩[A002733(n+1), A040970(n+1)]`
-/

namespace A154408.P13685368804343332913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154408.P13685368804343332913

/-! ## A154408.P7397613487441825598

`∩[A040972(n+1), A002733(n+1)]`
-/

namespace A154408.P7397613487441825598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154408.P7397613487441825598

/-! ## A154408.P4304905331732580252

`∩[A002733(n+1), A040171(n+1)]`
-/

namespace A154408.P4304905331732580252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154408.P4304905331732580252

/-! ## A154408.P5206740309576676321

`∩[A002733(n+1), A040982(n+1)]`
-/

namespace A154408.P5206740309576676321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154408.P5206740309576676321

/-! ## A154408.P8729363927906595635

`∩[A002733(n+1), A040165(n+1)]`
-/

namespace A154408.P8729363927906595635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154408.P8729363927906595635

/-! ## A154408.P4601749871760450909

`∩[A002733(n+1), A040177(n+1)]`
-/

namespace A154408.P4601749871760450909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154408.P4601749871760450909

/-! ## A154408.P16657260930942823961

`∩[A002733(n+1), A040974(n+1)]`
-/

namespace A154408.P16657260930942823961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154408.P16657260930942823961

/-! ## A154408.P7974869974565019231

`∩[A002733(n+1), A009087(n+1)]`
-/

namespace A154408.P7974869974565019231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154408.P7974869974565019231

/-! ## A154408.P7460657174683582005

`∩[A002733(n+1), A179336(n+1)]`
-/

namespace A154408.P7460657174683582005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154408.P7460657174683582005

/-! ## A154408.P4680122208443987858

`∩[A000040(n+1), A002733(n+1)]`
-/

namespace A154408.P4680122208443987858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154408.P4680122208443987858

/-!
# A154409: Primes of the form 10n^2+6n+1.

The programs for A154409, the canonical program `A154409.P10565512062620281939` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154409 has offset 1).

The definition of A154409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154409.P10565512062620281939

`record[A014442(A017305(n+1))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A154409

/-- `record[A014442(A017305(n+1))]` -/
def P10565512062620281939.Spec : Prop :=
  ∀ n, P10565512062620281939.a n = A154409 (n + 1)

theorem P10565512062620281939.correct : P10565512062620281939.Spec := by
  intro n
  simp only [A154409, Nat.add_sub_cancel]

end A154409

/-! ## A154409.P10773191514254991640

`record[A014442(A019428(n+1))]`
-/

namespace A154409.P10773191514254991640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A019428 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154409.P10773191514254991640

namespace A154409

/-- `record[A014442(A019428(n+1))]` -/
def P10773191514254991640.Spec : Prop :=
  ∀ n, P10773191514254991640.a n = A154409 (n + 1)

end A154409

/-! ## A154409.P7235334017181216440

`record[A014442(A017353(n)+6)]`
-/

namespace A154409.P7235334017181216440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A017353 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154409.P7235334017181216440

namespace A154409

/-- `record[A014442(A017353(n)+6)]` -/
def P7235334017181216440.Spec : Prop :=
  ∀ n, P7235334017181216440.a n = A154409 (n + 1)

end A154409

/-! ## A154409.P1677256826657504988

`record[A014442(A017329(n)+8)]`
-/

namespace A154409.P1677256826657504988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A017329 n + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154409.P1677256826657504988

namespace A154409

/-- `record[A014442(A017329(n)+8)]` -/
def P1677256826657504988.Spec : Prop :=
  ∀ n, P1677256826657504988.a n = A154409 (n + 1)

end A154409

/-! ## A154409.P421288146537290953

`record[A014442(A017293(n)+11)]`
-/

namespace A154409.P421288146537290953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A017293 n + 11).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154409.P421288146537290953

namespace A154409

/-- `record[A014442(A017293(n)+11)]` -/
def P421288146537290953.Spec : Prop :=
  ∀ n, P421288146537290953.a n = A154409 (n + 1)

end A154409

/-! ## A154409.P17011359207925841854

`record[A259036(A017293(n)+11)]`
-/

namespace A154409.P17011359207925841854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (A017293 n + 11).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154409.P17011359207925841854

namespace A154409

/-- `record[A259036(A017293(n)+11)]` -/
def P17011359207925841854.Spec : Prop :=
  ∀ n, P17011359207925841854.a n = A154409 (n + 1)

end A154409

/-! ## A154409.P11883053185534533525

`record[A014442(A016885(2*(n+1)))]`
-/

namespace A154409.P11883053185534533525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A016885 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154409.P11883053185534533525

namespace A154409

/-- `record[A014442(A016885(2*(n+1)))]` -/
def P11883053185534533525.Spec : Prop :=
  ∀ n, P11883053185534533525.a n = A154409 (n + 1)

end A154409

/-! ## A154409.P4521730761003360756

`record[A259036(A016885(2*n+2))]`
-/

namespace A154409.P4521730761003360756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (A016885 (2 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154409.P4521730761003360756

namespace A154409

/-- `record[A259036(A016885(2*n+2))]` -/
def P4521730761003360756.Spec : Prop :=
  ∀ n, P4521730761003360756.a n = A154409 (n + 1)

end A154409

/-! ## A154409.P6684020423070641328

`p?[floor(n/3)²+n²]`
-/

namespace A154409.P6684020423070641328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ ^ 2 + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154409.P6684020423070641328

namespace A154409

/-- `p?[floor(n/3)²+n²]` -/
def P6684020423070641328.Spec : Prop :=
  ∀ n, P6684020423070641328.a n = A154409 (n + 1)

end A154409

/-! ## A154409.P13576934372306371428

`∏{p}[p?[∑[A109613(5*n)]], #]`
-/

namespace A154409.P13576934372306371428
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (5 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A154409.P13576934372306371428

namespace A154409

/-- `∏{p}[p?[∑[A109613(5*n)]], #]` -/
def P13576934372306371428.Spec : Prop :=
  ∀ n, (P13576934372306371428.a n : ℤ) = A154409 (n + 1)

end A154409

/-!
# A154410: a(n) = 5*(3*6^n + 2^n)/2.

The programs for A154410, the canonical program `A154410.P14606455346137410460` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154410 has offset 0).

The definition of A154410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154410.P9873862330423321398

`6*a(n-1)-10*2^(n-1)` with `a(0)=10`
-/

namespace A154410.P9873862330423321398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [10] fun n a =>
  6 * a (n - 1) - 10 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A154410.P9873862330423321398

namespace A154410

/-- `6*a(n-1)-10*2^(n-1)` -/
def P9873862330423321398.Spec : Prop :=
  ∀ n, P9873862330423321398.a n = (A154410 n : ℚ)

end A154410

/-! ## A154410.P14606455346137410460

`10*A090040(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A154410

/-- `10*A090040(n)` -/
def P14606455346137410460.Spec : Prop :=
  ∀ n, P14606455346137410460.a n = A154410 n

theorem P14606455346137410460.correct : P14606455346137410460.Spec := by
  intro n
  simp only [A154410]

end A154410

/-! ## A154410.P7955879362363810873

`A154407(n+1)-A154407(n)`
-/

namespace A154410.P7955879362363810873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154407 (n + 1) - A154407 n

end

end A154410.P7955879362363810873

namespace A154410

/-- `A154407(n+1)-A154407(n)` -/
def P7955879362363810873.Spec : Prop :=
  ∀ n, P7955879362363810873.a n = A154410 n

end A154410

/-! ## A154410.P16995251796317733976

`5*(3*6^n+2^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154410.P16995251796317733976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * (3 * 6 ^ n + 2 ^ n) : ℚ) / 2

end

end A154410.P16995251796317733976

namespace A154410

/-- `5*(3*6^n+2^n)/2` -/
def P16995251796317733976.Spec : Prop :=
  ∀ n, P16995251796317733976.a n = (A154410 n : ℚ)

end A154410

/-! ## A154410.P17630973897343444246

`Δ[A154407(n)]`
-/

namespace A154410.P17630973897343444246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154410.P17630973897343444246

namespace A154410

/-- `Δ[A154407(n)]` -/
def P17630973897343444246.Spec : Prop :=
  ∀ n, P17630973897343444246.a n = A154410 n

end A154410

/-! ## A154410.P10226602494937738260

`A007051(n+1)*A146523(n+1)`
-/

namespace A154410.P10226602494937738260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 1) * A146523 (n + 1)

end

end A154410.P10226602494937738260

namespace A154410

/-- `A007051(n+1)*A146523(n+1)` -/
def P10226602494937738260.Spec : Prop :=
  ∀ n, P10226602494937738260.a n = A154410 n

end A154410

/-! ## A154410.P14753302838699340537

`A016129(n+1)+A007283(n)-A016129(n)`
-/

namespace A154410.P14753302838699340537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016129 (n + 1) + (A007283 n - A016129 n)

end

end A154410.P14753302838699340537

namespace A154410

/-- `A016129(n+1)+A007283(n)-A016129(n)` -/
def P14753302838699340537.Spec : Prop :=
  ∀ n, P14753302838699340537.a n = A154410 n

end A154410

/-! ## A154410.P4696125401008778478

`A154407(n)+A000079(n)*A008776(n+1)`
-/

namespace A154410.P4696125401008778478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154407 n + A000079 n * A008776 (n + 1)

end

end A154410.P4696125401008778478

namespace A154410

/-- `A154407(n)+A000079(n)*A008776(n+1)` -/
def P4696125401008778478.Spec : Prop :=
  ∀ n, P4696125401008778478.a n = A154410 n

end A154410

/-! ## A154410.P10126238020811006191

`A007051(n+1)+A007051(n+1)*A153894(n)`
-/

namespace A154410.P10126238020811006191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 1) + A007051 (n + 1) * A153894 n

end

end A154410.P10126238020811006191

namespace A154410

/-- `A007051(n+1)+A007051(n+1)*A153894(n)` -/
def P10126238020811006191.Spec : Prop :=
  ∀ n, P10126238020811006191.a n = A154410 n

end A154410

/-! ## A154410.P9120806002292678850

`A000079(n+1)+A000079(n)*A057198(n+2)`
-/

namespace A154410.P9120806002292678850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + A000079 n * A057198 (n + 2)

end

end A154410.P9120806002292678850

namespace A154410

/-- `A000079(n+1)+A000079(n)*A057198(n+2)` -/
def P9120806002292678850.Spec : Prop :=
  ∀ n, P9120806002292678850.a n = A154410 n

end A154410

/-!
# A154412: Primes of the form 10*k^2+14*k+5, k >= 0.

The programs for A154412, there is no canonical definition to state claims against.
-/

/-! ## A154412.P13411582445714403764

`∩[A087348(n+1), A207337(n+1)]`
-/

namespace A154412.P13411582445714403764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154412.P13411582445714403764

/-! ## A154412.P7692685152868904693

`record[A014442(10*n+7)]`
-/

namespace A154412.P7692685152868904693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (10 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154412.P7692685152868904693

/-! ## A154412.P5509335463895348378

`record[or(1, A014442(A017353(n)))]`
-/

namespace A154412.P5509335463895348378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A014442 (A017353 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154412.P5509335463895348378

/-! ## A154412.P552355836076215216

`record[A014442(A017353(n))%A001505(n)]`
-/

namespace A154412.P552355836076215216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014442 (A017353 n).toNat) (A001505 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154412.P552355836076215216

/-! ## A154412.P17005836655518173241

`record[A014442(A017353(n))^A000034(2*n)]`
-/

namespace A154412.P17005836655518173241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014442 (A017353 n).toNat : ℚ) ^ (A000034 (2 * n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154412.P17005836655518173241

/-! ## A154412.P14486380617403581025

`record[A014442(A017353(n))]%A120875(n+1)`
-/

namespace A154412.P14486380617403581025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A017353 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A120875 (n + 1))

end

end A154412.P14486380617403581025

/-! ## A154412.P4558920517977852695

`p?[n*(10*n-6)+1]`
-/

namespace A154412.P4558920517977852695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((10 * n : ℤ) - 6) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154412.P4558920517977852695

/-! ## A154412.P15462129498500467458

`or(1, p?[A087348(n+1)])`
-/

namespace A154412.P15462129498500467458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154412.P15462129498500467458

/-! ## A154412.P15669991965187606731

`or(1, p?[A153784(n)+1])`
-/

namespace A154412.P15669991965187606731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153784 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154412.P15669991965187606731

/-! ## A154412.P3995954493058197051

`p?[A087348(n+1)]%A016949(n)`
-/

namespace A154412.P3995954493058197051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016949 n)

end

end A154412.P3995954493058197051

/-! ## A154412.P10492219015061985186

`lcm(p?[A087348(n+1)], A033999(n))`
-/

namespace A154412.P10492219015061985186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087348 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A033999 n)

end

end A154412.P10492219015061985186

/-! ## A154412.P3097854860360242241

`record[p?[A220082(A000265(n+1)+1)]]`
-/

namespace A154412.P3097854860360242241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220082 (A000265 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154412.P3097854860360242241

/-! ## A154412.P16799220732137522820

`p?[A087348(n+1)]*char[A004442(n)]`
-/

namespace A154412.P16799220732137522820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A154412.P16799220732137522820

/-! ## A154412.P746740287815973842

`A000007(n+1)+p?[A087348(n+1)]`
-/

namespace A154412.P746740287815973842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154412.P746740287815973842

/-! ## A154412.P1339863786606660718

`A000038(n+1)+p?[A087348(n+1)]`
-/

namespace A154412.P1339863786606660718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154412.P1339863786606660718

/-! ## A154412.P15168995392496704557

`p?[A087348(n+1)]+A008683(4*(n+1))`
-/

namespace A154412.P15168995392496704557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + A008683 (4 * (n + 1))

end

end A154412.P15168995392496704557

/-! ## A154412.P8485760083766503015

`A007318(C(2, n+1))*p?[A087348(n+1)]`
-/

namespace A154412.P8485760083766503015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154412.P8485760083766503015

/-! ## A154412.P1039012566775266845

`A000041(gcd(n, n+1))*p?[A087348(n+1)]`
-/

namespace A154412.P1039012566775266845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154412.P1039012566775266845

/-! ## A154412.P2948395404176927812

`A014963(xor(42, n)+n)*p?[A087348(n+1)]`
-/

namespace A154412.P2948395404176927812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.xor 42 n + n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154412.P2948395404176927812

/-! ## A154412.P3801430484000154655

`(A006530(n+1)%2)!*p?[A087348(n+1)]`
-/

namespace A154412.P3801430484000154655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A006530 (n + 1)) 2).toNat : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154412.P3801430484000154655

/-!
# A154413: a(n) = A006551(n) - A018224(n).

The programs for A154413, there is no canonical definition to state claims against.
-/

/-! ## A154413.P2040721892822693007

`A006551(n+1)-A018224(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154413.P2040721892822693007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006551 (n + 1) - A018224 n

end

end A154413.P2040721892822693007

/-! ## A154413.P13006224976692006868

`A006551(n+1)-A001405(n)²`
-/

namespace A154413.P13006224976692006868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006551 (n + 1) - A001405 n ^ 2

end

end A154413.P13006224976692006868

/-! ## A154413.P1561634943042453736

`A008292(A080827(n+1))-A018224(n)`
-/

namespace A154413.P1561634943042453736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A080827 (n + 1)).toNat - A018224 n

end

end A154413.P1561634943042453736

/-! ## A154413.P18187552684325864632

`A173018(A047838(n+2))-A018224(n)`
-/

namespace A154413.P18187552684325864632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A047838 (n + 2)).toNat - A018224 n

end

end A154413.P18187552684325864632

/-! ## A154413.P17213372878003040637

`A006551(n+1)-A107230(A000217(n))²`
-/

namespace A154413.P17213372878003040637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006551 (n + 1) - A107230 (A000217 n).toNat ^ 2

end

end A154413.P17213372878003040637

/-!
# A154414: Primes of the form 20*k^2 + 32*k + 13.

The programs for A154414, the canonical program `A154414.P15977892757406640863` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154414 has offset 1).

The definition of A154414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154414.P15977892757406640863

`record[A014442(10*n+8)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A154414

/-- `record[A014442(10*n+8)]` -/
def P15977892757406640863.Spec : Prop :=
  ∀ n, P15977892757406640863.a n = A154414 (n + 1)

theorem P15977892757406640863.correct : P15977892757406640863.Spec := by
  intro n
  simp only [A154414, Nat.add_sub_cancel]

end A154414

/-! ## A154414.P15746854997517990519

`record[A250069(10*n+18)+1]`
-/

namespace A154414.P15746854997517990519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (10 * n + 18) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154414.P15746854997517990519

namespace A154414

/-- `record[A250069(10*n+18)+1]` -/
def P15746854997517990519.Spec : Prop :=
  ∀ n, P15746854997517990519.a n = A154414 (n + 1)

end A154414

/-! ## A154414.P18000993997410450999

`p?[n*(20*n-8)+1]`
-/

namespace A154414.P18000993997410450999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((20 * n : ℤ) - 8) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154414.P18000993997410450999

namespace A154414

/-- `p?[n*(20*n-8)+1]` -/
def P18000993997410450999.Spec : Prop :=
  ∀ n, P18000993997410450999.a n = A154414 (n + 1)

end A154414

/-! ## A154414.P15642598712131031285

`or(1, p?[A190816(n+2)])`
-/

namespace A154414.P15642598712131031285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190816 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154414.P15642598712131031285

namespace A154414

/-- `or(1, p?[A190816(n+2)])` -/
def P15642598712131031285.Spec : Prop :=
  ∀ n, P15642598712131031285.a n = A154414 (n + 1)

end A154414

/-! ## A154414.P9645731014545490210

`∏{d}[p?[A190816(2*n)], #]`
-/

namespace A154414.P9645731014545490210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190816 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A154414.P9645731014545490210

namespace A154414

/-- `∏{d}[p?[A190816(2*n)], #]` -/
def P9645731014545490210.Spec : Prop :=
  ∀ n, (P9645731014545490210.a n : ℤ) = A154414 (n + 1)

end A154414

/-! ## A154414.P6539336731344005917

`or(1, p?[A008738(5*n+8)])`
-/

namespace A154414.P6539336731344005917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 (5 * n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154414.P6539336731344005917

namespace A154414

/-- `or(1, p?[A008738(5*n+8)])` -/
def P6539336731344005917.Spec : Prop :=
  ∀ n, P6539336731344005917.a n = A154414 (n + 1)

end A154414

/-! ## A154414.P4527137422437654206

`or(1, p?[A036404(10*n+8)])`
-/

namespace A154414.P4527137422437654206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036404 (10 * n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154414.P4527137422437654206

namespace A154414

/-- `or(1, p?[A036404(10*n+8)])` -/
def P4527137422437654206.Spec : Prop :=
  ∀ n, P4527137422437654206.a n = A154414 (n + 1)

end A154414

/-! ## A154414.P13291748290181739622

`record[p?[A190816(A092486(n))]]`
-/

namespace A154414.P13291748290181739622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190816 (A092486 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154414.P13291748290181739622

namespace A154414

/-- `record[p?[A190816(A092486(n))]]` -/
def P13291748290181739622.Spec : Prop :=
  ∀ n, P13291748290181739622.a n = A154414 (n + 1)

end A154414

/-! ## A154414.P12377944650503268971

`∩[A270361(n+1), A190816(n)]`
-/

namespace A154414.P12377944650503268971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190816 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154414.P12377944650503268971

namespace A154414

/-- `∩[A270361(n+1), A190816(n)]` -/
def P12377944650503268971.Spec : Prop :=
  ∀ n, (P12377944650503268971.a n : ℤ) = A154414 (n + 1)

end A154414

/-! ## A154414.P4409338490979024023

`∩[A226292(n+1), A270361(n+1)]`
-/

namespace A154414.P4409338490979024023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154414.P4409338490979024023

namespace A154414

/-- `∩[A226292(n+1), A270361(n+1)]` -/
def P4409338490979024023.Spec : Prop :=
  ∀ n, (P4409338490979024023.a n : ℤ) = A154414 (n + 1)

end A154414

/-!
# A154415: The middle Stirling numbers of first kind: a(n) = Stirling1(n, floor(n/2)).

The programs for A154415, there is no canonical definition to state claims against.
-/

/-! ## A154415.P12578106869262745418

`A054654(A007590(n+1))`
-/

namespace A154415.P12578106869262745418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 (A007590 (n + 1)).toNat

end

end A154415.P12578106869262745418

/-! ## A154415.P10314847993001254108

`A054654(A080476(n+1))`
-/

namespace A154415.P10314847993001254108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 (A080476 (n + 1)).toNat

end

end A154415.P10314847993001254108

/-! ## A154415.P8035619126580177950

`A054654(A000982(n)+n)`
-/

namespace A154415.P8035619126580177950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 (A000982 n + (n : ℤ)).toNat

end

end A154415.P8035619126580177950

/-! ## A154415.P1842848712204570771

`A054654(∑[∑[A010673(n)]])`
-/

namespace A154415.P1842848712204570771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A154415.P1842848712204570771

/-! ## A154415.P1912591394573258124

`A054654(A004526((n+1)²))`
-/

namespace A154415.P1912591394573258124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 (A004526 ((n + 1) ^ 2)).toNat

end

end A154415.P1912591394573258124

/-! ## A154415.P6664314295413340676

`A054654(A000096(n)-A004526(n))`
-/

namespace A154415.P6664314295413340676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 (A000096 n - A004526 n).toNat

end

end A154415.P6664314295413340676

/-! ## A154415.P15797437894375369351

`A048994(∑[A063196(n+1)])`
-/

namespace A154415.P15797437894375369351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A154415.P15797437894375369351

/-! ## A154415.P16643896084967237835

`A048994(A004526(n²)+n)`
-/

namespace A154415.P16643896084967237835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A004526 (n ^ 2) + (n : ℤ)).toNat

end

end A154415.P16643896084967237835

/-!
# A154416: Maximal Stirling numbers of the first kind.

The programs for A154416, there is no canonical definition to state claims against.
-/

/-! ## A154416.P11427553938052263377

`A054654(lt[A099562(n), A054654(n)])`
-/

namespace A154416.P11427553938052263377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099562 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054654 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A154416.P11427553938052263377

/-! ## A154416.P12061308463755548946

`A126682(A182806(n+1))`
-/

namespace A154416.P12061308463755548946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126682 (A182806 (n + 1)).toNat

end

end A154416.P12061308463755548946

/-! ## A154416.P12762388683758344943

`A122934(xor(2, A032443(n)))`
-/

namespace A154416.P12762388683758344943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122934 (Int.xor 2 (A032443 n)).toNat

end

end A154416.P12762388683758344943

/-!
# A154417: Number of ways to express n as the sum of an odd prime, a positive Fibonacci number and half of a positive Fibonacci number.

The programs for A154417, there is no canonical definition to state claims against.
-/

/-! ## A154417.P3678085703757710428

`A000720(A105047(A000011(n)))`
-/

namespace A154417.P3678085703757710428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A105047 (A000011 n).toNat).toNat

end

end A154417.P3678085703757710428

/-! ## A154417.P13441884724277884734

`A302242(A194492(3*(n+1))+A153687(n+1))`
-/

namespace A154417.P13441884724277884734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A194492 (3 * (n + 1)) + A153687 (n + 1)).toNat

end

end A154417.P13441884724277884734

/-!
# A154418: Primes p such that (p^2 + 4)/5 is prime.

The programs for A154418, there is no canonical definition to state claims against.
-/

/-! ## A154418.P13541916527617846924

`∩[A038872(n+1), A242332(n+1)]`
-/

namespace A154418.P13541916527617846924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154418.P13541916527617846924

/-! ## A154418.P12728492374891830860

`∩[A045468(n+1), A242332(n+1)]`
-/

namespace A154418.P12728492374891830860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154418.P12728492374891830860

/-! ## A154418.P7047346526362279216

`∩[A064739(n+1), A242332(n+1)]`
-/

namespace A154418.P7047346526362279216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154418.P7047346526362279216

/-! ## A154418.P1175828719419713341

`∩[A076518(n+1), A242332(n+1)]`
-/

namespace A154418.P1175828719419713341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154418.P1175828719419713341

/-! ## A154418.P8797162504587503293

`∩[A242332(n+1), A357426(n+1)]`
-/

namespace A154418.P8797162504587503293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154418.P8797162504587503293

/-!
# A154419: Primes of the form 20*k^2 + 36*k + 17.

The programs for A154419, the canonical program `A154419.P2313163327098521587` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154419 has offset 1).

The definition of A154419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 489 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154419.P2313163327098521587

`∩[A145995(n+1), A245042(n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A154419

/-- `∩[A145995(n+1), A245042(n+1)]` -/
def P2313163327098521587.Spec : Prop :=
  ∀ n, (P2313163327098521587.a n : ℤ) = A154419 (n + 1)

theorem P2313163327098521587.correct : P2313163327098521587.Spec := by
  intro n
  simp only [A154419, Nat.add_sub_cancel]

end A154419

/-! ## A154419.P2252826758390388926

`p?[∑[∑[gcd(8, n)]]]`
-/

namespace A154419.P2252826758390388926
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 8 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A154419.P2252826758390388926

namespace A154419

/-- `p?[∑[∑[gcd(8, n)]]]` -/
def P2252826758390388926.Spec : Prop :=
  ∀ n, (P2252826758390388926.a n : ℤ) = A154419 (n + 1)

end A154419

/-! ## A154419.P5548072669942460595

`p?[n*(5*n-2)+1]`
-/

namespace A154419.P5548072669942460595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((5 * n : ℤ) - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154419.P5548072669942460595

namespace A154419

/-- `p?[n*(5*n-2)+1]` -/
def P5548072669942460595.Spec : Prop :=
  ∀ n, P5548072669942460595.a n = A154419 (n + 1)

end A154419

/-! ## A154419.P17501816214607882424

`or(1, p?[(2*(n+1))²+n²])`
-/

namespace A154419.P17501816214607882424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1)) ^ 2 + n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A154419.P17501816214607882424

namespace A154419

/-- `or(1, p?[(2*(n+1))²+n²])` -/
def P17501816214607882424.Spec : Prop :=
  ∀ n, (P17501816214607882424.a n : ℤ) = A154419 (n + 1)

end A154419

/-! ## A154419.P5273495181105282027

`∏{d}[p?[A145995(n+1)], #]`
-/

namespace A154419.P5273495181105282027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145995 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A154419.P5273495181105282027

namespace A154419

/-- `∏{d}[p?[A145995(n+1)], #]` -/
def P5273495181105282027.Spec : Prop :=
  ∀ n, (P5273495181105282027.a n : ℤ) = A154419 (n + 1)

end A154419

/-! ## A154419.P677409428674645257

`∑{p}[p?[A145995(n+2)], #]`
-/

namespace A154419.P677409428674645257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145995 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A154419.P677409428674645257

namespace A154419

/-- `∑{p}[p?[A145995(n+2)], #]` -/
def P677409428674645257.Spec : Prop :=
  ∀ n, (P677409428674645257.a n : ℤ) = A154419 (n + 1)

end A154419

/-! ## A154419.P6885958590167199779

`∏{p}[p?[A298950(2*(n+1))], #]`
-/

namespace A154419.P6885958590167199779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298950 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A154419.P6885958590167199779

namespace A154419

/-- `∏{p}[p?[A298950(2*(n+1))], #]` -/
def P6885958590167199779.Spec : Prop :=
  ∀ n, (P6885958590167199779.a n : ℤ) = A154419 (n + 1)

end A154419

/-! ## A154419.P17991072322108201369

`A007318(C(2, n))*p?[A145995(n+1)]`
-/

namespace A154419.P17991072322108201369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154419.P17991072322108201369

namespace A154419

/-- `A007318(C(2, n))*p?[A145995(n+1)]` -/
def P17991072322108201369.Spec : Prop :=
  ∀ n, P17991072322108201369.a n = A154419 (n + 1)

end A154419

/-! ## A154419.P16445662025158580802

`A000108(and(1, -n))*p?[A145995(n+1)]`
-/

namespace A154419.P16445662025158580802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 1 (-(n : ℤ))).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154419.P16445662025158580802

namespace A154419

/-- `A000108(and(1, -n))*p?[A145995(n+1)]` -/
def P16445662025158580802.Spec : Prop :=
  ∀ n, P16445662025158580802.a n = A154419 (n + 1)

end A154419

/-! ## A154419.P8506924478882240946

`∩[A007519(n+1), A145995(n+1)]`
-/

namespace A154419.P8506924478882240946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154419.P8506924478882240946

namespace A154419

/-- `∩[A007519(n+1), A145995(n+1)]` -/
def P8506924478882240946.Spec : Prop :=
  ∀ n, (P8506924478882240946.a n : ℤ) = A154419 (n + 1)

end A154419

/-!
# A154420: Maximal coefficient of MacMahon polynomial (cf. A060187) p(x,n)=2^n*(1 - x)^(n + 1)* LerchPhi[x, -n, 1/2]; that is, a(n) = Max(coefficients(p(x,n))).

The programs for A154420, there is no canonical definition to state claims against.
-/

/-! ## A154420.P5942004415953437670

`A060187(∑[or(1, n)])`
-/

namespace A154420.P5942004415953437670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A154420.P5942004415953437670

/-! ## A154420.P5098257609414945719

`A060187(∑[and(1, n)+n]+1)`
-/

namespace A154420.P5098257609414945719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A154420.P5098257609414945719

/-! ## A154420.P17325196967687968415

`A060187(ceil(n²/2)+or(1, n))`
-/

namespace A154420.P17325196967687968415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (⌈(n ^ 2 : ℚ) / 2⌉ + (Nat.lor 1 n : ℤ)).toNat

end

end A154420.P17325196967687968415

/-! ## A154420.P3094242925870084234

`A060187(∑[A109613(n)])`
-/

namespace A154420.P3094242925870084234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A154420.P3094242925870084234

/-! ## A154420.P14206597133681841434

`A060187(A000982(n+1))`
-/

namespace A154420.P14206597133681841434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A000982 (n + 1)).toNat

end

end A154420.P14206597133681841434

/-! ## A154420.P10224954534581709246

`A060187(A030978(n+1))`
-/

namespace A154420.P10224954534581709246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A030978 (n + 1)).toNat

end

end A154420.P10224954534581709246

/-! ## A154420.P7374026723218669232

`A060187(A074133(n+1))`
-/

namespace A154420.P7374026723218669232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A074133 (n + 1)).toNat

end

end A154420.P7374026723218669232

/-! ## A154420.P221474631133041533

`A060187(A080827(n+1))`
-/

namespace A154420.P221474631133041533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A080827 (n + 1)).toNat

end

end A154420.P221474631133041533

/-! ## A154420.P12703748717605810800

`A060187(A104563(n+1))`
-/

namespace A154420.P12703748717605810800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A104563 (n + 1)).toNat

end

end A154420.P12703748717605810800

/-! ## A154420.P3731606962466147311

`A060187(A099392(n+2))`
-/

namespace A154420.P3731606962466147311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060187 (A099392 (n + 2)).toNat

end

end A154420.P3731606962466147311

/-!
# A154425: a(n) = A142458(n, 1 + floor(n/2)).

The programs for A154425, there is no canonical definition to state claims against.
-/

/-! ## A154425.P1577122575404242384

`A142458(∑[a(n-2)+2])` with `a(0)=1, a(1)=1`
-/

namespace A154425.P1577122575404242384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A154425.P1577122575404242384

/-! ## A154425.P13816677590194653680

`A142458(∑[n+1-char[2*n]]+1)`
-/

namespace A154425.P13816677590194653680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142458 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A154425.P13816677590194653680

/-! ## A154425.P17637544213078127761

`tan(acot(1))*A142458(A080827(n+1))`
-/

namespace A154425.P17637544213078127761
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.acot (1 : ℝ)) * (A142458 (A080827 (n + 1)).toNat : ℝ)

end

end A154425.P17637544213078127761

/-! ## A154425.P7672330679630403241

`A057427(3*(n+1))*A142458(A080827(n+1))`
-/

namespace A154425.P7672330679630403241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * (n + 1)) * A142458 (A080827 (n + 1)).toNat

end

end A154425.P7672330679630403241

/-! ## A154425.P2044213510729687306

`A142458(A080827(n+1))/A003557(A155767(n))`
-/

namespace A154425.P2044213510729687306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142458 (A080827 (n + 1)).toNat : ℚ) / (A003557 (A155767 n).toNat : ℚ)

end

end A154425.P2044213510729687306

/-!
# A154427: Primes p such that p^2 + (p+1)/2 is also prime.

The programs for A154427, there is no canonical definition to state claims against.
-/

/-! ## A154427.P8463133473235687680

`floor(sqrt(A164580(n+1)))`
-/

namespace A154427.P8463133473235687680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A164580 (n + 1))

end

end A154427.P8463133473235687680

/-! ## A154427.P4537500322159629471

`round(sqrt(A164580(n+1)+A011655(n)))`
-/

namespace A154427.P4537500322159629471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A164580 (n + 1) + A011655 n : ℝ))

end

end A154427.P4537500322159629471

/-! ## A154427.P10015242576986659310

`round(sqrt(A164580(n+1)+A025581(n)))`
-/

namespace A154427.P10015242576986659310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A164580 (n + 1) + A025581 n : ℝ))

end

end A154427.P10015242576986659310

/-! ## A154427.P1062321599187941481

`p?[A217000(n+1)%A217001(n+1)]`
-/

namespace A154427.P1062321599187941481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217000 (n + 1)) (A217001 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154427.P1062321599187941481

/-! ## A154427.P10050191734573283030

`A000265(round(sqrt(A164580(n+1))))`
-/

namespace A154427.P10050191734573283030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway (Real.sqrt (A164580 (n + 1) : ℝ))).toNat

end

end A154427.P10050191734573283030

/-! ## A154427.P10743921826500985699

`A000010(round(sqrt(A164580(n+1))))+1`
-/

namespace A154427.P10743921826500985699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A164580 (n + 1) : ℝ))).toNat + 1

end

end A154427.P10743921826500985699

/-! ## A154427.P13592739305102472763

`A014963(round(sqrt(A164580(n+1))))`
-/

namespace A154427.P13592739305102472763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway (Real.sqrt (A164580 (n + 1) : ℝ))).toNat

end

end A154427.P13592739305102472763

/-!
# A154428: Primes of the form 50n^2 + 10n + 1.

The programs for A154428, the canonical program `A154428.P5041393938898399778` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154428 has offset 1).

The definition of A154428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154428.P13575016333587634160

`record[A293958(5*(n+1))]`
-/

namespace A154428.P13575016333587634160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293958 (5 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154428.P13575016333587634160

namespace A154428

/-- `record[A293958(5*(n+1))]` -/
def P13575016333587634160.Spec : Prop :=
  ∀ n, P13575016333587634160.a n = A154428 (n + 1)

end A154428

/-! ## A154428.P17070231636986266048

`record[A125256(10*n+11)]`
-/

namespace A154428.P17070231636986266048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (10 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154428.P17070231636986266048

namespace A154428

/-- `record[A125256(10*n+11)]` -/
def P17070231636986266048.Spec : Prop :=
  ∀ n, P17070231636986266048.a n = A154428 (n + 1)

end A154428

/-! ## A154428.P5041393938898399778

`record[A014442(10*n+11)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A154428

/-- `record[A014442(10*n+11)]` -/
def P5041393938898399778.Spec : Prop :=
  ∀ n, P5041393938898399778.a n = A154428 (n + 1)

theorem P5041393938898399778.correct : P5041393938898399778.Spec := by
  intro n
  simp only [A154428, Nat.add_sub_cancel]

end A154428

/-! ## A154428.P14100421299686236475

`record[A259036(10*n+11)]`
-/

namespace A154428.P14100421299686236475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (10 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154428.P14100421299686236475

namespace A154428

/-- `record[A259036(10*n+11)]` -/
def P14100421299686236475.Spec : Prop :=
  ∀ n, P14100421299686236475.a n = A154428 (n + 1)

end A154428

/-! ## A154428.P13193016500521812635

`record[A250069(10*n+11)+1]`
-/

namespace A154428.P13193016500521812635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250069 (10 * n + 11) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154428.P13193016500521812635

namespace A154428

/-- `record[A250069(10*n+11)+1]` -/
def P13193016500521812635.Spec : Prop :=
  ∀ n, P13193016500521812635.a n = A154428 (n + 1)

end A154428

/-! ## A154428.P2536928405276466519

`p?[round((5*n+1)²/2)]`
-/

namespace A154428.P2536928405276466519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((5 * n + 1) ^ 2 : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154428.P2536928405276466519

namespace A154428

/-- `p?[round((5*n+1)²/2)]` -/
def P2536928405276466519.Spec : Prop :=
  ∀ n, P2536928405276466519.a n = A154428 (n + 1)

end A154428

/-! ## A154428.P1759672036246226479

`∏{p}[p?[A000982(10*n+1)], #]`
-/

namespace A154428.P1759672036246226479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (10 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A154428.P1759672036246226479

namespace A154428

/-- `∏{p}[p?[A000982(10*n+1)], #]` -/
def P1759672036246226479.Spec : Prop :=
  ∀ n, (P1759672036246226479.a n : ℤ) = A154428 (n + 1)

end A154428

/-!
# A154430: Odd squarefree numbers n such that the cyclotomic polynomial Phi(n,x) has height > 1.

The programs for A154430, there is no canonical definition to state claims against.
-/

/-! ## A154430.P1654253291800999340

`∪[A046390(n+1), A118678(n+1)]`
-/

namespace A154430.P1654253291800999340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A154430.P1654253291800999340

/-! ## A154430.P12173350883579275754

`record[A076109(A013590(n+1))]`
-/

namespace A154430.P12173350883579275754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076109 (A013590 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154430.P12173350883579275754

/-! ## A154430.P10040693293959746285

`filter[A013590(n+1), A323239(#)]`
-/

namespace A154430.P10040693293959746285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A154430.P10040693293959746285

/-! ## A154430.P9723045740975291409

`∩[A013590(n+1), A024556(n+1)]`
-/

namespace A154430.P9723045740975291409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154430.P9723045740975291409

/-! ## A154430.P3666376379484739920

`∩[A013590(n+1), A056911(n+1)]`
-/

namespace A154430.P3666376379484739920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154430.P3666376379484739920

/-! ## A154430.P5127082728275277227

`∩[A013590(n+1), A392008(n+1)]`
-/

namespace A154430.P5127082728275277227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154430.P5127082728275277227

/-! ## A154430.P377956447561688977

`record[A204455(2*A013590(n+1))]`
-/

namespace A154430.P377956447561688977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (2 * A013590 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154430.P377956447561688977

/-! ## A154430.P2013831460572538932

`record[A089384(lcm(2, A013590(n+1)))]`
-/

namespace A154430.P2013831460572538932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089384 (Int.lcm 2 (A013590 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154430.P2013831460572538932

/-!
# A154431: Primes p such that 5p^2 - p + 1 is prime.

The programs for A154431, there is no canonical definition to state claims against.
-/

/-! ## A154431.P14294987213614817514

`p?[A154432(n+1)]`
-/

namespace A154431.P14294987213614817514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154431.P14294987213614817514

/-! ## A154431.P382411590723658138

`record[A006530(A154432(n+2))]`
-/

namespace A154431.P382411590723658138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A154432 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154431.P382411590723658138

/-! ## A154431.P17367017120974642009

`filter[A154432(n+1), A010051(#)]`
-/

namespace A154431.P17367017120974642009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A154431.P17367017120974642009

/-! ## A154431.P1472281710590866062

`∩[A154432(n+1), A042988(n)]`
-/

namespace A154431.P1472281710590866062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154431.P1472281710590866062

/-! ## A154431.P3595935157720017163

`∩[A154432(n+1), A042990(n)]`
-/

namespace A154431.P3595935157720017163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154431.P3595935157720017163

/-! ## A154431.P1424340345207746222

`∩[A000040(n+1), A154432(n+1)]`
-/

namespace A154431.P1424340345207746222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154431.P1424340345207746222

/-! ## A154431.P1737678779576101557

`∩[A040159(n+1), A154432(n+1)]`
-/

namespace A154431.P1737678779576101557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154431.P1737678779576101557

/-! ## A154431.P13666362841182735709

`∩[A040161(n+1), A154432(n+1)]`
-/

namespace A154431.P13666362841182735709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154431.P13666362841182735709

/-! ## A154431.P6501718137783280743

`∩[A040165(n+1), A154432(n+1)]`
-/

namespace A154431.P6501718137783280743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154431.P6501718137783280743

/-! ## A154431.P17210888954980121974

`∩[A040169(n+1), A154432(n+1)]`
-/

namespace A154431.P17210888954980121974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154431.P17210888954980121974

/-! ## A154431.P4725048458744727660

`∩[A040171(n+1), A154432(n+1)]`
-/

namespace A154431.P4725048458744727660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154431.P4725048458744727660

/-! ## A154431.P11655090240655405154

`∩[A040177(n+1), A154432(n+1)]`
-/

namespace A154431.P11655090240655405154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154431.P11655090240655405154

/-! ## A154431.P6896943878967257211

`∩[A040179(n+1), A154432(n+1)]`
-/

namespace A154431.P6896943878967257211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154431.P6896943878967257211

/-! ## A154431.P10958910115163457043

`∩[A040184(n+1), A154432(n+1)]`
-/

namespace A154431.P10958910115163457043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154431.P10958910115163457043

/-! ## A154431.P5364707758700712463

`∩[A040970(n+1), A154432(n+1)]`
-/

namespace A154431.P5364707758700712463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154431.P5364707758700712463

/-! ## A154431.P3563179518316636175

`∩[A040972(n+1), A154432(n+1)]`
-/

namespace A154431.P3563179518316636175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154431.P3563179518316636175

/-! ## A154431.P10482649639825051433

`∩[A040974(n+1), A154432(n+1)]`
-/

namespace A154431.P10482649639825051433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154431.P10482649639825051433

/-! ## A154431.P2314360774801017087

`∩[A040978(n+1), A154432(n+1)]`
-/

namespace A154431.P2314360774801017087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154431.P2314360774801017087

/-! ## A154431.P10645611363420020749

`∩[A040980(n+1), A154432(n+1)]`
-/

namespace A154431.P10645611363420020749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154431.P10645611363420020749

/-! ## A154431.P9842241577509724166

`∩[A040982(n+1), A154432(n+1)]`
-/

namespace A154431.P9842241577509724166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154431.P9842241577509724166

/-!
# A154432: Numbers k such that 5k^2-k+1 is prime.

The programs for A154432, there is no canonical definition to state claims against.
-/

/-! ## A154432.P1543918955197534844

`lt[A237053(A005476(n)), 2]`
-/

namespace A154432.P1543918955197534844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A005476 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A154432.P1543918955197534844

/-! ## A154432.P15712691183637567792

`eq[1, A001222(5*n²-n+1)]`
-/

namespace A154432.P15712691183637567792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((5 * n ^ 2 : ℤ) - (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154432.P15712691183637567792

/-! ## A154432.P8124056528262107262

`eq[2, A000005(5*n²-(n-1))]`
-/

namespace A154432.P8124056528262107262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((5 * n ^ 2 : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154432.P8124056528262107262

/-! ## A154432.P18326667546546674774

`eq[1, A001222((n+1)*(5*n+4)+1)]+1`
-/

namespace A154432.P18326667546546674774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) * (5 * n + 4) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A154432.P18326667546546674774

/-! ## A154432.P3821856346717327671

`eq[1, A010051(A172043(n))]`
-/

namespace A154432.P3821856346717327671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A172043 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154432.P3821856346717327671

/-!
# A154435: Permutation of nonnegative integers induced by Lamplighter group generating wreath recursion, variant 3: a = s(b,a), b = (a,b), starting from the state a.

The programs for A154435, the canonical program `A154435.P12739002809181514319` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154435 has offset 0).

The definition of A154435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154435.P7564703697832851929

`A180200(A063946(n))`
-/

namespace A154435.P7564703697832851929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A063946 n).toNat

end

end A154435.P7564703697832851929

namespace A154435

/-- `A180200(A063946(n))` -/
def P7564703697832851929.Spec : Prop :=
  ∀ n, P7564703697832851929.a n = A154435 n

end A154435

/-! ## A154435.P9469332503914429741

`A286548(A180200(n))+n`
-/

namespace A154435.P9469332503914429741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 (A180200 n).toNat + (n : ℤ)

end

end A154435.P9469332503914429741

namespace A154435

/-- `A286548(A180200(n))+n` -/
def P9469332503914429741.Spec : Prop :=
  ∀ n, P9469332503914429741.a n = A154435 n

end A154435

/-! ## A154435.P7166302943698505017

`xor(n, A180200(A004526(n)))`
-/

namespace A154435.P7166302943698505017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A180200 (A004526 n).toNat)

end

end A154435.P7166302943698505017

namespace A154435

/-- `xor(n, A180200(A004526(n)))` -/
def P7166302943698505017.Spec : Prop :=
  ∀ n, P7166302943698505017.a n = A154435 n

end A154435

/-! ## A154435.P1483286661322859971

`xor(n, A165199(A292600(n)))`
-/

namespace A154435.P1483286661322859971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A165199 (A292600 n).toNat)

end

end A154435.P1483286661322859971

namespace A154435

/-- `xor(n, A165199(A292600(n)))` -/
def P1483286661322859971.Spec : Prop :=
  ∀ n, P1483286661322859971.a n = A154435 n

end A154435

/-! ## A154435.P4805673721538761924

`A233279(A092569(2*n)/2)`
-/

namespace A154435.P4805673721538761924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A154435.P4805673721538761924

namespace A154435

/-- `A233279(A092569(2*n)/2)` -/
def P4805673721538761924.Spec : Prop :=
  ∀ n, P4805673721538761924.a n = A154435 n

end A154435

/-! ## A154435.P2352005795382684801

`xor(n, A180200(A002265(2*n)))`
-/

namespace A154435.P2352005795382684801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A180200 (A002265 (2 * n)).toNat)

end

end A154435.P2352005795382684801

namespace A154435

/-- `xor(n, A180200(A002265(2*n)))` -/
def P2352005795382684801.Spec : Prop :=
  ∀ n, P2352005795382684801.a n = A154435 n

end A154435

/-! ## A154435.P7006977222048654663

`A234027(floor(A234027(2*n)/2))`
-/

namespace A154435.P7006977222048654663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234027 ⌊(A234027 (2 * n) : ℚ) / 2⌋.toNat

end

end A154435.P7006977222048654663

namespace A154435

/-- `A234027(floor(A234027(2*n)/2))` -/
def P7006977222048654663.Spec : Prop :=
  ∀ n, P7006977222048654663.a n = A154435 n

end A154435

/-! ## A154435.P12224410073094801498

`A233279(A233279(ceil(xor(n-1, 2*n)/2)))`
-/

namespace A154435.P12224410073094801498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A233279 ⌈(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2⌉.toNat).toNat

end

end A154435.P12224410073094801498

namespace A154435

/-- `A233279(A233279(ceil(xor(n-1, 2*n)/2)))` -/
def P12224410073094801498.Spec : Prop :=
  ∀ n, P12224410073094801498.a n = A154435 n

end A154435

/-! ## A154435.P12739002809181514319

`A006068(A154436(A006068(n)))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A154435

/-- `A006068(A154436(A006068(n)))` -/
def P12739002809181514319.Spec : Prop :=
  ∀ n, P12739002809181514319.a n = A154435 n

theorem P12739002809181514319.correct : P12739002809181514319.Spec := by
  intro n
  simp only [A154435]

end A154435

/-! ## A154435.P10652531030746029064

`A092569(A006068(A092569(n)))`
-/

namespace A154435.P10652531030746029064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A006068 (A092569 n).toNat).toNat

end

end A154435.P10652531030746029064

namespace A154435

/-- `A092569(A006068(A092569(n)))` -/
def P10652531030746029064.Spec : Prop :=
  ∀ n, P10652531030746029064.a n = A154435 n

end A154435

/-! ## A154435.P1154065657454829257

`A003188(A180200(A180200(n)))`
-/

namespace A154435.P1154065657454829257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A180200 (A180200 n).toNat).toNat

end

end A154435.P1154065657454829257

namespace A154435

/-- `A003188(A180200(A180200(n)))` -/
def P1154065657454829257.Spec : Prop :=
  ∀ n, P1154065657454829257.a n = A154435 n

end A154435

/-! ## A154435.P13139455986884139527

`A233279(A233279(A003188(n)))`
-/

namespace A154435.P13139455986884139527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A233279 (A003188 n).toNat).toNat

end

end A154435.P13139455986884139527

namespace A154435

/-- `A233279(A233279(A003188(n)))` -/
def P13139455986884139527.Spec : Prop :=
  ∀ n, P13139455986884139527.a n = A154435 n

end A154435

/-! ## A154435.P5251981846285873405

`A233279(A154436(A233279(n)))`
-/

namespace A154435.P5251981846285873405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A154436 (A233279 n).toNat).toNat

end

end A154435.P5251981846285873405

namespace A154435

/-- `A233279(A154436(A233279(n)))` -/
def P5251981846285873405.Spec : Prop :=
  ∀ n, P5251981846285873405.a n = A154435 n

end A154435

/-! ## A154435.P16040786401621078482

`A233279(A233277(A233276(n)))`
-/

namespace A154435.P16040786401621078482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A233277 (A233276 n).toNat).toNat

end

end A154435.P16040786401621078482

namespace A154435

/-- `A233279(A233277(A233276(n)))` -/
def P16040786401621078482.Spec : Prop :=
  ∀ n, P16040786401621078482.a n = A154435 n

end A154435

/-! ## A154435.P635467993112345840

`A233279(A233275(A233278(n)))`
-/

namespace A154435.P635467993112345840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A233275 (A233278 n).toNat).toNat

end

end A154435.P635467993112345840

namespace A154435

/-- `A233279(A233275(A233278(n)))` -/
def P635467993112345840.Spec : Prop :=
  ∀ n, P635467993112345840.a n = A154435 n

end A154435

/-! ## A154435.P2339194967532832451

`A233279(A286546(n)+A233279(n))`
-/

namespace A154435.P2339194967532832451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A286546 n + A233279 n).toNat

end

end A154435.P2339194967532832451

namespace A154435

/-- `A233279(A286546(n)+A233279(n))` -/
def P2339194967532832451.Spec : Prop :=
  ∀ n, P2339194967532832451.a n = A154435 n

end A154435

/-! ## A154435.P12191869064757075975

`A233279(A233279(A286548(n)+n))`
-/

namespace A154435.P12191869064757075975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A233279 (A286548 n + (n : ℤ)).toNat).toNat

end

end A154435.P12191869064757075975

namespace A154435

/-- `A233279(A233279(A286548(n)+n))` -/
def P12191869064757075975.Spec : Prop :=
  ∀ n, P12191869064757075975.a n = A154435 n

end A154435

/-! ## A154435.P10801585624188670853

`A233279(xor(A233279(n), A292600(n)))`
-/

namespace A154435.P10801585624188670853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (Int.xor (A233279 n) (A292600 n)).toNat

end

end A154435.P10801585624188670853

namespace A154435

/-- `A233279(xor(A233279(n), A292600(n)))` -/
def P10801585624188670853.Spec : Prop :=
  ∀ n, P10801585624188670853.a n = A154435 n

end A154435

/-! ## A154435.P11034525328820472396

`A233279(A006068(n)+A233279(n)-n)`
-/

namespace A154435.P11034525328820472396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A006068 n + (A233279 n - (n : ℤ))).toNat

end

end A154435.P11034525328820472396

namespace A154435

/-- `A233279(A006068(n)+A233279(n)-n)` -/
def P11034525328820472396.Spec : Prop :=
  ∀ n, P11034525328820472396.a n = A154435 n

end A154435

/-! ## A154435.P11101774592991253045

`A233279(A006068(n)-(n-A233279(n)))`
-/

namespace A154435.P11101774592991253045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A006068 n - ((n : ℤ) - A233279 n)).toNat

end

end A154435.P11101774592991253045

namespace A154435

/-- `A233279(A006068(n)-(n-A233279(n)))` -/
def P11101774592991253045.Spec : Prop :=
  ∀ n, P11101774592991253045.a n = A154435 n

end A154435

/-!
# A154436: Permutation of nonnegative integers induced by Lamplighter group generating wreath recursion, variant 1: a = s(a,b), b = (a,b), starting from the state a.

The programs for A154436, the canonical program `A154436.P18184337590076184170` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154436 has offset 0).

The definition of A154436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154436.P11954838995158292107

`A261349(2*n)`
-/

namespace A154436.P11954838995158292107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261349 (2 * n)

end

end A154436.P11954838995158292107

namespace A154436

/-- `A261349(2*n)` -/
def P11954838995158292107.Spec : Prop :=
  ∀ n, P11954838995158292107.a n = A154436 n

end A154436

/-! ## A154436.P18184337590076184170

`xor(n, floor(A092569(n)/2))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A154436

/-- `xor(n, floor(A092569(n)/2))` -/
def P18184337590076184170.Spec : Prop :=
  ∀ n, P18184337590076184170.a n = A154436 n

theorem P18184337590076184170.correct : P18184337590076184170.Spec := by
  intro n
  simp only [A154436]

end A154436

/-! ## A154436.P9733402729951497460

`2*a(floor(n/2))+A021913(n-1)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=2`
-/

namespace A154436.P9733402729951497460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 2] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat + A021913 (n - 1)

end

end A154436.P9733402729951497460

namespace A154436

/-- `2*a(floor(n/2))+A021913(n-1)` -/
def P9733402729951497460.Spec : Prop :=
  ∀ n, P9733402729951497460.a n = A154436 n

end A154436

/-! ## A154436.P7415667507730868133

`A063946(A180201(n))`
-/

namespace A154436.P7415667507730868133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A180201 n).toNat

end

end A154436.P7415667507730868133

namespace A154436

/-- `A063946(A180201(n))` -/
def P7415667507730868133.Spec : Prop :=
  ∀ n, P7415667507730868133.a n = A154436 n

end A154436

/-! ## A154436.P13114148209818347785

`A286546(A233280(n))+n`
-/

namespace A154436.P13114148209818347785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286546 (A233280 n).toNat + (n : ℤ)

end

end A154436.P13114148209818347785

namespace A154436

/-- `A286546(A233280(n))+n` -/
def P13114148209818347785.Spec : Prop :=
  ∀ n, P13114148209818347785.a n = A154436 n

end A154436

/-! ## A154436.P14907329984965333454

`A180201(A092569(2*n)/2)`
-/

namespace A154436.P14907329984965333454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A154436.P14907329984965333454

namespace A154436

/-- `A180201(A092569(2*n)/2)` -/
def P14907329984965333454.Spec : Prop :=
  ∀ n, P14907329984965333454.a n = A154436 n

end A154436

/-! ## A154436.P9367597909136089332

`xor(n, A003188(xor(n, A154435(n))))`
-/

namespace A154436.P9367597909136089332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A003188 (Int.xor (n : ℤ) (A154435 n)).toNat)

end

end A154436.P9367597909136089332

namespace A154436

/-- `xor(n, A003188(xor(n, A154435(n))))` -/
def P9367597909136089332.Spec : Prop :=
  ∀ n, P9367597909136089332.a n = A154436 n

end A154436

/-! ## A154436.P1256270434283739974

`A003188(A154435(A003188(n)))`
-/

namespace A154436.P1256270434283739974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A154435 (A003188 n).toNat).toNat

end

end A154436.P1256270434283739974

namespace A154436

/-- `A003188(A154435(A003188(n)))` -/
def P1256270434283739974.Spec : Prop :=
  ∀ n, P1256270434283739974.a n = A154436 n

end A154436

/-! ## A154436.P1254160315009114282

`A092569(A003188(A092569(n)))`
-/

namespace A154436.P1254160315009114282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A003188 (A092569 n).toNat).toNat

end

end A154436.P1254160315009114282

namespace A154436

/-- `A092569(A003188(A092569(n)))` -/
def P1254160315009114282.Spec : Prop :=
  ∀ n, P1254160315009114282.a n = A154436 n

end A154436

/-! ## A154436.P6199482318406306385

`A006068(A233280(A233280(n)))`
-/

namespace A154436.P6199482318406306385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A233280 (A233280 n).toNat).toNat

end

end A154436.P6199482318406306385

namespace A154436

/-- `A006068(A233280(A233280(n)))` -/
def P6199482318406306385.Spec : Prop :=
  ∀ n, P6199482318406306385.a n = A154436 n

end A154436

/-! ## A154436.P18227938845545452669

`A180201(A286548(n)+A180201(n))`
-/

namespace A154436.P18227938845545452669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 (A286548 n + A180201 n).toNat

end

end A154436.P18227938845545452669

namespace A154436

/-- `A180201(A286548(n)+A180201(n))` -/
def P18227938845545452669.Spec : Prop :=
  ∀ n, P18227938845545452669.a n = A154436 n

end A154436

/-! ## A154436.P12247959546367074859

`xor(A003188(n), A003817(A002265(n)))`
-/

namespace A154436.P12247959546367074859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003188 n) (A003817 (A002265 n).toNat)

end

end A154436.P12247959546367074859

namespace A154436

/-- `xor(A003188(n), A003817(A002265(n)))` -/
def P12247959546367074859.Spec : Prop :=
  ∀ n, P12247959546367074859.a n = A154436 n

end A154436

/-! ## A154436.P10412529689772892320

`A180201(xor(A004526(n), A180201(n)))`
-/

namespace A154436.P10412529689772892320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180201 (Int.xor (A004526 n) (A180201 n)).toNat

end

end A154436.P10412529689772892320

namespace A154436

/-- `A180201(xor(A004526(n), A180201(n)))` -/
def P10412529689772892320.Spec : Prop :=
  ∀ n, P10412529689772892320.a n = A154436 n

end A154436

/-! ## A154436.P13425021773272002461

`A279645(A053644(n)+n)+A053644(n)`
-/

namespace A154436.P13425021773272002461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279645 (A053644 n + (n : ℤ)).toNat + A053644 n

end

end A154436.P13425021773272002461

namespace A154436

/-- `A279645(A053644(n)+n)+A053644(n)` -/
def P13425021773272002461.Spec : Prop :=
  ∀ n, P13425021773272002461.a n = A154436 n

end A154436

/-! ## A154436.P17226904823311375096

`A233280(A154435(n))+n-A233280(n)`
-/

namespace A154436.P17226904823311375096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 (A154435 n).toNat + ((n : ℤ) - A233280 n)

end

end A154436.P17226904823311375096

namespace A154436

/-- `A233280(A154435(n))+n-A233280(n)` -/
def P17226904823311375096.Spec : Prop :=
  ∀ n, P17226904823311375096.a n = A154436 n

end A154436

/-! ## A154436.P6809234425492080010

`A233275(n)+A233277(n)-A233280(n)`
-/

namespace A154436.P6809234425492080010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233275 n + (A233277 n - A233280 n)

end

end A154436.P6809234425492080010

namespace A154436

/-- `A233275(n)+A233277(n)-A233280(n)` -/
def P6809234425492080010.Spec : Prop :=
  ∀ n, P6809234425492080010.a n = A154436 n

end A154436

/-! ## A154436.P10312740130809056338

`A233277(A233276(n))+n-A233280(n)`
-/

namespace A154436.P10312740130809056338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233277 (A233276 n).toNat + ((n : ℤ) - A233280 n)

end

end A154436.P10312740130809056338

namespace A154436

/-- `A233277(A233276(n))+n-A233280(n)` -/
def P10312740130809056338.Spec : Prop :=
  ∀ n, P10312740130809056338.a n = A154436 n

end A154436

/-! ## A154436.P650600268632073712

`A233275(A233278(n))+n-A233280(n)`
-/

namespace A154436.P650600268632073712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233275 (A233278 n).toNat + ((n : ℤ) - A233280 n)

end

end A154436.P650600268632073712

namespace A154436

/-- `A233275(A233278(n))+n-A233280(n)` -/
def P650600268632073712.Spec : Prop :=
  ∀ n, P650600268632073712.a n = A154436 n

end A154436

/-! ## A154436.P11166161685764261728

`A003817(n)-A003188(n-A053644(n))`
-/

namespace A154436.P11166161685764261728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A003188 ((n : ℤ) - A053644 n).toNat

end

end A154436.P11166161685764261728

namespace A154436

/-- `A003817(n)-A003188(n-A053644(n))` -/
def P11166161685764261728.Spec : Prop :=
  ∀ n, P11166161685764261728.a n = A154436 n

end A154436

/-! ## A154436.P2719325311049838813

`A003188(A233279(A233279(A064706(n))))`
-/

namespace A154436.P2719325311049838813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A233279 (A233279 (A064706 n).toNat).toNat).toNat

end

end A154436.P2719325311049838813

namespace A154436

/-- `A003188(A233279(A233279(A064706(n))))` -/
def P2719325311049838813.Spec : Prop :=
  ∀ n, P2719325311049838813.a n = A154436 n

end A154436

/-!
# A154437: Permutation of nonnegative integers: A059893-conjugate of A154435.

The programs for A154437, the canonical program `A154437.P11607465258887740319` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154437 has offset 0).

The definition of A154437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154437.P8400338598938136725

`A231551(A092569(2*n)/2)`
-/

namespace A154437.P8400338598938136725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231551 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A154437.P8400338598938136725

namespace A154437

/-- `A231551(A092569(2*n)/2)` -/
def P8400338598938136725.Spec : Prop :=
  ∀ n, P8400338598938136725.a n = A154437 n

end A154437

/-! ## A154437.P10260791182244108131

`floor(A284459(A065190(2*n+1))/2)`
-/

namespace A154437.P10260791182244108131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A284459 (A065190 (2 * n + 1)).toNat : ℚ) / 2⌋

end

end A154437.P10260791182244108131

namespace A154437

/-- `floor(A284459(A065190(2*n+1))/2)` -/
def P10260791182244108131.Spec : Prop :=
  ∀ n, P10260791182244108131.a n = A154437 n

end A154437

/-! ## A154437.P11607465258887740319

`A056539(2*A335858(n))/2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A154437

/-- `A056539(2*A335858(n))/2` -/
def P11607465258887740319.Spec : Prop :=
  ∀ n, P11607465258887740319.a n = (A154437 n : ℚ)

end A154437

/-! ## A154437.P6096007019979715421

`A153154(A092569(n))`
-/

namespace A154437.P6096007019979715421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153154 (A092569 n).toNat

end

end A154437.P6096007019979715421

namespace A154437

/-- `A153154(A092569(n))` -/
def P6096007019979715421.Spec : Prop :=
  ∀ n, P6096007019979715421.a n = A154437 n

end A154437

/-! ## A154437.P9257137394969806474

`A153154(A154438(A153154(n)))`
-/

namespace A154437.P9257137394969806474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153154 (A154438 (A153154 n).toNat).toNat

end

end A154437.P9257137394969806474

namespace A154437

/-- `A153154(A154438(A153154(n)))` -/
def P9257137394969806474.Spec : Prop :=
  ∀ n, P9257137394969806474.a n = A154437 n

end A154437

/-! ## A154437.P16567146255455541342

`A231551(A231551(A153153(n)))`
-/

namespace A154437.P16567146255455541342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231551 (A231551 (A153153 n).toNat).toNat

end

end A154437.P16567146255455541342

namespace A154437

/-- `A231551(A231551(A153153(n)))` -/
def P16567146255455541342.Spec : Prop :=
  ∀ n, P16567146255455541342.a n = A154437 n

end A154437

/-! ## A154437.P17474273632787077156

`A231551(A153154(A231550(n)))`
-/

namespace A154437.P17474273632787077156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231551 (A153154 (A231550 n).toNat).toNat

end

end A154437.P17474273632787077156

namespace A154437

/-- `A231551(A153154(A231550(n)))` -/
def P17474273632787077156.Spec : Prop :=
  ∀ n, P17474273632787077156.a n = A154437 n

end A154437

/-! ## A154437.P614902156920045562

`A231551(A154438(A231551(n)))`
-/

namespace A154437.P614902156920045562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231551 (A154438 (A231551 n).toNat).toNat

end

end A154437.P614902156920045562

namespace A154437

/-- `A231551(A154438(A231551(n)))` -/
def P614902156920045562.Spec : Prop :=
  ∀ n, P614902156920045562.a n = A154437 n

end A154437

/-! ## A154437.P10963513618709929714

`A231551(A153154(n)+A231551(n)-n)`
-/

namespace A154437.P10963513618709929714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231551 (A153154 n + (A231551 n - (n : ℤ))).toNat

end

end A154437.P10963513618709929714

namespace A154437

/-- `A231551(A153154(n)+A231551(n)-n)` -/
def P10963513618709929714.Spec : Prop :=
  ∀ n, P10963513618709929714.a n = A154437 n

end A154437

/-! ## A154437.P4475137030976222245

`A231551(A153154(n)-(n-A231551(n)))`
-/

namespace A154437.P4475137030976222245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231551 (A153154 n - ((n : ℤ) - A231551 n)).toNat

end

end A154437.P4475137030976222245

namespace A154437

/-- `A231551(A153154(n)-(n-A231551(n)))` -/
def P4475137030976222245.Spec : Prop :=
  ∀ n, P4475137030976222245.a n = A154437 n

end A154437

/-! ## A154437.P4179254541516030925

`A154436(A006068(A153154(A154436(A006068(n)))))`
-/

namespace A154437.P4179254541516030925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 (A006068 (A153154 (A154436 (A006068 n).toNat).toNat).toNat).toNat

end

end A154437.P4179254541516030925

namespace A154437

/-- `A154436(A006068(A153154(A154436(A006068(n)))))` -/
def P4179254541516030925.Spec : Prop :=
  ∀ n, P4179254541516030925.a n = A154437 n

end A154437

/-! ## A154437.P2378367253293821897

`A154436(A233279(A153154(A154436(A233279(n)))))`
-/

namespace A154437.P2378367253293821897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 (A233279 (A153154 (A154436 (A233279 n).toNat).toNat).toNat).toNat

end

end A154437.P2378367253293821897

namespace A154437

/-- `A154436(A233279(A153154(A154436(A233279(n)))))` -/
def P2378367253293821897.Spec : Prop :=
  ∀ n, P2378367253293821897.a n = A154437 n

end A154437

/-!
# A154438: Permutation of nonnegative integers: A059893-conjugate of A154436.

The programs for A154438, the canonical program `A154438.P677058482357628311` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154438 has offset 0).

The definition of A154438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154438.P677058482357628311

`A092569(A153153(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A154438

/-- `A092569(A153153(n))` -/
def P677058482357628311.Spec : Prop :=
  ∀ n, P677058482357628311.a n = A154438 n

theorem P677058482357628311.correct : P677058482357628311.Spec := by
  intro n
  simp only [A154438]

end A154438

/-! ## A154438.P4181334766864549098

`A092569(A231550(2*n))/2`
-/

namespace A154438.P4181334766864549098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092569 (A231550 (2 * n)).toNat : ℚ) / 2

end

end A154438.P4181334766864549098

namespace A154438

/-- `A092569(A231550(2*n))/2` -/
def P4181334766864549098.Spec : Prop :=
  ∀ n, P4181334766864549098.a n = (A154438 n : ℚ)

end A154438

/-! ## A154438.P11523804355664333407

`A154435(A180201(A231550(n)))`
-/

namespace A154438.P11523804355664333407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154435 (A180201 (A231550 n).toNat).toNat

end

end A154438.P11523804355664333407

namespace A154438

/-- `A154435(A180201(A231550(n)))` -/
def P11523804355664333407.Spec : Prop :=
  ∀ n, P11523804355664333407.a n = A154438 n

end A154438

/-! ## A154438.P14244489512652578392

`A231550(A154437(A231550(2*n-n)))`
-/

namespace A154438.P14244489512652578392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A154437 (A231550 (2 * n - n)).toNat).toNat

end

end A154438.P14244489512652578392

namespace A154438

/-- `A231550(A154437(A231550(2*n-n)))` -/
def P14244489512652578392.Spec : Prop :=
  ∀ n, P14244489512652578392.a n = A154438 n

end A154438

/-! ## A154438.P17096993855397561757

`A153154(n)+A231551(n)-A231550(n)`
-/

namespace A154438.P17096993855397561757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153154 n + (A231551 n - A231550 n)

end

end A154438.P17096993855397561757

namespace A154438

/-- `A153154(n)+A231551(n)-A231550(n)` -/
def P17096993855397561757.Spec : Prop :=
  ∀ n, P17096993855397561757.a n = A154438 n

end A154438

/-! ## A154438.P11605902977451905516

`A231550(A154437(n))+n-A231550(n)`
-/

namespace A154438.P11605902977451905516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 (A154437 n).toNat + ((n : ℤ) - A231550 n)

end

end A154438.P11605902977451905516

namespace A154438

/-- `A231550(A154437(n))+n-A231550(n)` -/
def P11605902977451905516.Spec : Prop :=
  ∀ n, P11605902977451905516.a n = A154438 n

end A154438

/-! ## A154438.P13798011817653267185

`A092569(A231550(A231550(A154437(n))))`
-/

namespace A154438.P13798011817653267185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A231550 (A231550 (A154437 n).toNat).toNat).toNat

end

end A154438.P13798011817653267185

namespace A154438

/-- `A092569(A231550(A231550(A154437(n))))` -/
def P13798011817653267185.Spec : Prop :=
  ∀ n, P13798011817653267185.a n = A154438 n

end A154438

/-! ## A154438.P16736336384807956482

`A180200(A063946(n))+A180200(n)-A231550(n)`
-/

namespace A154438.P16736336384807956482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A063946 n).toNat + (A180200 n - A231550 n)

end

end A154438.P16736336384807956482

namespace A154438

/-- `A180200(A063946(n))+A180200(n)-A231550(n)` -/
def P16736336384807956482.Spec : Prop :=
  ∀ n, P16736336384807956482.a n = A154438 n

end A154438

/-! ## A154438.P787795908711415449

`A092569(n)+A231550(A153154(n))-A231550(n)`
-/

namespace A154438.P787795908711415449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 n + (A231550 (A153154 n).toNat - A231550 n)

end

end A154438.P787795908711415449

namespace A154438

/-- `A092569(n)+A231550(A153154(n))-A231550(n)` -/
def P787795908711415449.Spec : Prop :=
  ∀ n, P787795908711415449.a n = A154438 n

end A154438

/-! ## A154438.P13075114466960428520

`A003188(A154435(A153153(A003188(A154435(n)))))`
-/

namespace A154438.P13075114466960428520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A154435 (A153153 (A003188 (A154435 n).toNat).toNat).toNat).toNat

end

end A154438.P13075114466960428520

namespace A154438

/-- `A003188(A154435(A153153(A003188(A154435(n)))))` -/
def P13075114466960428520.Spec : Prop :=
  ∀ n, P13075114466960428520.a n = A154438 n

end A154438

/-! ## A154438.P5537688259680671913

`A153154(A231550(A231550(A153153(A153154(n)))))`
-/

namespace A154438.P5537688259680671913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153154 (A231550 (A231550 (A153153 (A153154 n).toNat).toNat).toNat).toNat

end

end A154438.P5537688259680671913

namespace A154438

/-- `A153154(A231550(A231550(A153153(A153154(n)))))` -/
def P5537688259680671913.Spec : Prop :=
  ∀ n, P5537688259680671913.a n = A154438 n

end A154438

/-! ## A154438.P6180879422273759107

`A153154(A231550(A231550(A231550(A231551(n)))))`
-/

namespace A154438.P6180879422273759107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153154 (A231550 (A231550 (A231550 (A231551 n).toNat).toNat).toNat).toNat

end

end A154438.P6180879422273759107

namespace A154438

/-- `A153154(A231550(A231550(A231550(A231551(n)))))` -/
def P6180879422273759107.Spec : Prop :=
  ∀ n, P6180879422273759107.a n = A154438 n

end A154438

/-! ## A154438.P2056004695743253958

`or(A053644(n), A343230(A005823(n+1)))`
-/

namespace A154438.P2056004695743253958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053644 n) (A343230 (A005823 (n + 1)).toNat)

end

end A154438.P2056004695743253958

namespace A154438

/-- `or(A053644(n), A343230(A005823(n+1)))` -/
def P2056004695743253958.Spec : Prop :=
  ∀ n, P2056004695743253958.a n = A154438 n

end A154438

/-!
# A154439: Permutation of nonnegative integers induced by Basilica group generating wreath recursion: a = (1,b), b = s(1,a), starting from the inactive (fixing) state a.

The programs for A154439, there is no canonical definition to state claims against.
-/

/-! ## A154439.P2954948202709535437

`A154445(A153142(n))`
-/

namespace A154439.P2954948202709535437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154445 (A153142 n).toNat

end

end A154439.P2954948202709535437

/-! ## A154439.P1230956457464792758

`A154448(A154441(n))`
-/

namespace A154439.P1230956457464792758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154448 (A154441 n).toNat

end

end A154439.P1230956457464792758

/-! ## A154439.P16118145226283669506

`A153142(n)+n-A154441(n)`
-/

namespace A154439.P16118145226283669506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153142 n + ((n : ℤ) - A154441 n)

end

end A154439.P16118145226283669506

/-! ## A154439.P12303096152550772093

`A154448(A154443(A153142(A153142(A153141(n)))))`
-/

namespace A154439.P12303096152550772093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154448 (A154443 (A153142 (A153142 (A153141 n).toNat).toNat).toNat).toNat

end

end A154439.P12303096152550772093

/-! ## A154439.P16352783288029291135

`A154445(A154444(A154441(A154441(A154442(n)))))`
-/

namespace A154439.P16352783288029291135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154445 (A154444 (A154441 (A154441 (A154442 n).toNat).toNat).toNat).toNat

end

end A154439.P16352783288029291135

/-!
# A154440: Permutation of nonnegative integers: the inverse of A154439.

The programs for A154440, there is no canonical definition to state claims against.
-/

/-! ## A154440.P6337710254570873567

`A153141(A154446(n))`
-/

namespace A154440.P6337710254570873567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 (A154446 n).toNat

end

end A154440.P6337710254570873567

/-! ## A154440.P14836385453129113457

`A154442(A154447(n))`
-/

namespace A154440.P14836385453129113457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154442 (A154447 n).toNat

end

end A154440.P14836385453129113457

/-! ## A154440.P14588954733014401896

`A154447(n)+n-A154446(n)`
-/

namespace A154440.P14588954733014401896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154447 n + ((n : ℤ) - A154446 n)

end

end A154440.P14588954733014401896

/-!
# A154441: Permutation of nonnegative integers induced by Basilica group generating wreath recursion: a = (1,b), b = s(1,a), starting from the active (swapping) state b.

The programs for A154441, there is no canonical definition to state claims against.
-/

/-! ## A154441.P5652867220233805064

`A154443(A153142(n))`
-/

namespace A154441.P5652867220233805064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154443 (A153142 n).toNat

end

end A154441.P5652867220233805064

/-! ## A154441.P14418294963901743895

`A154447(A154439(n))`
-/

namespace A154441.P14418294963901743895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154447 (A154439 n).toNat

end

end A154441.P14418294963901743895

/-! ## A154441.P16120088508245802796

`A153142(n)+n-A154439(n)`
-/

namespace A154441.P16120088508245802796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153142 n + ((n : ℤ) - A154439 n)

end

end A154441.P16120088508245802796

/-! ## A154441.P10165773182271366129

`A092569(A154445(A092569(n)))`
-/

namespace A154441.P10165773182271366129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A154445 (A092569 n).toNat).toNat

end

end A154441.P10165773182271366129

/-! ## A154441.P14028099126319229093

`A154435(n)+n-A154445(A154435(n))`
-/

namespace A154441.P14028099126319229093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154435 n + ((n : ℤ) - A154445 (A154435 n).toNat)

end

end A154441.P14028099126319229093

/-! ## A154441.P4160520572814133591

`A154446(A233279(n))+n-A233279(n)`
-/

namespace A154441.P4160520572814133591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154446 (A233279 n).toNat + ((n : ℤ) - A233279 n)

end

end A154441.P4160520572814133591

/-! ## A154441.P17289923817860943058

`A153141(n)-(A153141(A154439(n))-A153142(n))`
-/

namespace A154441.P17289923817860943058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 n - (A153141 (A154439 n).toNat - A153142 n)

end

end A154441.P17289923817860943058

/-! ## A154441.P13542671761420887370

`A154447(A154445(A153142(A154435(A154436(n)))))`
-/

namespace A154441.P13542671761420887370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154447 (A154445 (A153142 (A154435 (A154436 n).toNat).toNat).toNat).toNat

end

end A154441.P13542671761420887370

/-! ## A154441.P15522017469193690061

`A154447(A154445(A153142(A154448(A154447(n)))))`
-/

namespace A154441.P15522017469193690061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154447 (A154445 (A153142 (A154448 (A154447 n).toNat).toNat).toNat).toNat

end

end A154441.P15522017469193690061

/-!
# A154442: Permutation of nonnegative integers: the inverse of A154441.

The programs for A154442, there is no canonical definition to state claims against.
-/

/-! ## A154442.P11721628140717205008

`A153141(A154444(n))`
-/

namespace A154442.P11721628140717205008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 (A154444 n).toNat

end

end A154442.P11721628140717205008

/-! ## A154442.P9849141255948461590

`A154440(A154448(n))`
-/

namespace A154442.P9849141255948461590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154440 (A154448 n).toNat

end

end A154442.P9849141255948461590

/-! ## A154442.P11548292824666901354

`A154448(n)+n-A154444(n)`
-/

namespace A154442.P11548292824666901354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154448 n + ((n : ℤ) - A154444 n)

end

end A154442.P11548292824666901354

/-! ## A154442.P4918033007772534050

`xor(A004526(n), A154441(A003188(n)))`
-/

namespace A154442.P4918033007772534050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004526 n) (A154441 (A003188 n).toNat)

end

end A154442.P4918033007772534050

/-! ## A154442.P931442490822830687

`A153141(A154446(A154448(A153142(A153141(n)))))`
-/

namespace A154442.P931442490822830687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 (A154446 (A154448 (A153142 (A153141 n).toNat).toNat).toNat).toNat

end

end A154442.P931442490822830687

/-! ## A154442.P5988685692576495811

`A153141(A154446(A154448(A154436(A154435(n)))))`
-/

namespace A154442.P5988685692576495811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 (A154446 (A154448 (A154436 (A154435 n).toNat).toNat).toNat).toNat

end

end A154442.P5988685692576495811

/-! ## A154442.P13197599569531714254

`A153141(A154446(A154448(A154446(A154445(n)))))`
-/

namespace A154442.P13197599569531714254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 (A154446 (A154448 (A154446 (A154445 n).toNat).toNat).toNat).toNat

end

end A154442.P13197599569531714254

/-! ## A154442.P4493358014268887386

`A153141(A154446(A154448(A154448(A154447(n)))))`
-/

namespace A154442.P4493358014268887386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 (A154446 (A154448 (A154448 (A154447 n).toNat).toNat).toNat).toNat

end

end A154442.P4493358014268887386

/-! ## A154442.P5489546671930228464

`A154436(A233279(A154446(A154436(A233279(n)))))`
-/

namespace A154442.P5489546671930228464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 (A233279 (A154446 (A154436 (A233279 n).toNat).toNat).toNat).toNat

end

end A154442.P5489546671930228464

/-!
# A154443: Permutation of nonnegative integers induced by Basilica group generating wreath recursion: a = (b,1), b = s(a,1), starting from the inactive (fixing) state a.

The programs for A154443, there is no canonical definition to state claims against.
-/

/-! ## A154443.P7274073965468120750

`A154441(A153141(n))`
-/

namespace A154443.P7274073965468120750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154441 (A153141 n).toNat

end

end A154443.P7274073965468120750

/-! ## A154443.P3585066243818088987

`A154447(A154445(n))`
-/

namespace A154443.P3585066243818088987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154447 (A154445 n).toNat

end

end A154443.P3585066243818088987

/-! ## A154443.P5775905592074690720

`A153141(n)+n-A154445(n)`
-/

namespace A154443.P5775905592074690720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 n + ((n : ℤ) - A154445 n)

end

end A154443.P5775905592074690720

/-! ## A154443.P10224860640335806309

`A154440(A154435(n))+n-A154435(n)`
-/

namespace A154443.P10224860640335806309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154440 (A154435 n).toNat + ((n : ℤ) - A154435 n)

end

end A154443.P10224860640335806309

/-! ## A154443.P8171331975882523592

`A154436(n)+n-A154439(A154436(n))`
-/

namespace A154443.P8171331975882523592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 n + ((n : ℤ) - A154439 (A154436 n).toNat)

end

end A154443.P8171331975882523592

/-! ## A154443.P16407218438823080746

`A154445(A153141(n)-(A154445(n)-A154446(n)))`
-/

namespace A154443.P16407218438823080746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154445 (A153141 n - (A154445 n - A154446 n)).toNat

end

end A154443.P16407218438823080746

/-! ## A154443.P10101868820153843360

`A154438(A153154(A154439(A154438(A153154(n)))))`
-/

namespace A154443.P10101868820153843360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154438 (A153154 (A154439 (A154438 (A153154 n).toNat).toNat).toNat).toNat

end

end A154443.P10101868820153843360

/-! ## A154443.P2555407755042282422

`A154447(A154439(A153141(A154436(A154435(n)))))`
-/

namespace A154443.P2555407755042282422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154447 (A154439 (A153141 (A154436 (A154435 n).toNat).toNat).toNat).toNat

end

end A154443.P2555407755042282422

/-! ## A154443.P4468978187661559207

`A154440(A154447(A154439(A153141(A154439(n)))))`
-/

namespace A154443.P4468978187661559207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154440 (A154447 (A154439 (A153141 (A154439 n).toNat).toNat).toNat).toNat

end

end A154443.P4468978187661559207

/-! ## A154443.P1853212744782314881

`A154447(A154439(A153141(A154448(A154447(n)))))`
-/

namespace A154443.P1853212744782314881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154447 (A154439 (A153141 (A154448 (A154447 n).toNat).toNat).toNat).toNat

end

end A154443.P1853212744782314881

/-! ## A154443.P9964634641778548778

`A154441(A154440(A154445(A154445(A154446(n)))))`
-/

namespace A154443.P9964634641778548778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154441 (A154440 (A154445 (A154445 (A154446 n).toNat).toNat).toNat).toNat

end

end A154443.P9964634641778548778

/-!
# A154444: Permutation of nonnegative integers: The inverse of A154443.

The programs for A154444, there is no canonical definition to state claims against.
-/

/-! ## A154444.P14484945705005923541

`A153142(A154442(n))`
-/

namespace A154444.P14484945705005923541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153142 (A154442 n).toNat

end

end A154444.P14484945705005923541

/-! ## A154444.P325999522295754930

`A154446(A154448(n))`
-/

namespace A154444.P325999522295754930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154446 (A154448 n).toNat

end

end A154444.P325999522295754930

/-! ## A154444.P15330432541624003853

`A154448(n)+n-A154442(n)`
-/

namespace A154444.P15330432541624003853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154448 n + ((n : ℤ) - A154442 n)

end

end A154444.P15330432541624003853

/-! ## A154444.P1341661338191366398

`A092569(A154440(A092569(n)))`
-/

namespace A154444.P1341661338191366398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A154440 (A092569 n).toNat).toNat

end

end A154444.P1341661338191366398

/-! ## A154444.P11874819729419346777

`A153142(A154440(A154448(A153142(A153141(n)))))`
-/

namespace A154444.P11874819729419346777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153142 (A154440 (A154448 (A153142 (A153141 n).toNat).toNat).toNat).toNat

end

end A154444.P11874819729419346777

/-! ## A154444.P21333157992317553

`A154438(A153154(A154440(A154438(A153154(n)))))`
-/

namespace A154444.P21333157992317553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154438 (A153154 (A154440 (A154438 (A153154 n).toNat).toNat).toNat).toNat

end

end A154444.P21333157992317553

/-! ## A154444.P17436795356296745630

`A153142(A154440(A154448(A154448(A154447(n)))))`
-/

namespace A154444.P17436795356296745630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153142 (A154440 (A154448 (A154448 (A154447 n).toNat).toNat).toNat).toNat

end

end A154444.P17436795356296745630

/-! ## A154444.P13505910996267456968

`A154446(A154439(A154442(A154440(A154439(n)))))`
-/

namespace A154444.P13505910996267456968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154446 (A154439 (A154442 (A154440 (A154439 n).toNat).toNat).toNat).toNat

end

end A154444.P13505910996267456968

/-! ## A154444.P12026585794693216791

`A154446(A154439(A154442(A154442(A154441(n)))))`
-/

namespace A154444.P12026585794693216791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154446 (A154439 (A154442 (A154442 (A154441 n).toNat).toNat).toNat).toNat

end

end A154444.P12026585794693216791

/-! ## A154444.P5301123085066855094

`A165199(A154439(A165199(n)))`
-/

namespace A154444.P5301123085066855094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A154439 (A165199 n).toNat).toNat

end

end A154444.P5301123085066855094

/-!
# A154445: Permutation of nonnegative integers induced by Basilica group generating wreath recursion: a = (b,1), b = s(a,1), starting from the active (swapping) state b.

The programs for A154445, there is no canonical definition to state claims against.
-/

/-! ## A154445.P2258223722632082920

`A154439(A153141(n))`
-/

namespace A154445.P2258223722632082920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 (A153141 n).toNat

end

end A154445.P2258223722632082920

/-! ## A154445.P14709300950152037214

`A154448(A154443(n))`
-/

namespace A154445.P14709300950152037214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154448 (A154443 n).toNat

end

end A154445.P14709300950152037214

/-! ## A154445.P11692918809245161768

`A153141(n)+n-A154443(n)`
-/

namespace A154445.P11692918809245161768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 n + ((n : ℤ) - A154443 n)

end

end A154445.P11692918809245161768

/-! ## A154445.P5310643388305148081

`xor(A154441(A006068(n)), A292600(n))`
-/

namespace A154445.P5310643388305148081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A154441 (A006068 n).toNat) (A292600 n)

end

end A154445.P5310643388305148081

/-! ## A154445.P12315587303162620969

`xor(A154443(n), A342126(A292600(n)))`
-/

namespace A154445.P12315587303162620969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A154443 n) (A342126 (A292600 n).toNat)

end

end A154445.P12315587303162620969

/-! ## A154445.P7260547886280318008

`A154435(n)+n-A154446(A154435(n))`
-/

namespace A154445.P7260547886280318008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154435 n + ((n : ℤ) - A154446 (A154435 n).toNat)

end

end A154445.P7260547886280318008

/-! ## A154445.P8033710319778690128

`A154436(n)+n-A154441(A154436(n))`
-/

namespace A154445.P8033710319778690128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 n + ((n : ℤ) - A154441 (A154436 n).toNat)

end

end A154445.P8033710319778690128

/-! ## A154445.P2555956003557088206

`A154448(A154441(A153141(A153141(A153142(n)))))`
-/

namespace A154445.P2555956003557088206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154448 (A154441 (A153141 (A153141 (A153142 n).toNat).toNat).toNat).toNat

end

end A154445.P2555956003557088206

/-! ## A154445.P3845568885246514053

`A154448(A154441(A153141(A154442(A154441(n)))))`
-/

namespace A154445.P3845568885246514053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154448 (A154441 (A153141 (A154442 (A154441 n).toNat).toNat).toNat).toNat

end

end A154445.P3845568885246514053

/-! ## A154445.P10550537159224463780

`A154439(A154442(A154443(A154440(A154439(n)))))`
-/

namespace A154445.P10550537159224463780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 (A154442 (A154443 (A154440 (A154439 n).toNat).toNat).toNat).toNat

end

end A154445.P10550537159224463780

/-! ## A154445.P7004386824624253374

`A233279(A154436(A154446(A233279(A154436(n)))))`
-/

namespace A154445.P7004386824624253374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A154436 (A154446 (A233279 (A154436 n).toNat).toNat).toNat).toNat

end

end A154445.P7004386824624253374

/-! ## A154445.P4025296278644746798

`A154443(A053644(n)+n)-A053644(n)`
-/

namespace A154445.P4025296278644746798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154443 (A053644 n + (n : ℤ)).toNat - A053644 n

end

end A154445.P4025296278644746798

/-!
# A154446: Permutation of nonnegative integers: The inverse of A154445.

The programs for A154446, there is no canonical definition to state claims against.
-/

/-! ## A154446.P8242302084784971449

`A153142(A154440(n))`
-/

namespace A154446.P8242302084784971449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153142 (A154440 n).toNat

end

end A154446.P8242302084784971449

/-! ## A154446.P1502855464521077891

`A154444(A154447(n))`
-/

namespace A154446.P1502855464521077891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154444 (A154447 n).toNat

end

end A154446.P1502855464521077891

/-! ## A154446.P483613086963371127

`A154447(n)+n-A154440(n)`
-/

namespace A154446.P483613086963371127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154447 n + ((n : ℤ) - A154440 n)

end

end A154446.P483613086963371127

/-! ## A154446.P6360827461377984608

`A154436(n)+n-A154445(A154436(n))`
-/

namespace A154446.P6360827461377984608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 n + ((n : ℤ) - A154445 (A154436 n).toNat)

end

end A154446.P6360827461377984608

/-! ## A154446.P2697373470303938907

`A154436(n)+A154447(n)-A154443(A154436(n))`
-/

namespace A154446.P2697373470303938907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 n + (A154447 n - A154443 (A154436 n).toNat)

end

end A154446.P2697373470303938907

/-! ## A154446.P17438802854898898477

`A154436(A154435(n))-(A154440(n)-A154447(n))`
-/

namespace A154446.P17438802854898898477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 (A154435 n).toNat - (A154440 n - A154447 n)

end

end A154446.P17438802854898898477

/-! ## A154446.P4756348681468346832

`A154444(A154441(A154444(A154440(A154443(n)))))`
-/

namespace A154446.P4756348681468346832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154444 (A154441 (A154444 (A154440 (A154443 n).toNat).toNat).toNat).toNat

end

end A154446.P4756348681468346832

/-! ## A154446.P3329190716717613912

`A053645(A153142(A154444(A316385(2*n+1))))`
-/

namespace A154446.P3329190716717613912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A153142 (A154444 (A316385 (2 * n + 1)).toNat).toNat).toNat

end

end A154446.P3329190716717613912

/-! ## A154446.P6032912318484547977

`A115352(A154440(n))+A053644(n)`
-/

namespace A154446.P6032912318484547977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115352 (A154440 n).toNat + A053644 n

end

end A154446.P6032912318484547977

/-!
# A154447: Permutation of nonnegative integers induced by wreath recursion a=s(b,c), b=s(c,a), c=(c,c), starting from state b, rewriting bits from the second most significant bit toward the least significant end.

The programs for A154447, the canonical program `A154447.P11287601721097405753` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154447 has offset 0).

The definition of A154447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154447.P8238699514159477010

`A154441(A154440(n))`
-/

namespace A154447.P8238699514159477010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154441 (A154440 n).toNat

end

end A154447.P8238699514159477010

namespace A154447

/-- `A154441(A154440(n))` -/
def P8238699514159477010.Spec : Prop :=
  ∀ n, P8238699514159477010.a n = A154447 n

end A154447

/-! ## A154447.P5432863145360906478

`A154443(A154446(n))`
-/

namespace A154447.P5432863145360906478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154443 (A154446 n).toNat

end

end A154447.P5432863145360906478

namespace A154447

/-- `A154443(A154446(n))` -/
def P5432863145360906478.Spec : Prop :=
  ∀ n, P5432863145360906478.a n = A154447 n

end A154447

/-! ## A154447.P17803998341182307531

`A154440(n)+A154446(n)-n`
-/

namespace A154447.P17803998341182307531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154440 n + (A154446 n - (n : ℤ))

end

end A154447.P17803998341182307531

namespace A154447

/-- `A154440(n)+A154446(n)-n` -/
def P17803998341182307531.Spec : Prop :=
  ∀ n, P17803998341182307531.a n = A154447 n

end A154447

/-! ## A154447.P11287601721097405753

`A092569(A154448(A092569(n)))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A154447

/-- `A092569(A154448(A092569(n)))` -/
def P11287601721097405753.Spec : Prop :=
  ∀ n, P11287601721097405753.a n = A154447 n

theorem P11287601721097405753.correct : P11287601721097405753.Spec := by
  intro n
  simp only [A154447]

end A154447

/-! ## A154447.P2389002480780158675

`A154440(n)-(A154440(A154439(n))-A154446(n))`
-/

namespace A154447.P2389002480780158675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154440 n - (A154440 (A154439 n).toNat - A154446 n)

end

end A154447.P2389002480780158675

namespace A154447

/-- `A154440(n)-(A154440(A154439(n))-A154446(n))` -/
def P2389002480780158675.Spec : Prop :=
  ∀ n, P2389002480780158675.a n = A154447 n

end A154447

/-! ## A154447.P10987288888945649485

`A154445(A154440(n))-(A154445(n)-A154446(n))`
-/

namespace A154447.P10987288888945649485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154445 (A154440 n).toNat - (A154445 n - A154446 n)

end

end A154447.P10987288888945649485

namespace A154447

/-- `A154445(A154440(n))-(A154445(n)-A154446(n))` -/
def P10987288888945649485.Spec : Prop :=
  ∀ n, P10987288888945649485.a n = A154447 n

end A154447

/-! ## A154447.P4766330416309044988

`A154441(A153141(A154446(A154442(A154441(n)))))`
-/

namespace A154447.P4766330416309044988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154441 (A153141 (A154446 (A154442 (A154441 n).toNat).toNat).toNat).toNat

end

end A154447.P4766330416309044988

namespace A154447

/-- `A154441(A153141(A154446(A154442(A154441(n)))))` -/
def P4766330416309044988.Spec : Prop :=
  ∀ n, P4766330416309044988.a n = A154447 n

end A154447

/-! ## A154447.P1897868718026842083

`A154441(A153141(A154446(A154446(A154445(n)))))`
-/

namespace A154447.P1897868718026842083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154441 (A153141 (A154446 (A154446 (A154445 n).toNat).toNat).toNat).toNat

end

end A154447.P1897868718026842083

namespace A154447

/-- `A154441(A153141(A154446(A154446(A154445(n)))))` -/
def P1897868718026842083.Spec : Prop :=
  ∀ n, P1897868718026842083.a n = A154447 n

end A154447

/-! ## A154447.P8002208456380792139

`A233279(A154436(A153141(A233279(A154436(n)))))`
-/

namespace A154447.P8002208456380792139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A154436 (A153141 (A233279 (A154436 n).toNat).toNat).toNat).toNat

end

end A154447.P8002208456380792139

namespace A154447

/-- `A233279(A154436(A153141(A233279(A154436(n)))))` -/
def P8002208456380792139.Spec : Prop :=
  ∀ n, P8002208456380792139.a n = A154447 n

end A154447

/-! ## A154447.P13947205291270272141

`A165199(A153141(A165199(n)))`
-/

namespace A154447.P13947205291270272141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A153141 (A165199 n).toNat).toNat

end

end A154447.P13947205291270272141

namespace A154447

/-- `A165199(A153141(A165199(n)))` -/
def P13947205291270272141.Spec : Prop :=
  ∀ n, P13947205291270272141.a n = A154447 n

end A154447

/-! ## A154447.P9690624426853530439

`A053645(A154448(A154448(A080542(2*n+1))))`
-/

namespace A154447.P9690624426853530439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A154448 (A154448 (A080542 (2 * n + 1)).toNat).toNat).toNat

end

end A154447.P9690624426853530439

namespace A154447

/-- `A053645(A154448(A154448(A080542(2*n+1))))` -/
def P9690624426853530439.Spec : Prop :=
  ∀ n, P9690624426853530439.a n = A154447 n

end A154447

/-!
# A154448: Permutation of nonnegative integers induced by wreath recursion a=s(b,c), b=s(c,a), c=(c,c), starting from state a, rewriting bits from the second most significant bit toward the least significant end.

The programs for A154448, the canonical program `A154448.P8908131328963230006` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154448 has offset 0).

The definition of A154448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154448.P8727881427850709796

`A154439(A154442(n))`
-/

namespace A154448.P8727881427850709796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 (A154442 n).toNat

end

end A154448.P8727881427850709796

namespace A154448

/-- `A154439(A154442(n))` -/
def P8727881427850709796.Spec : Prop :=
  ∀ n, P8727881427850709796.a n = A154448 n

end A154448

/-! ## A154448.P9919290622446583869

`A154445(A154444(n))`
-/

namespace A154448.P9919290622446583869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154445 (A154444 n).toNat

end

end A154448.P9919290622446583869

namespace A154448

/-- `A154445(A154444(n))` -/
def P9919290622446583869.Spec : Prop :=
  ∀ n, P9919290622446583869.a n = A154448 n

end A154448

/-! ## A154448.P17535343297579462708

`A154442(n)+A154444(n)-n`
-/

namespace A154448.P17535343297579462708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154442 n + (A154444 n - (n : ℤ))

end

end A154448.P17535343297579462708

namespace A154448

/-- `A154442(n)+A154444(n)-n` -/
def P17535343297579462708.Spec : Prop :=
  ∀ n, P17535343297579462708.a n = A154448 n

end A154448

/-! ## A154448.P8908131328963230006

`xor(A004526(n), A153142(A003188(n)))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A154448

/-- `xor(A004526(n), A153142(A003188(n)))` -/
def P8908131328963230006.Spec : Prop :=
  ∀ n, P8908131328963230006.a n = A154448 n

theorem P8908131328963230006.correct : P8908131328963230006.Spec := by
  intro n
  simp only [A154448]

end A154448

/-! ## A154448.P5318239045713946292

`A154442(n)-(A153142(n)-A153142(A154444(n)))`
-/

namespace A154448.P5318239045713946292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154442 n - (A153142 n - A153142 (A154444 n).toNat)

end

end A154448.P5318239045713946292

namespace A154448

/-- `A154442(n)-(A153142(n)-A153142(A154444(n)))` -/
def P5318239045713946292.Spec : Prop :=
  ∀ n, P5318239045713946292.a n = A154448 n

end A154448

/-! ## A154448.P11603517652906333965

`A154442(n)-(A154441(n)-A154441(A154444(n)))`
-/

namespace A154448.P11603517652906333965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154442 n - (A154441 n - A154441 (A154444 n).toNat)

end

end A154448.P11603517652906333965

namespace A154448

/-- `A154442(n)-(A154441(n)-A154441(A154444(n)))` -/
def P11603517652906333965.Spec : Prop :=
  ∀ n, P11603517652906333965.a n = A154448 n

end A154448

/-! ## A154448.P6780375440002129205

`A154445(A153142(A154442(A153142(A153141(n)))))`
-/

namespace A154448.P6780375440002129205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154445 (A153142 (A154442 (A153142 (A153141 n).toNat).toNat).toNat).toNat

end

end A154448.P6780375440002129205

namespace A154448

/-- `A154445(A153142(A154442(A153142(A153141(n)))))` -/
def P6780375440002129205.Spec : Prop :=
  ∀ n, P6780375440002129205.a n = A154448 n

end A154448

/-! ## A154448.P1755658460477244313

`A165199(A153142(A165199(n)))`
-/

namespace A154448.P1755658460477244313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A153142 (A165199 n).toNat).toNat

end

end A154448.P1755658460477244313

namespace A154448

/-- `A165199(A153142(A165199(n)))` -/
def P1755658460477244313.Spec : Prop :=
  ∀ n, P1755658460477244313.a n = A154448 n

end A154448

/-!
# A154449: Signature permutation of a Catalan bijection induced by generator "a" of the rightward recursing instance of Basilica group wreath recursion: a = (1,b), b = s(1,a).

The programs for A154449, there is no canonical definition to state claims against.
-/

/-! ## A154449.P9660419560617441009

`A154458(A154451(n))`
-/

namespace A154449.P9660419560617441009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154458 (A154451 n).toNat

end

end A154449.P9660419560617441009

/-! ## A154449.P15904748721453905618

`A057163(A154453(A057163(n)))`
-/

namespace A154449.P15904748721453905618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A154453 (A057163 n).toNat).toNat

end

end A154449.P15904748721453905618

/-! ## A154449.P17067323366863668897

`A089850(A154450(A089850(n)))`
-/

namespace A154449.P17067323366863668897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A154450 (A089850 n).toNat).toNat

end

end A154449.P17067323366863668897

/-!
# A154450: Signature permutation of a Catalan bijection: The inverse of A154449.

The programs for A154450, there is no canonical definition to state claims against.
-/

/-! ## A154450.P11368482874575537713

`A069767(A154456(n))`
-/

namespace A154450.P11368482874575537713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A154456 n).toNat

end

end A154450.P11368482874575537713

/-! ## A154450.P10572923905223769304

`A154452(A154457(n))`
-/

namespace A154450.P10572923905223769304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154452 (A154457 n).toNat

end

end A154450.P10572923905223769304

/-! ## A154450.P7165574208975026178

`A057163(A154454(A057163(n)))`
-/

namespace A154450.P7165574208975026178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A154454 (A057163 n).toNat).toNat

end

end A154450.P7165574208975026178

/-! ## A154450.P4706434877685535456

`A073288(A082347(A154456(A082347(A082348(n)))))`
-/

namespace A154450.P4706434877685535456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073288 (A082347 (A154456 (A082347 (A082348 n).toNat).toNat).toNat).toNat

end

end A154450.P4706434877685535456

/-! ## A154450.P2910882918713122118

`A154449(A154449(A154449(n))%A218206(n+1))`
-/

namespace A154450.P2910882918713122118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154449 (Int.tmod (A154449 (A154449 n).toNat) (A218206 (n + 1))).toNat

end

end A154450.P2910882918713122118

/-! ## A154450.P2152990389472813929

`A069767(A129611(n))+A000038(A237122(n+1))`
-/

namespace A154450.P2152990389472813929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A129611 n).toNat + A000038 (A237122 (n + 1)).toNat

end

end A154450.P2152990389472813929

/-! ## A154450.P6080283826326944629

`A089850(A154449(A089850(n)))`
-/

namespace A154450.P6080283826326944629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089850 (A154449 (A089850 n).toNat).toNat

end

end A154450.P6080283826326944629

/-! ## A154450.P9114103619088565947

`A069767(A129612(A122327(A122327(n))))`
-/

namespace A154450.P9114103619088565947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A129612 (A122327 (A122327 n).toNat).toNat).toNat

end

end A154450.P9114103619088565947

/-!
# A154451: Signature permutation of a Catalan bijection induced by generator "b" of the rightward recursing instance of Basilica group wreath recursion: a = (1,b), b = s(1,a).

The programs for A154451, there is no canonical definition to state claims against.
-/

/-! ## A154451.P15047152835337783513

`A154453(A069768(n))`
-/

namespace A154451.P15047152835337783513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154453 (A069768 n).toNat

end

end A154451.P15047152835337783513

/-! ## A154451.P7345538023415319760

`A154457(A154449(n))`
-/

namespace A154451.P7345538023415319760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154457 (A154449 n).toNat

end

end A154451.P7345538023415319760

/-! ## A154451.P16393004356501931407

`A089854(A129611(A089850(n)))`
-/

namespace A154451.P16393004356501931407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (A129611 (A089850 n).toNat).toNat

end

end A154451.P16393004356501931407

/-! ## A154451.P3749236953355438870

`A089859(A129612(A089859(n)))`
-/

namespace A154451.P3749236953355438870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089859 (A129612 (A089859 n).toNat).toNat

end

end A154451.P3749236953355438870

/-! ## A154451.P14800111644323901125

`A089864(A129611(A089864(n)))`
-/

namespace A154451.P14800111644323901125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089864 (A129611 (A089864 n).toNat).toNat

end

end A154451.P14800111644323901125

/-! ## A154451.P12843098379434697229

`A089863(A154452(A089863(n)))`
-/

namespace A154451.P12843098379434697229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089863 (A154452 (A089863 n).toNat).toNat

end

end A154451.P12843098379434697229

/-! ## A154451.P8617301912022774421

`A089859(A123503(A089859(A074679(n))))`
-/

namespace A154451.P8617301912022774421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089859 (A123503 (A089859 (A074679 n).toNat).toNat).toNat

end

end A154451.P8617301912022774421

/-!
# A154452: Signature permutation of a Catalan bijection: The inverse of A154451.

The programs for A154452, there is no canonical definition to state claims against.
-/

/-! ## A154452.P17304690386499436076

`A069767(A154454(n))`
-/

namespace A154452.P17304690386499436076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A154454 n).toNat

end

end A154452.P17304690386499436076

/-! ## A154452.P13641067927641072258

`A154450(A154458(n))`
-/

namespace A154452.P13641067927641072258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154450 (A154458 n).toNat

end

end A154452.P13641067927641072258

/-! ## A154452.P12884539838191414869

`A057163(A154456(A057163(n)))`
-/

namespace A154452.P12884539838191414869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A154456 (A057163 n).toNat).toNat

end

end A154452.P12884539838191414869

/-! ## A154452.P9462840648389239192

`A069767(A089854(A154453(A089854(n))))`
-/

namespace A154452.P9462840648389239192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (A089854 (A154453 (A089854 n).toNat).toNat).toNat

end

end A154452.P9462840648389239192

/-! ## A154452.P4202669615550917115

`A089863(A129611(A089863(n)))`
-/

namespace A154452.P4202669615550917115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089863 (A129611 (A089863 n).toNat).toNat

end

end A154452.P4202669615550917115

/-! ## A154452.P6358062381016442861

`A089863(A154456(A089863(2*n-n)))`
-/

namespace A154452.P6358062381016442861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089863 (A154456 (A089863 (2 * n - n)).toNat).toNat

end

end A154452.P6358062381016442861

/-! ## A154452.P14751526111666064281

`A089864(A129612(A089864(n)))`
-/

namespace A154452.P14751526111666064281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089864 (A129612 (A089864 n).toNat).toNat

end

end A154452.P14751526111666064281

/-!
# A154453: Signature permutation of a Catalan bijection induced by generator "a" of the leftward recursing instance of Basilica group wreath recursion: a = (b,1), b = s(a,1).

The programs for A154453, there is no canonical definition to state claims against.
-/

/-! ## A154453.P11459329856897074101

`A154451(A069767(n))`
-/

namespace A154453.P11459329856897074101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154451 (A069767 n).toNat

end

end A154453.P11459329856897074101

/-! ## A154453.P10160127234337831757

`A057163(A154449(A057163(n)))`
-/

namespace A154453.P10160127234337831757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A154449 (A057163 n).toNat).toNat

end

end A154453.P10160127234337831757

/-! ## A154453.P95921482629554861

`A154457(A129612(n))%A257926(n+6)`
-/

namespace A154453.P95921482629554861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154457 (A129612 n).toNat) (A257926 (n + 6))

end

end A154453.P95921482629554861

/-! ## A154453.P6596783167858697912

`A154457(A129612(n))+A002262(A000217(n))`
-/

namespace A154453.P6596783167858697912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154457 (A129612 n).toNat + A002262 (A000217 n).toNat

end

end A154453.P6596783167858697912

/-! ## A154453.P12109194674262867379

`A154457(A129612(n))%A000040(A137688(n))`
-/

namespace A154453.P12109194674262867379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154457 (A129612 n).toNat) (A000040 (A137688 n).toNat)

end

end A154453.P12109194674262867379

/-!
# A154454: Signature permutation of a Catalan bijection: The inverse of A154453.

The programs for A154454, there is no canonical definition to state claims against.
-/

/-! ## A154454.P1304034505769239980

`A069768(A154452(n))`
-/

namespace A154454.P1304034505769239980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A154452 n).toNat

end

end A154454.P1304034505769239980

/-! ## A154454.P10454221642870030814

`A154456(A154458(n))`
-/

namespace A154454.P10454221642870030814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154456 (A154458 n).toNat

end

end A154454.P10454221642870030814

/-! ## A154454.P12468366015865932993

`A057163(A154450(A057163(n)))`
-/

namespace A154454.P12468366015865932993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A154450 (A057163 n).toNat).toNat

end

end A154454.P12468366015865932993

/-! ## A154454.P7014206619804296810

`A129611(A154458(n))%A114805(n)²`
-/

namespace A154454.P7014206619804296810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129611 (A154458 n).toNat) (A114805 n ^ 2)

end

end A154454.P7014206619804296810

/-! ## A154454.P17672222453658589892

`A010054(C(n, 2))*A129611(A154458(n))`
-/

namespace A154454.P17672222453658589892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Nat.choose n 2) * A129611 (A154458 n).toNat

end

end A154454.P17672222453658589892

/-! ## A154454.P1222866425993412050

`A040001(A002061(n))*A129611(A154458(n))`
-/

namespace A154454.P1222866425993412050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A002061 n).toNat * A129611 (A154458 n).toNat

end

end A154454.P1222866425993412050

/-! ## A154454.P7467801617516668046

`A010054(∑[n])*A129611(A154458(n))`
-/

namespace A154454.P7467801617516668046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (∑ j ∈ Finset.range (n + 1), f1 j) * A129611 (A154458 n).toNat

end

end A154454.P7467801617516668046

/-! ## A154454.P8386779150993474006

`A160086(A103335(n+1))+A129611(A154458(n))`
-/

namespace A154454.P8386779150993474006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 (A103335 (n + 1)).toNat + A129611 (A154458 n).toNat

end

end A154454.P8386779150993474006

/-! ## A154454.P16067788329705525880

`A349139(A023250(n+1))+A129611(A154458(n))`
-/

namespace A154454.P16067788329705525880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349139 (A023250 (n + 1)).toNat + A129611 (A154458 n).toNat

end

end A154454.P16067788329705525880

/-! ## A154454.P1918831554546528676

`A271102(A167499(n))+A129611(A154458(n))`
-/

namespace A154454.P1918831554546528676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271102 (A167499 n).toNat + A129611 (A154458 n).toNat

end

end A154454.P1918831554546528676

/-!
# A154455: 

The programs for A154455, there is no canonical definition to state claims against.
-/

/-! ## A154455.P14748276328062693353

`A154449(A069767(n))`
-/

namespace A154455.P14748276328062693353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154449 (A069767 n).toNat

end

end A154455.P14748276328062693353

/-! ## A154455.P599385345041099810

`A154458(A154453(n))`
-/

namespace A154455.P599385345041099810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154458 (A154453 n).toNat

end

end A154455.P599385345041099810

/-! ## A154455.P2631269611685040437

`A057163(A154451(A057163(n)))`
-/

namespace A154455.P2631269611685040437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A154451 (A057163 n).toNat).toNat

end

end A154455.P2631269611685040437

/-! ## A154455.P4993643147533537208

`A129612(n)%A321726(∑[n+3]-2)`
-/

namespace A154455.P4993643147533537208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129612 n) (A321726 (∑ j ∈ Finset.range (n + 1), f1 j - 2))

end

end A154455.P4993643147533537208

/-! ## A154455.P14041917138537700587

`A129612(n)%A216363(A069770(n+2))`
-/

namespace A154455.P14041917138537700587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129612 n) (A216363 (A069770 (n + 2)).toNat)

end

end A154455.P14041917138537700587

/-! ## A154455.P5692110849903284111

`A071625(A005382(n+1))*A129612(n)`
-/

namespace A154455.P5692110849903284111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A005382 (n + 1)).toNat * A129612 n

end

end A154455.P5692110849903284111

/-! ## A154455.P4056813653510150625

`A129612(n)+A125005(A027748(n+1))`
-/

namespace A154455.P4056813653510150625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129612 n + A125005 (A027748 (n + 1)).toNat

end

end A154455.P4056813653510150625

/-! ## A154455.P6633728676097930134

`A129612(n)%A002351(n)`
-/

namespace A154455.P6633728676097930134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129612 n) (A002351 n)

end

end A154455.P6633728676097930134

/-! ## A154455.P4791764255622533202

`A349379(A030459(n+1))+A129612(n)`
-/

namespace A154455.P4791764255622533202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349379 (A030459 (n + 1)).toNat + A129612 n

end

end A154455.P4791764255622533202

/-! ## A154455.P483618378851277817

`A364251(A056084(n+1))+A129612(n)`
-/

namespace A154455.P483618378851277817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364251 (A056084 (n + 1)).toNat + A129612 n

end

end A154455.P483618378851277817

/-! ## A154455.P5787346035296410623

`A129612(and(n, A262866(n)))`
-/

namespace A154455.P5787346035296410623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129612 (Int.land (n : ℤ) (A262866 n)).toNat

end

end A154455.P5787346035296410623

/-! ## A154455.P6585744463249528389

`A129612(and(n, A024036(n)))`
-/

namespace A154455.P6585744463249528389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129612 (Int.land (n : ℤ) (A024036 n)).toNat

end

end A154455.P6585744463249528389

/-! ## A154455.P4890056042662925760

`A129612(and(n, A099393(n)))`
-/

namespace A154455.P4890056042662925760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129612 (Int.land (n : ℤ) (A099393 n)).toNat

end

end A154455.P4890056042662925760

/-! ## A154455.P8453887146766670843

`A129612(and(n, A103454(n)))`
-/

namespace A154455.P8453887146766670843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129612 (Int.land (n : ℤ) (A103454 n)).toNat

end

end A154455.P8453887146766670843

/-! ## A154455.P43741669624657880

`A129612(and(n, A156589(n)))`
-/

namespace A154455.P43741669624657880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129612 (Int.land (n : ℤ) (A156589 n)).toNat

end

end A154455.P43741669624657880

/-! ## A154455.P8527531368221509505

`A129612(and(n, A263806(n)))`
-/

namespace A154455.P8527531368221509505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129612 (Int.land (n : ℤ) (A263806 n)).toNat

end

end A154455.P8527531368221509505

/-! ## A154455.P11548011015352519466

`A129612(and(n, A267614(n)))`
-/

namespace A154455.P11548011015352519466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129612 (Int.land (n : ℤ) (A267614 n)).toNat

end

end A154455.P11548011015352519466

/-! ## A154455.P14999945966826408056

`A129612(and(n, A083420(n)))`
-/

namespace A154455.P14999945966826408056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129612 (Int.land (n : ℤ) (A083420 n)).toNat

end

end A154455.P14999945966826408056

/-! ## A154455.P12932726520210128252

`A129612(and(n, A129868(n)))`
-/

namespace A154455.P12932726520210128252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129612 (Int.land (n : ℤ) (A129868 n)).toNat

end

end A154455.P12932726520210128252

/-! ## A154455.P731587559471414644

`A129612(and(n, A186942(n)))`
-/

namespace A154455.P731587559471414644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129612 (Int.land (n : ℤ) (A186942 n)).toNat

end

end A154455.P731587559471414644

/-!
# A154456: Signature permutation of a Catalan bijection: The inverse of A154455.

The programs for A154456, there is no canonical definition to state claims against.
-/

/-! ## A154456.P8835003074062826145

`A069768(A154450(n))`
-/

namespace A154456.P8835003074062826145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069768 (A154450 n).toNat

end

end A154456.P8835003074062826145

/-! ## A154456.P9716535295295937924

`A154454(A154457(n))`
-/

namespace A154456.P9716535295295937924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154454 (A154457 n).toNat

end

end A154456.P9716535295295937924

/-! ## A154456.P11926017383899047425

`A057163(A154452(A057163(n)))`
-/

namespace A154456.P11926017383899047425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A154452 (A057163 n).toNat).toNat

end

end A154456.P11926017383899047425

/-! ## A154456.P13065345341102782798

`A129611(n)%A245542(A005893(n))`
-/

namespace A154456.P13065345341102782798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129611 n) (A245542 (A005893 n).toNat)

end

end A154456.P13065345341102782798

/-! ## A154456.P14405401687179820935

`A347440(A265668(n+1))+A129611(n)`
-/

namespace A154456.P14405401687179820935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347440 (A265668 (n + 1)).toNat + A129611 n

end

end A154456.P14405401687179820935

/-! ## A154456.P2889343337049185871

`A129611(n)+A000007(A024670(2*(n+2)))`
-/

namespace A154456.P2889343337049185871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129611 n + A000007 (A024670 (2 * (n + 2))).toNat

end

end A154456.P2889343337049185871

/-! ## A154456.P16184319299577267743

`A129611(n)+A034188(A107288(2*(n+1)))`
-/

namespace A154456.P16184319299577267743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129611 n + A034188 (A107288 (2 * (n + 1))).toNat

end

end A154456.P16184319299577267743

/-! ## A154456.P8771541975089797877

`A129611(n)+A000007(A003238(n+1))`
-/

namespace A154456.P8771541975089797877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129611 n + A000007 (A003238 (n + 1)).toNat

end

end A154456.P8771541975089797877

/-! ## A154456.P15601143476663992290

`A019425(A068336(n+1))*A129611(n)`
-/

namespace A154456.P15601143476663992290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A068336 (n + 1)).toNat * A129611 n

end

end A154456.P15601143476663992290

/-! ## A154456.P18076574656001973720

`A129611(A089854(A089854(n)))`
-/

namespace A154456.P18076574656001973720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129611 (A089854 (A089854 n).toNat).toNat

end

end A154456.P18076574656001973720

/-!
# A154457: Signature-permutation of a Catalan bijection induced by wreath recursion a=s(b,c), b=s(c,a), c=(c,c), starting from state b.

The programs for A154457, there is no canonical definition to state claims against.
-/

/-! ## A154457.P3830994154781129520

`A154451(A154450(n))`
-/

namespace A154457.P3830994154781129520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154451 (A154450 n).toNat

end

end A154457.P3830994154781129520

/-! ## A154457.P9075595993876684699

`A154453(A154456(n))`
-/

namespace A154457.P9075595993876684699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154453 (A154456 n).toNat

end

end A154457.P9075595993876684699

/-! ## A154457.P11581700925794808767

`A057163(A154458(A057163(n)))`
-/

namespace A154457.P11581700925794808767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A154458 (A057163 n).toNat).toNat

end

end A154457.P11581700925794808767

/-! ## A154457.P6053376569025333298

`A154453(A129611(n)%A051013(n))`
-/

namespace A154457.P6053376569025333298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154453 (Int.tmod (A129611 n) (A051013 n)).toNat

end

end A154457.P6053376569025333298

/-! ## A154457.P8841796394591427655

`A069770(A089850(A130342(A089850(n))))`
-/

namespace A154457.P8841796394591427655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A089850 (A130342 (A089850 n).toNat).toNat).toNat

end

end A154457.P8841796394591427655

/-! ## A154457.P13134056777806817166

`A089859(A130342(A089850(n)))`
-/

namespace A154457.P13134056777806817166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089859 (A130342 (A089850 n).toNat).toNat

end

end A154457.P13134056777806817166

/-! ## A154457.P16067749783758315329

`A154453(A129612(A122327(A122327(n))))`
-/

namespace A154457.P16067749783758315329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154453 (A129612 (A122327 (A122327 n).toNat).toNat).toNat

end

end A154457.P16067749783758315329

/-!
# A154458: Signature-permutation of a Catalan bijection induced by wreath recursion a=s(b,c), b=s(c,a), c=(c,c), starting from state a.

The programs for A154458, there is no canonical definition to state claims against.
-/

/-! ## A154458.P6785947930548023695

`A154449(A154452(n))`
-/

namespace A154458.P6785947930548023695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154449 (A154452 n).toNat

end

end A154458.P6785947930548023695

/-! ## A154458.P11467770373926082501

`A057163(A154457(A057163(n)))`
-/

namespace A154458.P11467770373926082501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057163 (A154457 (A057163 n).toNat).toNat

end

end A154458.P11467770373926082501

/-! ## A154458.P14392372446371768016

`A129612(A154454(n))%A201878(n+1)`
-/

namespace A154458.P14392372446371768016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129612 (A154454 n).toNat) (A201878 (n + 1))

end

end A154458.P14392372446371768016

/-! ## A154458.P2508326320263416711

`A129612(A154454(n))%A297469(A131179(n))`
-/

namespace A154458.P2508326320263416711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129612 (A154454 n).toNat) (A297469 (A131179 n).toNat)

end

end A154458.P2508326320263416711

/-! ## A154458.P9048724236945440906

`A129612(A154454(n))+A000038(∑[n+1]+2)`
-/

namespace A154458.P9048724236945440906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129612 (A154454 n).toNat + A000038 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A154458.P9048724236945440906

/-! ## A154458.P8265674798831363350

`A069770(A122282(A073286(A122282(n))))`
-/

namespace A154458.P8265674798831363350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (A122282 (A073286 (A122282 n).toNat).toNat).toNat

end

end A154458.P8265674798831363350

/-! ## A154458.P12153283211243094999

`A122327(A154453(A154456(A122327(n))))`
-/

namespace A154458.P12153283211243094999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122327 (A154453 (A154456 (A122327 n).toNat).toNat).toNat

end

end A154458.P12153283211243094999

/-!
# A154462: Decimal expansion of log_2 (14).

The programs for A154462, there is no canonical definition to state claims against.
-/

/-! ## A154462.P5948999855028755078

`or(C(2, n+2), A020860(n))`
-/

namespace A154462.P5948999855028755078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 (n + 2) : ℤ) (A020860 (n + 1))

end

end A154462.P5948999855028755078

/-! ## A154462.P10829558497333115805

`A020860(n)+A000007(n)`
-/

namespace A154462.P10829558497333115805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020860 (n + 1) + A000007 n

end

end A154462.P10829558497333115805

/-! ## A154462.P3162692891628752895

`A020859(n)+A020860(n)-A020857(n)`
-/

namespace A154462.P3162692891628752895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020859 (n + 1) + (A020860 (n + 1) - A020857 (n + 1))

end

end A154462.P3162692891628752895

/-! ## A154462.P14841799055423845172

`A020860(n)+A020862(n)-A020858(n)`
-/

namespace A154462.P14841799055423845172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020860 (n + 1) + (A020862 (n + 1) - A020858 (n + 1))

end

end A154462.P14841799055423845172

/-! ## A154462.P4279920263168271450

`A020860(n)+A020864(n)-A020859(n)`
-/

namespace A154462.P4279920263168271450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020860 (n + 1) + (A020864 (n + 1) - A020859 (n + 1))

end

end A154462.P4279920263168271450

/-! ## A154462.P5120076494536396464

`or(A155921(n)-A020857(n), A020860(n))`
-/

namespace A154462.P5120076494536396464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155921 (n + 1) - A020857 (n + 1)) (A020860 (n + 1))

end

end A154462.P5120076494536396464

/-!
# A154464: Decimal expansion of log_4 (14).

The programs for A154464, there is no canonical definition to state claims against.
-/

/-! ## A154464.P502623916079331100

`A153615(n)+A154155(n)-A153201(n)`
-/

namespace A154464.P502623916079331100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153615 (n + 1) + (A154155 (n + 1) - A153201 (n + 1))

end

end A154464.P502623916079331100

/-! ## A154464.P7973018059570317112

`A153615(n)+A154197(n)-A153460(n)`
-/

namespace A154464.P7973018059570317112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153615 (n + 1) + (A154197 (n + 1) - A153460 (n + 1))

end

end A154464.P7973018059570317112

/-!
# A154470: Rewriting function for Wolfram's e[x_][y_] -> x[x[y]] symbolic system transformation, implemented on nihilistic S-expressions (parenthesizations) encoded by A014486.

The programs for A154470, there is no canonical definition to state claims against.
-/

/-! ## A154470.P17547681109706982160

`floor(A062504(n)/A223066(n+1))+n`
-/

namespace A154470.P17547681109706982160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062504 n : ℚ) / (A223066 (n + 1) : ℚ)⌋ + (n : ℤ)

end

end A154470.P17547681109706982160

/-! ## A154470.P8375156907675197604

`A061853(A353842(n+1)+A014574(n+1))+n`
-/

namespace A154470.P8375156907675197604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061853 (A353842 (n + 1) + A014574 (n + 1)).toNat + (n : ℤ)

end

end A154470.P8375156907675197604

/-! ## A154470.P3819209961228601843

`A348945(A196416(∑{p}[n, #])+1)+n`
-/

namespace A154470.P3819209961228601843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348945 (A196416 (∑ p ∈ Nat.primeFactors (f1 n), p) + 1).toNat + (n : ℤ)

end

end A154470.P3819209961228601843

/-! ## A154470.P8896815979314308104

`A322977(A322702(A323157(n+1)))+n`
-/

namespace A154470.P8896815979314308104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322977 (A322702 (A323157 (n + 1)).toNat).toNat + (n : ℤ)

end

end A154470.P8896815979314308104

/-! ## A154470.P4882636894695509043

`C(A242498(n), A069609(3*n+5))+n`
-/

namespace A154470.P4882636894695509043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A242498 n).toNat (A069609 (3 * n + 5)).toNat + n

end

end A154470.P4882636894695509043

/-! ## A154470.P3100287599598347545

`floor(log2(A112868(n+1)/A038664(n+1)+1))+n`
-/

namespace A154470.P3100287599598347545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((A112868 (n + 1) : ℚ) / (A038664 (n + 1) : ℚ) + 1 : ℝ)⌋ + (n : ℤ)

end

end A154470.P3100287599598347545

/-! ## A154470.P11542937851069369126

`A335446(A062770(n+1))+n`
-/

namespace A154470.P11542937851069369126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A062770 (n + 1)).toNat + (n : ℤ)

end

end A154470.P11542937851069369126

/-! ## A154470.P3714269186361951120

`A339895(A253178(n+2))+n`
-/

namespace A154470.P3714269186361951120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339895 (A253178 (n + 2)).toNat + (n : ℤ)

end

end A154470.P3714269186361951120

/-! ## A154470.P10169816478532751651

`A007814(A141224(2*n+3))+n`
-/

namespace A154470.P10169816478532751651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A141224 (2 * n + 3)).toNat + (n : ℤ)

end

end A154470.P10169816478532751651

/-! ## A154470.P11807664211534192165

`A160086(A127708(n+3))+n`
-/

namespace A154470.P11807664211534192165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 (A127708 (n + 3)).toNat + (n : ℤ)

end

end A154470.P11807664211534192165

/-!
# A154473: a(n) = A014486(A154472(n)).

The programs for A154473, there is no canonical definition to state claims against.
-/

/-! ## A154473.P2385527760183051571

`A014486(A154472(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154473.P2385527760183051571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A154472 n).toNat

end

end A154473.P2385527760183051571

/-!
# A154474: a(n) = A007088(A154473(n)).

The programs for A154474, there is no canonical definition to state claims against.
-/

/-! ## A154474.P9492695200724881371

`A063171(A154472(n))`
-/

namespace A154474.P9492695200724881371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063171 (A154472 n).toNat

end

end A154474.P9492695200724881371

/-!
# A154475: Number of opening (equally: closing) brackets in each term of Wolfram's Symbolic Rewriting system A154473-A154474.

The programs for A154475, there is no canonical definition to state claims against.
-/

/-! ## A154475.P14759269233822561472

`A154476(n)-1`
-/

namespace A154475.P14759269233822561472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154476 n - 1

end

end A154475.P14759269233822561472

/-! ## A154475.P16009394212878037266

`A023443(A154476(n))`
-/

namespace A154475.P16009394212878037266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A154476 n).toNat

end

end A154475.P16009394212878037266

/-! ## A154475.P12609436815226425962

`A023444(A154476(n)+1)`
-/

namespace A154475.P12609436815226425962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A154476 n + 1).toNat

end

end A154475.P12609436815226425962

/-! ## A154475.P13113715204071641432

`A249738(2*A154476(n))`
-/

namespace A154475.P13113715204071641432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (2 * A154476 n).toNat

end

end A154475.P13113715204071641432

/-! ## A154475.P8317182277678760021

`A059169(4*A154476(n))`
-/

namespace A154475.P8317182277678760021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A154476 n).toNat

end

end A154475.P8317182277678760021

/-! ## A154475.P17496011866735075712

`A002024(C(A154476(n), 2))`
-/

namespace A154475.P17496011866735075712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Nat.choose (A154476 n).toNat 2)

end

end A154475.P17496011866735075712

/-! ## A154475.P5467293853055221813

`A003056(C(A154476(n), 2))`
-/

namespace A154475.P5467293853055221813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A154476 n).toNat 2)

end

end A154475.P5467293853055221813

/-! ## A154475.P1079147480248107735

`A007318(C(A154476(n), 2)+1)`
-/

namespace A154475.P1079147480248107735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (A154476 n).toNat 2 + 1)

end

end A154475.P1079147480248107735

/-! ## A154475.P815190440322903877

`A000027(A154476(n)+log2(1/2))`
-/

namespace A154475.P815190440322903877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A154476 n : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

end

end A154475.P815190440322903877

/-! ## A154475.P12360633462993696455

`∑{d}[A154476(n)+log2(1/2), A000010(#)]`
-/

namespace A154475.P12360633462993696455
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A154476 n : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A154475.P12360633462993696455

/-! ## A154475.P10138736123643142584

`∏{d}[A154476(n)+log2(1/2), A014963(#)]`
-/

namespace A154475.P10138736123643142584
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A154476 n : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A014963 d

end

end A154475.P10138736123643142584

/-! ## A154475.P7264683124275456864

`A000007(n+1)+A154476(n)+log2(1/2)`
-/

namespace A154475.P7264683124275456864
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℝ) + ((A154476 n : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ))

end

end A154475.P7264683124275456864

/-! ## A154475.P3356841514309236268

`(A154476(n)+log2(1/2))*A000034(2*n)`
-/

namespace A154475.P3356841514309236268
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A154476 n : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ)) * (A000034 (2 * n) : ℝ)

end

end A154475.P3356841514309236268

/-! ## A154475.P6459679425614679256

`(A154476(n)+log2(1/2))%A000040(n+6)`
-/

namespace A154475.P6459679425614679256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A154476 n : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A000040 (n + 6))

end

end A154475.P6459679425614679256

/-! ## A154475.P5892868320254016549

`(A154476(n)+log2(1/2))*A014963(6*(n+1))`
-/

namespace A154475.P5892868320254016549
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A154476 n : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ)) * (A014963 (6 * (n + 1)) : ℝ)

end

end A154475.P5892868320254016549

/-! ## A154475.P3530451146684827551

`(A154476(n)+log2(1/2))*gcd(2, A000040(n+2))`
-/

namespace A154475.P3530451146684827551
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A154476 n : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ)) * (Int.gcd 2 (A000040 (n + 2)) : ℝ)

end

end A154475.P3530451146684827551

/-! ## A154475.P8599094513115981103

`(A154476(n)+log2(1/2))/A000108(C(2, n+2))`
-/

namespace A154475.P8599094513115981103
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A154476 n : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ)) / (A000108 (Nat.choose 2 (n + 2)) : ℝ)

end

end A154475.P8599094513115981103

/-! ## A154475.P3919178848642729543

`A000720(p?[A008578(A154476(n))])`
-/

namespace A154475.P3919178848642729543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A154476 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154475.P3919178848642729543

/-! ## A154475.P11695857959522968840

`A055396(p?[A008578(A154476(n))])`
-/

namespace A154475.P11695857959522968840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A154476 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A154475.P11695857959522968840

/-!
# A154476: Number of e's in each iteration of Wolfram's e[x_][y_] -> x[x[y]] symbolic rewriting system, starting from the initial state e[e[e][e]][e][e].

The programs for A154476, there is no canonical definition to state claims against.
-/

/-! ## A154476.P1408410639617425099

`A154475(n)+1`
-/

namespace A154476.P1408410639617425099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154475 n + 1

end

end A154476.P1408410639617425099

/-! ## A154476.P15950371767549153115

`A020725(A154475(n))`
-/

namespace A154476.P15950371767549153115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A154475 n).toNat

end

end A154476.P15950371767549153115

/-! ## A154476.P572121669734366949

`A171463(A154475(n)-1)`
-/

namespace A154476.P572121669734366949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (A154475 n - 1).toNat

end

end A154476.P572121669734366949

/-! ## A154476.P15439739609664298382

`A008619(2*A154475(n))`
-/

namespace A154476.P15439739609664298382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A154475 n).toNat

end

end A154476.P15439739609664298382

/-! ## A154476.P17889899743222257723

`A028242(2*A154475(n))`
-/

namespace A154476.P17889899743222257723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A154475 n).toNat

end

end A154476.P17889899743222257723

/-! ## A154476.P187501045447922903

`A008611(3*A154475(n))`
-/

namespace A154476.P187501045447922903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A154475 n).toNat

end

end A154476.P187501045447922903

/-! ## A154476.P12877564371248195552

`A008620(3*A154475(n))`
-/

namespace A154476.P12877564371248195552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A154475 n).toNat

end

end A154476.P12877564371248195552

/-! ## A154476.P11849656252914682328

`A008624(4*A154475(n))`
-/

namespace A154476.P11849656252914682328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (4 * A154475 n).toNat

end

end A154476.P11849656252914682328

/-! ## A154476.P17027981685386395783

`A008612(6*A154475(n))`
-/

namespace A154476.P17027981685386395783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A154475 n).toNat

end

end A154476.P17027981685386395783

/-! ## A154476.P11475165834418646045

`1-A001057(2*A154475(n))`
-/

namespace A154476.P11475165834418646045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001057 (2 * A154475 n).toNat

end

end A154476.P11475165834418646045

/-! ## A154476.P1230580153101284679

`A001057(or(1, 2*A154475(n)))`
-/

namespace A154476.P1230580153101284679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.lor 1 (2 * A154475 n)).toNat

end

end A154476.P1230580153101284679

/-! ## A154476.P6096466433989384622

`A000027(A154475(n)-log2(1/2))`
-/

namespace A154476.P6096466433989384622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A154475 n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

end

end A154476.P6096466433989384622

/-! ## A154476.P7999683093467445070

`∑{d}[A154475(n)-log2(1/2), A000010(#)]`
-/

namespace A154476.P7999683093467445070
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A154475 n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A154476.P7999683093467445070

/-! ## A154476.P3814178515359242248

`(A154475(n)-log2(1/2))*A007318(C(2, n))`
-/

namespace A154476.P3814178515359242248
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A154475 n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)) * (A007318 (Nat.choose 2 n) : ℝ)

end

end A154476.P3814178515359242248

/-! ## A154476.P4116525649737354216

`A154475(n)-log2(1/2)-A000038(or(5, n))`
-/

namespace A154476.P4116525649737354216
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A154475 n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ) - (A000038 (Nat.lor 5 n) : ℝ)

end

end A154476.P4116525649737354216

/-! ## A154476.P11999911623909385668

`(A154475(n)-log2(1/2))*A007318(and(1, -n))`
-/

namespace A154476.P11999911623909385668
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A154475 n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)) * (A007318 (Int.land 1 (-(n : ℤ))).toNat : ℝ)

end

end A154476.P11999911623909385668

/-! ## A154476.P4873508883811032202

`(A154475(n)-log2(1/2))*A000041(C(n, n²))`
-/

namespace A154476.P4873508883811032202
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A154475 n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)) * (A000041 (Nat.choose n (n ^ 2)) : ℝ)

end

end A154476.P4873508883811032202

/-!
# A154477: a(n) = A153240(A080068(n)).

The programs for A154477, there is no canonical definition to state claims against.
-/

/-! ## A154477.P21624458392812243

`A165477(A351904(n+5))%A290807(n)`
-/

namespace A154477.P21624458392812243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165477 (A351904 (n + 5)).toNat) (A290807 n)

end

end A154477.P21624458392812243

/-!
# A154484: a(n+1)-+a(n) = prime, a(1)=0, a(2)=2.

The programs for A154484, there is no canonical definition to state claims against.
-/

/-! ## A154484.P2932913229647900841

`A087711(a(n-1))` with `a(0)=0`
-/

namespace A154484.P2932913229647900841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A087711 (a (n - 1)).toNat

end

end A154484.P2932913229647900841

/-! ## A154484.P2291542761727569935

`A020483(a(n-1))+a(n-1)` with `a(0)=0`
-/

namespace A154484.P2291542761727569935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A020483 (a (n - 1)).toNat + a (n - 1)

end

end A154484.P2291542761727569935

/-! ## A154484.P6656827282561339853

`A020484(a(n-1))-a(n-1)` with `a(0)=0`
-/

namespace A154484.P6656827282561339853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A020484 (a (n - 1)).toNat - a (n - 1)

end

end A154484.P6656827282561339853

/-! ## A154484.P9088510160058061240

`A054906(a(n-1))+a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A154484.P9088510160058061240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A054906 (a (n - 1)).toNat + a (n - 1)

end

end A154484.P9088510160058061240

/-! ## A154484.P15626911214060009016

`A154486(C(2, n+2)+n)+2*char[1]`
-/

namespace A154484.P15626911214060009016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154486 (Nat.choose 2 (n + 2) + n) + ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A154484.P15626911214060009016

/-! ## A154484.P16035555585206844307

`∪[A027655(n), A154486(n+1)]`
-/

namespace A154484.P16035555585206844307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A154484.P16035555585206844307

/-! ## A154484.P8110505495104752422

`∪[A034312(n), A154486(n+1)]`
-/

namespace A154484.P8110505495104752422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034312 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A154484.P8110505495104752422

/-! ## A154484.P16745763419634334444

`∪[A064837(n), A154486(n+1)]`
-/

namespace A154484.P16745763419634334444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064837 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A154484.P16745763419634334444

/-! ## A154484.P12667365009754050681

`∪[A080299(n), A154486(n+1)]`
-/

namespace A154484.P12667365009754050681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080299 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A154484.P12667365009754050681

/-! ## A154484.P5339904416683827586

`∪[A083939(n), A154486(n+1)]`
-/

namespace A154484.P5339904416683827586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083939 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A154484.P5339904416683827586

/-!
# A154485: a(n+1)-+a(n)=prime,a(1)=0,a(2)=3.

The programs for A154485, there is no canonical definition to state claims against.
-/

/-! ## A154485.P9574817083638687216

`A087711(a(n-1))` with `a(0)=0, a(1)=3`
-/

namespace A154485.P9574817083638687216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  A087711 (a (n - 1)).toNat

end

end A154485.P9574817083638687216

/-! ## A154485.P11904931477771758695

`A154486(n+1)-2*char[1]`
-/

namespace A154485.P11904931477771758695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154486 (n + 1) - ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A154485.P11904931477771758695

/-! ## A154485.P5178467475401788671

`A020483(a(n-1))+a(n-1)` with `a(0)=0, a(1)=3`
-/

namespace A154485.P5178467475401788671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  A020483 (a (n - 1)).toNat + a (n - 1)

end

end A154485.P5178467475401788671

/-! ## A154485.P3829699698839494807

`A054906(a(n-1))+a(n-1)` with `a(0)=0, a(1)=3`
-/

namespace A154485.P3829699698839494807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  A054906 (a (n - 1)).toNat + a (n - 1)

end

end A154485.P3829699698839494807

/-! ## A154485.P12902409117929745739

`A020484(a(n-1))-a(n-1)` with `a(0)=0, a(1)=3`
-/

namespace A154485.P12902409117929745739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  A020484 (a (n - 1)).toNat - a (n - 1)

end

end A154485.P12902409117929745739

/-! ## A154485.P2419785456088307403

`abs(A000122(n²+3)-A154486(n+1))`
-/

namespace A154485.P2419785456088307403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000122 (n ^ 2 + 3) - A154486 (n + 1)|

end

end A154485.P2419785456088307403

/-! ## A154485.P8929469955986384598

`A154484(n+2)-A000038(A003415(n))`
-/

namespace A154485.P8929469955986384598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154484 (n + 2) - A000038 (A003415 n).toNat

end

end A154485.P8929469955986384598

/-!
# A154486: a(n+1)-+a(n)=prime, a(1)=0,a(2)=5.

The programs for A154486, there is no canonical definition to state claims against.
-/

/-! ## A154486.P11943405994235785453

`A087711(a(n-1))` with `a(0)=0, a(1)=5`
-/

namespace A154486.P11943405994235785453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  A087711 (a (n - 1)).toNat

end

end A154486.P11943405994235785453

/-! ## A154486.P4769182221464931210

`A154485(n+1)+2*char[1]`
-/

namespace A154486.P4769182221464931210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154485 (n + 1) + ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A154486.P4769182221464931210

/-! ## A154486.P6425155639962578698

`A020483(a(n-1))+a(n-1)` with `a(0)=0, a(1)=5`
-/

namespace A154486.P6425155639962578698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  A020483 (a (n - 1)).toNat + a (n - 1)

end

end A154486.P6425155639962578698

/-! ## A154486.P5789763367522092199

`A054906(a(n-1))+a(n-1)` with `a(0)=0, a(1)=5`
-/

namespace A154486.P5789763367522092199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  A054906 (a (n - 1)).toNat + a (n - 1)

end

end A154486.P5789763367522092199

/-! ## A154486.P8418923635333599607

`A020484(a(n-1))-a(n-1)` with `a(0)=0, a(1)=5`
-/

namespace A154486.P8418923635333599607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  A020484 (a (n - 1)).toNat - a (n - 1)

end

end A154486.P8418923635333599607

/-! ## A154486.P11520477893536450308

`A154484(A065475(n+1))`
-/

namespace A154486.P11520477893536450308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154484 (A065475 (n + 1)).toNat

end

end A154486.P11520477893536450308

/-! ## A154486.P3458614514167944432

`A154484(A181440(n+2))`
-/

namespace A154486.P3458614514167944432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154484 (A181440 (n + 2)).toNat

end

end A154486.P3458614514167944432

/-! ## A154486.P3256975659375094631

`A154484(A184985(n+2))`
-/

namespace A154486.P3256975659375094631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154484 (A184985 (n + 2)).toNat

end

end A154486.P3256975659375094631

/-! ## A154486.P9630822210989857307

`A154484(n+2)-A000038(n)`
-/

namespace A154486.P9630822210989857307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154484 (n + 2) - A000038 n

end

end A154486.P9630822210989857307

/-! ## A154486.P10747576442729040456

`A198442(C(2, n)+1)+A154485(n+1)`
-/

namespace A154486.P10747576442729040456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (Nat.choose 2 n + 1) + A154485 (n + 1)

end

end A154486.P10747576442729040456

/-!
# A154487: a(n+1)-+a(n)=prime, a(1)=0,a(2)=7.

The programs for A154487, there is no canonical definition to state claims against.
-/

/-! ## A154487.P10021479759203392427

`A087711(a(n-1))` with `a(0)=0, a(1)=7`
-/

namespace A154487.P10021479759203392427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n a =>
  A087711 (a (n - 1)).toNat

end

end A154487.P10021479759203392427

/-! ## A154487.P7216247756447276367

`A090955(n+2)%(n+2)²`
-/

namespace A154487.P7216247756447276367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090955 (n + 2)) ((n + 2) ^ 2 : ℤ)

end

end A154487.P7216247756447276367

/-! ## A154487.P8922927101130623034

`A020483(a(n-1))+a(n-1)` with `a(0)=0, a(1)=7`
-/

namespace A154487.P8922927101130623034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n a =>
  A020483 (a (n - 1)).toNat + a (n - 1)

end

end A154487.P8922927101130623034

/-! ## A154487.P18091803031268329349

`A054906(a(n-1))+a(n-1)` with `a(0)=0, a(1)=7`
-/

namespace A154487.P18091803031268329349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n a =>
  A054906 (a (n - 1)).toNat + a (n - 1)

end

end A154487.P18091803031268329349

/-! ## A154487.P14626356218790044156

`A020484(a(n-1))-a(n-1)` with `a(0)=0, a(1)=7`
-/

namespace A154487.P14626356218790044156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7] fun n a =>
  A020484 (a (n - 1)).toNat - a (n - 1)

end

end A154487.P14626356218790044156

/-! ## A154487.P12037321258538390928

`A057427(n)*A090955(n+2)`
-/

namespace A154487.P12037321258538390928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A090955 (n + 2)

end

end A154487.P12037321258538390928

/-! ## A154487.P12272988877353131139

`and(A057428(n), A090955(n+2))`
-/

namespace A154487.P12272988877353131139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A090955 (n + 2))

end

end A154487.P12272988877353131139

/-! ## A154487.P12204889875346066431

`A000040(n+1)%2*A090955(n+2)`
-/

namespace A154487.P12204889875346066431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A090955 (n + 2)

end

end A154487.P12204889875346066431

/-! ## A154487.P14524055362758723068

`∑{e}[A020639(n+1), #]*A090955(n+2)`
-/

namespace A154487.P14524055362758723068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A090955 (n + 2)

end

end A154487.P14524055362758723068

/-! ## A154487.P11584178234147152524

`record[A020639(n+2)]%2*A090955(n+2)`
-/

namespace A154487.P11584178234147152524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 * A090955 (n + 2)

end

end A154487.P11584178234147152524

/-!
# A154488: a(n+1)-+a(n)=prime, a(1)=1,a(2)=12.

The programs for A154488, there is no canonical definition to state claims against.
-/

/-! ## A154488.P11501188861913557876

`A087711(a(n-1))` with `a(0)=1, a(1)=12`
-/

namespace A154488.P11501188861913557876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n a =>
  A087711 (a (n - 1)).toNat

end

end A154488.P11501188861913557876

/-! ## A154488.P14467569712026019499

`A020483(a(n-1))+a(n-1)` with `a(0)=1, a(1)=12`
-/

namespace A154488.P14467569712026019499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n a =>
  A020483 (a (n - 1)).toNat + a (n - 1)

end

end A154488.P14467569712026019499

/-! ## A154488.P14869884734233458477

`A054906(a(n-1))+a(n-1)` with `a(0)=1, a(1)=12`
-/

namespace A154488.P14869884734233458477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n a =>
  A054906 (a (n - 1)).toNat + a (n - 1)

end

end A154488.P14869884734233458477

/-! ## A154488.P6216051123950717071

`A020484(a(n-1))-a(n-1)` with `a(0)=1, a(1)=12`
-/

namespace A154488.P6216051123950717071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n a =>
  A020484 (a (n - 1)).toNat - a (n - 1)

end

end A154488.P6216051123950717071

/-! ## A154488.P17046807011760015504

`A014963(A204894(2*a(n-1)))-a(n-1)` with `a(0)=1, a(1)=12`
-/

namespace A154488.P17046807011760015504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n a =>
  A014963 (A204894 (2 * a (n - 1)).toNat).toNat - a (n - 1)

end

end A154488.P17046807011760015504

/-!
# A154495: a(n+1)-+a(n)=prime, a(n+1)*a(n)=Average of twin prime pairs, a(1)=2,a(2)=9.

The programs for A154495, there is no canonical definition to state claims against.
-/

/-! ## A154495.P15054825718653558969

`A161207(A050049(2*(n+1)))+n`
-/

namespace A154495.P15054825718653558969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161207 (A050049 (2 * (n + 1))).toNat + (n : ℤ)

end

end A154495.P15054825718653558969

/-!
# A154496: a(n+1)-+a(n)=prime, a(n+1)*a(n)=Average of twin prime pairs, a(1)=3,a(2)=10.

The programs for A154496, there is no canonical definition to state claims against.
-/

/-! ## A154496.P17693451051685524097

`A243352(A046991(n)+1)+A008851(2*n+1)`
-/

namespace A154496.P17693451051685524097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243352 (A046991 n + 1).toNat + A008851 (2 * n + 1)

end

end A154496.P17693451051685524097

/-!
# A154497: a(n) is the least prime > a(n-1) such that a(n-2) + a(n-1) + a(n) is prime, with a(1)=3, a(2)=11.

The programs for A154497, there is no canonical definition to state claims against.
-/

/-! ## A154497.P6346027689311313282

`p?[eq[0, A324150(n+1)%3]]`
-/

namespace A154497.P6346027689311313282
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324150 (n + 1)) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A154497.P6346027689311313282

/-! ## A154497.P14124814842836661347

`p?[record[A336233((n+1)/7^val(n+1, 7))]]`
-/

namespace A154497.P14124814842836661347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (7 ^ SequenceMachineLib.valuation (n + 1) 7 : ℚ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154497.P14124814842836661347

/-! ## A154497.P3567451384660130253

`p?[∑[A001222(A238886(n+5))]]`
-/

namespace A154497.P3567451384660130253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A238886 (n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154497.P3567451384660130253

/-! ## A154497.P13388713314692134448

`p?[lt[A020639(A289629(n+2)), 6]]`
-/

namespace A154497.P13388713314692134448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A289629 (n + 2)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A154497.P13388713314692134448

/-! ## A154497.P13563550742720134567

`A020620(lt[A114901(n), A337561(n)])`
-/

namespace A154497.P13563550742720134567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114901 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020620 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A154497.P13563550742720134567

/-!
# A154498: Sum of any 3 consecutive numbers is prime, a(1)=41,a(2)=43.

The programs for A154498, there is no canonical definition to state claims against.
-/

/-! ## A154498.P16750505398326634964

`A073521(A000196(2*(n+2))+lt[∑{d}[n, #], 2*n])`
-/

namespace A154498.P16750505398326634964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073521 (A000196 (2 * (n + 2)) + (SequenceMachineLib.nth (fun j => f1 j < f3 j) n : ℤ)).toNat

end

end A154498.P16750505398326634964

/-! ## A154498.P4644406470089768132

`filter[A191029(n+1), A377191(#)]`
-/

namespace A154498.P4644406470089768132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A377191 (f1 j).toNat = 1) n)

end

end A154498.P4644406470089768132

/-! ## A154498.P14303731175038521539

`∩[A073521(n+1), A191029(n+1)]`
-/

namespace A154498.P14303731175038521539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154498.P14303731175038521539

/-! ## A154498.P18260486103026594600

`∩[A124404(n+1), A191029(n+1)]`
-/

namespace A154498.P18260486103026594600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154498.P18260486103026594600

/-! ## A154498.P12245215147711789799

`∩[A166875(n+1), A191029(n+1)]`
-/

namespace A154498.P12245215147711789799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154498.P12245215147711789799

