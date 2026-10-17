import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A156001: Number of cycles of length 4 in the queen graph associated with an n X n chessboard.

The programs for A156001, there is no canonical definition to state claims against.
-/

/-! ## A156001.P12288932091505464454

`A068460(A192987(2*n))-char[∑[n]]`
-/

namespace A156001.P12288932091505464454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068460 (A192987 (2 * n)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A156001.P12288932091505464454

/-!
# A156002: Partial sums of round(7^n/9).

The programs for A156002, the canonical program `A156002.P16606273741068846699` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156002 has offset 0).

The definition of A156002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156002.P16606273741068846699

`8*a(n-1)-7*a(n-2)+a(n-3)-8*a(n-4)+7*a(n-5)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=44, a(4)=311`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A156002

/-- `8*a(n-1)-7*a(n-2)+a(n-3)-8*a(n-4)+7*a(n-5)` -/
def P16606273741068846699.Spec : Prop :=
  ∀ n, P16606273741068846699.a n = A156002 n

theorem P16606273741068846699.correct : P16606273741068846699.Spec := by
  intro n
  simp only [A156002]

end A156002

/-! ## A156002.P5922976504267813881

`a(n-3)+(19*7^(n-2)-1)/3` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A156002.P5922976504267813881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 6] fun n a =>
  a (n - 3) + (19 * (7 : ℚ) ^ ((n : ℤ) - 2 : ℤ) - 1) / 3

end

end A156002.P5922976504267813881

namespace A156002

/-- `a(n-3)+(19*7^(n-2)-1)/3` -/
def P5922976504267813881.Spec : Prop :=
  ∀ n, P5922976504267813881.a n = (A156002 n : ℚ)

end A156002

/-! ## A156002.P16813482136747514185

`round((7*7^n-6*n+2)/54)`
-/

namespace A156002.P16813482136747514185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((7 * 7 ^ n : ℤ) - (6 * n : ℤ) + 2 : ℚ) / 54)

end

end A156002.P16813482136747514185

namespace A156002

/-- `round((7*7^n-6*n+2)/54)` -/
def P16813482136747514185.Spec : Prop :=
  ∀ n, P16813482136747514185.a n = A156002 n

end A156002

/-! ## A156002.P12489916629943657348

`ceil(∑[A024075(n)/9])`
-/

namespace A156002.P12489916629943657348
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024075 n : ℚ) / 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A156002.P12489916629943657348

namespace A156002

/-- `ceil(∑[A024075(n)/9])` -/
def P12489916629943657348.Spec : Prop :=
  ∀ n, P12489916629943657348.a n = A156002 n

end A156002

/-! ## A156002.P5309887509973743783

`ceil(∑[A125725(n+1)/3])`
-/

namespace A156002.P5309887509973743783
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125725 (n + 1) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A156002.P5309887509973743783

namespace A156002

/-- `ceil(∑[A125725(n+1)/3])` -/
def P5309887509973743783.Spec : Prop :=
  ∀ n, P5309887509973743783.a n = A156002 n

end A156002

/-! ## A156002.P6996895022965298862

`ceil(∑[A125823(n+1)/6])%A319743(n+1)`
-/

namespace A156002.P6996895022965298862
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125823 (n + 1) : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ (A319743 (n + 1))

end

end A156002.P6996895022965298862

namespace A156002

/-- `ceil(∑[A125823(n+1)/6])%A319743(n+1)` -/
def P6996895022965298862.Spec : Prop :=
  ∀ n, P6996895022965298862.a n = A156002 n

end A156002

/-!
# A156004: Primes p such that 8*p+21 is prime.

The programs for A156004, the canonical program `A156004.P9472163527140121150` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156004 has offset 1).

The definition of A156004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1620 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156004.P9472163527140121150

`p?[A105133(n+1)-2]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A156004

/-- `p?[A105133(n+1)-2]` -/
def P9472163527140121150.Spec : Prop :=
  ∀ n, P9472163527140121150.a n = A156004 (n + 1)

theorem P9472163527140121150.correct : P9472163527140121150.Spec := by
  intro n
  simp only [A156004, Nat.add_sub_cancel]

end A156004

/-! ## A156004.P17619670154686764766

`p?[A005125(n+1)-3]`
-/

namespace A156004.P17619670154686764766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005125 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156004.P17619670154686764766

namespace A156004

/-- `p?[A005125(n+1)-3]` -/
def P17619670154686764766.Spec : Prop :=
  ∀ n, P17619670154686764766.a n = A156004 (n + 1)

end A156004

/-! ## A156004.P17797480084997406242

`∩[A000040(n+1), A105133(n+1)-2]`
-/

namespace A156004.P17797480084997406242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156004.P17797480084997406242

namespace A156004

/-- `∩[A000040(n+1), A105133(n+1)-2]` -/
def P17797480084997406242.Spec : Prop :=
  ∀ n, (P17797480084997406242.a n : ℤ) = A156004 (n + 1)

end A156004

/-! ## A156004.P5464953482240009599

`p?[A007521(n+1)%(A105133(n+1)+1)]`
-/

namespace A156004.P5464953482240009599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007521 (n + 1)) (A105133 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156004.P5464953482240009599

namespace A156004

/-- `p?[A007521(n+1)%(A105133(n+1)+1)]` -/
def P5464953482240009599.Spec : Prop :=
  ∀ n, P5464953482240009599.a n = A156004 (n + 1)

end A156004

/-! ## A156004.P2648348704263992392

`p?[eq[2, A175462(n)]-2]`
-/

namespace A156004.P2648348704263992392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175462 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156004.P2648348704263992392

namespace A156004

/-- `p?[eq[2, A175462(n)]-2]` -/
def P2648348704263992392.Spec : Prop :=
  ∀ n, P2648348704263992392.a n = A156004 (n + 1)

end A156004

/-! ## A156004.P12046705345088961059

`eq[A005128(n), A175462(n+2)]`
-/

namespace A156004.P12046705345088961059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175462 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156004.P12046705345088961059

namespace A156004

/-- `eq[A005128(n), A175462(n+2)]` -/
def P12046705345088961059.Spec : Prop :=
  ∀ n, (P12046705345088961059.a n : ℤ) = A156004 (n + 1)

end A156004

/-! ## A156004.P14295715825540018394

`eq[A175462(n+2), A327859(n)]`
-/

namespace A156004.P14295715825540018394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175462 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156004.P14295715825540018394

namespace A156004

/-- `eq[A175462(n+2), A327859(n)]` -/
def P14295715825540018394.Spec : Prop :=
  ∀ n, (P14295715825540018394.a n : ℤ) = A156004 (n + 1)

end A156004

/-! ## A156004.P4451551479310315659

`p?[A246425(A111199(n+1))-2]`
-/

namespace A156004.P4451551479310315659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A111199 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156004.P4451551479310315659

namespace A156004

/-- `p?[A246425(A111199(n+1))-2]` -/
def P4451551479310315659.Spec : Prop :=
  ∀ n, P4451551479310315659.a n = A156004 (n + 1)

end A156004

/-! ## A156004.P14124444441518221472

`p?[A246425(A005098(n+1))-3]`
-/

namespace A156004.P14124444441518221472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A005098 (n + 1)).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156004.P14124444441518221472

namespace A156004

/-- `p?[A246425(A005098(n+1))-3]` -/
def P14124444441518221472.Spec : Prop :=
  ∀ n, P14124444441518221472.a n = A156004 (n + 1)

end A156004

/-! ## A156004.P1699744772610871531

`p?[A004273(n)-A005171(A082285(n))]`
-/

namespace A156004.P1699744772610871531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n - A005171 (A082285 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156004.P1699744772610871531

namespace A156004

/-- `p?[A004273(n)-A005171(A082285(n))]` -/
def P1699744772610871531.Spec : Prop :=
  ∀ n, P1699744772610871531.a n = A156004 (n + 1)

end A156004

/-! ## A156004.P5563655559754399847

`eq[A175462(n+2), A326486(n)]`
-/

namespace A156004.P5563655559754399847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175462 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326486 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156004.P5563655559754399847

namespace A156004

/-- `eq[A175462(n+2), A326486(n)]` -/
def P5563655559754399847.Spec : Prop :=
  ∀ n, (P5563655559754399847.a n : ℤ) = A156004 (n + 1)

end A156004

/-! ## A156004.P11021335351301762629

`p?[A029578(A111215(n+1))-2]`
-/

namespace A156004.P11021335351301762629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A111215 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156004.P11021335351301762629

namespace A156004

/-- `p?[A029578(A111215(n+1))-2]` -/
def P11021335351301762629.Spec : Prop :=
  ∀ n, P11021335351301762629.a n = A156004 (n + 1)

end A156004

/-! ## A156004.P7366179948631013245

`eq[A053204(n), A175462(n+2)]`
-/

namespace A156004.P7366179948631013245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175462 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156004.P7366179948631013245

namespace A156004

/-- `eq[A053204(n), A175462(n+2)]` -/
def P7366179948631013245.Spec : Prop :=
  ∀ n, (P7366179948631013245.a n : ℤ) = A156004 (n + 1)

end A156004

/-! ## A156004.P1300588139593257452

`p?[n-A344768(8*n+5)]`
-/

namespace A156004.P1300588139593257452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A344768 (8 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156004.P1300588139593257452

namespace A156004

/-- `p?[n-A344768(8*n+5)]` -/
def P1300588139593257452.Spec : Prop :=
  ∀ n, P1300588139593257452.a n = A156004 (n + 1)

end A156004

/-!
# A156005: Primes p such that 16*p+45 is prime.

The programs for A156005, the canonical program `A156005.P13671127207021849420` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156005 has offset 1).

The definition of A156005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 402 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156005.P13671127207021849420

`p?[A246425(A105133(n+1))-3]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A156005

/-- `p?[A246425(A105133(n+1))-3]` -/
def P13671127207021849420.Spec : Prop :=
  ∀ n, P13671127207021849420.a n = A156005 (n + 1)

theorem P13671127207021849420.correct : P13671127207021849420.Spec := by
  intro n
  simp only [A156005, Nat.add_sub_cancel]

end A156005

/-! ## A156005.P16638668966089261371

`p?[A006530(2*A125169(n)-1)-A249674(n+1)]`
-/

namespace A156005.P16638668966089261371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A125169 n - 1).toNat - A249674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156005.P16638668966089261371

namespace A156005

/-- `p?[A006530(2*A125169(n)-1)-A249674(n+1)]` -/
def P16638668966089261371.Spec : Prop :=
  ∀ n, P16638668966089261371.a n = A156005 (n + 1)

end A156005

/-! ## A156005.P8528577292754655825

`p?[A004525(A005125(n+1))-3]`
-/

namespace A156005.P8528577292754655825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A005125 (n + 1)).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156005.P8528577292754655825

namespace A156005

/-- `p?[A004525(A005125(n+1))-3]` -/
def P8528577292754655825.Spec : Prop :=
  ∀ n, P8528577292754655825.a n = A156005 (n + 1)

end A156005

/-! ## A156005.P14268451068994309397

`p?[eq[A000034(n), A175462(2*n+5)]]`
-/

namespace A156005.P14268451068994309397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175462 (2 * n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A156005.P14268451068994309397

namespace A156005

/-- `p?[eq[A000034(n), A175462(2*n+5)]]` -/
def P14268451068994309397.Spec : Prop :=
  ∀ n, (P14268451068994309397.a n : ℤ) = A156005 (n + 1)

end A156005

/-! ## A156005.P5166647939999094269

`eq[A077591(A032741(n)), A175462(2*n+5)]`
-/

namespace A156005.P5166647939999094269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077591 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175462 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156005.P5166647939999094269

namespace A156005

/-- `eq[A077591(A032741(n)), A175462(2*n+5)]` -/
def P5166647939999094269.Spec : Prop :=
  ∀ n, (P5166647939999094269.a n : ℤ) = A156005 (n + 1)

end A156005

/-! ## A156005.P18141326893269790736

`p?[A004273(n)*A345468(A004771(n))]`
-/

namespace A156005.P18141326893269790736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n * A345468 (A004771 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156005.P18141326893269790736

namespace A156005

/-- `p?[A004273(n)*A345468(A004771(n))]` -/
def P18141326893269790736.Spec : Prop :=
  ∀ n, P18141326893269790736.a n = A156005 (n + 1)

end A156005

/-! ## A156005.P17735617692070482050

`eq[A018783(n), A091304(A004771(n+2))]`
-/

namespace A156005.P17735617692070482050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (A004771 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156005.P17735617692070482050

namespace A156005

/-- `eq[A018783(n), A091304(A004771(n+2))]` -/
def P17735617692070482050.Spec : Prop :=
  ∀ n, (P17735617692070482050.a n : ℤ) = A156005 (n + 1)

end A156005

/-! ## A156005.P17044493636019054339

`p?[n-A344768(A082285(n))]`
-/

namespace A156005.P17044493636019054339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A344768 (A082285 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156005.P17044493636019054339

namespace A156005

/-- `p?[n-A344768(A082285(n))]` -/
def P17044493636019054339.Spec : Prop :=
  ∀ n, P17044493636019054339.a n = A156005 (n + 1)

end A156005

/-!
# A156006: Triangle, read by rows, T(n, k) = ((n-k)/(n+k))*binomial(n+k, n) + (k/(2*n-k))*binomial(2*n -k, n), with T(0,0) = 1.

The programs for A156006, the canonical program `A156006.P8984880958140237192` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156006 has offset 0).

The definition of A156006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156006.P16748544893672232931

`A130020(n)+A059365(n)`
-/

namespace A156006.P16748544893672232931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130020 n + A059365 n

end

end A156006.P16748544893672232931

namespace A156006

/-- `A130020(n)+A059365(n)` -/
def P16748544893672232931.Spec : Prop :=
  ∀ n, P16748544893672232931.a n = A156006 n

end A156006

/-! ## A156006.P11288854027680818225

`A106566(A061579(n))+A059365(n)`
-/

namespace A156006.P11288854027680818225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A061579 n).toNat + A059365 n

end

end A156006.P11288854027680818225

namespace A156006

/-- `A106566(A061579(n))+A059365(n)` -/
def P11288854027680818225.Spec : Prop :=
  ∀ n, P11288854027680818225.a n = A156006 n

end A156006

/-! ## A156006.P8984880958140237192

`A106566(A038722(n+2))+A106566(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A156006

/-- `A106566(A038722(n+2))+A106566(n)` -/
def P8984880958140237192.Spec : Prop :=
  ∀ n, P8984880958140237192.a n = A156006 n

theorem P8984880958140237192.correct : P8984880958140237192.Spec := by
  intro n
  simp only [A156006]

end A156006

/-! ## A156006.P8649513264017297305

`A106566(A061579(n+1)+1)+A106566(n)`
-/

namespace A156006.P8649513264017297305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (A061579 (n + 1) + 1).toNat + A106566 n

end

end A156006.P8649513264017297305

namespace A156006

/-- `A106566(A061579(n+1)+1)+A106566(n)` -/
def P8649513264017297305.Spec : Prop :=
  ∀ n, P8649513264017297305.a n = A156006 n

end A156006

/-! ## A156006.P11486890589828111941

`A106566(n)+A130020(n)%A030237(n+2)`
-/

namespace A156006.P11486890589828111941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n + Int.tmod (A130020 n) (A030237 (n + 2))

end

end A156006.P11486890589828111941

namespace A156006

/-- `A106566(n)+A130020(n)%A030237(n+2)` -/
def P11486890589828111941.Spec : Prop :=
  ∀ n, P11486890589828111941.a n = A156006 n

end A156006

/-! ## A156006.P7817889658548022569

`A000007(n)+A059365(n)+A059365(A061579(n))`
-/

namespace A156006.P7817889658548022569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A059365 n + A059365 (A061579 n).toNat)

end

end A156006.P7817889658548022569

namespace A156006

/-- `A000007(n)+A059365(n)+A059365(A061579(n))` -/
def P7817889658548022569.Spec : Prop :=
  ∀ n, P7817889658548022569.a n = A156006 n

end A156006

/-! ## A156006.P15428040679850195166

`A106566(n)-A008482(A245300(n))`
-/

namespace A156006.P15428040679850195166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 n - A008482 (A245300 n).toNat

end

end A156006.P15428040679850195166

namespace A156006

/-- `A106566(n)-A008482(A245300(n))` -/
def P15428040679850195166.Spec : Prop :=
  ∀ n, P15428040679850195166.a n = A156006 n

end A156006

/-!
# A156007: Primes p such that 32*p + 93 is also prime.

The programs for A156007, there is no canonical definition to state claims against.
-/

/-! ## A156007.P4828781446383060589

`p?[n-A344768(A082285(2*n+1))]`
-/

namespace A156007.P4828781446383060589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A344768 (A082285 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156007.P4828781446383060589

/-! ## A156007.P8771332128934608857

`p?[eq[1, A040081(A004771(2*n+5))]]`
-/

namespace A156007.P8771332128934608857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A004771 (2 * n + 5)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A156007.P8771332128934608857

/-! ## A156007.P15962935044979008243

`eq[A003415(n), A040081(A004771(2*n+5))]`
-/

namespace A156007.P15962935044979008243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A004771 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156007.P15962935044979008243

/-! ## A156007.P16220685037279316248

`eq[A007650(n), A040081(A004771(2*n+5))]`
-/

namespace A156007.P16220685037279316248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007650 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A004771 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156007.P16220685037279316248

/-! ## A156007.P6250947295963346137

`eq[A018783(n)², A040081(A004771(2*n+5))]`
-/

namespace A156007.P6250947295963346137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (A004771 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A156007.P6250947295963346137

/-!
# A156009: Primes p such that 64*p + 189 is also prime.

The programs for A156009, there is no canonical definition to state claims against.
-/

/-! ## A156009.P10610391722613516039

`record[A020500(A143976(n+1)+A143694(n+1))]`
-/

namespace A156009.P10610391722613516039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (A143976 (n + 1) + A143694 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156009.P10610391722613516039

/-! ## A156009.P10507020633226215118

`p?[eq[val(n+1, 2)+1, A323090(n+1)]]`
-/

namespace A156009.P10507020633226215118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323090 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A156009.P10507020633226215118

/-! ## A156009.P10074321596345513260

`p?[eq[A140081(n), A318809(n+1)]]`
-/

namespace A156009.P10074321596345513260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140081 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318809 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A156009.P10074321596345513260

/-! ## A156009.P15926642131391909690

`p?[2*n-A244738(A081807(n+1))]`
-/

namespace A156009.P15926642131391909690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A244738 (A081807 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156009.P15926642131391909690

/-!
# A156010: Primes p such that 2*p+3 and 8*p+21 are both prime.

The programs for A156010, there is no canonical definition to state claims against.
-/

/-! ## A156010.P3986860788363606411

`∩[A023204(n+1), A156004(n+1)]`
-/

namespace A156010.P3986860788363606411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156010.P3986860788363606411

/-! ## A156010.P11652012814564276193

`∩[A067076(n+1), A156004(n+1)]`
-/

namespace A156010.P11652012814564276193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156010.P11652012814564276193

/-! ## A156010.P3553027384203265181

`record[A006530(A023216(n+2)-3)]`
-/

namespace A156010.P3553027384203265181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A023216 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156010.P3553027384203265181

/-! ## A156010.P5705495116411287291

`p?[abs(A349373(A023216(n+1)))]`
-/

namespace A156010.P5705495116411287291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349373 (A023216 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156010.P5705495116411287291

/-! ## A156010.P8246893164073096896

`p?[-A349373(A023216(n+2))]`
-/

namespace A156010.P8246893164073096896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A349373 (A023216 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156010.P8246893164073096896

/-! ## A156010.P11840713944704621700

`p?[A246425(p?[A111199(n+1)])-2]`
-/

namespace A156010.P11840713944704621700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156010.P11840713944704621700

/-! ## A156010.P11936263540288721830

`p?[A000007(n)-A349373(A023216(n+1))]`
-/

namespace A156010.P11936263540288721830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A349373 (A023216 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156010.P11936263540288721830

/-! ## A156010.P15904253821519796046

`p?[A057428(n)*A349373(A023216(n+1))]`
-/

namespace A156010.P15904253821519796046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A349373 (A023216 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156010.P15904253821519796046

/-! ## A156010.P3338851855383237171

`p?[A000038(n)²-A349373(A023216(n+1))]`
-/

namespace A156010.P3338851855383237171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ 2 - A349373 (A023216 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156010.P3338851855383237171

/-! ## A156010.P14924132802347152180

`p?[A000038(n+1)-A349373(A023216(n+2))]`
-/

namespace A156010.P14924132802347152180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A349373 (A023216 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156010.P14924132802347152180

/-! ## A156010.P5686999712759142022

`p?[A240351(2*n+1)-A349373(A023216(n+2))]`
-/

namespace A156010.P5686999712759142022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240351 (2 * n + 1) - A349373 (A023216 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156010.P5686999712759142022

/-! ## A156010.P11417182801487615698

`p?[A008683(4*(n+1))-A349373(A023216(n+2))]`
-/

namespace A156010.P11417182801487615698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - A349373 (A023216 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156010.P11417182801487615698

/-!
# A156011: Primes p such that 2*p+3 and 16*p+45 are both prime.

The programs for A156011, there is no canonical definition to state claims against.
-/

/-! ## A156011.P2285436023792821997

`∩[A023204(n+1), A156005(n+1)]`
-/

namespace A156011.P2285436023792821997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156011.P2285436023792821997

/-! ## A156011.P12243633410150888134

`∩[A067076(n+1), A156005(n+1)]`
-/

namespace A156011.P12243633410150888134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156011.P12243633410150888134

/-! ## A156011.P13162247155614959651

`p?[abs(A349373(A156004(n+1)))]`
-/

namespace A156011.P13162247155614959651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349373 (A156004 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156011.P13162247155614959651

/-! ## A156011.P299587637361206457

`p?[-A349373(A156004(n+3))]`
-/

namespace A156011.P299587637361206457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A349373 (A156004 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156011.P299587637361206457

/-! ## A156011.P601066707744955275

`p?[A000007(n)-A349373(A156004(n+1))]`
-/

namespace A156011.P601066707744955275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A349373 (A156004 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156011.P601066707744955275

/-! ## A156011.P3459712511738801954

`p?[A163805(2*(n+1))-A349373(A156004(n+1))]`
-/

namespace A156011.P3459712511738801954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (2 * (n + 1)) - A349373 (A156004 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156011.P3459712511738801954

/-! ## A156011.P8976903717134000425

`p?[A008683(4*(n+5))-A349373(A156004(n+1))]`
-/

namespace A156011.P8976903717134000425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 5)) - A349373 (A156004 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156011.P8976903717134000425

/-! ## A156011.P3367147612988172484

`p?[A003165(A156004(n+1))]`
-/

namespace A156011.P3367147612988172484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003165 (A156004 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156011.P3367147612988172484

/-! ## A156011.P5757254536393764565

`p?[A072458(A156004(n+2))]`
-/

namespace A156011.P5757254536393764565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072458 (A156004 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156011.P5757254536393764565

/-!
# A156012: Primes p such that 2*p+3 and 32*p+93 are both prime.

The programs for A156012, there is no canonical definition to state claims against.
-/

/-! ## A156012.P5258909362795075817

`∩[A023204(n+1), A156007(n+1)]`
-/

namespace A156012.P5258909362795075817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156012.P5258909362795075817

/-! ## A156012.P15222578029797170140

`∩[A067076(n+1), A156007(n+1)]`
-/

namespace A156012.P15222578029797170140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156012.P15222578029797170140

/-! ## A156012.P13194675708985815722

`record[A006530(A156005(n+1)-3)]`
-/

namespace A156012.P13194675708985815722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A156005 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156012.P13194675708985815722

/-! ## A156012.P14108933770589561038

`p?[A014682(A156005(n+1)-3)]`
-/

namespace A156012.P14108933770589561038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A156005 (n + 1) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156012.P14108933770589561038

/-! ## A156012.P557378735836640729

`p?[abs(A349373(A156005(n+1)))]`
-/

namespace A156012.P557378735836640729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349373 (A156005 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156012.P557378735836640729

/-! ## A156012.P46953402782689258

`p?[A246425(A156005(n+1)-4)]`
-/

namespace A156012.P46953402782689258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A156005 (n + 1) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156012.P46953402782689258

/-! ## A156012.P11386260403955626176

`record[A014963((A156005(n+1)-3)/2)]`
-/

namespace A156012.P11386260403955626176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A156005 (n + 1) - 3 : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156012.P11386260403955626176

/-! ## A156012.P12354772290649490609

`p?[A003165(A156005(n+1))]`
-/

namespace A156012.P12354772290649490609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003165 (A156005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156012.P12354772290649490609

/-!
# A156013: Primes p such that 2*p+3, 64*p+189 are both prime.

The programs for A156013, there is no canonical definition to state claims against.
-/

/-! ## A156013.P10117414991452354628

`∩[A023204(n+1), A156009(n+1)]`
-/

namespace A156013.P10117414991452354628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156013.P10117414991452354628

/-! ## A156013.P9013418301210555885

`∩[A067076(n+1), A156009(n+1)]`
-/

namespace A156013.P9013418301210555885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156013.P9013418301210555885

/-! ## A156013.P15459113591913231881

`p?[abs(A349373(A156007(n+1)))]`
-/

namespace A156013.P15459113591913231881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349373 (A156007 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156013.P15459113591913231881

/-! ## A156013.P8031604708694152722

`p?[-A349373(A156007(n+2))]`
-/

namespace A156013.P8031604708694152722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A349373 (A156007 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156013.P8031604708694152722

/-! ## A156013.P12122801534112468446

`p?[A000007(n)-A349373(A156007(n+1))]`
-/

namespace A156013.P12122801534112468446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A349373 (A156007 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156013.P12122801534112468446

/-! ## A156013.P555399185830625594

`p?[A000010(n+2)%2-A349373(A156007(n+1))]`
-/

namespace A156013.P555399185830625594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 2)) 2 - A349373 (A156007 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156013.P555399185830625594

/-! ## A156013.P8600416048078718153

`p?[A000040(n+1)%2-1-A349373(A156007(n+1))]`
-/

namespace A156013.P8600416048078718153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 - 1 - A349373 (A156007 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156013.P8600416048078718153

/-! ## A156013.P12061855705062642252

`p?[A003165(A156007(n+1))]`
-/

namespace A156013.P12061855705062642252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003165 (A156007 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156013.P12061855705062642252

/-! ## A156013.P708065557817114199

`p?[A055684(A156007(n+2))]`
-/

namespace A156013.P708065557817114199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055684 (A156007 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156013.P708065557817114199

/-!
# A156014: Primes p such that 4*p+9, 8*p+21 are both prime.

The programs for A156014, the canonical program `A156014.P3371744540738237812` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156014 has offset 1).

The definition of A156014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156014.P3371744540738237812

`∩[A023216(n+1), A156004(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156014

/-- `∩[A023216(n+1), A156004(n+1)]` -/
def P3371744540738237812.Spec : Prop :=
  ∀ n, (P3371744540738237812.a n : ℤ) = A156014 (n + 1)

theorem P3371744540738237812.correct : P3371744540738237812.Spec := by
  intro n
  simp only [A156014, Nat.add_sub_cancel]

end A156014

/-! ## A156014.P4914565491424020426

`∩[A111199(n+1), A156004(n+1)]`
-/

namespace A156014.P4914565491424020426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156014.P4914565491424020426

namespace A156014

/-- `∩[A111199(n+1), A156004(n+1)]` -/
def P4914565491424020426.Spec : Prop :=
  ∀ n, (P4914565491424020426.a n : ℤ) = A156014 (n + 1)

end A156014

/-! ## A156014.P9912719977413183668

`p?[∩[A105133(n+1)-2, A111199(n+1)]]`
-/

namespace A156014.P9912719977413183668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1) - 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A156014.P9912719977413183668

namespace A156014

/-- `p?[∩[A105133(n+1)-2, A111199(n+1)]]` -/
def P9912719977413183668.Spec : Prop :=
  ∀ n, (P9912719977413183668.a n : ℤ) = A156014 (n + 1)

end A156014

/-! ## A156014.P6459491749484735289

`∩[p?[A005125(n+1)-3], A111199(n+1)]`
-/

namespace A156014.P6459491749484735289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005125 (n + 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A156014.P6459491749484735289

namespace A156014

/-- `∩[p?[A005125(n+1)-3], A111199(n+1)]` -/
def P6459491749484735289.Spec : Prop :=
  ∀ n, (P6459491749484735289.a n : ℤ) = A156014 (n + 1)

end A156014

/-! ## A156014.P3541159874440756673

`p?[eq[3, A225302(2*n+5)]]`
-/

namespace A156014.P3541159874440756673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225302 (2 * n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A156014.P3541159874440756673

namespace A156014

/-- `p?[eq[3, A225302(2*n+5)]]` -/
def P3541159874440756673.Spec : Prop :=
  ∀ n, (P3541159874440756673.a n : ℤ) = A156014 (n + 1)

end A156014

/-!
# A156016: Expansion of (1-x-sqrt(1-6x-3x^2))/(2x).

The programs for A156016, there is no canonical definition to state claims against.
-/

/-! ## A156016.P12387694253876501350

`abs(A100239(abs(A131738(n))))`
-/

namespace A156016.P12387694253876501350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A100239 |A131738 n|.toNat)|

end

end A156016.P12387694253876501350

/-! ## A156016.P15873560006803933774

`record[abs(A100239(A081597(n)))]`
-/

namespace A156016.P15873560006803933774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100239 (A081597 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156016.P15873560006803933774

/-! ## A156016.P17252968351198210136

`record[abs(A100239(A056239(n+1)))]`
-/

namespace A156016.P17252968351198210136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100239 (A056239 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156016.P17252968351198210136

/-! ## A156016.P4916360076113869673

`record[abs(A100239(A073642(n)))]`
-/

namespace A156016.P4916360076113869673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100239 (A073642 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156016.P4916360076113869673

/-! ## A156016.P14119944927425030328

`record[abs(A100239(A053833(n)))]`
-/

namespace A156016.P14119944927425030328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100239 (A053833 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156016.P14119944927425030328

/-!
# A156017: Schroeder paths with two rise colors and two level colors.

The programs for A156017, the canonical program `A156017.P8308625821762049719` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156017 has offset 0).

The definition of A156017 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006318, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156017.P8308625821762049719

`2^n*A006318(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A156017

/-- `2^n*A006318(n)` -/
def P8308625821762049719.Spec : Prop :=
  ∀ n, P8308625821762049719.a n = A156017 n

theorem P8308625821762049719.correct : P8308625821762049719.Spec := by
  intro n
  simp only [A156017]

end A156017

/-! ## A156017.P8282930359088637680

`A183875(∑[n]+1)`
-/

namespace A156017.P8282930359088637680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183875 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A156017.P8282930359088637680

namespace A156017

/-- `A183875(∑[n]+1)` -/
def P8282930359088637680.Spec : Prop :=
  ∀ n, P8282930359088637680.a n = A156017 n

end A156017

/-! ## A156017.P6788825465666194375

`∑[A336283(n+1)]`
-/

namespace A156017.P6788825465666194375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156017.P6788825465666194375

namespace A156017

/-- `∑[A336283(n+1)]` -/
def P6788825465666194375.Spec : Prop :=
  ∀ n, P6788825465666194375.a n = A156017 n

end A156017

/-! ## A156017.P4055089265977679255

`record[A183875(n+1)]`
-/

namespace A156017.P4055089265977679255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156017.P4055089265977679255

namespace A156017

/-- `record[A183875(n+1)]` -/
def P4055089265977679255.Spec : Prop :=
  ∀ n, P4055089265977679255.a n = A156017 n

end A156017

/-! ## A156017.P15605471232278473905

`A054726(n+2)/2`
-/

namespace A156017.P15605471232278473905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054726 (n + 2) : ℚ) / 2

end

end A156017.P15605471232278473905

namespace A156017

/-- `A054726(n+2)/2` -/
def P15605471232278473905.Spec : Prop :=
  ∀ n, P15605471232278473905.a n = (A156017 n : ℚ)

end A156017

/-! ## A156017.P4134261903256635455

`2^n*Δ[A176006(n)]`
-/

namespace A156017.P4134261903256635455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A156017.P4134261903256635455

namespace A156017

/-- `2^n*Δ[A176006(n)]` -/
def P4134261903256635455.Spec : Prop :=
  ∀ n, P4134261903256635455.a n = A156017 n

end A156017

/-! ## A156017.P14189662300510496856

`(A035011(n)+1)*2^n`
-/

namespace A156017.P14189662300510496856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035011 n + 1) * (2 ^ n : ℤ)

end

end A156017.P14189662300510496856

namespace A156017

/-- `(A035011(n)+1)*2^n` -/
def P14189662300510496856.Spec : Prop :=
  ∀ n, P14189662300510496856.a n = A156017 n

end A156017

/-! ## A156017.P7273026377269125480

`2^n*A155069(n+1)`
-/

namespace A156017.P7273026377269125480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A155069 (n + 1)

end

end A156017.P7273026377269125480

namespace A156017

/-- `2^n*A155069(n+1)` -/
def P7273026377269125480.Spec : Prop :=
  ∀ n, P7273026377269125480.a n = A156017 n

end A156017

/-! ## A156017.P9147542111341272627

`∑[A006319(n)]*A000079(n)`
-/

namespace A156017.P9147542111341272627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A156017.P9147542111341272627

namespace A156017

/-- `∑[A006319(n)]*A000079(n)` -/
def P9147542111341272627.Spec : Prop :=
  ∀ n, P9147542111341272627.a n = A156017 n

end A156017

/-! ## A156017.P6863736450660703869

`A006318(n)*A011782(n+1)`
-/

namespace A156017.P6863736450660703869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 n * A011782 (n + 1)

end

end A156017.P6863736450660703869

namespace A156017

/-- `A006318(n)*A011782(n+1)` -/
def P6863736450660703869.Spec : Prop :=
  ∀ n, P6863736450660703869.a n = A156017 n

end A156017

/-!
# A156018: Primes of the form k^3 + k^2 + k - 1.

The programs for A156018, there is no canonical definition to state claims against.
-/

/-! ## A156018.P12076535661685911648

`A027444(A125964(n+1))-1`
-/

namespace A156018.P12076535661685911648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027444 (A125964 (n + 1)).toNat - 1

end

end A156018.P12076535661685911648

/-! ## A156018.P12715689923141793818

`abs(A027444(A125964(Δ[n²]-n))-1)`
-/

namespace A156018.P12715689923141793818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027444 (A125964 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat - 1|

end

end A156018.P12715689923141793818

/-! ## A156018.P2551275139265263960

`A053698(A125964(2*n+1-n))-2`
-/

namespace A156018.P2551275139265263960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053698 (A125964 (2 * n + 1 - n)).toNat - 2

end

end A156018.P2551275139265263960

/-! ## A156018.P128316962248746554

`A057428(n+1)+A027444(A125964(n+1))`
-/

namespace A156018.P128316962248746554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A027444 (A125964 (n + 1)).toNat

end

end A156018.P128316962248746554

/-! ## A156018.P2800345762511070555

`A118824(2*n+1)+A053698(A125964(n+1))`
-/

namespace A156018.P2800345762511070555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (2 * n + 1) + A053698 (A125964 (n + 1)).toNat

end

end A156018.P2800345762511070555

/-!
# A156021: Numbers k such that k^1 + k^2 + k^3 + k^4 -+ 1 are twin primes.

The programs for A156021, there is no canonical definition to state claims against.
-/

/-! ## A156021.P8170609013478105687

`round(root(A156026(n+1), 4))`
-/

namespace A156021.P8170609013478105687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A156026 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))

end

end A156021.P8170609013478105687

/-! ## A156021.P9642241971673343705

`floor(sqrt(sqrt(A156027(n+1))))`
-/

namespace A156021.P9642241971673343705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A156027 (n + 1) : ℝ))⌋

end

end A156021.P9642241971673343705

/-! ## A156021.P7674274035860465392

`A000027(floor(root(A156026(n+1), 4)))`
-/

namespace A156021.P7674274035860465392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊(A156026 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋.toNat

end

end A156021.P7674274035860465392

/-! ## A156021.P1458195896400146652

`A000027(floor(root(A156027(n+1), 4)))`
-/

namespace A156021.P1458195896400146652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊(A156027 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋.toNat

end

end A156021.P1458195896400146652

/-! ## A156021.P5420323304429565036

`A000027(round(root(A156027(n+1), 4)))`
-/

namespace A156021.P5420323304429565036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A156027 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))).toNat

end

end A156021.P5420323304429565036

/-! ## A156021.P10908860543671703987

`∩[A049409(n+1), A182424(n+1)]`
-/

namespace A156021.P10908860543671703987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156021.P10908860543671703987

/-!
# A156022: Maximum number of positive numbers represented by substrings of an n-bit number's binary representation.

The programs for A156022, there is no canonical definition to state claims against.
-/

/-! ## A156022.P4554033391569574147

`∑[n+1]-A156024(n+1)`
-/

namespace A156022.P4554033391569574147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A156024 (n + 1)

end

end A156022.P4554033391569574147

/-! ## A156022.P16286458439220082111

`A112509(n+1)-ceil(abs(sin(n)))`
-/

namespace A156022.P16286458439220082111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112509 (n + 1) - ⌈|Real.sin (n : ℝ)|⌉

end

end A156022.P16286458439220082111

/-! ## A156022.P6862368026629798261

`A055456(A112509(n+1))`
-/

namespace A156022.P6862368026629798261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (A112509 (n + 1)).toNat

end

end A156022.P6862368026629798261

/-! ## A156022.P6030522629395150627

`A028310(A112509(n+1)-1)`
-/

namespace A156022.P6030522629395150627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A112509 (n + 1) - 1).toNat

end

end A156022.P6030522629395150627

/-! ## A156022.P275740990190150358

`A112509(n+1)+A057428(n)`
-/

namespace A156022.P275740990190150358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112509 (n + 1) + A057428 n

end

end A156022.P275740990190150358

/-! ## A156022.P4564400144667061251

`A112509(n+1)-A057427(n)`
-/

namespace A156022.P4564400144667061251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112509 (n + 1) - A057427 n

end

end A156022.P4564400144667061251

/-! ## A156022.P5297516781545553825

`A112509(n+1)-A178334(n)`
-/

namespace A156022.P5297516781545553825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112509 (n + 1) - A178334 n

end

end A156022.P5297516781545553825

/-! ## A156022.P429594281599395798

`A112509(n+1)-A211666(n+1)`
-/

namespace A156022.P429594281599395798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112509 (n + 1) - A211666 (n + 1)

end

end A156022.P429594281599395798

/-! ## A156022.P8074658008419349848

`A112509(n+1)+A156023(n+1)-A156024(n+1)`
-/

namespace A156022.P8074658008419349848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112509 (n + 1) + (A156023 (n + 1) - A156024 (n + 1))

end

end A156022.P8074658008419349848

/-!
# A156023: a(n) = n*(n+1)/2 - A112509(n).

The programs for A156023, there is no canonical definition to state claims against.
-/

/-! ## A156023.P9738597112072674818

`∑[n+1]-A112509(n+1)`
-/

namespace A156023.P9738597112072674818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A112509 (n + 1)

end

end A156023.P9738597112072674818

/-! ## A156023.P581587569853435210

`A156024(n+1)-char[abs(xor(n, -2))]`
-/

namespace A156023.P581587569853435210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156024 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A156023.P581587569853435210

/-! ## A156023.P11879655131397154427

`A156024(n+1)+A057428(n)`
-/

namespace A156023.P11879655131397154427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156024 (n + 1) + A057428 n

end

end A156023.P11879655131397154427

/-! ## A156023.P16644334263961444818

`A156024(n+1)-A057427(n)`
-/

namespace A156023.P16644334263961444818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156024 (n + 1) - A057427 n

end

end A156023.P16644334263961444818

/-! ## A156023.P10160735221676695574

`A156024(n+1)-A178334(n)`
-/

namespace A156023.P10160735221676695574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156024 (n + 1) - A178334 n

end

end A156023.P10160735221676695574

/-! ## A156023.P14377244938323071166

`A000096(n)%A156022(n+1)`
-/

namespace A156023.P14377244938323071166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000096 n) (A156022 (n + 1))

end

end A156023.P14377244938323071166

/-! ## A156023.P8079164925015232298

`A253145(n)%A112509(n+1)`
-/

namespace A156023.P8079164925015232298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253145 n) (A112509 (n + 1))

end

end A156023.P8079164925015232298

/-! ## A156023.P3956828758019005595

`A156024(n+1)-A211666(n+1)`
-/

namespace A156023.P3956828758019005595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156024 (n + 1) - A211666 (n + 1)

end

end A156023.P3956828758019005595

/-! ## A156023.P12594641784206641201

`A347553(n+3)%A156022(n+1)`
-/

namespace A156023.P12594641784206641201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347553 (n + 3)) (A156022 (n + 1))

end

end A156023.P12594641784206641201

/-! ## A156023.P11413327712296639944

`A156022(n+1)+A156024(n+1)-A112509(n+1)`
-/

namespace A156023.P11413327712296639944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156022 (n + 1) + (A156024 (n + 1) - A112509 (n + 1))

end

end A156023.P11413327712296639944

/-!
# A156024: a(n) = n*(n+1)/2 - A156022(n).

The programs for A156024, there is no canonical definition to state claims against.
-/

/-! ## A156024.P5085549156910876626

`∑[n+1]-A156022(n+1)`
-/

namespace A156024.P5085549156910876626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A156022 (n + 1)

end

end A156024.P5085549156910876626

/-! ## A156024.P7903986167035756499

`ceil(A156023(n+1)+abs(sin(n)))`
-/

namespace A156024.P7903986167035756499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A156023 (n + 1) : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A156024.P7903986167035756499

/-! ## A156024.P2694417738727525375

`(∑[n+1]+1)%A112509(n+1)`
-/

namespace A156024.P2694417738727525375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) (A112509 (n + 1))

end

end A156024.P2694417738727525375

/-! ## A156024.P6339073700379839401

`A156023(n+1)+A057427(n)`
-/

namespace A156024.P6339073700379839401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156023 (n + 1) + A057427 n

end

end A156024.P6339073700379839401

/-! ## A156024.P1584067878970241246

`A178334(n)+A156023(n+1)`
-/

namespace A156024.P1584067878970241246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A156023 (n + 1)

end

end A156024.P1584067878970241246

/-! ## A156024.P5284449769282549684

`A156023(n+1)-A057428(n)`
-/

namespace A156024.P5284449769282549684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156023 (n + 1) - A057428 n

end

end A156024.P5284449769282549684

/-! ## A156024.P4702321897067771945

`A253145(n)%A156022(n+1)`
-/

namespace A156024.P4702321897067771945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253145 n) (A156022 (n + 1))

end

end A156024.P4702321897067771945

/-! ## A156024.P9860618892211808851

`A211666(n+1)+A156023(n+1)`
-/

namespace A156024.P9860618892211808851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211666 (n + 1) + A156023 (n + 1)

end

end A156024.P9860618892211808851

/-! ## A156024.P6397018608470141827

`A134869(n+1)-A112509(n+1)`
-/

namespace A156024.P6397018608470141827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (n + 1) - A112509 (n + 1)

end

end A156024.P6397018608470141827

/-! ## A156024.P17639526943899444501

`A112509(n+1)+A156023(n+1)-A156022(n+1)`
-/

namespace A156024.P17639526943899444501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112509 (n + 1) + (A156023 (n + 1) - A156022 (n + 1))

end

end A156024.P17639526943899444501

/-!
# A156026: Lesser of twin primes of the form k^1 + k^2 + k^3 + k^4 - 1.

The programs for A156026, there is no canonical definition to state claims against.
-/

/-! ## A156026.P17600549948015203170

`A156027(n+1)-2`
-/

namespace A156026.P17600549948015203170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156027 (n + 1) - 2

end

end A156026.P17600549948015203170

/-! ## A156026.P9173297507269335977

`abs(A156027(n+1)+A118824(2*n+1))`
-/

namespace A156026.P9173297507269335977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156027 (n + 1) + A118824 (2 * n + 1)|

end

end A156026.P9173297507269335977

/-! ## A156026.P6993262850925546715

`A263916(A020639(2*(n+1)))+A156027(n+1)`
-/

namespace A156026.P6993262850925546715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263916 (A020639 (2 * (n + 1))).toNat + A156027 (n + 1)

end

end A156026.P6993262850925546715

/-! ## A156026.P1529751751458245921

`A027445(A156021(n+1))-1`
-/

namespace A156026.P1529751751458245921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 (A156021 (n + 1)).toNat - 1

end

end A156026.P1529751751458245921

/-! ## A156026.P7192311007520366310

`xor(-1, -A027445(A156021(C(n+1, n))))`
-/

namespace A156026.P7192311007520366310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-A027445 (A156021 (Nat.choose (n + 1) n)).toNat)

end

end A156026.P7192311007520366310

/-! ## A156026.P14126213210651933958

`A308778(n²)+A027445(A156021(n+1))`
-/

namespace A156026.P14126213210651933958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A027445 (A156021 (n + 1)).toNat

end

end A156026.P14126213210651933958

/-! ## A156026.P9682076284976032710

`A053699(A156021(n+1))-A016789(n)%3`
-/

namespace A156026.P9682076284976032710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 (A156021 (n + 1)).toNat - Int.tmod (A016789 n) 3

end

end A156026.P9682076284976032710

/-! ## A156026.P38784109091577365

`A053699(A156021(n+1))-A020639(2*(n+1))`
-/

namespace A156026.P38784109091577365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 (A156021 (n + 1)).toNat - A020639 (2 * (n + 1))

end

end A156026.P38784109091577365

/-! ## A156026.P732497780504650510

`A053699(A156021(n+1))-(A007318(C(2, n+2))+1)`
-/

namespace A156026.P732497780504650510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 (A156021 (n + 1)).toNat - (A007318 (Nat.choose 2 (n + 2)) + 1)

end

end A156026.P732497780504650510

/-! ## A156026.P15969702396175057042

`cos(-π)+A014963(8*n+6)*A027445(A156021(n+1))`
-/

namespace A156026.P15969702396175057042
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (-Real.pi) + (A014963 (8 * n + 6) * A027445 (A156021 (n + 1)).toNat : ℝ)

end

end A156026.P15969702396175057042

/-!
# A156027: Greater of twin primes pairs of the form k^1 + k^2 + k^3 + k^4 - 1.

The programs for A156027, there is no canonical definition to state claims against.
-/

/-! ## A156027.P10592969154282083646

`A156026(n+1)+2`
-/

namespace A156027.P10592969154282083646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156026 (n + 1) + 2

end

end A156027.P10592969154282083646

/-! ## A156027.P11587876409491361451

`A053699(A156021(n+1))`
-/

namespace A156027.P11587876409491361451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 (A156021 (n + 1)).toNat

end

end A156027.P11587876409491361451

/-! ## A156027.P12452846587739427189

`A027445(A156021(C(n+1, n)))+1`
-/

namespace A156027.P12452846587739427189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 (A156021 (Nat.choose (n + 1) n)).toNat + 1

end

end A156027.P12452846587739427189

/-! ## A156027.P3715946370752705755

`A027445(A156021(2*n+1-n))+1`
-/

namespace A156027.P3715946370752705755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027445 (A156021 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat).toNat + 1

end

end A156027.P3715946370752705755

/-! ## A156027.P17596503707854703963

`or(1, A027445(A156021(n%(n+1)+1)))`
-/

namespace A156027.P17596503707854703963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A027445 (A156021 (n % (n + 1) + 1)).toNat)

end

end A156027.P17596503707854703963

/-! ## A156027.P12704950004250210738

`A033999(8*n)+A027445(A156021(n+1))`
-/

namespace A156027.P12704950004250210738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (8 * n) + A027445 (A156021 (n + 1)).toNat

end

end A156027.P12704950004250210738

/-! ## A156027.P5415552053963444865

`or(A006519(30*n+1), A027445(A156021(n+1)))`
-/

namespace A156027.P5415552053963444865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A006519 (30 * n + 1)) (A027445 (A156021 (n + 1)).toNat)

end

end A156027.P5415552053963444865

/-! ## A156027.P1260531939747450555

`A106459(3*n+2)+A027445(A156021(n+1))+1`
-/

namespace A156027.P1260531939747450555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106459 (3 * n + 2) + (A027445 (A156021 (n + 1)).toNat + 1)

end

end A156027.P1260531939747450555

/-! ## A156027.P16400362519801758602

`A027445(A156021(n+1))/A153284(or(1, 3*n+1)+1)+1`
-/

namespace A156027.P16400362519801758602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027445 (A156021 (n + 1)).toNat : ℚ) / (A153284 (Nat.lor 1 (3 * n + 1) + 1) : ℚ) + 1

end

end A156027.P16400362519801758602

/-! ## A156027.P6565659047602195285

`A123519(A057944(n))+A027445(A156021(n+1))`
-/

namespace A156027.P6565659047602195285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123519 (A057944 n).toNat + A027445 (A156021 (n + 1)).toNat

end

end A156027.P6565659047602195285

/-!
# A156033: Numerator of (Sum_{k=1..n} k^3)/n!.

The programs for A156033, there is no canonical definition to state claims against.
-/

/-! ## A156033.P8146915957364193399

`∑[n]²/gcd(∑[n]², n!)`
-/

namespace A156033.P8146915957364193399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / (Nat.gcd ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) (Nat.factorial n) : ℚ)

end

end A156033.P8146915957364193399

/-! ## A156033.P1722263420803216891

`A000537(n)/A000142(n)*A156034(n)`
-/

namespace A156033.P1722263420803216891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000537 n : ℚ) / (A000142 n : ℚ) * (A156034 n : ℚ)

end

end A156033.P1722263420803216891

/-! ## A156033.P10277461380779186696

`A000217(n)²/gcd(A000142(n), A000537(n))`
-/

namespace A156033.P10277461380779186696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n ^ 2 : ℚ) / (Int.gcd (A000142 n) (A000537 n) : ℚ)

end

end A156033.P10277461380779186696

/-! ## A156033.P14174206433737146199

`A000217(n)²/gcd(A000217(n)², A007680(n))`
-/

namespace A156033.P14174206433737146199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n ^ 2 : ℚ) / (Int.gcd (A000217 n ^ 2) (A007680 n) : ℚ)

end

end A156033.P14174206433737146199

/-!
# A156034: Denominator of (Sum_{k=1..n} k^3)/n!.

The programs for A156034, there is no canonical definition to state claims against.
-/

/-! ## A156034.P12257258803151355087

`n!/gcd(∑[n]², n!)`
-/

namespace A156034.P12257258803151355087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (Nat.gcd ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) (Nat.factorial n) : ℚ)

end

end A156034.P12257258803151355087

/-! ## A156034.P18438639843197824150

`A000142(n)/gcd(A000142(n), A000537(n))`
-/

namespace A156034.P18438639843197824150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000142 n) (A000537 n) : ℚ)

end

end A156034.P18438639843197824150

/-!
# A156035: Decimal expansion of 3 + 2*sqrt(2).

The programs for A156035, there is no canonical definition to state claims against.
-/

/-! ## A156035.P2016778551034018202

`9-A157259(n)`
-/

namespace A156035.P2016778551034018202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A157259 (n + 1)

end

end A156035.P2016778551034018202

/-! ## A156035.P16363365461603975672

`floor(A090488(n)+acot(n))`
-/

namespace A156035.P16363365461603975672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090488 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A156035.P16363365461603975672

/-! ## A156035.P17168268121035178929

`A090488(n)+A000007(n)`
-/

namespace A156035.P17168268121035178929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (n + 1) + A000007 n

end

end A156035.P17168268121035178929

/-! ## A156035.P2674517078845957343

`A090488(n)+A000038(n)/2`
-/

namespace A156035.P2674517078845957343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090488 (n + 1) : ℚ) + (A000038 n : ℚ) / 2

end

end A156035.P2674517078845957343

/-! ## A156035.P13680425869700025565

`(A365823(n)+A090488(n))/2`
-/

namespace A156035.P13680425869700025565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365823 (n + 1) + A090488 (n + 1) : ℚ) / 2

end

end A156035.P13680425869700025565

/-! ## A156035.P3688886575092537917

`A028310(n)+A090488(n)-n`
-/

namespace A156035.P3688886575092537917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A090488 (n + 1) - (n : ℤ))

end

end A156035.P3688886575092537917

/-! ## A156035.P7470897219927129825

`A090488(n)+A008683(A008574(n))`
-/

namespace A156035.P7470897219927129825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (n + 1) + A008683 (A008574 n).toNat

end

end A156035.P7470897219927129825

/-! ## A156035.P9028105173580001790

`A090388(n)+A090488(n)-A002194(n)`
-/

namespace A156035.P9028105173580001790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090388 (n + 1) + (A090488 (n + 1) - A002194 (n + 1))

end

end A156035.P9028105173580001790

/-! ## A156035.P5887605009014340118

`A090488(n)+C(A124508(n+1), A124508(n+1)²)`
-/

namespace A156035.P5887605009014340118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (n + 1) + (Nat.choose (A124508 (n + 1)).toNat (A124508 (n + 1) ^ 2).toNat : ℤ)

end

end A156035.P5887605009014340118

/-! ## A156035.P17511817985326461093

`A090488(n)+C(A134869(n+1), A134869(n+1)²)`
-/

namespace A156035.P17511817985326461093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090488 (n + 1) + (Nat.choose (A134869 (n + 1)).toNat (A134869 (n + 1) ^ 2).toNat : ℤ)

end

end A156035.P17511817985326461093

/-! ## A156035.P5152513354037950666

`A178809(n+1)+A090488(n)-A176532(n+1)`
-/

namespace A156035.P5152513354037950666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178809 (n + 1 + 2) + (A090488 (n + 1) - A176532 (n + 1 + 2))

end

end A156035.P5152513354037950666

/-!
# A156036: Numerators in expansion of log(z^2/(cosh(z)-cos(z))) for exponents that are multiples of 4.

The programs for A156036, there is no canonical definition to state claims against.
-/

/-! ## A156036.P6107001526159973614

`A062157(n)*A141590(2*n)`
-/

namespace A156036.P6107001526159973614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A141590 (2 * n)

end

end A156036.P6107001526159973614

/-! ## A156036.P10919860496320158769

`-A062157(n)*A231273(n)`
-/

namespace A156036.P10919860496320158769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A062157 n * A231273 n)

end

end A156036.P10919860496320158769

/-!
# A156037: Largest nonprime < n-th prime.

The programs for A156037, the canonical program `A156037.P5502727147183123732` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156037 has offset 1).

The definition of A156037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156037.P5502727147183123732

`p?[a(n-2)+3]-1` with `a(0)=2, a(1)=0, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A156037

/-- `p?[a(n-2)+3]-1` -/
def P5502727147183123732.Spec : Prop :=
  ∀ n, P5502727147183123732.a n = A156037 (n + 1)

theorem P5502727147183123732.correct : P5502727147183123732.Spec := by
  intro n
  simp only [A156037, Nat.add_sub_cancel]

end A156037

/-! ## A156037.P9093463376377399785

`∑[A075526(n)]-char[1]`
-/

namespace A156037.P9093463376377399785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A156037.P9093463376377399785

namespace A156037

/-- `∑[A075526(n)]-char[1]` -/
def P9093463376377399785.Spec : Prop :=
  ∀ n, P9093463376377399785.a n = A156037 (n + 1)

end A156037

/-! ## A156037.P15588463635854114437

`A006093(1-char[1]+n)`
-/

namespace A156037.P15588463635854114437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat

end

end A156037.P15588463635854114437

namespace A156037

/-- `A006093(1-char[1]+n)` -/
def P15588463635854114437.Spec : Prop :=
  ∀ n, P15588463635854114437.a n = A156037 (n + 1)

end A156037

/-! ## A156037.P8775431971689171661

`∑{p}[A001748(n+1), #-2]`
-/

namespace A156037.P8775431971689171661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 2)

end

end A156037.P8775431971689171661

namespace A156037

/-- `∑{p}[A001748(n+1), #-2]` -/
def P8775431971689171661.Spec : Prop :=
  ∀ n, P8775431971689171661.a n = A156037 (n + 1)

end A156037

/-! ## A156037.P5219594781581265544

`Δ[A007504(n)]-(char[1]+1)`
-/

namespace A156037.P5219594781581265544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A156037.P5219594781581265544

namespace A156037

/-- `Δ[A007504(n)]-(char[1]+1)` -/
def P5219594781581265544.Spec : Prop :=
  ∀ n, P5219594781581265544.a n = A156037 (n + 1)

end A156037

/-! ## A156037.P16127323082979919099

`A000040(n+1)-(char[1]+1)`
-/

namespace A156037.P16127323082979919099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ)

end

end A156037.P16127323082979919099

namespace A156037

/-- `A000040(n+1)-(char[1]+1)` -/
def P16127323082979919099.Spec : Prop :=
  ∀ n, P16127323082979919099.a n = A156037 (n + 1)

end A156037

/-! ## A156037.P3939420432834830186

`A001223(n)+a(n-1)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A156037.P3939420432834830186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A001223 n + a (n - 1)

end

end A156037.P3939420432834830186

namespace A156037

/-- `A001223(n)+a(n-1)` -/
def P3939420432834830186.Spec : Prop :=
  ∀ n, P3939420432834830186.a n = A156037 (n + 1)

end A156037

/-! ## A156037.P2576545584888390588

`A165972(A028310(n))`
-/

namespace A156037.P2576545584888390588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (A028310 n).toNat

end

end A156037.P2576545584888390588

namespace A156037

/-- `A165972(A028310(n))` -/
def P2576545584888390588.Spec : Prop :=
  ∀ n, P2576545584888390588.a n = A156037 (n + 1)

end A156037

/-! ## A156037.P8970451249012311472

`A060576(n)+A040976(n+1)`
-/

namespace A156037.P8970451249012311472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n + A040976 (n + 1)

end

end A156037.P8970451249012311472

namespace A156037

/-- `A060576(n)+A040976(n+1)` -/
def P8970451249012311472.Spec : Prop :=
  ∀ n, P8970451249012311472.a n = A156037 (n + 1)

end A156037

/-! ## A156037.P16034679885325240949

`A159075(n)+A006093(n+1)`
-/

namespace A156037.P16034679885325240949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A006093 (n + 1)

end

end A156037.P16034679885325240949

namespace A156037

/-- `A159075(n)+A006093(n+1)` -/
def P16034679885325240949.Spec : Prop :=
  ∀ n, P16034679885325240949.a n = A156037 (n + 1)

end A156037

/-! ## A156037.P16343485418144871475

`A006093(n+1)-A063524(n)`
-/

namespace A156037.P16343485418144871475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A063524 n

end

end A156037.P16343485418144871475

namespace A156037

/-- `A006093(n+1)-A063524(n)` -/
def P16343485418144871475.Spec : Prop :=
  ∀ n, P16343485418144871475.a n = A156037 (n + 1)

end A156037

/-! ## A156037.P13086384750278177112

`A129726(n+1)-A223134(n)`
-/

namespace A156037.P13086384750278177112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129726 (n + 1) - A223134 n

end

end A156037.P13086384750278177112

namespace A156037

/-- `A129726(n+1)-A223134(n)` -/
def P13086384750278177112.Spec : Prop :=
  ∀ n, P13086384750278177112.a n = A156037 (n + 1)

end A156037

/-! ## A156037.P1402142773794342023

`A006093(n+1)/A373565(n)`
-/

namespace A156037.P1402142773794342023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) : ℚ) / (A373565 n : ℚ)

end

end A156037.P1402142773794342023

namespace A156037

/-- `A006093(n+1)/A373565(n)` -/
def P1402142773794342023.Spec : Prop :=
  ∀ n, P1402142773794342023.a n = (A156037 (n + 1) : ℚ)

end A156037

/-! ## A156037.P14662141336766794132

`gcd(A006093(n+1), A169585(n))`
-/

namespace A156037.P14662141336766794132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006093 (n + 1)) (A169585 n)

end

end A156037.P14662141336766794132

namespace A156037

/-- `gcd(A006093(n+1), A169585(n))` -/
def P14662141336766794132.Spec : Prop :=
  ∀ n, (P14662141336766794132.a n : ℤ) = A156037 (n + 1)

end A156037

/-! ## A156037.P1486315646859335192

`xor(A060576(n), A171577(n+1))`
-/

namespace A156037.P1486315646859335192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060576 n) (A171577 (n + 1))

end

end A156037.P1486315646859335192

namespace A156037

/-- `xor(A060576(n), A171577(n+1))` -/
def P1486315646859335192.Spec : Prop :=
  ∀ n, P1486315646859335192.a n = A156037 (n + 1)

end A156037

/-! ## A156037.P12449295484313507268

`A199969(n+1)+A014689(n+1)`
-/

namespace A156037.P12449295484313507268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (n + 1) + A014689 (n + 1)

end

end A156037.P12449295484313507268

namespace A156037

/-- `A199969(n+1)+A014689(n+1)` -/
def P12449295484313507268.Spec : Prop :=
  ∀ n, P12449295484313507268.a n = A156037 (n + 1)

end A156037

/-! ## A156037.P12857667345586092827

`A039915(n+1)-A033322(n+1)`
-/

namespace A156037.P12857667345586092827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 1) - A033322 (n + 1)

end

end A156037.P12857667345586092827

namespace A156037

/-- `A039915(n+1)-A033322(n+1)` -/
def P12857667345586092827.Spec : Prop :=
  ∀ n, P12857667345586092827.a n = A156037 (n + 1)

end A156037

/-! ## A156037.P11127299265533861144

`A063534(n+1)-A072055(n+1)`
-/

namespace A156037.P11127299265533861144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063534 (n + 1) - A072055 (n + 1)

end

end A156037.P11127299265533861144

namespace A156037

/-- `A063534(n+1)-A072055(n+1)` -/
def P11127299265533861144.Spec : Prop :=
  ∀ n, P11127299265533861144.a n = A156037 (n + 1)

end A156037

/-! ## A156037.P13653669980718638871

`A166496(n+1)%A123123(n+1)`
-/

namespace A156037.P13653669980718638871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166496 (n + 1)) (A123123 (n + 1))

end

end A156037.P13653669980718638871

namespace A156037

/-- `A166496(n+1)%A123123(n+1)` -/
def P13653669980718638871.Spec : Prop :=
  ∀ n, P13653669980718638871.a n = A156037 (n + 1)

end A156037

/-! ## A156037.P16189539042213410672

`A008683(a(n-1)+1)+A000040(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A156037.P16189539042213410672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A008683 (a (n - 1) + 1).toNat + A000040 (n + 1)

end

end A156037.P16189539042213410672

namespace A156037

/-- `A008683(a(n-1)+1)+A000040(n+1)` -/
def P16189539042213410672.Spec : Prop :=
  ∀ n, P16189539042213410672.a n = A156037 (n + 1)

end A156037

/-!
# A156039: Number of compositions (ordered partitions) of n into 4 parts, where the first is at least as great as each of the others.

The programs for A156039, the canonical program `A156039.P9805640249302762307` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156039 has offset 0).

The definition of A156039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156039.P9805640249302762307

`A212986(n)+A173722(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156039

/-- `A212986(n)+A173722(n)` -/
def P9805640249302762307.Spec : Prop :=
  ∀ n, P9805640249302762307.a n = A156039 n

theorem P9805640249302762307.correct : P9805640249302762307.Spec := by
  intro n
  simp only [A156039]

end A156039

/-! ## A156039.P749818577798269655

`2*A001973(n)-A008766(n)`
-/

namespace A156039.P749818577798269655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001973 n - A008766 n

end

end A156039.P749818577798269655

namespace A156039

/-- `2*A001973(n)-A008766(n)` -/
def P749818577798269655.Spec : Prop :=
  ∀ n, P749818577798269655.a n = A156039 n

end A156039

/-! ## A156039.P10677080037306758509

`A103221(n)+∑[∑[A110655(n)]]`
-/

namespace A156039.P10677080037306758509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156039.P10677080037306758509

namespace A156039

/-- `A103221(n)+∑[∑[A110655(n)]]` -/
def P10677080037306758509.Spec : Prop :=
  ∀ n, P10677080037306758509.a n = A156039 n

end A156039

/-! ## A156039.P13541000433584691246

`A122046(n+2)+A103221(n)`
-/

namespace A156039.P13541000433584691246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122046 (n + 2) + A103221 n

end

end A156039.P13541000433584691246

namespace A156039

/-- `A122046(n+2)+A103221(n)` -/
def P13541000433584691246.Spec : Prop :=
  ∀ n, P13541000433584691246.a n = A156039 n

end A156039

/-! ## A156039.P13372246919132629190

`A029129(6*n)`
-/

namespace A156039.P13372246919132629190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029129 (6 * n)

end

end A156039.P13372246919132629190

namespace A156039

/-- `A029129(6*n)` -/
def P13372246919132629190.Spec : Prop :=
  ∀ n, P13372246919132629190.a n = A156039 n

end A156039

/-! ## A156039.P16597258191773135409

`∑[A032766(A008806(n))]`
-/

namespace A156039.P16597258191773135409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A008806 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156039.P16597258191773135409

namespace A156039

/-- `∑[A032766(A008806(n))]` -/
def P16597258191773135409.Spec : Prop :=
  ∀ n, P16597258191773135409.a n = A156039 n

end A156039

/-! ## A156039.P1226366565146894587

`∑[A057353(2*A008806(n))]`
-/

namespace A156039.P1226366565146894587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * A008806 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156039.P1226366565146894587

namespace A156039

/-- `∑[A057353(2*A008806(n))]` -/
def P1226366565146894587.Spec : Prop :=
  ∀ n, P1226366565146894587.a n = A156039 n

end A156039

/-! ## A156039.P14841818881090722484

`A156041(∑[n+2]+5)`
-/

namespace A156039.P14841818881090722484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A156039.P14841818881090722484

namespace A156039

/-- `A156041(∑[n+2]+5)` -/
def P14841818881090722484.Spec : Prop :=
  ∀ n, P14841818881090722484.a n = A156039 n

end A156039

/-!
# A156040: Number of compositions (ordered partitions) of n into 3 parts (some of which may be zero), where the first is at least as great as each of the others.

The programs for A156040, the canonical program `A156040.P8162952101791024683` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156040 has offset 0).

The definition of A156040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156040.P8162952101791024683

`1+floor((n²+4*n)/6)`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A156040

/-- `1+floor((n²+4*n)/6)` -/
def P8162952101791024683.Spec : Prop :=
  ∀ n, P8162952101791024683.a n = A156040 n

theorem P8162952101791024683.correct : P8162952101791024683.Spec := by
  intro n
  simp only [A156040]

end A156040

/-! ## A156040.P1367190282378453984

`round(xor(1, (n+2)²)/6)`
-/

namespace A156040.P1367190282378453984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 ((n + 2) ^ 2) : ℚ) / 6)

end

end A156040.P1367190282378453984

namespace A156040

/-- `round(xor(1, (n+2)²)/6)` -/
def P1367190282378453984.Spec : Prop :=
  ∀ n, P1367190282378453984.a n = A156040 n

end A156040

/-! ## A156040.P4350325622646945038

`round(∑[or(1, n)+1]/3)`
-/

namespace A156040.P4350325622646945038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3)

end

end A156040.P4350325622646945038

namespace A156040

/-- `round(∑[or(1, n)+1]/3)` -/
def P4350325622646945038.Spec : Prop :=
  ∀ n, P4350325622646945038.a n = A156040 n

end A156040

/-! ## A156040.P17145788768994388454

`∑[ceil(abs(Δ[lcm(2, n)]/3))]`
-/

namespace A156040.P17145788768994388454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 3|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156040.P17145788768994388454

namespace A156040

/-- `∑[ceil(abs(Δ[lcm(2, n)]/3))]` -/
def P17145788768994388454.Spec : Prop :=
  ∀ n, P17145788768994388454.a n = A156040 n

end A156040

/-! ## A156040.P10268611917951673589

`round(C(n+3, 3)/(n+2))`
-/

namespace A156040.P10268611917951673589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 3) 3 : ℚ) / (n + 2 : ℚ))

end

end A156040.P10268611917951673589

namespace A156040

/-- `round(C(n+3, 3)/(n+2))` -/
def P10268611917951673589.Spec : Prop :=
  ∀ n, P10268611917951673589.a n = A156040 n

end A156040

/-! ## A156040.P3386540630770359452

`ceil((∑[or(1, n)+1]-1)/3)`
-/

namespace A156040.P3386540630770359452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ) / 3⌉

end

end A156040.P3386540630770359452

namespace A156040

/-- `ceil((∑[or(1, n)+1]-1)/3)` -/
def P3386540630770359452.Spec : Prop :=
  ∀ n, P3386540630770359452.a n = A156040 n

end A156040

/-! ## A156040.P6872836769044035184

`∑[round((n+1)%2+n/3)]`
-/

namespace A156040.P6872836769044035184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1) % 2 : ℕ) : ℚ) + (n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156040.P6872836769044035184

namespace A156040

/-- `∑[round((n+1)%2+n/3)]` -/
def P6872836769044035184.Spec : Prop :=
  ∀ n, P6872836769044035184.a n = A156040 n

end A156040

/-! ## A156040.P8260954386166050744

`round(record[(n-3)*(n-1)/6])`
-/

namespace A156040.P8260954386166050744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 3) * ((n : ℤ) - 1) : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A156040.P8260954386166050744

namespace A156040

/-- `round(record[(n-3)*(n-1)/6])` -/
def P8260954386166050744.Spec : Prop :=
  ∀ n, P8260954386166050744.a n = A156040 n

end A156040

/-! ## A156040.P3937844737021761107

`round((n+1)/(6*acot(n+3)))`
-/

namespace A156040.P3937844737021761107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / (6 * SequenceMachineLib.acot (n + 3 : ℝ)))

end

end A156040.P3937844737021761107

namespace A156040

/-- `round((n+1)/(6*acot(n+3)))` -/
def P3937844737021761107.Spec : Prop :=
  ∀ n, P3937844737021761107.a n = A156040 n

end A156040

/-! ## A156040.P15399798532151723698

`∑[floor(∑[2-a(n-1)]/3)]` with `a(0)=4`
-/

namespace A156040.P15399798532151723698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156040.P15399798532151723698

namespace A156040

/-- `∑[floor(∑[2-a(n-1)]/3)]` -/
def P15399798532151723698.Spec : Prop :=
  ∀ n, P15399798532151723698.a n = A156040 n

end A156040

/-! ## A156040.P6902190845268867705

`∑[a(gcd(2, n))+a(n-3)]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A156040.P6902190845268867705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  f1 (Nat.gcd 2 n) + f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156040.P6902190845268867705

namespace A156040

/-- `∑[a(gcd(2, n))+a(n-3)]` -/
def P6902190845268867705.Spec : Prop :=
  ∀ n, (P6902190845268867705.a n : ℤ) = A156040 n

end A156040

/-! ## A156040.P10449930616202960712

`∑[a(n-2)+a(∑[n]%3)]` with `a(0)=1, a(1)=0`
-/

namespace A156040.P10449930616202960712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156040.P10449930616202960712

namespace A156040

/-- `∑[a(n-2)+a(∑[n]%3)]` -/
def P10449930616202960712.Spec : Prop :=
  ∀ n, (P10449930616202960712.a n : ℤ) = A156040 n

end A156040

/-! ## A156040.P17072492053329553418

`ceil(a(n-2)+(2*n+1)/3)` with `a(0)=1, a(1)=1`
-/

namespace A156040.P17072492053329553418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈(a (n - 2) : ℚ) + (2 * n + 1 : ℚ) / 3⌉

end

end A156040.P17072492053329553418

namespace A156040

/-- `ceil(a(n-2)+(2*n+1)/3)` -/
def P17072492053329553418.Spec : Prop :=
  ∀ n, P17072492053329553418.a n = A156040 n

end A156040

/-! ## A156040.P10825330530863207250

`∑[a(n-2)-(a(n-1)%2-1)]` with `a(0)=1, a(1)=0`
-/

namespace A156040.P10825330530863207250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) - (Int.tmod (f1 (n - 1)) 2 - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156040.P10825330530863207250

namespace A156040

/-- `∑[a(n-2)-(a(n-1)%2-1)]` -/
def P10825330530863207250.Spec : Prop :=
  ∀ n, P10825330530863207250.a n = A156040 n

end A156040

/-! ## A156040.P965030085514125574

`∑[∑[(a(n-1)-a(n-2))²]-a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A156040.P965030085514125574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  (f2 (n - 1) - f2 (n - 2)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156040.P965030085514125574

namespace A156040

/-- `∑[∑[(a(n-1)-a(n-2))²]-a(n-1)]` -/
def P965030085514125574.Spec : Prop :=
  ∀ n, P965030085514125574.a n = A156040 n

end A156040

/-! ## A156040.P652749278222557493

`∑[∑[a(a(n-1))^a(n-2)]-a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A156040.P652749278222557493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (f2 (n - 1)) ^ f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156040.P652749278222557493

namespace A156040

/-- `∑[∑[a(a(n-1))^a(n-2)]-a(n-1)]` -/
def P652749278222557493.Spec : Prop :=
  ∀ n, P652749278222557493.a n = A156040 n

end A156040

/-! ## A156040.P202090864001412859

`∑[A051275(n)]`
-/

namespace A156040.P202090864001412859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156040.P202090864001412859

namespace A156040

/-- `∑[A051275(n)]` -/
def P202090864001412859.Spec : Prop :=
  ∀ n, P202090864001412859.a n = A156040 n

end A156040

/-! ## A156040.P576738239713307626

`A025767(2*n)`
-/

namespace A156040.P576738239713307626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025767 (2 * n)

end

end A156040.P576738239713307626

namespace A156040

/-- `A025767(2*n)` -/
def P576738239713307626.Spec : Prop :=
  ∀ n, P576738239713307626.a n = A156040 n

end A156040

/-! ## A156040.P13367919847890435577

`A319974(2*n)`
-/

namespace A156040.P13367919847890435577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319974 (2 * n)

end

end A156040.P13367919847890435577

namespace A156040

/-- `A319974(2*n)` -/
def P13367919847890435577.Spec : Prop :=
  ∀ n, P13367919847890435577.a n = A156040 n

end A156040

/-!
# A156041: Array A(n,k) (n>=1, k>=1) read by antidiagonals, where A(n,k) is the number of compositions (ordered partitions) of n into exactly k parts, some of which may be zero, with the first part greater than or equal to all the rest.

The programs for A156041, there is no canonical definition to state claims against.
-/

/-! ## A156041.P10511724999220412068

`A184957(A080036(n))`
-/

namespace A156041.P10511724999220412068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184957 (A080036 n).toNat

end

end A156041.P10511724999220412068

/-! ## A156041.P8681011002019441314

`A184957(comp[∑[n]])`
-/

namespace A156041.P8681011002019441314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184957 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A156041.P8681011002019441314

/-! ## A156041.P5648783770111535688

`A186807(∑[char[∑[n]]]²+1-n)`
-/

namespace A156041.P5648783770111535688
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186807 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 - n)

end

end A156041.P5648783770111535688

/-! ## A156041.P17137011099746034299

`A168443(n+1)-A121373(A272594(2*(n+1)))`
-/

namespace A156041.P17137011099746034299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168443 (n + 1) - A121373 (A272594 (2 * (n + 1))).toNat

end

end A156041.P17137011099746034299

/-! ## A156041.P10374172496746111608

`A318950(A068009(n))+A168443(n+1)`
-/

namespace A156041.P10374172496746111608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318950 (A068009 n).toNat + A168443 (n + 1)

end

end A156041.P10374172496746111608

/-!
# A156042: A(n,k) for n >= k in triangular ordering, where A(n,k) is the number of compositions (ordered partitions) of n into k parts, with the first part greater than or equal to all other parts.

The programs for A156042, there is no canonical definition to state claims against.
-/

/-! ## A156042.P1665605120379256585

`A156041(A245300(n)+1)`
-/

namespace A156042.P1665605120379256585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 (A245300 n + 1).toNat

end

end A156042.P1665605120379256585

/-! ## A156042.P12512642760630126620

`A156041(ceil(A214661(n+1)/2))`
-/

namespace A156042.P12512642760630126620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 ⌈(A214661 (n + 1) : ℚ) / 2⌉.toNat

end

end A156042.P12512642760630126620

/-! ## A156042.P11255967795629606380

`A156041(round(A214661(n+1)/2))`
-/

namespace A156042.P11255967795629606380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 (SequenceMachineLib.roundAway ((A214661 (n + 1) : ℚ) / 2)).toNat

end

end A156042.P11255967795629606380

/-! ## A156042.P1161734894657747479

`A156041((A214661(n+1)+1)/2)`
-/

namespace A156042.P1161734894657747479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 (SequenceMachineLib.roundAway ((A214661 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A156042.P1161734894657747479

/-! ## A156042.P3484815243005330796

`A156041(A008619(A214661(n+1)))`
-/

namespace A156042.P3484815243005330796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156041 (A008619 (A214661 (n + 1)).toNat).toNat

end

end A156042.P3484815243005330796

/-!
# A156043: A(n,n), where A(n,k) is the number of compositions (ordered partitions) of n into k parts (parts of size 0 being allowed), with the first part being greater than or equal to all the rest.

The programs for A156043, there is no canonical definition to state claims against.
-/

/-! ## A156043.P12174419346855339609

`A156042(∑[n+1])`
-/

namespace A156043.P12174419346855339609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156042 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A156043.P12174419346855339609

/-! ## A156043.P6451995339123239953

`record[A156042(A038722(n+1))]`
-/

namespace A156043.P6451995339123239953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156042 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156043.P6451995339123239953

/-! ## A156043.P5489947199508452647

`record[A156042(n+1)/A132749(n)]`
-/

namespace A156043.P5489947199508452647
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156042 (n + 1) : ℚ) / (A132749 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156043.P5489947199508452647

/-! ## A156043.P12656125807278526506

`record[A156042(n+1)/A049020(n)]`
-/

namespace A156043.P12656125807278526506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156042 (n + 1) : ℚ) / (A049020 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156043.P12656125807278526506

/-! ## A156043.P4827754921286247866

`A288108(∑[4*(n+1)])`
-/

namespace A156043.P4827754921286247866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288108 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A156043.P4827754921286247866

/-! ## A156043.P9223649066858826126

`record[A288108(n*A008619(n))]`
-/

namespace A156043.P9223649066858826126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288108 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156043.P9223649066858826126

/-! ## A156043.P11490435028983513581

`record[A288108((n+1)*A004526(n))]`
-/

namespace A156043.P11490435028983513581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288108 ((n + 1 : ℤ) * A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156043.P11490435028983513581

/-!
# A156044: Triangle read by rows: T(n,k) = 2 + A000041(n) - A000041(k) - A000041(n-k).

The programs for A156044, there is no canonical definition to state claims against.
-/

/-! ## A156044.P10383393017973606651

`ceil((A156050(n)-A014473(n))/2)`
-/

namespace A156044.P10383393017973606651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A156050 n - A014473 n : ℚ) / 2⌉

end

end A156044.P10383393017973606651

/-! ## A156044.P7245695506731803277

`(A156050(n)-A007318(n))/2+1`
-/

namespace A156044.P7245695506731803277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156050 n - A007318 n : ℚ) / 2 + 1

end

end A156044.P7245695506731803277

/-! ## A156044.P16638971041317689866

`round((A156050(abs(1-n)+1)-A014473(n))/2)`
-/

namespace A156044.P16638971041317689866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A156050 (|1 - (n : ℤ)| + 1).toNat - A014473 n : ℚ) / 2)

end

end A156044.P16638971041317689866

/-! ## A156044.P8549163408653506429

`A001057(A156050(n)-A014473(n))`
-/

namespace A156044.P8549163408653506429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A156050 n - A014473 n).toNat

end

end A156044.P8549163408653506429

/-! ## A156044.P1682513786553462321

`A008619(A156050(n)-A007318(n))`
-/

namespace A156044.P1682513786553462321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A156050 n - A007318 n).toNat

end

end A156044.P1682513786553462321

/-! ## A156044.P14633720980275680332

`A008619(A156050(n)-A014473(n))`
-/

namespace A156044.P14633720980275680332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A156050 n - A014473 n).toNat

end

end A156044.P14633720980275680332

/-! ## A156044.P13855719364047095809

`A052938(A156050(n)-A007318(n))`
-/

namespace A156044.P13855719364047095809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A156050 n - A007318 n).toNat

end

end A156044.P13855719364047095809

/-! ## A156044.P13142922577659532910

`A004525(A156050(n)-A007318(n))+1`
-/

namespace A156044.P13142922577659532910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A156050 n - A007318 n).toNat + 1

end

end A156044.P13142922577659532910

/-! ## A156044.P7749490029566220049

`A001281(A156050(n)+1-A014473(n))`
-/

namespace A156044.P7749490029566220049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A156050 n + (1 - A014473 n)).toNat

end

end A156044.P7749490029566220049

/-! ## A156044.P10133323176186100794

`A001281(1-(A014473(n)-A156050(n)))`
-/

namespace A156044.P10133323176186100794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (1 - (A014473 n - A156050 n)).toNat

end

end A156044.P10133323176186100794

/-!
# A156045: Triangle T(n, k) = 2 + n! - k! - (n-k)!, read by rows.

The programs for A156045, there is no canonical definition to state claims against.
-/

/-! ## A156045.P5956492219003991492

`2-A155170(n)`
-/

namespace A156045.P5956492219003991492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A155170 n

end

end A156045.P5956492219003991492

/-! ## A156045.P5593048513949074192

`A155451(n)+2-A028326(n)`
-/

namespace A156045.P5593048513949074192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155451 n + (2 - A028326 n)

end

end A156045.P5593048513949074192

/-! ## A156045.P11356182114768057152

`A155170(n)/A134824(n+2)+2`
-/

namespace A156045.P11356182114768057152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155170 n : ℚ) / (A134824 (n + 2) : ℚ) + 2

end

end A156045.P11356182114768057152

/-! ## A156045.P6020563479109374711

`2-(2*A176149(n)-A176151(n))`
-/

namespace A156045.P6020563479109374711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (2 * A176149 n - A176151 n)

end

end A156045.P6020563479109374711

/-! ## A156045.P1318629315164507930

`2-(2*A001263(n+1)-A176152(n))`
-/

namespace A156045.P1318629315164507930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (2 * A001263 (n + 1) - A176152 n)

end

end A156045.P1318629315164507930

/-! ## A156045.P12130395278042102167

`A176151(n)+2-A004277(A176149(n))`
-/

namespace A156045.P12130395278042102167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176151 n + (2 - A004277 (A176149 n).toNat)

end

end A156045.P12130395278042102167

/-! ## A156045.P7516213451287427722

`A176151(n)-A005843(A176149(n)-1)`
-/

namespace A156045.P7516213451287427722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176151 n - A005843 (A176149 n - 1).toNat

end

end A156045.P7516213451287427722

/-! ## A156045.P3163225589915018239

`A008683(A139953(n+1))*A155170(n)+2`
-/

namespace A156045.P3163225589915018239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A139953 (n + 1)).toNat * A155170 n + 2

end

end A156045.P3163225589915018239

/-! ## A156045.P6616507969149161492

`A176152(n)+2-A004277(A001263(n+1))`
-/

namespace A156045.P6616507969149161492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176152 n + (2 - A004277 (A001263 (n + 1)).toNat)

end

end A156045.P6616507969149161492

/-! ## A156045.P16505656948184798549

`A156046(n)-A156044(n)`
-/

namespace A156045.P16505656948184798549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156046 n - A156044 n

end

end A156045.P16505656948184798549

/-!
# A156046: A triangle sequence made symmetrical by reverse coefficients: t0(n,m)=(2 + n! - m! - (n - m)! + 2 + PartitionsP[n] - PartitionsP[ m] - PartitionsP[n - m]); t(n,m)=(t0(n,m)+Reverse[t0(n,m)])/2.

The programs for A156046, there is no canonical definition to state claims against.
-/

/-! ## A156046.P9453982830696840955

`A156045(n)+A156044(n)`
-/

namespace A156046.P9453982830696840955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156045 n + A156044 n

end

end A156046.P9453982830696840955

/-! ## A156046.P10822382607238358150

`A156044(n)+2-A155170(n)`
-/

namespace A156046.P10822382607238358150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156044 n + (2 - A155170 n)

end

end A156046.P10822382607238358150

/-! ## A156046.P6996111886661630532

`A156044(n)+A155451(n)+2-A028326(n)`
-/

namespace A156046.P6996111886661630532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156044 n + (A155451 n + (2 - A028326 n))

end

end A156046.P6996111886661630532

/-! ## A156046.P13000072308245055570

`A156045(n)+ceil((A156050(n)-A014473(n))/2)`
-/

namespace A156046.P13000072308245055570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156045 n + ⌈(A156050 n - A014473 n : ℚ) / 2⌉

end

end A156046.P13000072308245055570

/-! ## A156046.P18009298781202176433

`A156045(n)+(A156050(n)-A007318(n))/2+1`
-/

namespace A156046.P18009298781202176433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156045 n : ℚ) + ((A156050 n - A007318 n : ℚ) / 2 + 1)

end

end A156046.P18009298781202176433

/-! ## A156046.P11948906454205973244

`A156044(n)+A155170(n)/A134824(n+2)+2`
-/

namespace A156046.P11948906454205973244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156044 n : ℚ) + ((A155170 n : ℚ) / (A134824 (n + 2) : ℚ) + 2)

end

end A156046.P11948906454205973244

/-! ## A156046.P6402182153945076106

`A156044(n)+2-(2*A001263(n+1)-A176152(n))`
-/

namespace A156046.P6402182153945076106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156044 n + (2 - (2 * A001263 (n + 1) - A176152 n))

end

end A156046.P6402182153945076106

/-! ## A156046.P17814578020507809602

`A156045(n)+A008619(A156050(n)-A007318(n))`
-/

namespace A156046.P17814578020507809602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156045 n + A008619 (A156050 n - A007318 n).toNat

end

end A156046.P17814578020507809602

/-! ## A156046.P14091324232220071649

`A156045(n)+A052938(A156050(n)-A007318(n))`
-/

namespace A156046.P14091324232220071649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156045 n + A052938 (A156050 n - A007318 n).toNat

end

end A156046.P14091324232220071649

/-! ## A156046.P5625749920072759145

`A156045(n)+A004525(A156050(n)-A007318(n))+1`
-/

namespace A156046.P5625749920072759145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156045 n + (A004525 (A156050 n - A007318 n).toNat + 1)

end

end A156046.P5625749920072759145

/-!
# A156047: Triangle read by rows: T(n, k) = (n+1)!*(1/k + 1/(n-k+1)).

The programs for A156047, the canonical program `A156047.P16289712834107389922` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156047 has offset 1).

The definition of A156047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156047.P16289712834107389922

`A094310(comp[∑[n]])+A058298(n+2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A156047

/-- `A094310(comp[∑[n]])+A058298(n+2)` -/
def P16289712834107389922.Spec : Prop :=
  ∀ n, P16289712834107389922.a n = A156047 (n + 1)

theorem P16289712834107389922.correct : P16289712834107389922.Spec := by
  intro n
  simp only [A156047, Nat.add_sub_cancel]

end A156047

/-! ## A156047.P12479422419185589759

`A003057(n+2)/A002260(n+1)*A058298(n+2)`
-/

namespace A156047.P12479422419185589759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) : ℚ) / (A002260 (n + 1) : ℚ) * (A058298 (n + 2) : ℚ)

end

end A156047.P12479422419185589759

namespace A156047

/-- `A003057(n+2)/A002260(n+1)*A058298(n+2)` -/
def P12479422419185589759.Spec : Prop :=
  ∀ n, P12479422419185589759.a n = (A156047 (n + 1) : ℚ)

end A156047

/-! ## A156047.P10767825830209085552

`A094310(n+1)/A004736(n+1)*A003057(n+2)²`
-/

namespace A156047.P10767825830209085552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094310 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ) * (A003057 (n + 2) ^ 2 : ℚ)

end

end A156047.P10767825830209085552

namespace A156047

/-- `A094310(n+1)/A004736(n+1)*A003057(n+2)²` -/
def P10767825830209085552.Spec : Prop :=
  ∀ n, P10767825830209085552.a n = (A156047 (n + 1) : ℚ)

end A156047

/-! ## A156047.P8404079704095641433

`A094310(A014132(n+1))/A004736(n+1)*A003057(n+2)`
-/

namespace A156047.P8404079704095641433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094310 (A014132 (n + 1)).toNat : ℚ) / (A004736 (n + 1) : ℚ) * (A003057 (n + 2) : ℚ)

end

end A156047.P8404079704095641433

namespace A156047

/-- `A094310(A014132(n+1))/A004736(n+1)*A003057(n+2)` -/
def P8404079704095641433.Spec : Prop :=
  ∀ n, P8404079704095641433.a n = (A156047 (n + 1) : ℚ)

end A156047

/-! ## A156047.P11736893122745652656

`A001563(∑[A073423(n)])/A003991(n+1)`
-/

namespace A156047.P11736893122745652656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001563 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (A003991 (n + 1) : ℚ)

end

end A156047.P11736893122745652656

namespace A156047

/-- `A001563(∑[A073423(n)])/A003991(n+1)` -/
def P11736893122745652656.Spec : Prop :=
  ∀ n, P11736893122745652656.a n = (A156047 (n + 1) : ℚ)

end A156047

/-! ## A156047.P2227755452923549927

`A001563(A003057(n+2))/A003991(n+1)`
-/

namespace A156047.P2227755452923549927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001563 (A003057 (n + 2)).toNat : ℚ) / (A003991 (n + 1) : ℚ)

end

end A156047.P2227755452923549927

namespace A156047

/-- `A001563(A003057(n+2))/A003991(n+1)` -/
def P2227755452923549927.Spec : Prop :=
  ∀ n, P2227755452923549927.a n = (A156047 (n + 1) : ℚ)

end A156047

/-!
# A156049: Triangle read by rows: T(n, k) = binomial(n, k) + 2*(1 + n! - k! - (n-k)!).

The programs for A156049, there is no canonical definition to state claims against.
-/

/-! ## A156049.P3940143290365723666

`2*A155451(n)-A131060(n)`
-/

namespace A156049.P3940143290365723666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A155451 n - A131060 n

end

end A156049.P3940143290365723666

/-! ## A156049.P16844766397809815234

`A014473(n)+A004273(A156045(n))`
-/

namespace A156049.P16844766397809815234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + A004273 (A156045 n).toNat

end

end A156049.P16844766397809815234

/-! ## A156049.P6052933344306401866

`A004277(A155451(n))-A131060(n)`
-/

namespace A156049.P6052933344306401866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A155451 n).toNat - A131060 n

end

end A156049.P6052933344306401866

/-! ## A156049.P7897561097003549005

`A005843(1-A155170(n))+A007318(n)`
-/

namespace A156049.P7897561097003549005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (1 - A155170 n).toNat + A007318 n

end

end A156049.P7897561097003549005

/-! ## A156049.P1350952337463314092

`A005843(1-A155170(n))+A028326(n)/2`
-/

namespace A156049.P1350952337463314092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (1 - A155170 n).toNat : ℚ) + (A028326 n : ℚ) / 2

end

end A156049.P1350952337463314092

/-!
# A156050: Triangle T(n,m) = binomial(n,m)+2*P(n,m) read by rows, where P(n,m) = 1+A000041(n)-A000041(m)-A000041(n-m).

The programs for A156050, there is no canonical definition to state claims against.
-/

/-! ## A156050.P1981992266221933825

`A014473(n)+A004273(A156044(n))`
-/

namespace A156050.P1981992266221933825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + A004273 (A156044 n).toNat

end

end A156050.P1981992266221933825

/-! ## A156050.P10315844262170916337

`A007318(n)+A004273(A156044(n))-1`
-/

namespace A156050.P10315844262170916337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A004273 (A156044 n).toNat - 1)

end

end A156050.P10315844262170916337

/-! ## A156050.P82966645339238187

`A007318(n)+A005843(A156044(n)-1)`
-/

namespace A156050.P82966645339238187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A005843 (A156044 n - 1).toNat

end

end A156050.P82966645339238187

/-! ## A156050.P11788862045789933039

`A045670(A168523(n))`
-/

namespace A156050.P11788862045789933039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045670 (A168523 n).toNat

end

end A156050.P11788862045789933039

/-! ## A156050.P13057729805290524410

`A078759(A141686(n+1))`
-/

namespace A156050.P13057729805290524410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078759 (A141686 (n + 1)).toNat

end

end A156050.P13057729805290524410

/-!
# A156051: Sequence of pairs k>0 and j>1 with the smallest j and the smallest sum j+k such that k*j^n-1 is prime.

The programs for A156051, there is no canonical definition to state claims against.
-/

/-! ## A156051.P6065725591313883482

`A321091(A011796(n+4)+5)`
-/

namespace A156051.P6065725591313883482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321091 (A011796 (n + 4) + 5).toNat

end

end A156051.P6065725591313883482

/-! ## A156051.P15441716837277059031

`A001221(or(13, A130707(n+2)))`
-/

namespace A156051.P15441716837277059031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor 13 (A130707 (n + 2))).toNat

end

end A156051.P15441716837277059031

/-! ## A156051.P8712048198204397367

`gcd(2*n, A308558(A022834(n)))`
-/

namespace A156051.P8712048198204397367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A308558 (A022834 n).toNat)

end

end A156051.P8712048198204397367

/-! ## A156051.P8879565072838058464

`A139355(∑{p}[∑{p}[A273873(n+1)+2, #]+2, #])`
-/

namespace A156051.P8879565072838058464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273873 (n + 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139355 (∑ p ∈ Nat.primeFactors (f1 n), p)

end

end A156051.P8879565072838058464

/-! ## A156051.P16732277733705801954

`A001221(A285844(n)+A016969(n))`
-/

namespace A156051.P16732277733705801954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A285844 n + A016969 n).toNat

end

end A156051.P16732277733705801954

/-!
# A156053: Let m = A002445(n); then a(n) = largest member of A001359 (the lesser twin primes sequence) <= m.

The programs for A156053, there is no canonical definition to state claims against.
-/

/-! ## A156053.P15667901837610966470

`p?[A027642(n)-char[A238374(n)]]`
-/

namespace A156053.P15667901837610966470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238374 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156053.P15667901837610966470

/-! ## A156053.P2046380997782323866

`p?[A106458(n)-A321759(n+1)]`
-/

namespace A156053.P2046380997782323866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 n - A321759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156053.P2046380997782323866

/-!
# A156054: Triangle read by rows: T(n,k) = 2 + A000009(n) - A000009(k) - A000009(n-k).

The programs for A156054, there is no canonical definition to state claims against.
-/

/-! ## A156054.P5249493695072570322

`A320536(A142240(n+1)+1)`
-/

namespace A156054.P5249493695072570322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (A142240 (n + 1) + 1).toNat

end

end A156054.P5249493695072570322

/-! ## A156054.P6182061538186532094

`A157180(A057944(n))+A008615(A004247(n))`
-/

namespace A156054.P6182061538186532094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157180 (A057944 n).toNat + A008615 (A004247 n).toNat

end

end A156054.P6182061538186532094

/-! ## A156054.P7524860269902459613

`A162642(lcm(3, A010048(n)))`
-/

namespace A156054.P7524860269902459613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (Int.lcm 3 (A010048 n))

end

end A156054.P7524860269902459613

/-! ## A156054.P552730955380033540

`A026806(∏{e}[A117401(n), #])`
-/

namespace A156054.P552730955380033540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A156054.P552730955380033540

/-! ## A156054.P7204089611629257626

`A008615(A004247(n))+A001221(A234644(2*(n+1)))`
-/

namespace A156054.P7204089611629257626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A004247 n).toNat + A001221 (A234644 (2 * (n + 1))).toNat

end

end A156054.P7204089611629257626

/-!
# A156055: Define a map f by f(0) = f(1) = 0, otherwise f(k) = A087712(k); then a(n) is the number of steps for the trajectory of n under repeated iteration of f to "terminate".

The programs for A156055, there is no canonical definition to state claims against.
-/

/-! ## A156055.P2456855039281326933

`A226520(A145078(n+1))+A098282(n+1)`
-/

namespace A156055.P2456855039281326933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (A145078 (n + 1)).toNat + A098282 (n + 1)

end

end A156055.P2456855039281326933

/-! ## A156055.P16096822488775649537

`A098282(n+1)-A323022(A145078(n+1)²)`
-/

namespace A156055.P16096822488775649537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098282 (n + 1) - A323022 (A145078 (n + 1) ^ 2).toNat

end

end A156055.P16096822488775649537

/-! ## A156055.P11703059760856230076

`A098282(n+1)-A178334(A145078(n+1)-1)`
-/

namespace A156055.P11703059760856230076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098282 (n + 1) - A178334 (A145078 (n + 1) - 1).toNat

end

end A156055.P11703059760856230076

/-! ## A156055.P9935085335591932017

`A098282(n+1)+A049084(A145078(n+1)+1)-1`
-/

namespace A156055.P9935085335591932017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098282 (n + 1) + (A049084 (A145078 (n + 1) + 1).toNat - 1)

end

end A156055.P9935085335591932017

/-! ## A156055.P9386972781368794987

`A098282(n+1)-A277017(A001190(n))`
-/

namespace A156055.P9386972781368794987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098282 (n + 1) - A277017 (A001190 n).toNat

end

end A156055.P9386972781368794987

/-!
# A156056: n-th triangular number modulo n-th prime.

The programs for A156056, the canonical program `A156056.P7596928476601549033` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156056 has offset 1).

The definition of A156056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156056.P2330632280320419521

`∑[n+1]%Δ[A007504(n)]`
-/

namespace A156056.P2330632280320419521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (f2 (n + 1) - f2 n)

end

end A156056.P2330632280320419521

namespace A156056

/-- `∑[n+1]%Δ[A007504(n)]` -/
def P2330632280320419521.Spec : Prop :=
  ∀ n, P2330632280320419521.a n = A156056 (n + 1)

end A156056

/-! ## A156056.P7596928476601549033

`C(n+2, 2)%A000040(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156056

/-- `C(n+2, 2)%A000040(n+1)` -/
def P7596928476601549033.Spec : Prop :=
  ∀ n, P7596928476601549033.a n = A156056 (n + 1)

theorem P7596928476601549033.correct : P7596928476601549033.Spec := by
  intro n
  simp only [A156056, Nat.add_sub_cancel]

end A156056

/-! ## A156056.P12690205456538347941

`(∑[n]+1+n)%p?[A259153(n)]`
-/

namespace A156056.P12690205456538347941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + 1 + n : ℕ) : ℤ) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A156056.P12690205456538347941

namespace A156056

/-- `(∑[n]+1+n)%p?[A259153(n)]` -/
def P12690205456538347941.Spec : Prop :=
  ∀ n, P12690205456538347941.a n = A156056 (n + 1)

end A156056

/-! ## A156056.P5798655409169324340

`(∑[n]+n+1)%A008578(n+2)`
-/

namespace A156056.P5798655409169324340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) : ℕ) : ℤ) (A008578 (n + 2))

end

end A156056.P5798655409169324340

namespace A156056

/-- `(∑[n]+n+1)%A008578(n+2)` -/
def P5798655409169324340.Spec : Prop :=
  ∀ n, P5798655409169324340.a n = A156056 (n + 1)

end A156056

/-! ## A156056.P2660662681444868746

`((n/2+1)*(n+1))%p?[xor(1, n)+1]`
-/

namespace A156056.P2660662681444868746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((n : ℚ) / 2 + 1) * (n + 1 : ℚ))) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A156056.P2660662681444868746

namespace A156056

/-- `((n/2+1)*(n+1))%p?[xor(1, n)+1]` -/
def P2660662681444868746.Spec : Prop :=
  ∀ n, P2660662681444868746.a n = A156056 (n + 1)

end A156056

/-! ## A156056.P6480081890213645784

`Δ[A000292(n)]%p?[n-(-1)^n]`
-/

namespace A156056.P6480081890213645784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A156056.P6480081890213645784

namespace A156056

/-- `Δ[A000292(n)]%p?[n-(-1)^n]` -/
def P6480081890213645784.Spec : Prop :=
  ∀ n, P6480081890213645784.a n = A156056 (n + 1)

end A156056

/-! ## A156056.P2048598513157387974

`(∑[n]+n+1)%p?[A072229(n)]`
-/

namespace A156056.P2048598513157387974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + n + 1 : ℕ) : ℤ) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A156056.P2048598513157387974

namespace A156056

/-- `(∑[n]+n+1)%p?[A072229(n)]` -/
def P2048598513157387974.Spec : Prop :=
  ∀ n, P2048598513157387974.a n = A156056 (n + 1)

end A156056

/-!
# A156058: a(n) = 5^n * Catalan(n).

The programs for A156058, the canonical program `A156058.P4791948417348963261` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156058 has offset 0).

The definition of A156058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156058.P4791948417348963261

`5^n*A000108(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156058

/-- `5^n*A000108(n)` -/
def P4791948417348963261.Spec : Prop :=
  ∀ n, P4791948417348963261.a n = A156058 n

theorem P4791948417348963261.correct : P4791948417348963261.Spec := by
  intro n
  simp only [A156058]

end A156058

/-! ## A156058.P1567006792337109979

`5*(4-6/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A156058.P1567006792337109979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  5 * ((4 - 6 / (n + 1 : ℚ)) * a (n - 1))

end

end A156058.P1567006792337109979

namespace A156058

/-- `5*(4-6/(n+1))*a(n-1)` -/
def P1567006792337109979.Spec : Prop :=
  ∀ n, P1567006792337109979.a n = (A156058 n : ℚ)

end A156058

/-! ## A156058.P551029775276850907

`abs(5^n*A168491(n))`
-/

namespace A156058.P551029775276850907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) * A168491 n|

end

end A156058.P551029775276850907

namespace A156058

/-- `abs(5^n*A168491(n))` -/
def P551029775276850907.Spec : Prop :=
  ∀ n, P551029775276850907.a n = A156058 n

end A156058

/-! ## A156058.P8170495147236235398

`5^n*A008313(n²)`
-/

namespace A156058.P8170495147236235398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A008313 (n ^ 2)

end

end A156058.P8170495147236235398

namespace A156058

/-- `5^n*A008313(n²)` -/
def P8170495147236235398.Spec : Prop :=
  ∀ n, P8170495147236235398.a n = A156058 n

end A156058

/-! ## A156058.P3893792494477230074

`5^n*A039599(∑[n])`
-/

namespace A156058.P3893792494477230074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A039599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A156058.P3893792494477230074

namespace A156058

/-- `5^n*A039599(∑[n])` -/
def P3893792494477230074.Spec : Prop :=
  ∀ n, P3893792494477230074.a n = A156058 n

end A156058

/-! ## A156058.P12392837433309932398

`5^n*Δ[A155587(n)]`
-/

namespace A156058.P12392837433309932398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A156058.P12392837433309932398

namespace A156058

/-- `5^n*Δ[A155587(n)]` -/
def P12392837433309932398.Spec : Prop :=
  ∀ n, P12392837433309932398.a n = A156058 n

end A156058

/-! ## A156058.P12295826704276353609

`5^n*A028304(2*n)`
-/

namespace A156058.P12295826704276353609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A028304 (2 * n)

end

end A156058.P12295826704276353609

namespace A156058

/-- `5^n*A028304(2*n)` -/
def P12295826704276353609.Spec : Prop :=
  ∀ n, P12295826704276353609.a n = A156058 n

end A156058

/-! ## A156058.P8515247697751869853

`5^n*A126120(2*n)`
-/

namespace A156058.P8515247697751869853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A126120 (2 * n)

end

end A156058.P8515247697751869853

namespace A156058

/-- `5^n*A126120(2*n)` -/
def P8515247697751869853.Spec : Prop :=
  ∀ n, P8515247697751869853.a n = A156058 n

end A156058

/-! ## A156058.P974929117065202966

`A000108(n)*A000351(n)`
-/

namespace A156058.P974929117065202966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000351 n

end

end A156058.P974929117065202966

namespace A156058

/-- `A000108(n)*A000351(n)` -/
def P974929117065202966.Spec : Prop :=
  ∀ n, P974929117065202966.a n = A156058 n

end A156058

/-! ## A156058.P13939250128761603464

`A000108(n)*∑[A005054(n)]`
-/

namespace A156058.P13939250128761603464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A156058.P13939250128761603464

namespace A156058

/-- `A000108(n)*∑[A005054(n)]` -/
def P13939250128761603464.Spec : Prop :=
  ∀ n, P13939250128761603464.a n = A156058 n

end A156058

/-!
# A156059: Composite numbers whose binary representation reads as decimal prime.

The programs for A156059, there is no canonical definition to state claims against.
-/

/-! ## A156059.P16905124332781684035

`filter[A036952(n+1), A005171(#)]`
-/

namespace A156059.P16905124332781684035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A156059.P16905124332781684035

/-! ## A156059.P3850046734320264595

`filter[A036952(n+1), A066247(#)]`
-/

namespace A156059.P3850046734320264595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A156059.P3850046734320264595

/-! ## A156059.P15004435453478268280

`filter[A036952(n+1), A202238(#)]`
-/

namespace A156059.P15004435453478268280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A156059.P15004435453478268280

/-! ## A156059.P9609734485957295431

`filter[A036952(n+1), A292438(#)]`
-/

namespace A156059.P9609734485957295431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A156059.P9609734485957295431

/-! ## A156059.P3598760326113543561

`filter[A036952(n+1), A305821(#)]`
-/

namespace A156059.P3598760326113543561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A305821 (f1 j).toNat = 1) n)

end

end A156059.P3598760326113543561

/-! ## A156059.P10838425908666928176

`filter[A036952(n+1), A323162(#)]`
-/

namespace A156059.P10838425908666928176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A156059.P10838425908666928176

/-! ## A156059.P17660108357819480066

`∩[A036952(n+1), A206075(n+1)]`
-/

namespace A156059.P17660108357819480066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156059.P17660108357819480066

/-! ## A156059.P7726427467174992110

`∩[A036952(n+1), A325571(n+1)]`
-/

namespace A156059.P7726427467174992110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156059.P7726427467174992110

/-! ## A156059.P14304327938909210506

`∩[A014076(n+1), A036952(n+1)]`
-/

namespace A156059.P14304327938909210506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156059.P14304327938909210506

/-! ## A156059.P12264113049375169887

`∩[A036952(n+1), A071904(n+1)]`
-/

namespace A156059.P12264113049375169887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156059.P12264113049375169887

/-! ## A156059.P8859048391059948775

`∩[A036952(n+1), A270574(n+1)]`
-/

namespace A156059.P8859048391059948775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156059.P8859048391059948775

/-! ## A156059.P437216957004884302

`∩[A036952(n+1), A078505(n+1)]`
-/

namespace A156059.P437216957004884302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156059.P437216957004884302

/-! ## A156059.P7220353979003527442

`∩[A036952(n+1), A039769(n+1)]`
-/

namespace A156059.P7220353979003527442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156059.P7220353979003527442

/-! ## A156059.P17860529013048457880

`∩[A036952(n+1), A181780(n+1)]`
-/

namespace A156059.P17860529013048457880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156059.P17860529013048457880

/-! ## A156059.P4681386238492406717

`∩[A036952(n+1), A058957(n+1)]`
-/

namespace A156059.P4681386238492406717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156059.P4681386238492406717

/-! ## A156059.P17868848786226840485

`∩[A036952(n+1), A333312(n+1)]`
-/

namespace A156059.P17868848786226840485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333312 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156059.P17868848786226840485

/-! ## A156059.P8565126556770606102

`∩[A036952(n+1), A079364(n+1)]`
-/

namespace A156059.P8565126556770606102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079364 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156059.P8565126556770606102

/-! ## A156059.P5625653451659074090

`∩[A036952(n+1), A171845(n+1)]`
-/

namespace A156059.P5625653451659074090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156059.P5625653451659074090

/-! ## A156059.P143234038513672385

`∩[A036952(n+1), A325037(n+1)]`
-/

namespace A156059.P143234038513672385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156059.P143234038513672385

/-! ## A156059.P13061734038208525093

`∩[A036952(n+1), A105441(n+1)]`
-/

namespace A156059.P13061734038208525093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156059.P13061734038208525093

/-!
# A156060: Jacobsthal numbers A001045 mod 9.

The programs for A156060, the canonical program `A156060.P14496861671679913336` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156060 has offset 0).

The definition of A156060 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 627 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156060.P14496861671679913336

`A010878(2*n*A070366(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156060

/-- `A010878(2*n*A070366(n))` -/
def P14496861671679913336.Spec : Prop :=
  ∀ n, P14496861671679913336.a n = A156060 n

theorem P14496861671679913336.correct : P14496861671679913336.Spec := by
  intro n
  simp only [A156060]

end A156060

/-!
# A156061: a(n) = product of indices of distinct prime factors of n, where index(prime(k)) = k.

The programs for A156061, the canonical program `A156061.P6491502686179367238` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156061 has offset 1).

The definition of A156061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156061.P10357283626527717420

`A290103(n+1)*A290105(n+1)`
-/

namespace A156061.P10357283626527717420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1) * A290105 (n + 1)

end

end A156061.P10357283626527717420

namespace A156061

/-- `A290103(n+1)*A290105(n+1)` -/
def P10357283626527717420.Spec : Prop :=
  ∀ n, P10357283626527717420.a n = A156061 (n + 1)

end A156061

/-! ## A156061.P10600706093900557625

`A003963(n+1)/A290106(n+1)`
-/

namespace A156061.P10600706093900557625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (n + 1) : ℚ) / (A290106 (n + 1) : ℚ)

end

end A156061.P10600706093900557625

namespace A156061

/-- `A003963(n+1)/A290106(n+1)` -/
def P10600706093900557625.Spec : Prop :=
  ∀ n, P10600706093900557625.a n = (A156061 (n + 1) : ℚ)

end A156061

/-! ## A156061.P6491502686179367238

`∏{p}[n+1, A000720(#)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156061

/-- `∏{p}[n+1, A000720(#)]` -/
def P6491502686179367238.Spec : Prop :=
  ∀ n, P6491502686179367238.a n = A156061 (n + 1)

theorem P6491502686179367238.correct : P6491502686179367238.Spec := by
  intro n
  simp only [A156061, Nat.add_sub_cancel]

end A156061

/-! ## A156061.P9725992707008532514

`A003963(∏{p}[n+1, #])`
-/

namespace A156061.P9725992707008532514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A156061.P9725992707008532514

namespace A156061

/-- `A003963(∏{p}[n+1, #])` -/
def P9725992707008532514.Spec : Prop :=
  ∀ n, P9725992707008532514.a n = A156061 (n + 1)

end A156061

/-! ## A156061.P9977158181300377616

`∏{p}[n+1, A026233(#)]`
-/

namespace A156061.P9977158181300377616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A026233 p

end

end A156061.P9977158181300377616

namespace A156061

/-- `∏{p}[n+1, A026233(#)]` -/
def P9977158181300377616.Spec : Prop :=
  ∀ n, P9977158181300377616.a n = A156061 (n + 1)

end A156061

/-! ## A156061.P1226014810080957567

`∏{p}[n+1, A026238(#)]`
-/

namespace A156061.P1226014810080957567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A026238 p

end

end A156061.P1226014810080957567

namespace A156061

/-- `∏{p}[n+1, A026238(#)]` -/
def P1226014810080957567.Spec : Prop :=
  ∀ n, P1226014810080957567.a n = A156061 (n + 1)

end A156061

/-! ## A156061.P7558807043214442840

`∏{p}[n+1, A049084(#)]`
-/

namespace A156061.P7558807043214442840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A049084 p

end

end A156061.P7558807043214442840

namespace A156061

/-- `∏{p}[n+1, A049084(#)]` -/
def P7558807043214442840.Spec : Prop :=
  ∀ n, P7558807043214442840.a n = A156061 (n + 1)

end A156061

/-! ## A156061.P5022861332139308971

`∏{p}[n+1, A055396(#)]`
-/

namespace A156061.P5022861332139308971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A055396 p

end

end A156061.P5022861332139308971

namespace A156061

/-- `∏{p}[n+1, A055396(#)]` -/
def P5022861332139308971.Spec : Prop :=
  ∀ n, P5022861332139308971.a n = A156061 (n + 1)

end A156061

/-! ## A156061.P17542618154346917009

`∏{p}[n+1, A056239(#)]`
-/

namespace A156061.P17542618154346917009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A056239 p

end

end A156061.P17542618154346917009

namespace A156061

/-- `∏{p}[n+1, A056239(#)]` -/
def P17542618154346917009.Spec : Prop :=
  ∀ n, P17542618154346917009.a n = A156061 (n + 1)

end A156061

/-! ## A156061.P5613705014027254725

`∏{p}[n+1, A058933(#)]`
-/

namespace A156061.P5613705014027254725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A058933 p

end

end A156061.P5613705014027254725

namespace A156061

/-- `∏{p}[n+1, A058933(#)]` -/
def P5613705014027254725.Spec : Prop :=
  ∀ n, P5613705014027254725.a n = A156061 (n + 1)

end A156061

/-! ## A156061.P3474866219808991218

`∏{p}[n+1, A061395(#)]`
-/

namespace A156061.P3474866219808991218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A061395 p

end

end A156061.P3474866219808991218

namespace A156061

/-- `∏{p}[n+1, A061395(#)]` -/
def P3474866219808991218.Spec : Prop :=
  ∀ n, P3474866219808991218.a n = A156061 (n + 1)

end A156061

/-! ## A156061.P5590282244113043456

`∏{p}[n+1, A062774(#)]`
-/

namespace A156061.P5590282244113043456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A062774 p

end

end A156061.P5590282244113043456

namespace A156061

/-- `∏{p}[n+1, A062774(#)]` -/
def P5590282244113043456.Spec : Prop :=
  ∀ n, P5590282244113043456.a n = A156061 (n + 1)

end A156061

/-! ## A156061.P5575199678037350193

`∏{p}[n+1, A062778(#)]`
-/

namespace A156061.P5575199678037350193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A062778 p

end

end A156061.P5575199678037350193

namespace A156061

/-- `∏{p}[n+1, A062778(#)]` -/
def P5575199678037350193.Spec : Prop :=
  ∀ n, P5575199678037350193.a n = A156061 (n + 1)

end A156061

/-! ## A156061.P240786698343667923

`∏{p}[n+1, A064839(#)]`
-/

namespace A156061.P240786698343667923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A064839 p

end

end A156061.P240786698343667923

namespace A156061

/-- `∏{p}[n+1, A064839(#)]` -/
def P240786698343667923.Spec : Prop :=
  ∀ n, P240786698343667923.a n = A156061 (n + 1)

end A156061

/-! ## A156061.P3505483088990019695

`∏{p}[n+1, A065770(#)]`
-/

namespace A156061.P3505483088990019695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A065770 p

end

end A156061.P3505483088990019695

namespace A156061

/-- `∏{p}[n+1, A065770(#)]` -/
def P3505483088990019695.Spec : Prop :=
  ∀ n, P3505483088990019695.a n = A156061 (n + 1)

end A156061

/-! ## A156061.P12790615123032256693

`∏{p}[n+1, A066136(#)]`
-/

namespace A156061.P12790615123032256693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A066136 p

end

end A156061.P12790615123032256693

namespace A156061

/-- `∏{p}[n+1, A066136(#)]` -/
def P12790615123032256693.Spec : Prop :=
  ∀ n, P12790615123032256693.a n = A156061 (n + 1)

end A156061

/-! ## A156061.P289256167084027107

`∏{p}[n+1, A066328(#)]`
-/

namespace A156061.P289256167084027107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A066328 p

end

end A156061.P289256167084027107

namespace A156061

/-- `∏{p}[n+1, A066328(#)]` -/
def P289256167084027107.Spec : Prop :=
  ∀ n, P289256167084027107.a n = A156061 (n + 1)

end A156061

/-! ## A156061.P3091714584157790241

`∏{p}[n+1, A067004(#)]`
-/

namespace A156061.P3091714584157790241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A067004 p

end

end A156061.P3091714584157790241

namespace A156061

/-- `∏{p}[n+1, A067004(#)]` -/
def P3091714584157790241.Spec : Prop :=
  ∀ n, P3091714584157790241.a n = A156061 (n + 1)

end A156061

/-! ## A156061.P3893585671703117253

`∏{p}[n+1, A075167(#)]`
-/

namespace A156061.P3893585671703117253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A075167 p

end

end A156061.P3893585671703117253

namespace A156061

/-- `∏{p}[n+1, A075167(#)]` -/
def P3893585671703117253.Spec : Prop :=
  ∀ n, P3893585671703117253.a n = A156061 (n + 1)

end A156061

/-! ## A156061.P17773275263797489348

`∏{p}[n+1, A082058(#)]`
-/

namespace A156061.P17773275263797489348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A082058 p

end

end A156061.P17773275263797489348

namespace A156061

/-- `∏{p}[n+1, A082058(#)]` -/
def P17773275263797489348.Spec : Prop :=
  ∀ n, P17773275263797489348.a n = A156061 (n + 1)

end A156061

/-!
# A156062: Riordan array (1/(1-x^4), x/(1-x^4)).

The programs for A156062, there is no canonical definition to state claims against.
-/

/-! ## A156062.P18427110378059490519

`abs(A136337(n+1)/A059268(n))`
-/

namespace A156062.P18427110378059490519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A136337 (n + 1) : ℚ) / (A059268 n : ℚ)|

end

end A156062.P18427110378059490519

/-! ## A156062.P1116791515845331209

`gcd(dr(A156064(n)), A136337(n+1))`
-/

namespace A156062.P1116791515845331209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.digitalRoot (A156064 n) : ℤ) (A136337 (n + 1))

end

end A156062.P1116791515845331209

/-! ## A156062.P10708900517259038510

`A000194((A136337(n+1)/A059268(n))²)`
-/

namespace A156062.P10708900517259038510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway (((A136337 (n + 1) : ℚ) / (A059268 n : ℚ)) ^ 2)).toNat

end

end A156062.P10708900517259038510

/-! ## A156062.P7554790043621965809

`A000196((A136337(n+1)/A059268(n))²)`
-/

namespace A156062.P7554790043621965809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway (((A136337 (n + 1) : ℚ) / (A059268 n : ℚ)) ^ 2)).toNat

end

end A156062.P7554790043621965809

/-! ## A156062.P1047265500319411274

`gcd(A136337(n+1)/A059268(n), A000038(n))`
-/

namespace A156062.P1047265500319411274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A136337 (n + 1) : ℚ) / (A059268 n : ℚ))) (A000038 n)

end

end A156062.P1047265500319411274

/-! ## A156062.P15769995086813213012

`lcm(A136337(n+1)/A059268(n), A105812(n))`
-/

namespace A156062.P15769995086813213012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A136337 (n + 1) : ℚ) / (A059268 n : ℚ))) (A105812 n)

end

end A156062.P15769995086813213012

/-! ## A156062.P16199329581419710337

`∑{d}[A136337(n+1)/A059268(n), A000010(#)]`
-/

namespace A156062.P16199329581419710337
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136337 (n + 1) : ℚ) / (A059268 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A156062.P16199329581419710337

/-! ## A156062.P18061180801180755379

`A004086(∑{digits}[A136337(n+1)/A059268(n), #])`
-/

namespace A156062.P18061180801180755379
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136337 (n + 1) : ℚ) / (A059268 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A156062.P18061180801180755379

/-! ## A156062.P12973915318701091705

`sqrt((A136337(n+1)/A059268(n))^A020639(2*(n+1)))`
-/

namespace A156062.P12973915318701091705
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((A136337 (n + 1) : ℚ) / (A059268 n : ℚ)) ^ (A020639 (2 * (n + 1)) : ℤ) : ℝ)

end

end A156062.P12973915318701091705

/-!
# A156063: Odd composite numbers whose reversal is a different composite.

The programs for A156063, there is no canonical definition to state claims against.
-/

/-! ## A156063.P5802520707219654308

`∩[2*n+1, A054518(n+1)]`
-/

namespace A156063.P5802520707219654308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156063.P5802520707219654308

/-! ## A156063.P5656472348338775324

`∩[A054518(n+1), A004273(n)]`
-/

namespace A156063.P5656472348338775324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156063.P5656472348338775324

/-! ## A156063.P7002677974920644009

`∩[A054518(n+1), A004274(n)]`
-/

namespace A156063.P7002677974920644009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156063.P7002677974920644009

/-! ## A156063.P13491859803041593353

`∩[A054518(n+1), A004276(n)]`
-/

namespace A156063.P13491859803041593353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156063.P13491859803041593353

/-! ## A156063.P16152187949828906449

`∩[A054518(n+1), A004281(n)]`
-/

namespace A156063.P16152187949828906449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156063.P16152187949828906449

/-! ## A156063.P12465006062973025526

`∩[A054518(n+1), A020742(n)]`
-/

namespace A156063.P12465006062973025526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156063.P12465006062973025526

/-! ## A156063.P14032674277658727503

`∩[A054518(n+1), A060747(n)]`
-/

namespace A156063.P14032674277658727503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156063.P14032674277658727503

/-! ## A156063.P1749811268455961501

`∩[A054518(n+1), A062545(n)]`
-/

namespace A156063.P1749811268455961501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156063.P1749811268455961501

/-! ## A156063.P540053329227028917

`∩[A054518(n+1), A130773(n)]`
-/

namespace A156063.P540053329227028917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156063.P540053329227028917

/-! ## A156063.P7992023093936743397

`∩[A054518(n+1), A163985(n)]`
-/

namespace A156063.P7992023093936743397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156063.P7992023093936743397

/-! ## A156063.P1476835705160131386

`∩[A054518(n+1), A223134(n)]`
-/

namespace A156063.P1476835705160131386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156063.P1476835705160131386

/-! ## A156063.P4518715402598593088

`∩[A054518(n+1), A326494(n)]`
-/

namespace A156063.P4518715402598593088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156063.P4518715402598593088

/-! ## A156063.P4525913426278100930

`∩[A054518(n+1), A071904(n+1)]`
-/

namespace A156063.P4525913426278100930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156063.P4525913426278100930

/-! ## A156063.P1455765594624590463

`∩[A054518(n+1), A140139(n+1)]`
-/

namespace A156063.P1455765594624590463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156063.P1455765594624590463

/-! ## A156063.P2166966017809976159

`∩[A054518(n+1), A144396(n+1)]`
-/

namespace A156063.P2166966017809976159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156063.P2166966017809976159

/-! ## A156063.P1391742370365828171

`filter[A054518(n+1), A000035(#)]`
-/

namespace A156063.P1391742370365828171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A156063.P1391742370365828171

/-! ## A156063.P1693272757014781178

`filter[A054518(n+1), A266070(#)]`
-/

namespace A156063.P1693272757014781178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A156063.P1693272757014781178

/-! ## A156063.P7055839466019082657

`filter[A054518(n+1), A266246(#)]`
-/

namespace A156063.P7055839466019082657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A156063.P7055839466019082657

/-! ## A156063.P5369346664614958519

`filter[A054518(n+1), A266444(#)]`
-/

namespace A156063.P5369346664614958519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266444 (f1 j).toNat = 1) n)

end

end A156063.P5369346664614958519

/-! ## A156063.P8414620990958308027

`filter[A054518(n+1), A266611(#)]`
-/

namespace A156063.P8414620990958308027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A156063.P8414620990958308027

/-!
# A156064: Inverse of Riordan array (1/(1-x^4), x/(1-x^4)), A156062.

The programs for A156064, there is no canonical definition to state claims against.
-/

/-! ## A156064.P17136041523941164538

`A020985(A107880(n))*A156062(n)`
-/

namespace A156064.P17136041523941164538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A107880 n).toNat * A156062 n

end

end A156064.P17136041523941164538

/-! ## A156064.P16226279308158040530

`(A136337(n+1)/A059268(n))^Δ[A031285(n)]`
-/

namespace A156064.P16226279308158040530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A136337 (n + 1) : ℚ) / (A059268 n : ℚ)) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A156064.P16226279308158040530

/-! ## A156064.P17876483907688552796

`(A136337(n+1)/A059268(n))%A005496(n+2)`
-/

namespace A156064.P17876483907688552796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A136337 (n + 1) : ℚ) / (A059268 n : ℚ))) (A005496 (n + 2))

end

end A156064.P17876483907688552796

/-! ## A156064.P420796407902169566

`A136337(n*A348039(abs(1-n)+1)+1)/A059268(n)`
-/

namespace A156064.P420796407902169566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136337 ((n : ℤ) * A348039 (|1 - (n : ℤ)| + 1).toNat + 1).toNat : ℚ) / (A059268 n : ℚ)

end

end A156064.P420796407902169566

/-! ## A156064.P13957785420489126361

`A014031(A113374(n))`
-/

namespace A156064.P13957785420489126361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014031 (A113374 n).toNat

end

end A156064.P13957785420489126361

/-!
# A156066: Numbers k such that k^2 is a square arising in A154138.

The programs for A156066, the canonical program `A156066.P5977373955940047997` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156066 has offset 1).

The definition of A156066 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156066.P5977373955940047997

`6*a(n-2)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=9, a(3)=16`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A156066

/-- `6*a(n-2)-a(n-4)` -/
def P5977373955940047997.Spec : Prop :=
  ∀ n, P5977373955940047997.a n = A156066 (n + 1)

theorem P5977373955940047997.correct : P5977373955940047997.Spec := by
  intro n
  simp only [A156066, Nat.add_sub_cancel]

end A156066

/-! ## A156066.P16533757482314334150

`sqrt((A154138(n+1)²+A154138(n+1)+6)/2)`
-/

namespace A156066.P16533757482314334150
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A154138 (n + 1) ^ 2 + A154138 (n + 1) + 6 : ℚ) / 2 : ℝ)

end

end A156066.P16533757482314334150

namespace A156066

/-- `sqrt((A154138(n+1)²+A154138(n+1)+6)/2)` -/
def P16533757482314334150.Spec : Prop :=
  ∀ n, P16533757482314334150.a n = (A156066 (n + 1) : ℝ)

end A156066

/-! ## A156066.P18184436287448246088

`A084068(n+1)+A006452(n)`
-/

namespace A156066.P18184436287448246088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084068 (n + 1) + A006452 n

end

end A156066.P18184436287448246088

namespace A156066

/-- `A084068(n+1)+A006452(n)` -/
def P18184436287448246088.Spec : Prop :=
  ∀ n, P18184436287448246088.a n = A156066 (n + 1)

end A156066

/-! ## A156066.P5470231920554462974

`A116558(A004274(n+1))+A006452(n+1)`
-/

namespace A156066.P5470231920554462974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116558 (A004274 (n + 1)).toNat + A006452 (n + 1)

end

end A156066.P5470231920554462974

namespace A156066

/-- `A116558(A004274(n+1))+A006452(n+1)` -/
def P5470231920554462974.Spec : Prop :=
  ∀ n, P5470231920554462974.a n = A156066 (n + 1)

end A156066

/-! ## A156066.P16363935249181357184

`A135153(A053438(n+1))+A006452(n+1)`
-/

namespace A156066.P16363935249181357184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135153 (A053438 (n + 1)).toNat + A006452 (n + 1)

end

end A156066.P16363935249181357184

namespace A156066

/-- `A135153(A053438(n+1))+A006452(n+1)` -/
def P16363935249181357184.Spec : Prop :=
  ∀ n, P16363935249181357184.a n = A156066 (n + 1)

end A156066

/-! ## A156066.P7678599536284751885

`A079496(n+2)-A077241(n)`
-/

namespace A156066.P7678599536284751885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 (n + 2) - A077241 n

end

end A156066.P7678599536284751885

namespace A156066

/-- `A079496(n+2)-A077241(n)` -/
def P7678599536284751885.Spec : Prop :=
  ∀ n, P7678599536284751885.a n = A156066 (n + 1)

end A156066

/-! ## A156066.P13692669210468834020

`A006452(n)+Δ[A006452(n+1)]`
-/

namespace A156066.P13692669210468834020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 n + (f1 (n + 1) - f1 n)

end

end A156066.P13692669210468834020

namespace A156066

/-- `A006452(n)+Δ[A006452(n+1)]` -/
def P13692669210468834020.Spec : Prop :=
  ∀ n, P13692669210468834020.a n = A156066 (n + 1)

end A156066

/-! ## A156066.P13805213591283151890

`A077443(n+1)-A006452(n+1)`
-/

namespace A156066.P13805213591283151890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077443 (n + 1) - A006452 (n + 1)

end

end A156066.P13805213591283151890

namespace A156066

/-- `A077443(n+1)-A006452(n+1)` -/
def P13805213591283151890.Spec : Prop :=
  ∀ n, P13805213591283151890.a n = A156066 (n + 1)

end A156066

/-! ## A156066.P14072087110404623375

`A077443(n+1)-A217975(n+1)/2`
-/

namespace A156066.P14072087110404623375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077443 (n + 1) : ℚ) - (A217975 (n + 1) : ℚ) / 2

end

end A156066.P14072087110404623375

namespace A156066

/-- `A077443(n+1)-A217975(n+1)/2` -/
def P14072087110404623375.Spec : Prop :=
  ∀ n, P14072087110404623375.a n = (A156066 (n + 1) : ℚ)

end A156066

/-! ## A156066.P10417776705860285559

`∑[3*A126354(n+1)]-A126354(n+1)`
-/

namespace A156066.P10417776705860285559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A126354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A126354 (n + 1)

end

end A156066.P10417776705860285559

namespace A156066

/-- `∑[3*A126354(n+1)]-A126354(n+1)` -/
def P10417776705860285559.Spec : Prop :=
  ∀ n, P10417776705860285559.a n = A156066 (n + 1)

end A156066

/-! ## A156066.P12835498726010784954

`A006451(n+1)+A006452(n)-A048739(n)`
-/

namespace A156066.P12835498726010784954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (n + 1) + (A006452 n - A048739 n)

end

end A156066.P12835498726010784954

namespace A156066

/-- `A006451(n+1)+A006452(n)-A048739(n)` -/
def P12835498726010784954.Spec : Prop :=
  ∀ n, P12835498726010784954.a n = A156066 (n + 1)

end A156066

/-! ## A156066.P11112462022879867988

`A216162(2*n)+Δ[A216162(A005843(n+1))]`
-/

namespace A156066.P11112462022879867988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (A005843 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (2 * n) + (f1 (n + 1) - f1 n)

end

end A156066.P11112462022879867988

namespace A156066

/-- `A216162(2*n)+Δ[A216162(A005843(n+1))]` -/
def P11112462022879867988.Spec : Prop :=
  ∀ n, P11112462022879867988.a n = A156066 (n + 1)

end A156066

/-! ## A156066.P3804426584369816353

`A217975(n+2)-(A077442(n)+A006452(n+1))`
-/

namespace A156066.P3804426584369816353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217975 (n + 2) - (A077442 n + A006452 (n + 1))

end

end A156066.P3804426584369816353

namespace A156066

/-- `A217975(n+2)-(A077442(n)+A006452(n+1))` -/
def P3804426584369816353.Spec : Prop :=
  ∀ n, P3804426584369816353.a n = A156066 (n + 1)

end A156066

/-! ## A156066.P4872155591346012770

`A077447(n+2)-(A077446(n+2)+A006452(n+1))`
-/

namespace A156066.P4872155591346012770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077447 (n + 2) - (A077446 (n + 2) + A006452 (n + 1))

end

end A156066.P4872155591346012770

namespace A156066

/-- `A077447(n+2)-(A077446(n+2)+A006452(n+1))` -/
def P4872155591346012770.Spec : Prop :=
  ∀ n, P4872155591346012770.a n = A156066 (n + 1)

end A156066

/-!
# A156067: a(0)=1. a(n)= -2^(n-1)-3*(-1)^n, n>1.

The programs for A156067, the canonical program `A156067.P9490065004063913372` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156067 has offset 0).

The definition of A156067 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156067.P9490065004063913372

`a(n-1)+2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=-5`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A156067

/-- `a(n-1)+2*a(n-2)` -/
def P9490065004063913372.Spec : Prop :=
  ∀ n, P9490065004063913372.a n = A156067 n

theorem P9490065004063913372.correct : P9490065004063913372.Spec := by
  intro n
  simp only [A156067]

end A156067

/-! ## A156067.P11644069120325984012

`A154589(n)-3*(-1)^n`
-/

namespace A156067.P11644069120325984012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154589 n - 3 * (-1) ^ n

end

end A156067.P11644069120325984012

namespace A156067

/-- `A154589(n)-3*(-1)^n` -/
def P11644069120325984012.Spec : Prop :=
  ∀ n, P11644069120325984012.a n = A156067 n

end A156067

/-! ## A156067.P12636041336088305020

`a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=-5`
-/

namespace A156067.P12636041336088305020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -5] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A156067.P12636041336088305020

namespace A156067

/-- `a(n-2)+a(n-1)+a(n-2)` -/
def P12636041336088305020.Spec : Prop :=
  ∀ n, P12636041336088305020.a n = A156067 n

end A156067

/-! ## A156067.P2047166199793081272

`A174971(n+1)+A154589(n)`
-/

namespace A156067.P2047166199793081272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174971 (n + 1) + A154589 n

end

end A156067.P2047166199793081272

namespace A156067

/-- `A174971(n+1)+A154589(n)` -/
def P2047166199793081272.Spec : Prop :=
  ∀ n, P2047166199793081272.a n = A156067 n

end A156067

/-! ## A156067.P9456351093961981134

`Δ[-A254076(n)]`
-/

namespace A156067.P9456351093961981134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A254076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156067.P9456351093961981134

namespace A156067

/-- `Δ[-A254076(n)]` -/
def P9456351093961981134.Spec : Prop :=
  ∀ n, P9456351093961981134.a n = A156067 n

end A156067

/-! ## A156067.P10470997773178414976

`A154570(n)-A001045(n)`
-/

namespace A156067.P10470997773178414976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154570 n - A001045 n

end

end A156067.P10470997773178414976

namespace A156067

/-- `A154570(n)-A001045(n)` -/
def P10470997773178414976.Spec : Prop :=
  ∀ n, P10470997773178414976.a n = A156067 n

end A156067

/-! ## A156067.P9960367492707435059

`A254076(n)-A254076(n+1)`
-/

namespace A156067.P9960367492707435059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254076 n - A254076 (n + 1)

end

end A156067.P9960367492707435059

namespace A156067

/-- `A254076(n)-A254076(n+1)` -/
def P9960367492707435059.Spec : Prop :=
  ∀ n, P9960367492707435059.a n = A156067 n

end A156067

/-! ## A156067.P9337731595816341877

`Δ[A267352(A267352(n))-A011782(n)]`
-/

namespace A156067.P9337731595816341877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267352 (A267352 n).toNat - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156067.P9337731595816341877

namespace A156067

/-- `Δ[A267352(A267352(n))-A011782(n)]` -/
def P9337731595816341877.Spec : Prop :=
  ∀ n, P9337731595816341877.a n = A156067 n

end A156067

/-! ## A156067.P1120694423275152281

`A010704(n)-(A000079(n)-A254076(n))`
-/

namespace A156067.P1120694423275152281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010704 n - (A000079 n - A254076 n)

end

end A156067.P1120694423275152281

namespace A156067

/-- `A010704(n)-(A000079(n)-A254076(n))` -/
def P1120694423275152281.Spec : Prop :=
  ∀ n, P1120694423275152281.a n = A156067 n

end A156067

/-! ## A156067.P2172375339821231076

`A157823(n+1)+A254076(n)+A010704(n)`
-/

namespace A156067.P2172375339821231076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157823 (n + 1) + (A254076 n + A010704 n)

end

end A156067.P2172375339821231076

namespace A156067

/-- `A157823(n+1)+A254076(n)+A010704(n)` -/
def P2172375339821231076.Spec : Prop :=
  ∀ n, P2172375339821231076.a n = A156067 n

end A156067

/-! ## A156067.P7711149320389054374

`A001045(n+1)+A154589(n+1)+A154570(n)`
-/

namespace A156067.P7711149320389054374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A154589 (n + 1) + A154570 n)

end

end A156067.P7711149320389054374

namespace A156067

/-- `A001045(n+1)+A154589(n+1)+A154570(n)` -/
def P7711149320389054374.Spec : Prop :=
  ∀ n, P7711149320389054374.a n = A156067 n

end A156067

/-!
# A156068: The slowest increasing sequence such that there is no common digit between any two integers from {a(n), a(n-1), a(n-2), c=a(n)+a(n-1)+a(n-2)}.

The programs for A156068, there is no canonical definition to state claims against.
-/

/-! ## A156068.P12272577541070748546

`A261466(A342810(n+1))`
-/

namespace A156068.P12272577541070748546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261466 (A342810 (n + 1)).toNat

end

end A156068.P12272577541070748546

/-! ## A156068.P17547866299583762956

`A286362(A147204(n+1))+n`
-/

namespace A156068.P17547866299583762956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286362 (A147204 (n + 1)).toNat + (n : ℤ)

end

end A156068.P17547866299583762956

/-! ## A156068.P8496786897519971243

`∑[A180466(∑[A050228(n+1)])]`
-/

namespace A156068.P8496786897519971243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050228 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180466 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156068.P8496786897519971243

/-! ## A156068.P855318668923066054

`record[gcd(A036647(n), A184522(n+1))]`
-/

namespace A156068.P855318668923066054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036647 n) (A184522 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156068.P855318668923066054

/-! ## A156068.P2616569476137278696

`∑[A193592(A056201(floor(24^(n/4))))]`
-/

namespace A156068.P2616569476137278696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A056201 ⌊(24 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156068.P2616569476137278696

/-!
# A156069: a(n) = A156071(n)/n.

The programs for A156069, there is no canonical definition to state claims against.
-/

/-! ## A156069.P1355082401882424771

`A156071(n+1)/(n+1)`
-/

namespace A156069.P1355082401882424771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156071 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A156069.P1355082401882424771

/-! ## A156069.P10601800561521945719

`floor(A156071(A178787(n))/A178787(n))`
-/

namespace A156069.P10601800561521945719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A156071 (A178787 n).toNat : ℚ) / (A178787 n : ℚ)⌋

end

end A156069.P10601800561521945719

/-!
# A156070: Triangle read by rows based on the Fibonacci sequence A000045: t(n,m) = 1 + Fibonacci[n] - Fibonacci[m] - Fibonacci[n - m].

The programs for A156070, there is no canonical definition to state claims against.
-/

/-! ## A156070.P13164730118316521165

`2-A176046(n)`
-/

namespace A156070.P13164730118316521165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A176046 n

end

end A156070.P13164730118316521165

/-! ## A156070.P4526709330900805237

`A108037(n)+1-A094570(n)`
-/

namespace A156070.P4526709330900805237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 n + (1 - A094570 n)

end

end A156070.P4526709330900805237

/-! ## A156070.P4195755620130421582

`A176046(n)/A164117(2*n+1)+2`
-/

namespace A156070.P4195755620130421582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176046 n : ℚ) / (A164117 (2 * n + 1) : ℚ) + 2

end

end A156070.P4195755620130421582

/-! ## A156070.P12091148908391215673

`A108037(n)+A024000(A094570(n))`
-/

namespace A156070.P12091148908391215673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 n + A024000 (A094570 n).toNat

end

end A156070.P12091148908391215673

/-! ## A156070.P17208631755519403423

`A025581(A176046(n)+A055998(n))`
-/

namespace A156070.P17208631755519403423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A176046 n + A055998 n).toNat

end

end A156070.P17208631755519403423

/-! ## A156070.P8022919032082505472

`A001611(A003056(n))-A094570(n)`
-/

namespace A156070.P8022919032082505472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A003056 n).toNat - A094570 n

end

end A156070.P8022919032082505472

/-! ## A156070.P17752750478510848362

`A094570(A057944(n))+1-A094570(n)`
-/

namespace A156070.P17752750478510848362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 (A057944 n).toNat + (1 - A094570 n)

end

end A156070.P17752750478510848362

/-! ## A156070.P9314344327824172208

`A176046(n)/A008683(A068486(n+1))+2`
-/

namespace A156070.P9314344327824172208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176046 n : ℚ) / (A008683 (A068486 (n + 1)).toNat : ℚ) + 2

end

end A156070.P9314344327824172208

/-! ## A156070.P18302518532741158009

`A094570(A057944(n))+A024000(A094570(n))`
-/

namespace A156070.P18302518532741158009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 (A057944 n).toNat + A024000 (A094570 n).toNat

end

end A156070.P18302518532741158009

/-! ## A156070.P2752585347948811299

`A094570(A055998(A002024(n+1)))-A094570(n)`
-/

namespace A156070.P2752585347948811299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 (A055998 (A002024 (n + 1)).toNat).toNat - A094570 n

end

end A156070.P2752585347948811299

/-!
# A156071: Concatenation chain arising in A156069.

The programs for A156071, there is no canonical definition to state claims against.
-/

/-! ## A156071.P10084304539773577353

`(n+1)*A156069(n+1)`
-/

namespace A156071.P10084304539773577353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A156069 (n + 1)

end

end A156071.P10084304539773577353

/-! ## A156071.P17940845797331752593

`A156069(n+1)*A178787(n)`
-/

namespace A156071.P17940845797331752593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156069 (n + 1) * A178787 n

end

end A156071.P17940845797331752593

/-! ## A156071.P4753248752095195900

`A156069(n+1)*A216556(n)`
-/

namespace A156071.P4753248752095195900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156069 (n + 1) * A216556 n

end

end A156071.P4753248752095195900

/-! ## A156071.P7205169364454792615

`A156069(n+1)*A322629(n)`
-/

namespace A156071.P7205169364454792615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156069 (n + 1) * A322629 (n + 100)

end

end A156071.P7205169364454792615

/-! ## A156071.P15671044409426121795

`A156069(n+1)*A348553(n)`
-/

namespace A156071.P15671044409426121795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156069 (n + 1) * A348553 n

end

end A156071.P15671044409426121795

/-!
# A156072: T(n,k) = 1 + a(n) - a(k) - a(n - k), where a(n) = A078012(n+2), triangle read by rows (n >= 0, 0 <= k <= n).

The programs for A156072, there is no canonical definition to state claims against.
-/

/-! ## A156072.P7887231231071439717

`A137735(A004247(n)²)-A001222(A056940(n))`
-/

namespace A156072.P7887231231071439717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (A004247 n ^ 2).toNat - A001222 (A056940 n).toNat

end

end A156072.P7887231231071439717

/-! ## A156072.P7142322914496033385

`A224782(A056940(n)+10)`
-/

namespace A156072.P7142322914496033385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224782 (A056940 n + 10).toNat

end

end A156072.P7142322914496033385

/-! ## A156072.P3759194219626474830

`A114206(or(4, A022166(n)))`
-/

namespace A156072.P3759194219626474830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114206 (Int.lor 4 (A022166 n)).toNat

end

end A156072.P3759194219626474830

/-! ## A156072.P9943208199238840007

`A114206(xor(4, A022166(n)))`
-/

namespace A156072.P9943208199238840007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114206 (Int.xor 4 (A022166 n)).toNat

end

end A156072.P9943208199238840007

/-! ## A156072.P5110873987135283724

`A008681(A001222(A118180(n)))`
-/

namespace A156072.P5110873987135283724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008681 (A001222 (A118180 n).toNat).toNat

end

end A156072.P5110873987135283724

/-!
# A156073: P_n(2) (see A155100).

The programs for A156073, there is no canonical definition to state claims against.
-/

/-! ## A156073.P10372188646799805264

`A274399(∑[A001147(n)])`
-/

namespace A156073.P10372188646799805264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274399 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156073.P10372188646799805264

/-! ## A156073.P15853469867480019181

`A236836(record[A199660(n)])`
-/

namespace A156073.P15853469867480019181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236836 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A156073.P15853469867480019181

/-!
# A156074: Triangle read by rows: T(n, k) = 3 + prime(n+1) - prime(k+1) - prime(n-k+1).

The programs for A156074, the canonical program `A156074.P3527024655164453660` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156074 has offset 0).

The definition of A156074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156074.P3527024655164453660

`A086800(n+1)+3-A104887(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A156074

/-- `A086800(n+1)+3-A104887(n+1)` -/
def P3527024655164453660.Spec : Prop :=
  ∀ n, P3527024655164453660.a n = A156074 n

theorem P3527024655164453660.correct : P3527024655164453660.Spec := by
  intro n
  simp only [A156074]

end A156074

/-! ## A156074.P10422894596669967083

`A086800(n+1)-A086801(A004736(n+1))`
-/

namespace A156074.P10422894596669967083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086800 (n + 1) - A086801 (A004736 (n + 1)).toNat

end

end A156074.P10422894596669967083

namespace A156074

/-- `A086800(n+1)-A086801(A004736(n+1))` -/
def P10422894596669967083.Spec : Prop :=
  ∀ n, P10422894596669967083.a n = A156074 n

end A156074

/-! ## A156074.P14211659002046356025

`A324183(A001222(A022166(n))²)`
-/

namespace A156074.P14211659002046356025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324183 (A001222 (A022166 n).toNat ^ 2).toNat

end

end A156074.P14211659002046356025

namespace A156074

/-- `A324183(A001222(A022166(n))²)` -/
def P14211659002046356025.Spec : Prop :=
  ∀ n, P14211659002046356025.a n = A156074 n

end A156074

/-! ## A156074.P9596531611176866161

`A001223(2^A001222(A022166(n)))`
-/

namespace A156074.P9596531611176866161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A001222 (A022166 n).toNat : ℤ))).toNat

end

end A156074.P9596531611176866161

namespace A156074

/-- `A001223(2^A001222(A022166(n)))` -/
def P9596531611176866161.Spec : Prop :=
  ∀ n, P9596531611176866161.a n = A156074 n

end A156074

/-! ## A156074.P14089113908760272315

`A163377(A181543(n))`
-/

namespace A156074.P14089113908760272315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163377 (A181543 n).toNat

end

end A156074.P14089113908760272315

namespace A156074

/-- `A163377(A181543(n))` -/
def P14089113908760272315.Spec : Prop :=
  ∀ n, P14089113908760272315.a n = A156074 n

end A156074

/-!
# A156075: P_n(3) (see A155100).

The programs for A156075, there is no canonical definition to state claims against.
-/

/-! ## A156075.P4373751124372986074

`A293472(A050508(n+1))`
-/

namespace A156075.P4373751124372986074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293472 (A050508 (n + 1)).toNat

end

end A156075.P4373751124372986074

/-!
# A156076: P_n(4) (see A155100).

The programs for A156076, there is no canonical definition to state claims against.
-/

/-! ## A156076.P8425678661676737485

`∑[∑[A020658(A346671(n))]]`
-/

namespace A156076.P8425678661676737485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020658 (A346671 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156076.P8425678661676737485

/-!
# A156077: a(n) = #{1<=k<=n : A000002(k)=1}.

The programs for A156077, the canonical program `A156077.P4037350870121945842` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156077 has offset 1).

The definition of A156077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156077.P4037350870121945842

`∑[A078650(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156077

/-- `∑[A078650(n+1)]` -/
def P4037350870121945842.Spec : Prop :=
  ∀ n, P4037350870121945842.a n = A156077 (n + 1)

theorem P4037350870121945842.correct : P4037350870121945842.Spec := by
  intro n
  simp only [A156077, Nat.add_sub_cancel]

end A156077

/-! ## A156077.P12532512079499738022

`∑[log2(A049705(n+1))]`
-/

namespace A156077.P12532512079499738022
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A049705 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156077.P12532512079499738022

namespace A156077

/-- `∑[log2(A049705(n+1))]` -/
def P12532512079499738022.Spec : Prop :=
  ∀ n, P12532512079499738022.a n = (A156077 (n + 1) : ℝ)

end A156077

/-! ## A156077.P263533931851717085

`∑[2-A000002(n+1)]`
-/

namespace A156077.P263533931851717085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156077.P263533931851717085

namespace A156077

/-- `∑[2-A000002(n+1)]` -/
def P263533931851717085.Spec : Prop :=
  ∀ n, P263533931851717085.a n = A156077 (n + 1)

end A156077

/-! ## A156077.P16213273509849444368

`∑[A156253(n+1)%2]`
-/

namespace A156077.P16213273509849444368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156253 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156077.P16213273509849444368

namespace A156077

/-- `∑[A156253(n+1)%2]` -/
def P16213273509849444368.Spec : Prop :=
  ∀ n, P16213273509849444368.a n = A156077 (n + 1)

end A156077

/-! ## A156077.P3519396638351541165

`1-A074286(n+1)+n`
-/

namespace A156077.P3519396638351541165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A074286 (n + 1) + (n : ℤ)

end

end A156077.P3519396638351541165

namespace A156077

/-- `1-A074286(n+1)+n` -/
def P3519396638351541165.Spec : Prop :=
  ∀ n, P3519396638351541165.a n = A156077 (n + 1)

end A156077

/-! ## A156077.P16396569638445017645

`2-A156250(n+1)+n`
-/

namespace A156077.P16396569638445017645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A156250 (n + 1) + (n : ℤ)

end

end A156077.P16396569638445017645

namespace A156077

/-- `2-A156250(n+1)+n` -/
def P16396569638445017645.Spec : Prop :=
  ∀ n, P16396569638445017645.a n = A156077 (n + 1)

end A156077

/-! ## A156077.P18243067547876595246

`∑[char[A013947(n+1)-1]]`
-/

namespace A156077.P18243067547876595246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156077.P18243067547876595246

namespace A156077

/-- `∑[char[A013947(n+1)-1]]` -/
def P18243067547876595246.Spec : Prop :=
  ∀ n, (P18243067547876595246.a n : ℤ) = A156077 (n + 1)

end A156077

/-! ## A156077.P5622601570967439763

`∑[char[A022297(n+2)]]+1`
-/

namespace A156077.P5622601570967439763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A156077.P5622601570967439763

namespace A156077

/-- `∑[char[A022297(n+2)]]+1` -/
def P5622601570967439763.Spec : Prop :=
  ∀ n, (P5622601570967439763.a n : ℤ) = A156077 (n + 1)

end A156077

/-! ## A156077.P13234191308879628435

`2*(n+1)-A054353(n+1)`
-/

namespace A156077.P13234191308879628435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A054353 (n + 1)

end

end A156077.P13234191308879628435

namespace A156077

/-- `2*(n+1)-A054353(n+1)` -/
def P13234191308879628435.Spec : Prop :=
  ∀ n, P13234191308879628435.a n = A156077 (n + 1)

end A156077

/-! ## A156077.P14529792470069032049

`(A088568(n+1)+n+1)/2`
-/

namespace A156077.P14529792470069032049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088568 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A156077.P14529792470069032049

namespace A156077

/-- `(A088568(n+1)+n+1)/2` -/
def P14529792470069032049.Spec : Prop :=
  ∀ n, P14529792470069032049.a n = (A156077 (n + 1) : ℚ)

end A156077

/-! ## A156077.P7952326018819726732

`(n+1-A294448(n+1))/2`
-/

namespace A156077.P7952326018819726732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A294448 (n + 1) : ℚ) / 2

end

end A156077.P7952326018819726732

namespace A156077

/-- `(n+1-A294448(n+1))/2` -/
def P7952326018819726732.Spec : Prop :=
  ∀ n, P7952326018819726732.a n = (A156077 (n + 1) : ℚ)

end A156077

/-! ## A156077.P16229805067131658415

`∑[A000035(A156253(n+1))]`
-/

namespace A156077.P16229805067131658415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A156253 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156077.P16229805067131658415

namespace A156077

/-- `∑[A000035(A156253(n+1))]` -/
def P16229805067131658415.Spec : Prop :=
  ∀ n, P16229805067131658415.a n = A156077 (n + 1)

end A156077

/-! ## A156077.P17151445616243974902

`A088568(n+1)+A074286(n+1)`
-/

namespace A156077.P17151445616243974902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088568 (n + 1) + A074286 (n + 1)

end

end A156077.P17151445616243974902

namespace A156077

/-- `A088568(n+1)+A074286(n+1)` -/
def P17151445616243974902.Spec : Prop :=
  ∀ n, P17151445616243974902.a n = A156077 (n + 1)

end A156077

/-! ## A156077.P8239443146516510956

`A005408(n)+1-A054353(n+1)`
-/

namespace A156077.P8239443146516510956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + (1 - A054353 (n + 1))

end

end A156077.P8239443146516510956

namespace A156077

/-- `A005408(n)+1-A054353(n+1)` -/
def P8239443146516510956.Spec : Prop :=
  ∀ n, P8239443146516510956.a n = A156077 (n + 1)

end A156077

/-! ## A156077.P945457654009010722

`A005843(n)+2-A054353(n+1)`
-/

namespace A156077.P945457654009010722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (2 - A054353 (n + 1))

end

end A156077.P945457654009010722

namespace A156077

/-- `A005843(n)+2-A054353(n+1)` -/
def P945457654009010722.Spec : Prop :=
  ∀ n, P945457654009010722.a n = A156077 (n + 1)

end A156077

/-! ## A156077.P9999376845065816826

`∑[2-Δ[A216345(n+1)]]`
-/

namespace A156077.P9999376845065816826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156077.P9999376845065816826

namespace A156077

/-- `∑[2-Δ[A216345(n+1)]]` -/
def P9999376845065816826.Spec : Prop :=
  ∀ n, P9999376845065816826.a n = A156077 (n + 1)

end A156077

/-! ## A156077.P11032145307552826366

`2*n+3-A216345(n+2)`
-/

namespace A156077.P11032145307552826366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A216345 (n + 2)

end

end A156077.P11032145307552826366

namespace A156077

/-- `2*n+3-A216345(n+2)` -/
def P11032145307552826366.Spec : Prop :=
  ∀ n, P11032145307552826366.a n = A156077 (n + 1)

end A156077

/-! ## A156077.P16269738857004742884

`∑[1-A123594(n+3)]`
-/

namespace A156077.P16269738857004742884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A123594 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156077.P16269738857004742884

namespace A156077

/-- `∑[1-A123594(n+3)]` -/
def P16269738857004742884.Spec : Prop :=
  ∀ n, P16269738857004742884.a n = A156077 (n + 1)

end A156077

/-! ## A156077.P6940596646065703483

`∑[Δ[A329356(n)]-A329356(n)]`
-/

namespace A156077.P6940596646065703483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329356 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A329356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156077.P6940596646065703483

namespace A156077

/-- `∑[Δ[A329356(n)]-A329356(n)]` -/
def P6940596646065703483.Spec : Prop :=
  ∀ n, P6940596646065703483.a n = A156077 (n + 1)

end A156077

/-!
# A156078: a(n) = #{1 <= k <= ceiling(n/2) : A000002(2k) = 1}.

The programs for A156078, there is no canonical definition to state claims against.
-/

/-! ## A156078.P15034178653013735328

`∑[log2(gcd(n, A088569(n+1)))]`
-/

namespace A156078.P15034178653013735328
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (n : ℤ) (A088569 (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156078.P15034178653013735328

/-! ## A156078.P1840858271827830481

`∑[(n+1)%A049705(n+2)]`
-/

namespace A156078.P1840858271827830481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A049705 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156078.P1840858271827830481

/-! ## A156078.P8603854289996635079

`∑[and(n+1, A078650(n+2))]`
-/

namespace A156078.P8603854289996635079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A078650 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156078.P8603854289996635079

/-! ## A156078.P5433758631098312436

`∑[A078650(n%or(1, n)+2)]`
-/

namespace A156078.P5433758631098312436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078650 (n % Nat.lor 1 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156078.P5433758631098312436

/-! ## A156078.P16875672554283823983

`∑[(n+3)%A088569(or(1, n))]`
-/

namespace A156078.P16875672554283823983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A088569 (Nat.lor 1 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156078.P16875672554283823983

/-! ## A156078.P6177579227378579456

`∑[A078650(C(or(1, n), n)+1)]`
-/

namespace A156078.P6177579227378579456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078650 (Nat.choose (Nat.lor 1 n) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156078.P6177579227378579456

/-! ## A156078.P8041881536038272078

`∑[(A074290(n+2)+2)!%2]`
-/

namespace A156078.P8041881536038272078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A074290 (n + 2) + 2).toNat % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156078.P8041881536038272078

/-! ## A156078.P18274478312000413377

`∑[and((n+1)², A078880(n+1))]`
-/

namespace A156078.P18274478312000413377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1) ^ 2 : ℤ) (A078880 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156078.P18274478312000413377

/-! ## A156078.P7039062290639108519

`∑[and((n+1)², A000002(n+2))]`
-/

namespace A156078.P7039062290639108519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1) ^ 2 : ℤ) (A000002 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156078.P7039062290639108519

/-! ## A156078.P8118692916939084833

`A008619(n)-A156079(n+1)`
-/

namespace A156078.P8118692916939084833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A156079 (n + 1)

end

end A156078.P8118692916939084833

/-!
# A156079: a(n) = #{1 <= k <= ceiling(n/2) : A000002(2k) = 2}.

The programs for A156079, there is no canonical definition to state claims against.
-/

/-! ## A156079.P10952878394455339887

`∑[val(A088570(n+2), 4)]`
-/

namespace A156079.P10952878394455339887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A088570 (n + 2)).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156079.P10952878394455339887

/-! ## A156079.P14817674616523390227

`∑[val(Δ[A158251(n+1)], 4)]`
-/

namespace A156079.P14817674616523390227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158251 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (n + 1) - f2 n).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156079.P14817674616523390227

/-! ## A156079.P17862686117515949718

`∑[∑[A088569(or(1, n))]%2]`
-/

namespace A156079.P17862686117515949718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (Nat.lor 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156079.P17862686117515949718

/-! ## A156079.P6147399323042088948

`∑[log2(gcd(n, A078880(n+1)))]`
-/

namespace A156079.P6147399323042088948
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (n : ℤ) (A078880 (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156079.P6147399323042088948

/-! ## A156079.P7834389537044784418

`∑[(n+1)%A000002(n+2)]`
-/

namespace A156079.P7834389537044784418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A000002 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156079.P7834389537044784418

/-! ## A156079.P7150050123201559206

`∑[and(n+1, A157686(n+1))]`
-/

namespace A156079.P7150050123201559206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A157686 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156079.P7150050123201559206

/-! ## A156079.P14169181459305762550

`∑[and(n+1, A123594(n+4))]`
-/

namespace A156079.P14169181459305762550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A123594 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156079.P14169181459305762550

/-! ## A156079.P3892726736424503201

`∑[char[eq[4, A088570(n+1)]-1]]`
-/

namespace A156079.P3892726736424503201
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156079.P3892726736424503201

/-! ## A156079.P7671309358997921631

`∑[and((n+1)², A088569(n+1))]`
-/

namespace A156079.P7671309358997921631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1) ^ 2 : ℤ) (A088569 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156079.P7671309358997921631

/-! ## A156079.P3287078935355124898

`∑[and((n+1)², A049705(n+2))]`
-/

namespace A156079.P3287078935355124898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1) ^ 2 : ℤ) (A049705 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156079.P3287078935355124898

/-!
# A156080: a(n) = #{1 <= k <= ceiling(n/2) : A000002(2k-1) = 2}.

The programs for A156080, there is no canonical definition to state claims against.
-/

/-! ## A156080.P6746715146279773322

`∑[A074290(C(or(1, n), n))]`
-/

namespace A156080.P6746715146279773322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (Nat.choose (Nat.lor 1 n) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156080.P6746715146279773322

/-! ## A156080.P4443979380672119570

`∑[ceil(sin(A074290(n+1)))]`
-/

namespace A156080.P4443979380672119570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (A074290 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156080.P4443979380672119570

/-! ## A156080.P4193702930914377339

`∑[log2(gcd(n, A000002(n+1)))]`
-/

namespace A156080.P4193702930914377339
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (n : ℤ) (A000002 (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156080.P4193702930914377339

/-! ## A156080.P4043445803302489722

`∑[and(n+1, A123594(n+3))]`
-/

namespace A156080.P4043445803302489722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A123594 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156080.P4043445803302489722

/-! ## A156080.P18128436656371100547

`∑[(n+1)%gcd(2, A160051(n))]`
-/

namespace A156080.P18128436656371100547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % Int.gcd 2 (A160051 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156080.P18128436656371100547

/-! ## A156080.P16516099483662161923

`∑[A074290(n%or(1, n)+1)]`
-/

namespace A156080.P16516099483662161923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (n % Nat.lor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156080.P16516099483662161923

/-! ## A156080.P2571249719235578846

`∑[log2(gcd(n², A088570(n+1)))]`
-/

namespace A156080.P2571249719235578846
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (n ^ 2 : ℤ) (A088570 (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156080.P2571249719235578846

/-! ## A156080.P2005382303602153226

`∑[and((n+1)², A049705(n+1))]`
-/

namespace A156080.P2005382303602153226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1) ^ 2 : ℤ) (A049705 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156080.P2005382303602153226

/-! ## A156080.P18382782640257658720

`A008619(n)-A156081(n+1)`
-/

namespace A156080.P18382782640257658720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A156081 (n + 1)

end

end A156080.P18382782640257658720

/-! ## A156080.P2209983752953663544

`∑[A020639(n+1)%A000002(n+1)]`
-/

namespace A156080.P2209983752953663544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (n + 1)) (A000002 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156080.P2209983752953663544

/-!
# A156081: a(n) = #{1 <= k <= ceiling(n/2) : A000002(2k-1) = 1}.

The programs for A156081, there is no canonical definition to state claims against.
-/

/-! ## A156081.P14999183217158906002

`∑[A088570(n+1)%2]`
-/

namespace A156081.P14999183217158906002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088570 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156081.P14999183217158906002

/-! ## A156081.P12449542298465702874

`∑[∑[A000002(or(1, n))]%2]`
-/

namespace A156081.P12449542298465702874
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (Nat.lor 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156081.P12449542298465702874

/-! ## A156081.P11557975450745302813

`∑[∑[A088570(or(1, n))]%2]`
-/

namespace A156081.P11557975450745302813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (Nat.lor 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156081.P11557975450745302813

/-! ## A156081.P4721585647518898815

`∑[∑[A156253(or(1, n))]%2]`
-/

namespace A156081.P4721585647518898815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (Nat.lor 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156081.P4721585647518898815

/-! ## A156081.P6050771539745398698

`∑[log2(gcd(n, A049705(n+1)))]`
-/

namespace A156081.P6050771539745398698
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (n : ℤ) (A049705 (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156081.P6050771539745398698

/-! ## A156081.P15972552275789628211

`∑[and(n+1, A078650(n+1))]`
-/

namespace A156081.P15972552275789628211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A078650 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156081.P15972552275789628211

/-! ## A156081.P16708300491163139504

`∑[and((n+1)², A000002(n+1))]`
-/

namespace A156081.P16708300491163139504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n + 1) ^ 2 : ℤ) (A000002 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156081.P16708300491163139504

/-! ## A156081.P9492361038197151413

`∑[and(n+1, char[A013947(n+1)-1])]`
-/

namespace A156081.P9492361038197151413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156081.P9492361038197151413

/-! ## A156081.P3554965508187371509

`A008619(n)-A156080(n+1)`
-/

namespace A156081.P3554965508187371509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A156080 (n + 1)

end

end A156081.P3554965508187371509

/-! ## A156081.P9121903829951983489

`n+2-A156077(A216345(n+2))`
-/

namespace A156081.P9121903829951983489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A156077 (A216345 (n + 2)).toNat

end

end A156081.P9121903829951983489

/-!
# A156082: Maximum coefficient of the polynomial (-1)^(n+1)*Product_{k=1..n} (1 - x^k)^2.

The programs for A156082, there is no canonical definition to state claims against.
-/

/-! ## A156082.P853129107043825448

`A369710(n+1)+A380499(n+1)-A133871(n+1)`
-/

namespace A156082.P853129107043825448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369710 (n + 1) + (A380499 (n + 1) - A133871 (n + 1))

end

end A156082.P853129107043825448

/-! ## A156082.P8638245766667065293

`A008480(2*n+1)+lt[n, ∏{e}[n+1, C(#+2, 2)]]`
-/

namespace A156082.P8638245766667065293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.choose (Nat.factorization (f3 n) p + 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (2 * n + 1) + (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)

end

end A156082.P8638245766667065293

/-! ## A156082.P6903603301524868822

`record[A179844(A029744(∏{p}[n+1, #]))]`
-/

namespace A156082.P6903603301524868822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179844 (A029744 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156082.P6903603301524868822

/-! ## A156082.P463482814492441427

`A046854(n)+lt[n, A007425(n+1)]`
-/

namespace A156082.P463482814492441427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A156082.P463482814492441427

/-! ## A156082.P8897109464745472378

`A219347(n)+lt[n, A007425(n+1)]`
-/

namespace A156082.P8897109464745472378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A156082.P8897109464745472378

/-!
# A156084: Sum of the squares of the first n Fibonacci numbers with index divisible by 3.

The programs for A156084, there is no canonical definition to state claims against.
-/

/-! ## A156084.P15474865629522838088

`4*A156085(n)`
-/

namespace A156084.P15474865629522838088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A156085 n

end

end A156084.P15474865629522838088

/-! ## A156084.P156585112109954958

`∑[A014729(n)]`
-/

namespace A156084.P156585112109954958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156084.P156585112109954958

/-! ## A156084.P16449824237663015915

`∑[A014445(n)²]`
-/

namespace A156084.P16449824237663015915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156084.P16449824237663015915

/-! ## A156084.P15059100711072364829

`∑[A007598(3*n)]`
-/

namespace A156084.P15059100711072364829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156084.P15059100711072364829

/-! ## A156084.P15859124882020090842

`∑[4*A099279(n)]`
-/

namespace A156084.P15859124882020090842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A099279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156084.P15859124882020090842

/-! ## A156084.P14205208308200071445

`∑[record[A102875(n)²]]`
-/

namespace A156084.P14205208308200071445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102875 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156084.P14205208308200071445

/-! ## A156084.P5014327113809570768

`∑[(2*A001076(n))²]`
-/

namespace A156084.P5014327113809570768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A001076 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156084.P5014327113809570768

/-! ## A156084.P11721866142023454165

`∑[A117647(2*n)²]`
-/

namespace A156084.P11721866142023454165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117647 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156084.P11721866142023454165

/-! ## A156084.P5564652093517925952

`∑[A000045(3*n)²]`
-/

namespace A156084.P5564652093517925952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156084.P5564652093517925952

/-!
# A156085: One fourth of the sum of the squares of the first n Fibonacci numbers with index divisible by 3.

The programs for A156085, there is no canonical definition to state claims against.
-/

/-! ## A156085.P17729652889783696904

`17*a(n-1)+17*a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=17`
-/

namespace A156085.P17729652889783696904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 17] fun n a =>
  17 * a (n - 1) + 17 * a (n - 2) - a (n - 3)

end

end A156085.P17729652889783696904

/-! ## A156085.P2338989815707884064

`∑[A099279(n)]`
-/

namespace A156085.P2338989815707884064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156085.P2338989815707884064

/-! ## A156085.P9092831312089378588

`A156084(n)/4`
-/

namespace A156085.P9092831312089378588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156084 n : ℚ) / 4

end

end A156085.P9092831312089378588

/-! ## A156085.P9350654094203416373

`∑[A001076(n)²]`
-/

namespace A156085.P9350654094203416373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156085.P9350654094203416373

/-! ## A156085.P2427657366771522846

`∑[A014729(n)/4]`
-/

namespace A156085.P2427657366771522846
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014729 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156085.P2427657366771522846

/-! ## A156085.P15078882738145511847

`∑[A059973(2*n)²]`
-/

namespace A156085.P15078882738145511847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059973 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156085.P15078882738145511847

/-! ## A156085.P14810974958020274103

`∑[A004695(3*n)²]`
-/

namespace A156085.P14810974958020274103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156085.P14810974958020274103

/-! ## A156085.P14900039224043654409

`∑[(A014445(n)/2)²]`
-/

namespace A156085.P14900039224043654409
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A014445 n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156085.P14900039224043654409

/-! ## A156085.P10554997055516698491

`∑[A167808(3*n)²]`
-/

namespace A156085.P10554997055516698491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156085.P10554997055516698491

/-! ## A156085.P11880538635422693392

`∑[A173173(3*n)²]`
-/

namespace A156085.P11880538635422693392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156085.P11880538635422693392

/-!
# A156086: Sum of the squares of the first n Fibonacci numbers with index divisible by 4.

The programs for A156086, there is no canonical definition to state claims against.
-/

/-! ## A156086.P4627664146485081135

`9*A156087(n)`
-/

namespace A156086.P4627664146485081135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A156087 n

end

end A156086.P4627664146485081135

/-! ## A156086.P10795241390785206023

`∑[A033888(n)²]`
-/

namespace A156086.P10795241390785206023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033888 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156086.P10795241390785206023

/-! ## A156086.P10366156559112056712

`∑[A049684(2*n)]`
-/

namespace A156086.P10366156559112056712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049684 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156086.P10366156559112056712

/-! ## A156086.P8533948842614054923

`∑[A007598(4*n)]`
-/

namespace A156086.P8533948842614054923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156086.P8533948842614054923

/-! ## A156086.P9650204688028494326

`∑[9*A049682(n)]`
-/

namespace A156086.P9650204688028494326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A049682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156086.P9650204688028494326

/-! ## A156086.P15069499932867003298

`∑[A001906(2*n)²]`
-/

namespace A156086.P15069499932867003298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156086.P15069499932867003298

/-! ## A156086.P8854848508032212161

`∑[A254884(2*n)²]`
-/

namespace A156086.P8854848508032212161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254884 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156086.P8854848508032212161

/-! ## A156086.P18277939135652026492

`∑[A142880(3*n)²]`
-/

namespace A156086.P18277939135652026492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142880 (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156086.P18277939135652026492

/-! ## A156086.P2409559289257324555

`∑[A142881(3*n)²]`
-/

namespace A156086.P2409559289257324555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142881 (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156086.P2409559289257324555

/-! ## A156086.P10344152204515701911

`∑[A000045(4*n)²]`
-/

namespace A156086.P10344152204515701911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (4 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156086.P10344152204515701911

/-!
# A156087: One ninth of the sum of the squares of the first n Fibonacci numbers with index divisible by 4.

The programs for A156087, there is no canonical definition to state claims against.
-/

/-! ## A156087.P10912884463370929828

`∑[A049682(n)]`
-/

namespace A156087.P10912884463370929828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156087.P10912884463370929828

/-! ## A156087.P7613957080626378900

`A156086(n)/9`
-/

namespace A156087.P7613957080626378900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156086 n : ℚ) / 9

end

end A156087.P7613957080626378900

/-! ## A156087.P16705253270328430213

`∑[A004187(n)²]`
-/

namespace A156087.P16705253270328430213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156087.P16705253270328430213

/-! ## A156087.P3171290170942135087

`∑[A004696(4*n)²]`
-/

namespace A156087.P3171290170942135087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004696 (4 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156087.P3171290170942135087

/-! ## A156087.P10722629786391685265

`∑[A167816(4*n)²]`
-/

namespace A156087.P10722629786391685265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167816 (4 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156087.P10722629786391685265

/-! ## A156087.P9618824126131900889

`∑[A152119(2*n)²]-1`
-/

namespace A156087.P9618824126131900889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152119 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A156087.P9618824126131900889

/-! ## A156087.P14108896423721211826

`∑[(A142881(3*n)/3)²]`
-/

namespace A156087.P14108896423721211826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A142881 (3 * n) : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156087.P14108896423721211826

/-! ## A156087.P15311822587603794033

`∑[(A000045(4*n)/3)²]`
-/

namespace A156087.P15311822587603794033
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000045 (4 * n) : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156087.P15311822587603794033

/-! ## A156087.P8175258167253959949

`∑[A000045(4*n)/3*A004187(n)]`
-/

namespace A156087.P8175258167253959949
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (4 * n) : ℚ) / 3 * (A004187 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156087.P8175258167253959949

/-! ## A156087.P2778688097216734866

`∑[A000045(4*n)/3*A033888(n)/3]`
-/

namespace A156087.P2778688097216734866
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (4 * n) : ℚ) / 3 * ((A033888 n : ℚ) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156087.P2778688097216734866

/-!
# A156088: Alternating sum of the squares of the first n even-indexed Fibonacci numbers.

The programs for A156088, the canonical program `A156088.P16305813456167853455` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156088 has offset 0).

The definition of A156088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156088.P16305813456167853455

`(-1)^n*A081079(n)/15`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156088

/-- `(-1)^n*A081079(n)/15` -/
def P16305813456167853455.Spec : Prop :=
  ∀ n, P16305813456167853455.a n = (A156088 n : ℚ)

end A156088

/-! ## A156088.P9544114526273992439

`∑[(-1)^n*A049684(n)]`
-/

namespace A156088.P9544114526273992439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A049684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156088.P9544114526273992439

namespace A156088

/-- `∑[(-1)^n*A049684(n)]` -/
def P9544114526273992439.Spec : Prop :=
  ∀ n, P9544114526273992439.a n = A156088 n

end A156088

/-! ## A156088.P9949787800847410676

`∑[A000045(2*n)²/(-1)^n]`
-/

namespace A156088.P9949787800847410676
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * n) ^ 2 : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156088.P9949787800847410676

namespace A156088

/-- `∑[A000045(2*n)²/(-1)^n]` -/
def P9949787800847410676.Spec : Prop :=
  ∀ n, P9949787800847410676.a n = (A156088 n : ℚ)

end A156088

/-! ## A156088.P18234261252930848558

`∑[A212804(Δ[n²])²*(-1)^n]`
-/

namespace A156088.P18234261252930848558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat ^ 2 * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156088.P18234261252930848558

namespace A156088

/-- `∑[A212804(Δ[n²])²*(-1)^n]` -/
def P18234261252930848558.Spec : Prop :=
  ∀ n, P18234261252930848558.a n = A156088 n

end A156088

/-! ## A156088.P11868013346991389806

`∑[A004187(n)]*A033999(n)`
-/

namespace A156088.P11868013346991389806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A156088.P11868013346991389806

namespace A156088

/-- `∑[A004187(n)]*A033999(n)` -/
def P11868013346991389806.Spec : Prop :=
  ∀ n, P11868013346991389806.a n = A156088 n

end A156088

/-! ## A156088.P12582977568009218761

`∑[A007598(n)*A075150(n)]`
-/

namespace A156088.P12582977568009218761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n * A075150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156088.P12582977568009218761

namespace A156088

/-- `∑[A007598(n)*A075150(n)]` -/
def P12582977568009218761.Spec : Prop :=
  ∀ n, P12582977568009218761.a n = A156088 n

end A156088

/-! ## A156088.P7800544602188793122

`∑[A000045(n)²*A075150(n)]`
-/

namespace A156088.P7800544602188793122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 * A075150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156088.P7800544602188793122

namespace A156088

/-- `∑[A000045(n)²*A075150(n)]` -/
def P7800544602188793122.Spec : Prop :=
  ∀ n, P7800544602188793122.a n = A156088 n

end A156088

/-! ## A156088.P17651739541778423139

`∑[A007598(2*n)*A033999(n)]`
-/

namespace A156088.P17651739541778423139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (2 * n) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156088.P17651739541778423139

namespace A156088

/-- `∑[A007598(2*n)*A033999(n)]` -/
def P17651739541778423139.Spec : Prop :=
  ∀ n, P17651739541778423139.a n = A156088 n

end A156088

/-! ## A156088.P9717105883438279016

`∑[A007598(2*n)*A056594(2*n)]`
-/

namespace A156088.P9717105883438279016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (2 * n) * A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156088.P9717105883438279016

namespace A156088

/-- `∑[A007598(2*n)*A056594(2*n)]` -/
def P9717105883438279016.Spec : Prop :=
  ∀ n, P9717105883438279016.a n = A156088 n

end A156088

/-! ## A156088.P10875274563920501799

`∑[A000045(2*n)²*A062157(n+1)]`
-/

namespace A156088.P10875274563920501799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) ^ 2 * A062157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156088.P10875274563920501799

namespace A156088

/-- `∑[A000045(2*n)²*A062157(n+1)]` -/
def P10875274563920501799.Spec : Prop :=
  ∀ n, P10875274563920501799.a n = A156088 n

end A156088

/-! ## A156088.P11170246740587917725

`∑[abs(A333378(2*n))*A333378(2*n)]`
-/

namespace A156088.P11170246740587917725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A333378 (2 * n)| * A333378 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156088.P11170246740587917725

namespace A156088

/-- `∑[abs(A333378(2*n))*A333378(2*n)]` -/
def P11170246740587917725.Spec : Prop :=
  ∀ n, P11170246740587917725.a n = A156088 n

end A156088

/-! ## A156088.P17760176002760498032

`∑[A000045(2*n)²*A009001(2*n)]`
-/

namespace A156088.P17760176002760498032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) ^ 2 * A009001 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156088.P17760176002760498032

namespace A156088

/-- `∑[A000045(2*n)²*A009001(2*n)]` -/
def P17760176002760498032.Spec : Prop :=
  ∀ n, P17760176002760498032.a n = A156088 n

end A156088

/-! ## A156088.P1997974680941494765

`∑[A000045(2*n)²*A057077(2*n)]`
-/

namespace A156088.P1997974680941494765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) ^ 2 * A057077 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156088.P1997974680941494765

namespace A156088

/-- `∑[A000045(2*n)²*A057077(2*n)]` -/
def P1997974680941494765.Spec : Prop :=
  ∀ n, P1997974680941494765.a n = A156088 n

end A156088

/-! ## A156088.P12180996546786799560

`A064831(2*n)/A112030(2*n)`
-/

namespace A156088.P12180996546786799560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064831 (2 * n) : ℚ) / (A112030 (2 * n) : ℚ)

end

end A156088.P12180996546786799560

namespace A156088

/-- `A064831(2*n)/A112030(2*n)` -/
def P12180996546786799560.Spec : Prop :=
  ∀ n, P12180996546786799560.a n = (A156088 n : ℚ)

end A156088

/-! ## A156088.P16004772055684037096

`∑[A049684(n)/A033999(n²)]`
-/

namespace A156088.P16004772055684037096
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049684 n : ℚ) / (A033999 (n ^ 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156088.P16004772055684037096

namespace A156088

/-- `∑[A049684(n)/A033999(n²)]` -/
def P16004772055684037096.Spec : Prop :=
  ∀ n, P16004772055684037096.a n = (A156088 n : ℚ)

end A156088

/-!
# A156089: Alternating sum of the squares of the first n odd-indexed Fibonacci numbers.

The programs for A156089, the canonical program `A156089.P13301213734653127456` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156089 has offset 0).

The definition of A156089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156089.P13301213734653127456

`floor(A007598(n)*A075150(n)/3)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A156089

/-- `floor(A007598(n)*A075150(n)/3)` -/
def P13301213734653127456.Spec : Prop :=
  ∀ n, P13301213734653127456.a n = A156089 n

theorem P13301213734653127456.correct : P13301213734653127456.Spec := by
  intro n
  simp only [A156089]

end A156089

/-! ## A156089.P17343507498764785115

`floor(A033999(n)*A049684(n)/3)`
-/

namespace A156089.P17343507498764785115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033999 n * A049684 n : ℚ) / 3⌋

end

end A156089.P17343507498764785115

namespace A156089

/-- `floor(A033999(n)*A049684(n)/3)` -/
def P17343507498764785115.Spec : Prop :=
  ∀ n, P17343507498764785115.a n = A156089 n

end A156089

/-! ## A156089.P11575323554962571310

`floor(A000045(n)²*A075150(n)/3)`
-/

namespace A156089.P11575323554962571310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 n ^ 2 * A075150 n : ℚ) / 3⌋

end

end A156089.P11575323554962571310

namespace A156089

/-- `floor(A000045(n)²*A075150(n)/3)` -/
def P11575323554962571310.Spec : Prop :=
  ∀ n, P11575323554962571310.a n = A156089 n

end A156089

/-! ## A156089.P17311635272821798049

`∑[A007598(A004273(n))*A033999(n)]`
-/

namespace A156089.P17311635272821798049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (A004273 n).toNat * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156089.P17311635272821798049

namespace A156089

/-- `∑[A007598(A004273(n))*A033999(n)]` -/
def P17311635272821798049.Spec : Prop :=
  ∀ n, P17311635272821798049.a n = A156089 n

end A156089

/-! ## A156089.P8548480394275523555

`∑[A007598(A004273(n))*A056594(2*n)]`
-/

namespace A156089.P8548480394275523555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (A004273 n).toNat * A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156089.P8548480394275523555

namespace A156089

/-- `∑[A007598(A004273(n))*A056594(2*n)]` -/
def P8548480394275523555.Spec : Prop :=
  ∀ n, P8548480394275523555.a n = A156089 n

end A156089

/-!
# A156090: Alternating sum of the squares of the first n Fibonacci numbers with index divisible by 3.

The programs for A156090, there is no canonical definition to state claims against.
-/

/-! ## A156090.P5633437724916728375

`4*A156091(n)`
-/

namespace A156090.P5633437724916728375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A156091 n

end

end A156090.P5633437724916728375

/-! ## A156090.P4837222224146565033

`∑[A000045(3*n)²*(-1)^n]`
-/

namespace A156090.P4837222224146565033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (3 * n) ^ 2 * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156090.P4837222224146565033

/-! ## A156090.P8989999424792740937

`∑[A104221(3*n)²*(-1)^n]`
-/

namespace A156090.P8989999424792740937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104221 (3 * n) ^ 2 * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156090.P8989999424792740937

/-! ## A156090.P16842359991994207060

`4*∑[A167808(3*n)²*(-1)^n]`
-/

namespace A156090.P16842359991994207060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 (3 * n) ^ 2 * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A156090.P16842359991994207060

/-! ## A156090.P12379258137326003221

`∑[A014729(n)*A033999(n)]`
-/

namespace A156090.P12379258137326003221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014729 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156090.P12379258137326003221

/-! ## A156090.P9708402176078238835

`∑[(3-2*A000034(n))*A000045(3*n)²]`
-/

namespace A156090.P9708402176078238835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - 2 * A000034 n) * A000045 (3 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156090.P9708402176078238835

/-! ## A156090.P9917689864461886173

`(-1)^n*A000045(6*n+3)/10-(2*n+1)/5`
-/

namespace A156090.P9917689864461886173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * A000045 (6 * n + 3) : ℚ) / 10 - (2 * n + 1 : ℚ) / 5

end

end A156090.P9917689864461886173

/-!
# A156091: One fourth of the alternating sum of the squares of the first n Fibonacci numbers with index divisible by 3.

The programs for A156091, there is no canonical definition to state claims against.
-/

/-! ## A156091.P7052917504358102375

`A156090(n)/4`
-/

namespace A156091.P7052917504358102375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156090 n : ℚ) / 4

end

end A156091.P7052917504358102375

/-! ## A156091.P13273686011356968911

`∑[A167808(3*n)²*(-1)^n]`
-/

namespace A156091.P13273686011356968911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 (3 * n) ^ 2 * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156091.P13273686011356968911

/-! ## A156091.P15569964748151202882

`∑[(A000045(3*n)/2)²*(-1)^n]`
-/

namespace A156091.P15569964748151202882
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000045 (3 * n) : ℚ) / 2) ^ 2 * ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156091.P15569964748151202882

/-! ## A156091.P9661383229845240420

`∑[A104221(3*n)²*(-1)^n]/4`
-/

namespace A156091.P9661383229845240420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104221 (3 * n) ^ 2 * (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A156091.P9661383229845240420

/-! ## A156091.P15710147002691265004

`∑[A033999(n)*A099279(n)]`
-/

namespace A156091.P15710147002691265004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A099279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156091.P15710147002691265004

/-! ## A156091.P4348841994436798322

`∑[A001076(n)²*A033999(n)]`
-/

namespace A156091.P4348841994436798322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n ^ 2 * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156091.P4348841994436798322

/-! ## A156091.P10249658467933650394

`∑[A257940(n+1)-A207832(n)]`
-/

namespace A156091.P10249658467933650394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257940 (n + 1) - A207832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156091.P10249658467933650394

/-! ## A156091.P9232145109050651454

`∑[(A014445(n)/2)²*A087960(n²)]`
-/

namespace A156091.P9232145109050651454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A014445 n : ℚ) / 2) ^ 2 * (A087960 (n ^ 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156091.P9232145109050651454

/-! ## A156091.P14221798430508727286

`∑[(3-2*A000034(n))*A000045(3*n)²]/4`
-/

namespace A156091.P14221798430508727286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - 2 * A000034 n) * A000045 (3 * n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A156091.P14221798430508727286

/-!
# A156092: Alternating sum of the squares of the first n Fibonacci numbers with index divisible by 4.

The programs for A156092, there is no canonical definition to state claims against.
-/

/-! ## A156092.P3880362588835181041

`9*A156093(n)`
-/

namespace A156092.P3880362588835181041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A156093 n

end

end A156092.P3880362588835181041

/-! ## A156092.P6143237251224883266

`∑[(-1)^n*A049684(2*n)]`
-/

namespace A156092.P6143237251224883266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A049684 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156092.P6143237251224883266

/-! ## A156092.P6677150418539460530

`∑[A033888(n)²*A033999(n)]`
-/

namespace A156092.P6677150418539460530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033888 n ^ 2 * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156092.P6677150418539460530

/-! ## A156092.P16979717234296441764

`9*∑[A004187(n)²*A033999(n)]`
-/

namespace A156092.P16979717234296441764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 n ^ 2 * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A156092.P16979717234296441764

/-! ## A156092.P1391927717250020721

`∑[A142881(3*n)²*A112347(n²+5)]`
-/

namespace A156092.P1391927717250020721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142881 (3 * n) ^ 2 * A112347 (n ^ 2 + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156092.P1391927717250020721

/-! ## A156092.P3354272328792556555

`9*∑[(A000045(4*n)/3)²*A033999(n)]`
-/

namespace A156092.P3354272328792556555
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000045 (4 * n) : ℚ) / 3) ^ 2 * (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A156092.P3354272328792556555

/-! ## A156092.P2526677878111408188

`9*∑[(A000045(4*n)/3)²*A309873(n²+1)]`
-/

namespace A156092.P2526677878111408188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000045 (4 * n) : ℚ) / 3) ^ 2 * (A309873 (n ^ 2 + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A156092.P2526677878111408188

/-! ## A156092.P10030655379402328132

`∑[A142881(3*n)²*A010815(A000326(n))]`
-/

namespace A156092.P10030655379402328132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142881 (3 * n) ^ 2 * A010815 (A000326 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156092.P10030655379402328132

/-!
# A156093: One ninth of the alternating sum of the squares of the first n Fibonacci numbers with index divisible by 4.

The programs for A156093, there is no canonical definition to state claims against.
-/

/-! ## A156093.P6546827824557751046

`A156092(n)/9`
-/

namespace A156093.P6546827824557751046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156092 n : ℚ) / 9

end

end A156093.P6546827824557751046

/-! ## A156093.P17749366035848661769

`∑[A049668(n)]*A033999(n)`
-/

namespace A156093.P17749366035848661769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A156093.P17749366035848661769

/-! ## A156093.P9941337800115080964

`∑[A033999(n)*A049682(n)]`
-/

namespace A156093.P9941337800115080964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A049682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156093.P9941337800115080964

/-! ## A156093.P4962273481938487523

`∑[A004187(n)²*A033999(n)]`
-/

namespace A156093.P4962273481938487523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 n ^ 2 * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156093.P4962273481938487523

/-! ## A156093.P12401977655258491093

`∑[(A000045(4*n)/3)²*A033999(n)]`
-/

namespace A156093.P12401977655258491093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000045 (4 * n) : ℚ) / 3) ^ 2 * (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156093.P12401977655258491093

/-! ## A156093.P17982199076734417419

`∑[(A000045(4*n)/3)²*A309873(n²+1)]`
-/

namespace A156093.P17982199076734417419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000045 (4 * n) : ℚ) / 3) ^ 2 * (A309873 (n ^ 2 + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156093.P17982199076734417419

/-!
# A156094: 5 F(2n) (F(2n) - 1) + 1 where F(n) denotes the n-th Fibonacci number.

The programs for A156094, the canonical program `A156094.P11465919669108424970` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156094 has offset 0).

The definition of A156094 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156094.P11465919669108424970

`A056854(n)-5*A001906(n)-1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156094

/-- `A056854(n)-5*A001906(n)-1` -/
def P11465919669108424970.Spec : Prop :=
  ∀ n, P11465919669108424970.a n = A156094 n

theorem P11465919669108424970.correct : P11465919669108424970.Spec := by
  intro n
  simp only [A156094]

end A156094

/-! ## A156094.P16233744251146862052

`A124296(2*n)`
-/

namespace A156094.P16233744251146862052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124296 (2 * n)

end

end A156094.P16233744251146862052

namespace A156094

/-- `A124296(2*n)` -/
def P16233744251146862052.Spec : Prop :=
  ∀ n, P16233744251146862052.a n = A156094 n

end A156094

/-! ## A156094.P5661195300025840389

`10*C(A001906(n), 2)+1`
-/

namespace A156094.P5661195300025840389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose (A001906 n).toNat 2 + 1

end

end A156094.P5661195300025840389

namespace A156094

/-- `10*C(A001906(n), 2)+1` -/
def P5661195300025840389.Spec : Prop :=
  ∀ n, (P5661195300025840389.a n : ℤ) = A156094 n

end A156094

/-! ## A156094.P6228691418148301998

`A156095(n)-A022093(2*n)`
-/

namespace A156094.P6228691418148301998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156095 n - A022093 (2 * n)

end

end A156094.P6228691418148301998

namespace A156094

/-- `A156095(n)-A022093(2*n)` -/
def P6228691418148301998.Spec : Prop :=
  ∀ n, P6228691418148301998.a n = A156094 n

end A156094

/-! ## A156094.P4592620029905643640

`A005592(2*n)-A201157(n+1)`
-/

namespace A156094.P4592620029905643640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005592 (2 * n) - A201157 (n + 1)

end

end A156094.P4592620029905643640

namespace A156094

/-- `A005592(2*n)-A201157(n+1)` -/
def P4592620029905643640.Spec : Prop :=
  ∀ n, P4592620029905643640.a n = A156094 n

end A156094

/-! ## A156094.P3008081765428935119

`A005592(2*n)-A022088(2*n)`
-/

namespace A156094.P3008081765428935119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005592 (2 * n) - A022088 (2 * n)

end

end A156094.P3008081765428935119

namespace A156094

/-- `A005592(2*n)-A022088(2*n)` -/
def P3008081765428935119.Spec : Prop :=
  ∀ n, P3008081765428935119.a n = A156094 n

end A156094

/-! ## A156094.P12983883394217607469

`A124297(2*n)-A022093(2*n)`
-/

namespace A156094.P12983883394217607469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124297 (2 * n) - A022093 (2 * n)

end

end A156094.P12983883394217607469

namespace A156094

/-- `A124297(2*n)-A022093(2*n)` -/
def P12983883394217607469.Spec : Prop :=
  ∀ n, P12983883394217607469.a n = A156094 n

end A156094

/-! ## A156094.P4280404227545940765

`A005592(2*n)-A203976(2*n)`
-/

namespace A156094.P4280404227545940765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005592 (2 * n) - A203976 (2 * n)

end

end A156094.P4280404227545940765

namespace A156094

/-- `A005592(2*n)-A203976(2*n)` -/
def P4280404227545940765.Spec : Prop :=
  ∀ n, P4280404227545940765.a n = A156094 n

end A156094

/-! ## A156094.P12817157775302623027

`A124296(A004277(n))%A001604(n)`
-/

namespace A156094.P12817157775302623027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124296 (A004277 n).toNat) (A001604 n)

end

end A156094.P12817157775302623027

namespace A156094

/-- `A124296(A004277(n))%A001604(n)` -/
def P12817157775302623027.Spec : Prop :=
  ∀ n, P12817157775302623027.a n = A156094 n

end A156094

/-! ## A156094.P13415068386221293659

`A124296(A005843(n))%A001604(n)`
-/

namespace A156094.P13415068386221293659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124296 (A005843 n).toNat) (A001604 n)

end

end A156094.P13415068386221293659

namespace A156094

/-- `A124296(A005843(n))%A001604(n)` -/
def P13415068386221293659.Spec : Prop :=
  ∀ n, P13415068386221293659.a n = A156094 n

end A156094

/-! ## A156094.P14284777980972122286

`gcd(A000038(n), A124296(A004277(n)))`
-/

namespace A156094.P14284777980972122286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A124296 (A004277 n).toNat)

end

end A156094.P14284777980972122286

namespace A156094

/-- `gcd(A000038(n), A124296(A004277(n)))` -/
def P14284777980972122286.Spec : Prop :=
  ∀ n, (P14284777980972122286.a n : ℤ) = A156094 n

end A156094

/-! ## A156094.P8965087144908805679

`gcd(A124296(A005843(n)), A130706(n))`
-/

namespace A156094.P8965087144908805679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124296 (A005843 n).toNat) (A130706 n)

end

end A156094.P8965087144908805679

namespace A156094

/-- `gcd(A124296(A005843(n)), A130706(n))` -/
def P8965087144908805679.Spec : Prop :=
  ∀ n, (P8965087144908805679.a n : ℤ) = A156094 n

end A156094

/-! ## A156094.P10107837607827539771

`A124296(A004277(n))/gcd(2, A124296(n))`
-/

namespace A156094.P10107837607827539771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124296 (A004277 n).toNat : ℚ) / (Int.gcd 2 (A124296 n) : ℚ)

end

end A156094.P10107837607827539771

namespace A156094

/-- `A124296(A004277(n))/gcd(2, A124296(n))` -/
def P10107837607827539771.Spec : Prop :=
  ∀ n, P10107837607827539771.a n = (A156094 n : ℚ)

end A156094

/-! ## A156094.P17282737287675124986

`and(A124296(A004277(n)), A260196(n+1))`
-/

namespace A156094.P17282737287675124986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124296 (A004277 n).toNat) (A260196 (n + 1))

end

end A156094.P17282737287675124986

namespace A156094

/-- `and(A124296(A004277(n)), A260196(n+1))` -/
def P17282737287675124986.Spec : Prop :=
  ∀ n, P17282737287675124986.a n = A156094 n

end A156094

/-! ## A156094.P3128836259553126134

`A124296(A004277(n))/and(1, A260196(n))`
-/

namespace A156094.P3128836259553126134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124296 (A004277 n).toNat : ℚ) / (Int.land 1 (A260196 n) : ℚ)

end

end A156094.P3128836259553126134

namespace A156094

/-- `A124296(A004277(n))/and(1, A260196(n))` -/
def P3128836259553126134.Spec : Prop :=
  ∀ n, P3128836259553126134.a n = (A156094 n : ℚ)

end A156094

/-!
# A156095: 5 F(2n) (F(2n) + 1) + 1 where F(n) denotes the n-th Fibonacci number.

The programs for A156095, the canonical program `A156095.P11980629005903725937` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156095 has offset 0).

The definition of A156095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156095.P11980629005903725937

`A124297(2*n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156095

/-- `A124297(2*n)` -/
def P11980629005903725937.Spec : Prop :=
  ∀ n, P11980629005903725937.a n = A156095 n

theorem P11980629005903725937.correct : P11980629005903725937.Spec := by
  intro n
  simp only [A156095]

end A156095

/-! ## A156095.P2421279406869705382

`5*A059727(2*n)+1`
-/

namespace A156095.P2421279406869705382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A059727 (2 * n) + 1

end

end A156095.P2421279406869705382

namespace A156095

/-- `5*A059727(2*n)+1` -/
def P2421279406869705382.Spec : Prop :=
  ∀ n, P2421279406869705382.a n = A156095 n

end A156095

/-! ## A156095.P13024973993536052390

`record[A124297(A014681(n))]`
-/

namespace A156095.P13024973993536052390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124297 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156095.P13024973993536052390

namespace A156095

/-- `record[A124297(A014681(n))]` -/
def P13024973993536052390.Spec : Prop :=
  ∀ n, P13024973993536052390.a n = A156095 n

end A156095

/-! ## A156095.P5814226492640330366

`record[A124297(A237420(n))]`
-/

namespace A156095.P5814226492640330366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124297 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156095.P5814226492640330366

namespace A156095

/-- `record[A124297(A237420(n))]` -/
def P5814226492640330366.Spec : Prop :=
  ∀ n, P5814226492640330366.a n = A156095 n

end A156095

/-! ## A156095.P4550326105868490330

`record[A124297(A022998(n)-n)]`
-/

namespace A156095.P4550326105868490330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124297 (A022998 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156095.P4550326105868490330

namespace A156095

/-- `record[A124297(A022998(n)-n)]` -/
def P4550326105868490330.Spec : Prop :=
  ∀ n, P4550326105868490330.a n = A156095 n

end A156095

/-! ## A156095.P5063167083462699449

`A201157(n+1)+A005592(2*n)`
-/

namespace A156095.P5063167083462699449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201157 (n + 1) + A005592 (2 * n)

end

end A156095.P5063167083462699449

namespace A156095

/-- `A201157(n+1)+A005592(2*n)` -/
def P5063167083462699449.Spec : Prop :=
  ∀ n, P5063167083462699449.a n = A156095 n

end A156095

/-! ## A156095.P15522724846937997888

`A022088(2*n)+A005592(2*n)`
-/

namespace A156095.P15522724846937997888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 (2 * n) + A005592 (2 * n)

end

end A156095.P15522724846937997888

namespace A156095

/-- `A022088(2*n)+A005592(2*n)` -/
def P15522724846937997888.Spec : Prop :=
  ∀ n, P15522724846937997888.a n = A156095 n

end A156095

/-! ## A156095.P436884835718356903

`A124296(2*n)+A022093(2*n)`
-/

namespace A156095.P436884835718356903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124296 (2 * n) + A022093 (2 * n)

end

end A156095.P436884835718356903

namespace A156095

/-- `A124296(2*n)+A022093(2*n)` -/
def P436884835718356903.Spec : Prop :=
  ∀ n, P436884835718356903.a n = A156095 n

end A156095

/-! ## A156095.P13410536769846657501

`A203976(2*n)+A005592(2*n)`
-/

namespace A156095.P13410536769846657501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (2 * n) + A005592 (2 * n)

end

end A156095.P13410536769846657501

namespace A156095

/-- `A203976(2*n)+A005592(2*n)` -/
def P13410536769846657501.Spec : Prop :=
  ∀ n, P13410536769846657501.a n = A156095 n

end A156095

/-! ## A156095.P2202681259406793292

`A001611(2*n)*A022088(2*n)+1`
-/

namespace A156095.P2202681259406793292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (2 * n) * A022088 (2 * n) + 1

end

end A156095.P2202681259406793292

namespace A156095

/-- `A001611(2*n)*A022088(2*n)+1` -/
def P2202681259406793292.Spec : Prop :=
  ∀ n, P2202681259406793292.a n = A156095 n

end A156095

/-! ## A156095.P4198952225829515448

`1-A181716(2*n)*A355021(2*n+1)`
-/

namespace A156095.P4198952225829515448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A181716 (2 * n) * A355021 (2 * n + 1)

end

end A156095.P4198952225829515448

namespace A156095

/-- `1-A181716(2*n)*A355021(2*n+1)` -/
def P4198952225829515448.Spec : Prop :=
  ∀ n, P4198952225829515448.a n = A156095 n

end A156095

/-! ## A156095.P8171361021969542156

`record[A124297(A273943(A022998(n)))]`
-/

namespace A156095.P8171361021969542156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124297 (A273943 (A022998 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156095.P8171361021969542156

namespace A156095

/-- `record[A124297(A273943(A022998(n)))]` -/
def P8171361021969542156.Spec : Prop :=
  ∀ n, P8171361021969542156.a n = A156095 n

end A156095

/-!
# A156096: Inverse binomial transform of A030186.

The programs for A156096, the canonical program `A156096.P1264688450115713305` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156096 has offset 0).

The definition of A156096 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156096.P1264688450115713305

`4*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A156096

/-- `4*a(n-2)+2*a(n-3)` -/
def P1264688450115713305.Spec : Prop :=
  ∀ n, (P1264688450115713305.a n : ℤ) = A156096 n

theorem P1264688450115713305.correct : P1264688450115713305.Spec := by
  intro n
  simp only [A156096]

end A156096

/-! ## A156096.P13998860478028151301

`A004277(A004277(a(n-2))+a(n-3))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A156096.P13998860478028151301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A004277 (A004277 (a (n - 2)).toNat + a (n - 3)).toNat

end

end A156096.P13998860478028151301

namespace A156096

/-- `A004277(A004277(a(n-2))+a(n-3))` -/
def P13998860478028151301.Spec : Prop :=
  ∀ n, P13998860478028151301.a n = A156096 n

end A156096

/-! ## A156096.P10961007566594426432

`A005843(A005843(a(n-2))+a(n-3))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A156096.P10961007566594426432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A005843 (A005843 (a (n - 2)).toNat + a (n - 3)).toNat

end

end A156096.P10961007566594426432

namespace A156096

/-- `A005843(A005843(a(n-2))+a(n-3))` -/
def P10961007566594426432.Spec : Prop :=
  ∀ n, P10961007566594426432.a n = A156096 n

end A156096

/-!
# A156097: Number of rigid genus-2 bipartite crystallizations of orientable 3-manifolds with 2n vertices.

The programs for A156097, there is no canonical definition to state claims against.
-/

/-! ## A156097.P16566165366840381239

`A368798(A093967(n+1))`
-/

namespace A156097.P16566165366840381239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368798 (A093967 (n + 1)).toNat

end

end A156097.P16566165366840381239

/-! ## A156097.P16043597743236276192

`A018433(n+2)-A000034(A085829(n+1)-1)`
-/

namespace A156097.P16043597743236276192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018433 (n + 2) - A000034 (A085829 (n + 1) - 1).toNat

end

end A156097.P16043597743236276192

/-! ## A156097.P18179341824013302246

`A137793(2*(n+1))-A037908(A109489(n+1))`
-/

namespace A156097.P18179341824013302246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137793 (2 * (n + 1)) - A037908 (A109489 (n + 1)).toNat

end

end A156097.P18179341824013302246

/-!
# A156099: Smallest number m such that prime(n) is a factor of both m and sigma(m).

The programs for A156099, there is no canonical definition to state claims against.
-/

/-! ## A156099.P13744133362802347377

`Δ[A007504(n)]*A097018(n+1)`
-/

namespace A156099.P13744133362802347377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A097018 (n + 1)

end

end A156099.P13744133362802347377

/-! ## A156099.P13283656386468955753

`p?[A344180(n)]*A097018(n+1)`
-/

namespace A156099.P13283656386468955753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A097018 (n + 1)

end

end A156099.P13283656386468955753

/-! ## A156099.P13037007352725409066

`A000040(n+1)*A097018(n+1)`
-/

namespace A156099.P13037007352725409066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A097018 (n + 1)

end

end A156099.P13037007352725409066

/-! ## A156099.P2878698923678011089

`A008578(n+2)*A097018(n+1)`
-/

namespace A156099.P2878698923678011089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A097018 (n + 1)

end

end A156099.P2878698923678011089

/-! ## A156099.P11872328382589010450

`∑[A054541(n+1)]*A097018(n+1)`
-/

namespace A156099.P11872328382589010450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A097018 (n + 1)

end

end A156099.P11872328382589010450

/-! ## A156099.P11772366763371873253

`p?[A000961(n+1)]*A097018(n+1)`
-/

namespace A156099.P11772366763371873253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A097018 (n + 1)

end

end A156099.P11772366763371873253

/-! ## A156099.P14936179549241037142

`A097018(n+1)/2*A100484(n+1)`
-/

namespace A156099.P14936179549241037142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097018 (n + 1) : ℚ) / 2 * (A100484 (n + 1) : ℚ)

end

end A156099.P14936179549241037142

/-! ## A156099.P14620346599298595179

`p?[A000037(n+1)]*A097018(n+1)`
-/

namespace A156099.P14620346599298595179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A097018 (n + 1)

end

end A156099.P14620346599298595179

/-! ## A156099.P3314971105175042981

`p?[A014681(n)]*A097018(n+1)`
-/

namespace A156099.P3314971105175042981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A097018 (n + 1)

end

end A156099.P3314971105175042981

/-! ## A156099.P8493923797780009544

`p?[A064429(n)]*A097018(n+1)`
-/

namespace A156099.P8493923797780009544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A097018 (n + 1)

end

end A156099.P8493923797780009544

/-! ## A156099.P15966449476566434408

`A070982(A182986(n+2))*A182986(n+2)`
-/

namespace A156099.P15966449476566434408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070982 (A182986 (n + 2)).toNat * A182986 (n + 2)

end

end A156099.P15966449476566434408

/-! ## A156099.P6855806060007958190

`A000040(n+1)*A070982(eq[n, A000010(n+1)]+1)`
-/

namespace A156099.P6855806060007958190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A070982 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A156099.P6855806060007958190

/-! ## A156099.P16456182003359218490

`p?[A065185(n+1)]*A097018(n+1)`
-/

namespace A156099.P16456182003359218490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A097018 (n + 1)

end

end A156099.P16456182003359218490

/-! ## A156099.P14366370539267550560

`p?[A001057(n)]*A097018(n+1)`
-/

namespace A156099.P14366370539267550560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A097018 (n + 1)

end

end A156099.P14366370539267550560

/-! ## A156099.P15465461981328776901

`A004525(A100484(n+1))*A097018(n+1)`
-/

namespace A156099.P15465461981328776901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A100484 (n + 1)).toNat * A097018 (n + 1)

end

end A156099.P15465461981328776901

/-! ## A156099.P14886004886438105409

`A272349(A000040(n+1))`
-/

namespace A156099.P14886004886438105409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272349 (A000040 (n + 1)).toNat

end

end A156099.P14886004886438105409

/-! ## A156099.P2588711130319738283

`A272349(A008578(n+2))`
-/

namespace A156099.P2588711130319738283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272349 (A008578 (n + 2)).toNat

end

end A156099.P2588711130319738283

/-! ## A156099.P6180222805892475253

`A272349(A182986(n+2))`
-/

namespace A156099.P6180222805892475253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272349 (A182986 (n + 2)).toNat

end

end A156099.P6180222805892475253

/-! ## A156099.P4839496141438436478

`A272349(record[A006530(n+2)])`
-/

namespace A156099.P4839496141438436478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272349 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A156099.P4839496141438436478

/-! ## A156099.P7944940118242661060

`A272349(record[A020639(n+2)])`
-/

namespace A156099.P7944940118242661060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272349 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A156099.P7944940118242661060

