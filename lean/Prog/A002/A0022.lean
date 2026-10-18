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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A002200: Primes of the form 2^q*3^r*5^s + 1.

The programs for A002200, there is no canonical definition to state claims against.
-/

/-! ## A002200.P3388998925521360405

`∩[A051037(n+1)+1, A219669(n+1)]`
-/

namespace A002200.P3388998925521360405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002200.P3388998925521360405

/-! ## A002200.P1836622514320797251

`∩[A051037(n+1)+1, A219697(n+1)]`
-/

namespace A002200.P1836622514320797251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002200.P1836622514320797251

/-! ## A002200.P10048041807307939301

`∩[A219697(n+1), A219794(n)+a(n-1)]` with `a(0)=2`
-/

namespace A002200.P10048041807307939301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A219794 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002200.P10048041807307939301

/-! ## A002200.P5094252421888670595

`p?[A051037(n+1)+1]`
-/

namespace A002200.P5094252421888670595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002200.P5094252421888670595

/-! ## A002200.P12903193689672543868

`p?[A219794(n)+a(n-1)]` with `a(0)=2`
-/

namespace A002200.P12903193689672543868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A219794 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002200.P12903193689672543868

/-! ## A002200.P2512317629698515819

`record[A006530(A051037(n+1)+1)]`
-/

namespace A002200.P2512317629698515819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051037 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002200.P2512317629698515819

/-! ## A002200.P18079281029972534177

`record[A020639(A051037(n+1)+1)]`
-/

namespace A002200.P18079281029972534177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A051037 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002200.P18079281029972534177

/-!
# A002201: Superior highly composite numbers: positive integers n for which there is an e > 0 such that d(n)/n^e >= d(k)/k^e for all k > 1, where the function d(n) counts the divisors of n (A000005).

The programs for A002201, there is no canonical definition to state claims against.
-/

/-! ## A002201.P17877738237415900260

`∏[A000705(n+1)]`
-/

namespace A002201.P17877738237415900260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002201.P17877738237415900260

/-! ## A002201.P6225670363123425734

`a(n-1)*A000705(A000027(n+1))` with `a(0)=2`
-/

namespace A002201.P6225670363123425734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A000705 (A000027 (n + 1)).toNat

end

end A002201.P6225670363123425734

/-! ## A002201.P3849521458206988703

`a(n-1)*A000705(A005408(n)-n)` with `a(0)=2`
-/

namespace A002201.P3849521458206988703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * A000705 (A005408 n - (n : ℤ)).toNat

end

end A002201.P3849521458206988703

/-! ## A002201.P3103251218174900699

`lcm(a(n-1)*A000705(n+1), A000267(n))` with `a(0)=2`
-/

namespace A002201.P3103251218174900699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm ((a (n - 1) : ℤ) * A000705 (n + 1)) (A000267 n)

end

end A002201.P3103251218174900699

/-! ## A002201.P14050199691701539541

`A263572(n+2)+val(A263572(n+2), A224078(n+2))`
-/

namespace A002201.P14050199691701539541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263572 (n + 2) + (SequenceMachineLib.valuation (A263572 (n + 2)).toNat (A224078 (n + 2)).toNat : ℤ)

end

end A002201.P14050199691701539541

/-!
# A002202: Values taken by totient function phi(m) (A000010).

The programs for A002202, there is no canonical definition to state claims against.
-/

/-! ## A002202.P5459655991362092145

`A083533(n)+a(n-1)` with `a(0)=1`
-/

namespace A002202.P5459655991362092145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083533 n + a (n - 1)

end

end A002202.P5459655991362092145

/-! ## A002202.P6571434427466778580

`∑[A083533(round(sqrt(n²+1)))]`
-/

namespace A002202.P6571434427466778580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083533 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002202.P6571434427466778580

/-! ## A002202.P12943506138193209411

`A000010(A002181(n+1))`
-/

namespace A002202.P12943506138193209411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002181 (n + 1)).toNat

end

end A002202.P12943506138193209411

/-! ## A002202.P14290521620920207457

`∪[A058825(n+1), A058827(n+1)]`
-/

namespace A002202.P14290521620920207457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002202.P14290521620920207457

/-! ## A002202.P8037104896790496914

`∪[A049225(n+1), A303745(n+1)]`
-/

namespace A002202.P8037104896790496914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002202.P8037104896790496914

/-! ## A002202.P15825274030200667342

`∑[A083533(n+1)]+1-A083533(n+1)`
-/

namespace A002202.P15825274030200667342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A083533 (n + 1))

end

end A002202.P15825274030200667342

/-! ## A002202.P5580771855109988640

`A000010(A006511(n+1)-A196079(n+1))`
-/

namespace A002202.P5580771855109988640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006511 (n + 1) - A196079 (n + 1)).toNat

end

end A002202.P5580771855109988640

/-! ## A002202.P7365497547948496315

`A000010(A143423(n+1))`
-/

namespace A002202.P7365497547948496315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A143423 (n + 1)).toNat

end

end A002202.P7365497547948496315

/-! ## A002202.P9496399072912245100

`A000010(A006511(n+1))`
-/

namespace A002202.P9496399072912245100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006511 (n + 1)).toNat

end

end A002202.P9496399072912245100

/-! ## A002202.P1353316052949881337

`lt[1, A322310(n+1)]+1`
-/

namespace A002202.P1353316052949881337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A002202.P1353316052949881337

/-! ## A002202.P10183866571510442648

`lt[n, A319048(n+1)]+1`
-/

namespace A002202.P10183866571510442648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319048 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A002202.P10183866571510442648

/-! ## A002202.P10497117298209767748

`record[A000010(A319048(n+1))]`
-/

namespace A002202.P10497117298209767748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A319048 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002202.P10497117298209767748

/-! ## A002202.P5552408397462878503

`lt[1, A001316(A323169(n+1))]+1`
-/

namespace A002202.P5552408397462878503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A323169 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A002202.P5552408397462878503

/-! ## A002202.P6344574648738431606

`filter[n+1, A264739(#)]`
-/

namespace A002202.P6344574648738431606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A264739 (f1 j) = 1) n)

end

end A002202.P6344574648738431606

/-! ## A002202.P12922094896889206378

`lt[0, A014197(n+1)]+1`
-/

namespace A002202.P12922094896889206378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A002202.P12922094896889206378

/-! ## A002202.P8631070818999693124

`lt[0, A049283(n+1)]+1`
-/

namespace A002202.P8631070818999693124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A002202.P8631070818999693124

/-! ## A002202.P13799989717608064059

`lt[0, A057635(n+1)]+1`
-/

namespace A002202.P13799989717608064059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A002202.P13799989717608064059

/-! ## A002202.P2150206479355521809

`eq[1, A264739(n+1)]+1`
-/

namespace A002202.P2150206479355521809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002202.P2150206479355521809

/-! ## A002202.P6034859646599768219

`lt[1, A316665(n+1)]+1`
-/

namespace A002202.P6034859646599768219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A002202.P6034859646599768219

/-! ## A002202.P3952108925237404923

`lt[0, char[A000010(n+1)]]`
-/

namespace A002202.P3952108925237404923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A002202.P3952108925237404923

/-!
# A002203: Companion Pell numbers: a(n) = 2*a(n-1) + a(n-2), a(0) = a(1) = 2.

The programs for A002203, the canonical program `A002203.P17775519618444720850` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002203 has offset 0).

The definition of A002203 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)` (program `A002203.P17775519618444720850`, by `A002203.P17775519618444720850.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002203.P17775519618444720850

`2*a(n-1)+a(n-2)` with `a(0)=2, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002203

/-- `2*a(n-1)+a(n-2)` -/
def P17775519618444720850.Spec : Prop :=
  ∀ n, (P17775519618444720850.a n : ℤ) = A002203 n

theorem P17775519618444720850.correct : P17775519618444720850.Spec := by
  intro n
  simp only [A002203]

end A002203

/-! ## A002203.P12326329672296621139

`A100227(n)+1`
-/

namespace A002203.P12326329672296621139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 n + 1

end

end A002203.P12326329672296621139

namespace A002203

/-- `A100227(n)+1` -/
def P12326329672296621139.Spec : Prop :=
  ∀ n, P12326329672296621139.a n = A002203 n

end A002203

/-! ## A002203.P16491351199672739006

`2*A001333(n)`
-/

namespace A002203.P16491351199672739006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001333 n

end

end A002203.P16491351199672739006

namespace A002203

/-- `2*A001333(n)` -/
def P16491351199672739006.Spec : Prop :=
  ∀ n, P16491351199672739006.a n = A002203 n

end A002203

/-! ## A002203.P13041486664128531805

`2*(A000129(n+1)-A000129(n))`
-/

namespace A002203.P13041486664128531805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000129 (n + 1) - A000129 n)

end

end A002203.P13041486664128531805

namespace A002203

/-- `2*(A000129(n+1)-A000129(n))` -/
def P13041486664128531805.Spec : Prop :=
  ∀ n, P13041486664128531805.a n = A002203 n

end A002203

/-! ## A002203.P2272590823825055585

`a(n-2)+lcm(4, a(n-1))` with `a(0)=2, a(1)=2`
-/

namespace A002203.P2272590823825055585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) + Nat.lcm 4 (a (n - 1))

end

end A002203.P2272590823825055585

namespace A002203

/-- `a(n-2)+lcm(4, a(n-1))` -/
def P2272590823825055585.Spec : Prop :=
  ∀ n, (P2272590823825055585.a n : ℤ) = A002203 n

end A002203

/-! ## A002203.P6924808495061047748

`(1+sqrt(2))^n+(1-sqrt(2))^n`
-/

namespace A002203.P6924808495061047748
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 + Real.sqrt (2 : ℝ)) ^ n + (1 - Real.sqrt (2 : ℝ)) ^ n

end

end A002203.P6924808495061047748

namespace A002203

/-- `(1+sqrt(2))^n+(1-sqrt(2))^n` -/
def P6924808495061047748.Spec : Prop :=
  ∀ n, P6924808495061047748.a n = (A002203 n : ℝ)

end A002203

/-! ## A002203.P8098416836800986780

`lcm(2, A099425(n))`
-/

namespace A002203.P8098416836800986780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A099425 n)

end

end A002203.P8098416836800986780

namespace A002203

/-- `lcm(2, A099425(n))` -/
def P8098416836800986780.Spec : Prop :=
  ∀ n, (P8098416836800986780.a n : ℤ) = A002203 n

end A002203

/-! ## A002203.P9201987613895027169

`abs(2*A123335(n))`
-/

namespace A002203.P9201987613895027169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A123335 n|

end

end A002203.P9201987613895027169

namespace A002203

/-- `abs(2*A123335(n))` -/
def P9201987613895027169.Spec : Prop :=
  ∀ n, P9201987613895027169.a n = A002203 n

end A002203

/-! ## A002203.P17541630817735565868

`2*Δ[A000129(n)]`
-/

namespace A002203.P17541630817735565868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A002203.P17541630817735565868

namespace A002203

/-- `2*Δ[A000129(n)]` -/
def P17541630817735565868.Spec : Prop :=
  ∀ n, P17541630817735565868.a n = A002203 n

end A002203

/-! ## A002203.P17293886361116291568

`2*Δ[A174191(n)]`
-/

namespace A002203.P17293886361116291568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A002203.P17293886361116291568

namespace A002203

/-- `2*Δ[A174191(n)]` -/
def P17293886361116291568.Spec : Prop :=
  ∀ n, P17293886361116291568.a n = A002203 n

end A002203

/-! ## A002203.P13965901846270701877

`2*(A293004(n)+1)`
-/

namespace A002203.P13965901846270701877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A293004 n + 1)

end

end A002203.P13965901846270701877

namespace A002203

/-- `2*(A293004(n)+1)` -/
def P13965901846270701877.Spec : Prop :=
  ∀ n, P13965901846270701877.a n = A002203 n

end A002203

/-! ## A002203.P18235224232286261902

`2*A119016(2*n)`
-/

namespace A002203.P18235224232286261902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A119016 (2 * n)

end

end A002203.P18235224232286261902

namespace A002203

/-- `2*A119016(2*n)` -/
def P18235224232286261902.Spec : Prop :=
  ∀ n, P18235224232286261902.a n = A002203 n

end A002203

/-! ## A002203.P5786086500064821693

`or(2, A124696(n)-1)`
-/

namespace A002203.P5786086500064821693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A124696 n - 1)

end

end A002203.P5786086500064821693

namespace A002203

/-- `or(2, A124696(n)-1)` -/
def P5786086500064821693.Spec : Prop :=
  ∀ n, P5786086500064821693.a n = A002203 n

end A002203

/-! ## A002203.P12136484195971142375

`2*or(1, A265278(n))`
-/

namespace A002203.P12136484195971142375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (A265278 n)

end

end A002203.P12136484195971142375

namespace A002203

/-- `2*or(1, A265278(n))` -/
def P12136484195971142375.Spec : Prop :=
  ∀ n, P12136484195971142375.a n = A002203 n

end A002203

/-! ## A002203.P15832608343682481178

`2*A002965(Δ[n²])`
-/

namespace A002203.P15832608343682481178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002965 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002203.P15832608343682481178

namespace A002203

/-- `2*A002965(Δ[n²])` -/
def P15832608343682481178.Spec : Prop :=
  ∀ n, P15832608343682481178.a n = A002203 n

end A002203

/-! ## A002203.P276054317279159118

`A099425(floor(acot(n)+n))`
-/

namespace A002203.P276054317279159118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A002203.P276054317279159118

namespace A002203

/-- `A099425(floor(acot(n)+n))` -/
def P276054317279159118.Spec : Prop :=
  ∀ n, P276054317279159118.a n = A002203 n

end A002203

/-! ## A002203.P4241793103761594759

`2*round(A080039(n)/2)`
-/

namespace A002203.P4241793103761594759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((A080039 n : ℚ) / 2)

end

end A002203.P4241793103761594759

namespace A002203

/-- `2*round(A080039(n)/2)` -/
def P4241793103761594759.Spec : Prop :=
  ∀ n, P4241793103761594759.a n = A002203 n

end A002203

/-! ## A002203.P10270218451971459651

`2*(Δ[A209971(n)]-1)`
-/

namespace A002203.P10270218451971459651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - 1)

end

end A002203.P10270218451971459651

namespace A002203

/-- `2*(Δ[A209971(n)]-1)` -/
def P10270218451971459651.Spec : Prop :=
  ∀ n, P10270218451971459651.a n = A002203 n

end A002203

/-! ## A002203.P16794111873583710899

`2*or(1, Δ[A215928(n)])`
-/

namespace A002203.P16794111873583710899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (f1 (n + 1) - f1 n)

end

end A002203.P16794111873583710899

namespace A002203

/-- `2*or(1, Δ[A215928(n)])` -/
def P16794111873583710899.Spec : Prop :=
  ∀ n, P16794111873583710899.a n = A002203 n

end A002203

/-!
# A002204: An ill-conditioned determinant.

The programs for A002204, there is no canonical definition to state claims against.
-/

/-! ## A002204.P12648947203839202407

`record[A135451(n)]/(n+1)`
-/

namespace A002204.P12648947203839202407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135451 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A002204.P12648947203839202407

/-! ## A002204.P17715976511638364334

`A005249(n+1)/(n+1)`
-/

namespace A002204.P17715976511638364334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005249 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A002204.P17715976511638364334

/-! ## A002204.P780553696788482429

`A135451(∑[n+1])/(n+1)`
-/

namespace A002204.P780553696788482429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135451 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A002204.P780553696788482429

/-! ## A002204.P12439383548033919085

`A163085(2*n+1)/(n+1)`
-/

namespace A002204.P12439383548033919085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163085 (2 * n + 1) : ℚ) / (n + 1 : ℚ)

end

end A002204.P12439383548033919085

/-! ## A002204.P9649435207498732755

`n*a(n-1)*A000894(n)` with `a(0)=1`
-/

namespace A002204.P9649435207498732755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (a (n - 1) * A000894 n)

end

end A002204.P9649435207498732755

/-!
# A002206: Numerators of logarithmic numbers (also of Gregory coefficients G(n)).

The programs for A002206, there is no canonical definition to state claims against.
-/

/-! ## A002206.P8054530479520677527

`A006232(n)/gcd(A000165(n), A006232(n))`
-/

namespace A002206.P8054530479520677527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006232 n : ℚ) / (Int.gcd (A000165 n) (A006232 n) : ℚ)

end

end A002206.P8054530479520677527

/-! ## A002206.P5478253358924370557

`A006232(n)/A294787(A136252(n))`
-/

namespace A002206.P5478253358924370557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006232 n : ℚ) / (A294787 (A136252 n).toNat : ℚ)

end

end A002206.P5478253358924370557

/-! ## A002206.P16151552081134897385

`A006232(n)/A351347(A006248(n+1))`
-/

namespace A002206.P16151552081134897385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006232 n : ℚ) / (A351347 (A006248 (n + 1)).toNat : ℚ)

end

end A002206.P16151552081134897385

/-! ## A002206.P3606711515828557995

`A006232(n)/A262611(A261049(n))`
-/

namespace A002206.P3606711515828557995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006232 n : ℚ) / (A262611 (A261049 n).toNat : ℚ)

end

end A002206.P3606711515828557995

/-!
# A002207: Denominators of logarithmic numbers (also of Gregory coefficients G(n)).

The programs for A002207, there is no canonical definition to state claims against.
-/

/-! ## A002207.P12110126155663785383

`A002397(n)/gcd(A002397(n), A002405(n))`
-/

namespace A002207.P12110126155663785383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002397 n : ℚ) / (Int.gcd (A002397 n) (A002405 n) : ℚ)

end

end A002207.P12110126155663785383

/-! ## A002207.P169563557195061005

`A091137(n)/gcd(A002209(n), A141417(n))`
-/

namespace A002207.P169563557195061005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091137 n : ℚ) / (Int.gcd (A002209 n) (A141417 n) : ℚ)

end

end A002207.P169563557195061005

/-! ## A002207.P7433321412970724217

`gcd(A091137(A056143(n)), A132097(n))`
-/

namespace A002207.P7433321412970724217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091137 (A056143 n).toNat) (A132097 n)

end

end A002207.P7433321412970724217

/-! ## A002207.P4287589411302614473

`gcd(A132097(A056143(n)), A248771(6*(n+1)))`
-/

namespace A002207.P4287589411302614473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132097 (A056143 n).toNat) (A248771 (6 * (n + 1)))

end

end A002207.P4287589411302614473

/-!
# A002208: Numerators of coefficients for numerical integration.

The programs for A002208, there is no canonical definition to state claims against.
-/

/-! ## A002208.P290360261351463021

`A002657(n)/gcd(A000142(n), A002657(n))`
-/

namespace A002208.P290360261351463021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002657 n : ℚ) / (Int.gcd (A000142 n) (A002657 n) : ℚ)

end

end A002208.P290360261351463021

/-! ## A002208.P12587623099919913251

`A002401(n)/gcd(A002397(n), A002401(n))`
-/

namespace A002208.P12587623099919913251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002401 n : ℚ) / (Int.gcd (A002397 n) (A002401 n) : ℚ)

end

end A002208.P12587623099919913251

/-! ## A002208.P6383549556974368220

`lcm(A002657(n), A091137(n))/A091137(n)`
-/

namespace A002208.P6383549556974368220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002657 n) (A091137 n) : ℚ) / (A091137 n : ℚ)

end

end A002208.P6383549556974368220

/-! ## A002208.P14607882810115349760

`A002657(A098755(n))/A093178(n)`
-/

namespace A002208.P14607882810115349760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002657 (A098755 n).toNat : ℚ) / (A093178 n : ℚ)

end

end A002208.P14607882810115349760

/-!
# A002209: Denominators of coefficients for numerical integration.

The programs for A002209, there is no canonical definition to state claims against.
-/

/-! ## A002209.P12082610728377873583

`A002397(n)/gcd(A002397(n), A002401(n))`
-/

namespace A002209.P12082610728377873583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002397 n : ℚ) / (Int.gcd (A002397 n) (A002401 n) : ℚ)

end

end A002209.P12082610728377873583

/-! ## A002209.P15109925821401018926

`A232853(∑[n])/A093178(n)`
-/

namespace A002209.P15109925821401018926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232853 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A093178 n : ℚ)

end

end A002209.P15109925821401018926

/-!
# A002212: Number of restricted hexagonal polyominoes with n cells.

The programs for A002212, the canonical program `A002212.P9840785363849496460` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002212 has offset 0).

The definition of A002212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002212.P9840785363849496460

`(3*(2*n-1)*a(n-1)-5*(n-2)*a(n-2))/(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002212

/-- `(3*(2*n-1)*a(n-1)-5*(n-2)*a(n-2))/(n+1)` -/
def P9840785363849496460.Spec : Prop :=
  ∀ n, P9840785363849496460.a n = (A002212 n : ℚ)

end A002212

/-! ## A002212.P17579365570347867602

`∑[∑[A277969(n)]]`
-/

namespace A002212.P17579365570347867602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277969 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002212.P17579365570347867602

namespace A002212

/-- `∑[∑[A277969(n)]]` -/
def P17579365570347867602.Spec : Prop :=
  ∀ n, P17579365570347867602.a n = A002212 n

end A002212

/-! ## A002212.P2224143741021271129

`A025238(round(sqrt(n²+1))+1)`
-/

namespace A002212.P2224143741021271129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025238 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat

end

end A002212.P2224143741021271129

namespace A002212

/-- `A025238(round(sqrt(n²+1))+1)` -/
def P2224143741021271129.Spec : Prop :=
  ∀ n, P2224143741021271129.a n = A002212 n

end A002212

/-! ## A002212.P10210255349229041870

`A002215(2*round(sqrt(n²+1)))`
-/

namespace A002212.P10210255349229041870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002215 (2 * SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A002212.P10210255349229041870

namespace A002212

/-- `A002215(2*round(sqrt(n²+1)))` -/
def P10210255349229041870.Spec : Prop :=
  ∀ n, P10210255349229041870.a n = A002212 n

end A002212

/-! ## A002212.P9439827111881579553

`A025238(n+1)^ceil(sin(n)²)`
-/

namespace A002212.P9439827111881579553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025238 (n + 1) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A002212.P9439827111881579553

namespace A002212

/-- `A025238(n+1)^ceil(sin(n)²)` -/
def P9439827111881579553.Spec : Prop :=
  ∀ n, P9439827111881579553.a n = (A002212 n : ℚ)

end A002212

/-! ## A002212.P15035244250930512973

`A045868(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A002212.P15035244250930512973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A045868 (n - 1) + a (n - 1)

end

end A002212.P15035244250930512973

namespace A002212

/-- `A045868(n-1)+a(n-1)` -/
def P15035244250930512973.Spec : Prop :=
  ∀ n, P15035244250930512973.a n = A002212 n

end A002212

/-! ## A002212.P17697022190560690997

`A128714(n)+A033321(n)`
-/

namespace A002212.P17697022190560690997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128714 n + A033321 n

end

end A002212.P17697022190560690997

namespace A002212

/-- `A128714(n)+A033321(n)` -/
def P17697022190560690997.Spec : Prop :=
  ∀ n, P17697022190560690997.a n = A002212 n

end A002212

/-! ## A002212.P13708655848636301507

`A025238(n+1)-A000038(n)`
-/

namespace A002212.P13708655848636301507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025238 (n + 1) - A000038 n

end

end A002212.P13708655848636301507

namespace A002212

/-- `A025238(n+1)-A000038(n)` -/
def P13708655848636301507.Spec : Prop :=
  ∀ n, P13708655848636301507.a n = A002212 n

end A002212

/-! ## A002212.P5879589750680299988

`and(A025238(n+1), A260196(n))`
-/

namespace A002212.P5879589750680299988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025238 (n + 1)) (A260196 n)

end

end A002212.P5879589750680299988

namespace A002212

/-- `and(A025238(n+1), A260196(n))` -/
def P5879589750680299988.Spec : Prop :=
  ∀ n, P5879589750680299988.a n = A002212 n

end A002212

/-! ## A002212.P15040559686725964662

`A038392(n+1)+A030529(n+2)`
-/

namespace A002212.P15040559686725964662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038392 (n + 1) + A030529 (n + 2)

end

end A002212.P15040559686725964662

namespace A002212

/-- `A038392(n+1)+A030529(n+2)` -/
def P15040559686725964662.Spec : Prop :=
  ∀ n, P15040559686725964662.a n = A002212 n

end A002212

/-! ## A002212.P15220068923907858124

`and(A025238(n+1), A153881(n+1))`
-/

namespace A002212.P15220068923907858124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025238 (n + 1)) (A153881 (n + 1))

end

end A002212.P15220068923907858124

namespace A002212

/-- `and(A025238(n+1), A153881(n+1))` -/
def P15220068923907858124.Spec : Prop :=
  ∀ n, P15220068923907858124.a n = A002212 n

end A002212

/-! ## A002212.P14008067334588923373

`A181768(n)+A039919(A000007(n)+n)`
-/

namespace A002212.P14008067334588923373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 n + A039919 (A000007 n + (n : ℤ)).toNat

end

end A002212.P14008067334588923373

namespace A002212

/-- `A181768(n)+A039919(A000007(n)+n)` -/
def P14008067334588923373.Spec : Prop :=
  ∀ n, P14008067334588923373.a n = A002212 n

end A002212

/-! ## A002212.P3751289431762048008

`ceil(A002215(2*n+1)/2)`
-/

namespace A002212.P3751289431762048008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002215 (2 * n + 1) : ℚ) / 2⌉

end

end A002212.P3751289431762048008

namespace A002212

/-- `ceil(A002215(2*n+1)/2)` -/
def P3751289431762048008.Spec : Prop :=
  ∀ n, P3751289431762048008.a n = A002212 n

end A002212

/-! ## A002212.P7309952734396854492

`Δ[record[n%2*A055879(n+1)]]`
-/

namespace A002212.P7309952734396854492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A055879 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002212.P7309952734396854492

namespace A002212

/-- `Δ[record[n%2*A055879(n+1)]]` -/
def P7309952734396854492.Spec : Prop :=
  ∀ n, P7309952734396854492.a n = A002212 n

end A002212

/-! ## A002212.P8092598967851732416

`A000007(n)+Δ[A181768(n)]`
-/

namespace A002212.P8092598967851732416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A002212.P8092598967851732416

namespace A002212

/-- `A000007(n)+Δ[A181768(n)]` -/
def P8092598967851732416.Spec : Prop :=
  ∀ n, P8092598967851732416.a n = A002212 n

end A002212

/-! ## A002212.P12812489007691651796

`Δ[A181768(n)+A057427(n)]`
-/

namespace A002212.P12812489007691651796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 n + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002212.P12812489007691651796

namespace A002212

/-- `Δ[A181768(n)+A057427(n)]` -/
def P12812489007691651796.Spec : Prop :=
  ∀ n, P12812489007691651796.a n = A002212 n

end A002212

/-! ## A002212.P12534097361553587272

`Δ[A044045(n)]-A044046(n)`
-/

namespace A002212.P12534097361553587272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A044046 n

end

end A002212.P12534097361553587272

namespace A002212

/-- `Δ[A044045(n)]-A044046(n)` -/
def P12534097361553587272.Spec : Prop :=
  ∀ n, P12534097361553587272.a n = A002212 n

end A002212

/-! ## A002212.P9063655347409685381

`Δ[A129167(n)-A128714(n)]`
-/

namespace A002212.P9063655347409685381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129167 n - A128714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002212.P9063655347409685381

namespace A002212

/-- `Δ[A129167(n)-A128714(n)]` -/
def P9063655347409685381.Spec : Prop :=
  ∀ n, P9063655347409685381.a n = A002212 n

end A002212

/-! ## A002212.P17351640907195611304

`Δ[A181768(n)+A036453(n+1)]`
-/

namespace A002212.P17351640907195611304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 n + A036453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002212.P17351640907195611304

namespace A002212

/-- `Δ[A181768(n)+A036453(n+1)]` -/
def P17351640907195611304.Spec : Prop :=
  ∀ n, P17351640907195611304.a n = A002212 n

end A002212

/-!
# A002213: Number of tree-like polyhexes rooted at a hexagon and containing n hexagons.

The programs for A002213, there is no canonical definition to state claims against.
-/

/-! ## A002213.P10841860367886707318

`A325404(floor(7*(n/2)²)+(n+1)/∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A002213.P10841860367886707318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325404 (SequenceMachineLib.roundAway ((⌊7 * ((n : ℚ) / 2) ^ 2⌋ : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat

end

end A002213.P10841860367886707318

/-! ## A002213.P8876306159087659645

`A008647(A163070(n))`
-/

namespace A002213.P8876306159087659645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A163070 n).toNat

end

end A002213.P8876306159087659645

/-!
# A002214: Number of unrooted hexagonal polyominoes with n cells and no reflections allowed.

The programs for A002214, there is no canonical definition to state claims against.
-/

/-! ## A002214.P15630089604821673122

`2*A002216(n+1)-A002215(n+1)`
-/

namespace A002214.P15630089604821673122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002216 (n + 1) - A002215 (n + 1)

end

end A002214.P15630089604821673122

/-! ## A002214.P7702446467855021274

`A005843(A002216(n+1))-A002215(n+1)`
-/

namespace A002214.P7702446467855021274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A002216 (n + 1)).toNat - A002215 (n + 1)

end

end A002214.P7702446467855021274

/-! ## A002214.P14422800056507197938

`xor(A007454(n+1), A010051(A335744(n+1)))`
-/

namespace A002214.P14422800056507197938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007454 (n + 1)) (A010051 (A335744 (n + 1)).toNat)

end

end A002214.P14422800056507197938

/-! ## A002214.P985896629789156157

`xor(A007454(n+1), A059841(A298234(n+1)))`
-/

namespace A002214.P985896629789156157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007454 (n + 1)) (A059841 (A298234 (n + 1)).toNat)

end

end A002214.P985896629789156157

/-!
# A002215: Number of polyhexes with n hexagons, having reflectional symmetry (see Harary and Read for precise definition).

The programs for A002215, the canonical program `A002215.P493053246518222214` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002215 has offset 1).

The definition of A002215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002215.P8940783656855283678

`A002212(A065033(n))*A040001(n)`
-/

namespace A002215.P8940783656855283678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (A065033 n).toNat * A040001 n

end

end A002215.P8940783656855283678

namespace A002215

/-- `A002212(A065033(n))*A040001(n)` -/
def P8940783656855283678.Spec : Prop :=
  ∀ n, P8940783656855283678.a n = A002215 (n + 1)

end A002215

/-! ## A002215.P5198412898780010618

`A002212(A110654(n))*A040001(n)`
-/

namespace A002215.P5198412898780010618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 (A110654 n).toNat * A040001 n

end

end A002215.P5198412898780010618

namespace A002215

/-- `A002212(A110654(n))*A040001(n)` -/
def P5198412898780010618.Spec : Prop :=
  ∀ n, P5198412898780010618.a n = A002215 (n + 1)

end A002215

/-! ## A002215.P493053246518222214

`A055879(n+1)+A039919(A065033(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A002215

/-- `A055879(n+1)+A039919(A065033(n))` -/
def P493053246518222214.Spec : Prop :=
  ∀ n, P493053246518222214.a n = A002215 (n + 1)

theorem P493053246518222214.correct : P493053246518222214.Spec := by
  intro n
  simp only [A002215, Nat.add_sub_cancel]

end A002215

/-! ## A002215.P6425757976773470429

`A039919(A065033(n))+A007317(A008619(n))`
-/

namespace A002215.P6425757976773470429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039919 (A065033 n).toNat + A007317 (A008619 n).toNat

end

end A002215.P6425757976773470429

namespace A002215

/-- `A039919(A065033(n))+A007317(A008619(n))` -/
def P6425757976773470429.Spec : Prop :=
  ∀ n, P6425757976773470429.a n = A002215 (n + 1)

end A002215

/-! ## A002215.P16177941579443578188

`2*A002216(n+1)-A002214(n+1)`
-/

namespace A002215.P16177941579443578188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002216 (n + 1) - A002214 (n + 1)

end

end A002215.P16177941579443578188

namespace A002215

/-- `2*A002216(n+1)-A002214(n+1)` -/
def P16177941579443578188.Spec : Prop :=
  ∀ n, P16177941579443578188.a n = A002215 (n + 1)

end A002215

/-!
# A002216: Harary-Read numbers: restricted hexagonal polyominoes (cata-polyhexes) with n cells.

The programs for A002216, there is no canonical definition to state claims against.
-/

/-! ## A002216.P16756646138769219925

`A185712(∑[∑[A245889(n+1)]])`
-/

namespace A002216.P16756646138769219925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245889 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185712 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002216.P16756646138769219925

/-! ## A002216.P11029534332236347310

`A033182(A027480(n)+A000984(n))`
-/

namespace A002216.P11029534332236347310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A027480 n + A000984 n).toNat

end

end A002216.P11029534332236347310

/-! ## A002216.P4488378433479733139

`A008651(A071728(n))+A003056(n)`
-/

namespace A002216.P4488378433479733139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A071728 n).toNat + A003056 n

end

end A002216.P4488378433479733139

/-! ## A002216.P5838383784133066417

`A089616(A278815(n)+A155212(n))`
-/

namespace A002216.P5838383784133066417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089616 (A278815 n + A155212 n).toNat

end

end A002216.P5838383784133066417

/-!
# A002217: Starting with n, repeatedly calculate the sum of prime factors (with repetition) of the previous term, until reaching 0 or a fixed point: a(n) is the number of terms in the resulting sequence.

The programs for A002217, there is no canonical definition to state claims against.
-/

/-! ## A002217.P14428145788751609681

`2-(A010051(n+1)-A274718(n+1)%(n+1))`
-/

namespace A002217.P14428145788751609681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A010051 (n + 1) - Int.tmod (A274718 (n + 1)) (n + 1 : ℤ))

end

end A002217.P14428145788751609681

/-! ## A002217.P9742466781146463758

`A013632(n)-A203568(A206607(n+1))`
-/

namespace A002217.P9742466781146463758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n - A203568 (A206607 (n + 1)).toNat

end

end A002217.P9742466781146463758

/-! ## A002217.P9612374703191149347

`A066099(or(floor(2^(n-1)), A246350(n+4)))`
-/

namespace A002217.P9612374703191149347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (Int.lor ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A246350 (n + 4))).toNat

end

end A002217.P9612374703191149347

/-! ## A002217.P5253270030884646757

`A001221(A291642((∏{p}[n+1, 1-#]+1+n)²))`
-/

namespace A002217.P5253270030884646757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A291642 ((∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ)) + 1 + (n : ℤ)) ^ 2).toNat).toNat

end

end A002217.P5253270030884646757

/-!
# A002218: Number of unlabeled nonseparable (or 2-connected) graphs (or blocks) with n nodes.

The programs for A002218, there is no canonical definition to state claims against.
-/

/-! ## A002218.P9737902889543378238

`A327805(A037203(n)+A000124(n+1))`
-/

namespace A002218.P9737902889543378238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 (A037203 n + A000124 (n + 1)).toNat

end

end A002218.P9737902889543378238

/-! ## A002218.P8777569588480684569

`A325111(A000217(n+1))%A000420(n)`
-/

namespace A002218.P8777569588480684569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325111 (A000217 (n + 1)).toNat) (A000420 n)

end

end A002218.P8777569588480684569

/-! ## A002218.P14439846152543626022

`A327805(eq[A002262(n), A055642(n+4)])`
-/

namespace A002218.P14439846152543626022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327805 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A002218.P14439846152543626022

/-! ## A002218.P2343718676990010755

`A325111(A000124(n+1)-A037203(n+1))`
-/

namespace A002218.P2343718676990010755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325111 (A000124 (n + 1) - A037203 (n + 1)).toNat

end

end A002218.P2343718676990010755

/-!
# A002219: a(n) is the number of partitions of 2n that can be obtained by adding together two (not necessarily distinct) partitions of n.

The programs for A002219, there is no canonical definition to state claims against.
-/

/-! ## A002219.P5075063956029884672

`A000041(2*(n+1))-A006827(n+1)`
-/

namespace A002219.P5075063956029884672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * (n + 1)) - A006827 (n + 1)

end

end A002219.P5075063956029884672

/-! ## A002219.P13029625103077275474

`A276107(2*(n+1))`
-/

namespace A002219.P13029625103077275474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276107 (2 * (n + 1))

end

end A002219.P13029625103077275474

/-! ## A002219.P5363787301214834261

`A058696(n+1)-A006827(n+1)`
-/

namespace A002219.P5363787301214834261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 (n + 1) - A006827 (n + 1)

end

end A002219.P5363787301214834261

/-! ## A002219.P5468377993642386874

`A035363(Δ[A001844(n)])-A006827(n+1)`
-/

namespace A002219.P5468377993642386874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (f1 (n + 1) - f1 n).toNat - A006827 (n + 1)

end

end A002219.P5468377993642386874

/-! ## A002219.P45839164381636818

`A114099(A008458(3*(n+1)))-A006827(n+1)`
-/

namespace A002219.P45839164381636818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (A008458 (3 * (n + 1))).toNat - A006827 (n + 1)

end

end A002219.P45839164381636818

/-! ## A002219.P14424960681245342874

`A000041(n+1)+A182616(n+1)-A006827(n+1)`
-/

namespace A002219.P14424960681245342874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A182616 (n + 1) - A006827 (n + 1))

end

end A002219.P14424960681245342874

/-! ## A002219.P6649140101693994768

`record[A276107(xor(1, n)+1)]`
-/

namespace A002219.P6649140101693994768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276107 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002219.P6649140101693994768

/-!
# A002220: a(n) is the number of partitions of 3n that can be obtained by adding together three (not necessarily distinct) partitions of n.

The programs for A002220, there is no canonical definition to state claims against.
-/

/-! ## A002220.P14061457456253824251

`A213086(∑[n+3]+7)`
-/

namespace A002220.P14061457456253824251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213086 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A002220.P14061457456253824251

/-! ## A002220.P17614800263073590778

`A213086(A052905(n)+9)+char[17]`
-/

namespace A002220.P17614800263073590778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213086 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A002220.P17614800263073590778

/-! ## A002220.P17541356638304043366

`A213086(A055999(n)+10)+char[17]`
-/

namespace A002220.P17541356638304043366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213086 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A002220.P17541356638304043366

/-! ## A002220.P13237087594111810559

`record[gcd(A213086(n+5), A286653(n))]`
-/

namespace A002220.P13237087594111810559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A213086 (n + 5)) (A286653 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002220.P13237087594111810559

/-! ## A002220.P1296324020791269692

`A014598(n)*A213086(A052905(n)+9)`
-/

namespace A002220.P1296324020791269692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014598 n * A213086 (A052905 n + 9).toNat

end

end A002220.P1296324020791269692

/-!
# A002221: a(n) is the number of partitions of 4n that can be obtained by adding together four (not necessarily distinct) partitions of n.

The programs for A002221, there is no canonical definition to state claims against.
-/

/-! ## A002221.P6534127139101789468

`A213086(A155212(n)+13)`
-/

namespace A002221.P6534127139101789468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213086 (A155212 n + 13).toNat

end

end A002221.P6534127139101789468

/-! ## A002221.P9303622488997574502

`A213086(A056000(n)+15)`
-/

namespace A002221.P9303622488997574502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213086 (A056000 n + 15).toNat

end

end A002221.P9303622488997574502

/-! ## A002221.P17074034024120919226

`A213086(eq[7, A066657(n)])`
-/

namespace A002221.P17074034024120919226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002221.P17074034024120919226

/-! ## A002221.P6115653050856572746

`A213086(A167614(n+3)+2)`
-/

namespace A002221.P6115653050856572746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213086 (A167614 (n + 3) + 2).toNat

end

end A002221.P6115653050856572746

/-! ## A002221.P11686064876632767926

`A213086(A000217(n+4)+5)`
-/

namespace A002221.P11686064876632767926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213086 (A000217 (n + 4) + 5).toNat

end

end A002221.P11686064876632767926

/-!
# A002222: a(n) is the number of partitions of 5n that can be obtained by adding together five (not necessarily distinct) partitions of n.

The programs for A002222, there is no canonical definition to state claims against.
-/

/-! ## A002222.P499210091059799561

`A213086(A056115(n)+21)`
-/

namespace A002222.P499210091059799561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213086 (A056115 n + 21).toNat

end

end A002222.P499210091059799561

/-! ## A002222.P7810490414064576891

`A213086(A167499(n+4)+1)`
-/

namespace A002222.P7810490414064576891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213086 (A167499 (n + 4) + 1).toNat

end

end A002222.P7810490414064576891

/-! ## A002222.P3967113708443551451

`A213086(A000124(n+5)+5)`
-/

namespace A002222.P3967113708443551451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213086 (A000124 (n + 5) + 5).toNat

end

end A002222.P3967113708443551451

/-! ## A002222.P3244873220696757648

`A213086(A000096(n+4)+7)`
-/

namespace A002222.P3244873220696757648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213086 (A000096 (n + 4) + 7).toNat

end

end A002222.P3244873220696757648

/-! ## A002222.P7949876201860362919

`A213086(A000217(n+5)+6)`
-/

namespace A002222.P7949876201860362919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213086 (A000217 (n + 5) + 6).toNat

end

end A002222.P7949876201860362919

/-!
# A002223: Smallest prime p of form p = 8k-1 such that first n primes (p_1=2, ..., p_n) are quadratic residues mod p.

The programs for A002223, there is no canonical definition to state claims against.
-/

/-! ## A002223.P15380769754928556530

`p?[A147972(n+1)]`
-/

namespace A002223.P15380769754928556530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002223.P15380769754928556530

/-! ## A002223.P12482631834374054340

`p?[A147969(p?[comp[n²]])]`
-/

namespace A002223.P12482631834374054340
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147969 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002223.P12482631834374054340

/-! ## A002223.P599284609881851120

`A147972(A043318(n+1))`
-/

namespace A002223.P599284609881851120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147972 (A043318 (n + 1)).toNat

end

end A002223.P599284609881851120

/-! ## A002223.P16932425349216887218

`A147972(A044915(n+1))`
-/

namespace A002223.P16932425349216887218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147972 (A044915 (n + 1)).toNat

end

end A002223.P16932425349216887218

/-! ## A002223.P5162171354500878557

`A147972(A055647(n+1))`
-/

namespace A002223.P5162171354500878557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147972 (A055647 (n + 1)).toNat

end

end A002223.P5162171354500878557

/-!
# A002224: Smallest prime p of form p = 8k+1 such that first n primes (p_1=2, ..., p_n) are quadratic residues mod p.

The programs for A002224, there is no canonical definition to state claims against.
-/

/-! ## A002224.P5625754461641790801

`A096637(A327450(n+1)+n)`
-/

namespace A002224.P5625754461641790801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096637 (A327450 (n + 1) + (n : ℤ)).toNat

end

end A002224.P5625754461641790801

/-! ## A002224.P18258732973490915129

`A096637(A048309(n))`
-/

namespace A002224.P18258732973490915129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096637 (A048309 n).toNat

end

end A002224.P18258732973490915129

/-! ## A002224.P9209599293257681170

`A096637(A029957(n+1))`
-/

namespace A002224.P9209599293257681170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096637 (A029957 (n + 1)).toNat

end

end A002224.P9209599293257681170

/-! ## A002224.P6484234846713943060

`A096637(A185213(n)+n)`
-/

namespace A002224.P6484234846713943060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096637 (A185213 n + (n : ℤ)).toNat

end

end A002224.P6484234846713943060

/-! ## A002224.P247257405730003714

`A102295(A043318(n+1)+2)`
-/

namespace A002224.P247257405730003714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102295 (A043318 (n + 1) + 2).toNat

end

end A002224.P247257405730003714

/-!
# A002229: Primitive roots that go with the primes in A002230.

The programs for A002229, there is no canonical definition to state claims against.
-/

/-! ## A002229.P2029323578688967291

`record[A001918(n+1)]`
-/

namespace A002229.P2029323578688967291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002229.P2029323578688967291

/-! ## A002229.P10429809643112556396

`A001918(A114885(n+1))`
-/

namespace A002229.P10429809643112556396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (A114885 (n + 1)).toNat

end

end A002229.P10429809643112556396

/-! ## A002229.P15439710425898197295

`A001918(∑{d}[A002230(n+1), A061395(#)])`
-/

namespace A002229.P15439710425898197295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d).toNat

end

end A002229.P15439710425898197295

/-! ## A002229.P8341260041931457702

`record[gcd(A074780(n+1), A330154(n+1))]`
-/

namespace A002229.P8341260041931457702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A074780 (n + 1)) (A330154 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002229.P8341260041931457702

/-! ## A002229.P14839548046136447194

`A046145(A002230(n+1))`
-/

namespace A002229.P14839548046136447194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A002230 (n + 1)).toNat

end

end A002229.P14839548046136447194

/-!
# A002230: Primes with record values of the least positive primitive root.

The programs for A002230, there is no canonical definition to state claims against.
-/

/-! ## A002230.P4724331612060476429

`A023048(A002229(n+1))`
-/

namespace A002230.P4724331612060476429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (A002229 (n + 1)).toNat

end

end A002230.P4724331612060476429

/-! ## A002230.P14702476214323323409

`A000040(A114885(n+1))`
-/

namespace A002230.P14702476214323323409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A114885 (n + 1)).toNat

end

end A002230.P14702476214323323409

/-! ## A002230.P8447339085673767616

`A023048(record[A001918(n+1)])`
-/

namespace A002230.P8447339085673767616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A002230.P8447339085673767616

/-! ## A002230.P8359843363993723519

`A008578(A114885(n+1)+1)`
-/

namespace A002230.P8359843363993723519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A114885 (n + 1) + 1).toNat

end

end A002230.P8359843363993723519

/-! ## A002230.P18015669981686087163

`A158611(A114885(n+1)+2)`
-/

namespace A002230.P18015669981686087163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A114885 (n + 1) + 2).toNat

end

end A002230.P18015669981686087163

/-!
# A002231: Primitive roots that go with the primes in A029932.

The programs for A002231, there is no canonical definition to state claims against.
-/

/-! ## A002231.P10235350369873523539

`record[A002233(n+2)]`
-/

namespace A002231.P10235350369873523539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002233 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002231.P10235350369873523539

/-! ## A002231.P7627465614438581966

`record[A122028(n+2)]`
-/

namespace A002231.P7627465614438581966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122028 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002231.P7627465614438581966

/-! ## A002231.P2257181145893963891

`p?[∑[A241091(A091946(n))]]`
-/

namespace A002231.P2257181145893963891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241091 (A091946 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002231.P2257181145893963891

/-! ## A002231.P3055094909704436463

`p?[lt[A222417(3*n+4), 9]]`
-/

namespace A002231.P3055094909704436463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222417 (3 * n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A002231.P3055094909704436463

/-!
# A002232: 8th powers written backwards.

The programs for A002232, there is no canonical definition to state claims against.
-/

/-! ## A002232.P12674531826379639298

`A002108(A253909(n))-floor(acot(n))`
-/

namespace A002232.P12674531826379639298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002108 (A253909 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A002232.P12674531826379639298

/-! ## A002232.P922816950407971866

`A002108((A000007(n)+n)²)-floor(acot(n))`
-/

namespace A002232.P922816950407971866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002108 ((A000007 n + (n : ℤ)) ^ 2).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A002232.P922816950407971866

/-! ## A002232.P10488224139792176712

`A002108((A004273(n)+1-n)²)-floor(acot(n))`
-/

namespace A002232.P10488224139792176712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002108 ((A004273 n + (1 - (n : ℤ))) ^ 2).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A002232.P10488224139792176712

/-! ## A002232.P5259478207284846706

`A002108((A036987(2*n)+n)²)-floor(acot(n))`
-/

namespace A002232.P5259478207284846706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002108 ((A036987 (2 * n) + (n : ℤ)) ^ 2).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A002232.P5259478207284846706

/-! ## A002232.P7089271891522799313

`A002108(A253909(n))-A000007(n)`
-/

namespace A002232.P7089271891522799313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002108 (A253909 n).toNat - A000007 n

end

end A002232.P7089271891522799313

/-! ## A002232.P6715708482936819757

`A002108(A253909(n))*A057427(n)`
-/

namespace A002232.P6715708482936819757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002108 (A253909 n).toNat * A057427 n

end

end A002232.P6715708482936819757

/-! ## A002232.P2149883772409668349

`A002108(A253909(n))*A178334(n)`
-/

namespace A002232.P2149883772409668349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002108 (A253909 n).toNat * A178334 n

end

end A002232.P2149883772409668349

/-! ## A002232.P12239970659103208442

`lcm(A002108(A253909(n)), A062157(n))`
-/

namespace A002232.P12239970659103208442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002108 (A253909 n).toNat) (A062157 n)

end

end A002232.P12239970659103208442

/-! ## A002232.P6818439520536803776

`and(A002108(A253909(n)), A057428(n))`
-/

namespace A002232.P6818439520536803776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002108 (A253909 n).toNat) (A057428 n)

end

end A002232.P6818439520536803776

/-! ## A002232.P9105774180949302228

`A002108(A253909(n))-A127802(2*n)`
-/

namespace A002232.P9105774180949302228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002108 (A253909 n).toNat - A127802 (2 * n)

end

end A002232.P9105774180949302228

/-! ## A002232.P4927699550597980111

`A002108(A253909(n))-A001316(n)%2`
-/

namespace A002232.P4927699550597980111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002108 (A253909 n).toNat - Int.tmod (A001316 n) 2

end

end A002232.P4927699550597980111

/-! ## A002232.P17436857951328847292

`A000040(n+1)%2*A002108(A253909(n))`
-/

namespace A002232.P17436857951328847292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A002108 (A253909 n).toNat

end

end A002232.P17436857951328847292

/-! ## A002232.P2949768148199323198

`A000040(Δ[n²])%2+A002108(A253909(n))-1`
-/

namespace A002232.P2949768148199323198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 2 + (A002108 (A253909 n).toNat - 1)

end

end A002232.P2949768148199323198

/-!
# A002233: a(1) = 1; for n > 1, a(n) = least positive prime primitive root of n-th prime.

The programs for A002233, there is no canonical definition to state claims against.
-/

/-! ## A002233.P2637734463064487266

`A122028(n+1)%(n+2)`
-/

namespace A002233.P2637734463064487266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122028 (n + 1)) (n + 2 : ℤ)

end

end A002233.P2637734463064487266

/-! ## A002233.P4457050231817667053

`A122028(n+1)-A000038(n)`
-/

namespace A002233.P4457050231817667053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122028 (n + 1) - A000038 n

end

end A002233.P4457050231817667053

/-! ## A002233.P15937689540540527705

`floor(A122028(n+1)/A054977(n))`
-/

namespace A002233.P15937689540540527705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A122028 (n + 1) : ℚ) / (A054977 n : ℚ)⌋

end

end A002233.P15937689540540527705

/-! ## A002233.P699036328072021465

`A122028(n+1)-2*A000007(n)`
-/

namespace A002233.P699036328072021465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122028 (n + 1) - 2 * A000007 n

end

end A002233.P699036328072021465

/-! ## A002233.P8089726938398699827

`and(A112714(n+1), A122028(n+1))`
-/

namespace A002233.P8089726938398699827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A112714 (n + 1)) (A122028 (n + 1))

end

end A002233.P8089726938398699827

/-! ## A002233.P18351907843595108784

`and(A122028(n+1), A153881(n+1))`
-/

namespace A002233.P18351907843595108784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122028 (n + 1)) (A153881 (n + 1))

end

end A002233.P18351907843595108784

/-! ## A002233.P6723824478774958188

`A122028(n+1)-C(2, A161764(n+1)²)`
-/

namespace A002233.P6723824478774958188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122028 (n + 1) - (Nat.choose 2 (A161764 (n + 1) ^ 2).toNat : ℤ)

end

end A002233.P6723824478774958188

/-! ## A002233.P16116914256001569233

`A122028(n+1)/A001222(a(n-1))!` with `a(0)=1`
-/

namespace A002233.P16116914256001569233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A122028 (n + 1) : ℚ) / (Nat.factorial (A001222 (SequenceMachineLib.roundAway (a (n - 1))).toNat).toNat : ℚ)

end

end A002233.P16116914256001569233

/-! ## A002233.P8503558598751013485

`A122028(n+1)^(A020639(A004277(n))-1)`
-/

namespace A002233.P8503558598751013485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122028 (n + 1) : ℚ) ^ (A020639 (A004277 n).toNat - 1 : ℤ)

end

end A002233.P8503558598751013485

/-! ## A002233.P6583769684353240118

`A122028(n+1)+A001222(A001222(a(n-1))!)` with `a(0)=1`
-/

namespace A002233.P6583769684353240118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122028 (n + 1) + A001222 (Nat.factorial (A001222 (a (n - 1)).toNat).toNat)

end

end A002233.P6583769684353240118

/-! ## A002233.P1079203971151337172

`A122028(n+1)/A001222(A122028(a(n-1)+1))` with `a(0)=1`
-/

namespace A002233.P1079203971151337172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A122028 (n + 1) : ℚ) / (A001222 (A122028 (SequenceMachineLib.roundAway (a (n - 1) + 1)).toNat).toNat : ℚ)

end

end A002233.P1079203971151337172

/-! ## A002233.P16623873350834549307

`A122028(n+1)/C(A014963(4*n+2)+1, 2)`
-/

namespace A002233.P16623873350834549307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122028 (n + 1) : ℚ) / (Nat.choose (A014963 (4 * n + 2) + 1).toNat 2 : ℚ)

end

end A002233.P16623873350834549307

/-! ## A002233.P16179821507780847327

`A122028(n+1)/A039739(A014963(4*n+2)+2)`
-/

namespace A002233.P16179821507780847327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122028 (n + 1) : ℚ) / (A039739 (A014963 (4 * n + 2) + 2).toNat : ℚ)

end

end A002233.P16179821507780847327

/-! ## A002233.P14650138972499214415

`A223942(n+1)-A000007(n)`
-/

namespace A002233.P14650138972499214415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223942 (n + 1) - A000007 n

end

end A002233.P14650138972499214415

/-! ## A002233.P17786730863793825268

`A223942(n+1)/A054977(n)`
-/

namespace A002233.P17786730863793825268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223942 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A002233.P17786730863793825268

/-! ## A002233.P6887223316575987542

`gcd(A130706(n), A223942(n+1))`
-/

namespace A002233.P6887223316575987542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A223942 (n + 1))

end

end A002233.P6887223316575987542

/-! ## A002233.P18396290035786952407

`A223942(n+1)-A130706(2*n)`
-/

namespace A002233.P18396290035786952407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223942 (n + 1) - A130706 (2 * n)

end

end A002233.P18396290035786952407

/-! ## A002233.P210328751120156664

`2*A223942(n+1)-A122028(n+1)`
-/

namespace A002233.P210328751120156664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A223942 (n + 1) - A122028 (n + 1)

end

end A002233.P210328751120156664

/-! ## A002233.P8030910723798995125

`A223942(n+1)-floor(2/A000040(n+1))`
-/

namespace A002233.P8030910723798995125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223942 (n + 1) - ⌊2 / (A000040 (n + 1) : ℚ)⌋

end

end A002233.P8030910723798995125

/-! ## A002233.P12965443236857125552

`A223942(n+1)/A325566(A000040(n+1))`
-/

namespace A002233.P12965443236857125552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223942 (n + 1) : ℚ) / (A325566 (A000040 (n + 1)).toNat : ℚ)

end

end A002233.P12965443236857125552

/-!
# A002234: Numbers k such that the Woodall number k*2^k - 1 is prime.

The programs for A002234, there is no canonical definition to state claims against.
-/

/-! ## A002234.P16437133719988693838

`eq[1, A288158(n+1)]+1`
-/

namespace A002234.P16437133719988693838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288158 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002234.P16437133719988693838

/-! ## A002234.P17983885821832428058

`eq[1, A288158(A028310(n))]`
-/

namespace A002234.P17983885821832428058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288158 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002234.P17983885821832428058

/-! ## A002234.P10293302123260655614

`A020725(eq[1, A288158(n+1)])`
-/

namespace A002234.P10293302123260655614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002234.P10293302123260655614

/-! ## A002234.P7377728279669022828

`eq[1, A257379(n+1)]+1`
-/

namespace A002234.P7377728279669022828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257379 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002234.P7377728279669022828

/-! ## A002234.P13729786967464424362

`A020725(eq[1, A257379(n+1)])`
-/

namespace A002234.P13729786967464424362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002234.P13729786967464424362

/-!
# A002235: Numbers m such that 3*2^m - 1 is prime.

The programs for A002235, there is no canonical definition to state claims against.
-/

/-! ## A002235.P14824923907850769912

`A091997(n+1)-1`
-/

namespace A002235.P14824923907850769912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091997 (n + 1) - 1

end

end A002235.P14824923907850769912

/-! ## A002235.P6704864836025991028

`record[A091997(A133310(n))-1]`
-/

namespace A002235.P6704864836025991028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091997 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002235.P6704864836025991028

/-! ## A002235.P15061738149294215770

`abs(A091997(n+1)+A057428(n+1))`
-/

namespace A002235.P15061738149294215770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091997 (n + 1) + A057428 (n + 1)|

end

end A002235.P15061738149294215770

/-! ## A002235.P12826537677475050861

`xor(-A091997(n+1), A057428(n+2))`
-/

namespace A002235.P12826537677475050861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A091997 (n + 1)) (A057428 (n + 2))

end

end A002235.P12826537677475050861

/-! ## A002235.P17417609029668597010

`A107393(A126715(n))+A091997(n+1)`
-/

namespace A002235.P17417609029668597010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A126715 n).toNat + A091997 (n + 1)

end

end A002235.P17417609029668597010

/-!
# A002236: Numbers k such that 9*2^k - 1 is prime.

The programs for A002236, there is no canonical definition to state claims against.
-/

/-! ## A002236.P8535634932000282853

`2*A091996(n+1)-1`
-/

namespace A002236.P8535634932000282853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091996 (n + 1) - 1

end

end A002236.P8535634932000282853

/-! ## A002236.P7982311786451936779

`or(-1, A000041(n))+2*A091996(n+1)`
-/

namespace A002236.P7982311786451936779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A000041 n) + 2 * A091996 (n + 1)

end

end A002236.P7982311786451936779

/-! ## A002236.P6994687240920327881

`or(-1, A000005(n+1))+2*A091996(n+1)`
-/

namespace A002236.P6994687240920327881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A000005 (n + 1)) + 2 * A091996 (n + 1)

end

end A002236.P6994687240920327881

/-! ## A002236.P12872305789462784637

`A008683(Δ[A007504(n)])+2*A091996(n+1)`
-/

namespace A002236.P12872305789462784637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (n + 1) - f1 n).toNat + 2 * A091996 (n + 1)

end

end A002236.P12872305789462784637

/-! ## A002236.P7217739344130302315

`A008683(A023583(n+1))+2*A091996(n+1)`
-/

namespace A002236.P7217739344130302315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A023583 (n + 1)).toNat + 2 * A091996 (n + 1)

end

end A002236.P7217739344130302315

/-!
# A002237: Numbers k such that 15*2^k - 1 is prime.

The programs for A002237, there is no canonical definition to state claims against.
-/

/-! ## A002237.P1590076040164232507

`val(A196940(n+1)+1, 2)`
-/

namespace A002237.P1590076040164232507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A196940 (n + 1) + 1).toNat 2

end

end A002237.P1590076040164232507

/-! ## A002237.P11155447272800236981

`A023445(floor(log2(A196940(n+1))))`
-/

namespace A002237.P11155447272800236981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (Nat.log 2 (A196940 (n + 1)).toNat)

end

end A002237.P11155447272800236981

/-! ## A002237.P8346619075822112477

`eq[A000079(n), A337881(n+3)]+1`
-/

namespace A002237.P8346619075822112477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337881 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A002237.P8346619075822112477

/-! ## A002237.P6143715547205439625

`A055178(Δ[A124617(n)])`
-/

namespace A002237.P6143715547205439625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124617 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055178 (f1 (n + 1) - f1 n).toNat

end

end A002237.P6143715547205439625

/-!
# A002238: Numbers k such that 21*2^k - 1 is prime.

The programs for A002238, there is no canonical definition to state claims against.
-/

/-! ## A002238.P1648694829135748046

`A025147(2*(n+2))+A001221(A341283(n+4))`
-/

namespace A002238.P1648694829135748046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 (2 * (n + 2)) + A001221 (A341283 (n + 4)).toNat

end

end A002238.P1648694829135748046

/-! ## A002238.P3240484215262440386

`A036445(A225078(n+2))`
-/

namespace A002238.P3240484215262440386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036445 (A225078 (n + 2)).toNat

end

end A002238.P3240484215262440386

/-! ## A002238.P9482324280364352534

`∑[A328114(∑[A150078(n)])]`
-/

namespace A002238.P9482324280364352534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150078 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002238.P9482324280364352534

/-!
# A002239: 9th powers written backwards.

The programs for A002239, there is no canonical definition to state claims against.
-/

/-! ## A002239.P4040677153832469274

`A319603(A000578(n))-n^9`
-/

namespace A002239.P4040677153832469274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319603 (A000578 n).toNat - (n ^ 9 : ℤ)

end

end A002239.P4040677153832469274

/-!
# A002241: 10th powers written backwards.

The programs for A002241, there is no canonical definition to state claims against.
-/

/-! ## A002241.P3928271035269018802

`A002118(A004086(A004086(n²)))`
-/

namespace A002241.P3928271035269018802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002118 (A004086 (A004086 (n ^ 2)).toNat).toNat

end

end A002241.P3928271035269018802

/-! ## A002241.P1987549153561646131

`A002118(n*A004086(A004086(n)))`
-/

namespace A002241.P1987549153561646131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002118 ((n : ℤ) * A004086 (A004086 n).toNat).toNat

end

end A002241.P1987549153561646131

/-! ## A002241.P2231620991791848084

`A002118(n²)`
-/

namespace A002241.P2231620991791848084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002118 (n ^ 2)

end

end A002241.P2231620991791848084

/-! ## A002241.P5307069782236608670

`or(char[1], A002118(A000290(n)))`
-/

namespace A002241.P5307069782236608670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A002118 (A000290 n).toNat)

end

end A002241.P5307069782236608670

/-! ## A002241.P5406094309069889082

`A005888(2*n)+A002118(A000290(n))`
-/

namespace A002241.P5406094309069889082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005888 (2 * n) + A002118 (A000290 n).toNat

end

end A002241.P5406094309069889082

/-! ## A002241.P7671964144514566535

`A000034(2*n)*A002118(A000290(n))`
-/

namespace A002241.P7671964144514566535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A002118 (A000290 n).toNat

end

end A002241.P7671964144514566535

/-! ## A002241.P11237480356976540511

`A002118(A000290(n))+char[A205408(n+1)]`
-/

namespace A002241.P11237480356976540511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205408 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002118 (A000290 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A002241.P11237480356976540511

/-! ## A002241.P10963525317272909545

`char[A055631(n+1)]*A002118(A000290(n))`
-/

namespace A002241.P10963525317272909545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055631 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A002118 (A000290 n).toNat

end

end A002241.P10963525317272909545

/-! ## A002241.P9692284184769491163

`A000035(2*n+1)*A002118(A000290(n))`
-/

namespace A002241.P9692284184769491163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A002118 (A000290 n).toNat

end

end A002241.P9692284184769491163

/-! ## A002241.P9544287452503389689

`A007318(A000217(n))*A002118(A000290(n))`
-/

namespace A002241.P9544287452503389689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A002118 (A000290 n).toNat

end

end A002241.P9544287452503389689

/-! ## A002241.P17233114027155859809

`A014963(A008458(n))*A002118(A000290(n))`
-/

namespace A002241.P17233114027155859809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A002118 (A000290 n).toNat

end

end A002241.P17233114027155859809

/-!
# A002242: Numbers k such that 45*2^k - 1 is prime.

The programs for A002242, there is no canonical definition to state claims against.
-/

/-! ## A002242.P17515125624477147501

`val(A230168(n+1)+1, 2)`
-/

namespace A002242.P17515125624477147501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A230168 (n + 1) + 1).toNat 2

end

end A002242.P17515125624477147501

/-! ## A002242.P3482155092230964494

`val(Δ[A230168(n+1)], 2)`
-/

namespace A002242.P3482155092230964494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230168 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A002242.P3482155092230964494

/-!
# A002243: Numbers that are not the sum of 3 distinct triangular numbers.

The programs for A002243, there is no canonical definition to state claims against.
-/

/-! ## A002243.P18154639081893090093

`lt[n*A224326(n), n]`
-/

namespace A002243.P18154639081893090093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A224326 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A002243.P18154639081893090093

/-! ## A002243.P13497118080194221840

`eq[0, A224326(n+1)]+1`
-/

namespace A002243.P13497118080194221840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002243.P13497118080194221840

/-! ## A002243.P3887856230892544481

`eq[floor(acot(n)), A025442(8*n+3)]`
-/

namespace A002243.P3887856230892544481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (8 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002243.P3887856230892544481

/-! ## A002243.P16128766504291835295

`eq[A000007(n), A224326(n)]`
-/

namespace A002243.P16128766504291835295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002243.P16128766504291835295

/-! ## A002243.P9829113844686170904

`eq[A000038(n), A224326(n)]`
-/

namespace A002243.P9829113844686170904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002243.P9829113844686170904

/-!
# A002244: Numbers that are not the sum of 3 distinct nonzero triangular numbers.

The programs for A002244, there is no canonical definition to state claims against.
-/

/-! ## A002244.P1655141560125889972

`eq[A224326(n+1), A307597(n+1)]+1`
-/

namespace A002244.P1655141560125889972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A002244.P1655141560125889972

/-! ## A002244.P8582646939688254725

`eq[A224326(n)+A000007(n), A307597(n)]`
-/

namespace A002244.P8582646939688254725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224326 n + A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002244.P8582646939688254725

/-! ## A002244.P13151672596939808315

`eq[A224326(n)+A000038(n), A307597(n)]`
-/

namespace A002244.P13151672596939808315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224326 n + A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002244.P13151672596939808315

/-! ## A002244.P6600458288133888867

`lt[A224326(n), A307597(n)+A057427(n)]`
-/

namespace A002244.P6600458288133888867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 n + A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A002244.P6600458288133888867

/-! ## A002244.P4661412011831101600

`eq[A307380(n+1)+A224326(n), A307597(n)]`
-/

namespace A002244.P4661412011831101600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307380 (n + 1) + A224326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002244.P4661412011831101600

/-!
# A002246: a(1) = 3; for n > 1, a(n) = 4*phi(n); given a rational number r = p/q, where q>0, (p,q)=1, define its height to be max{|p|,q}; then a(n) = number of rational numbers of height n.

The programs for A002246, the canonical program `A002246.P240694436588019048` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002246 has offset 1).

The definition of A002246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002246.P16757873983549725526

`(4-C(2, n+2))*A000010(n+1)`
-/

namespace A002246.P16757873983549725526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - (Nat.choose 2 (n + 2) : ℤ)) * A000010 (n + 1)

end

end A002246.P16757873983549725526

namespace A002246

/-- `(4-C(2, n+2))*A000010(n+1)` -/
def P16757873983549725526.Spec : Prop :=
  ∀ n, P16757873983549725526.a n = A002246 (n + 1)

end A002246

/-! ## A002246.P8740289238633913442

`Δ[a(n-1)+4*A000010(n)]` with `a(0)=0, a(1)=3`
-/

namespace A002246.P8740289238633913442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 4 * A000010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002246.P8740289238633913442

namespace A002246

/-- `Δ[a(n-1)+4*A000010(n)]` -/
def P8740289238633913442.Spec : Prop :=
  ∀ n, P8740289238633913442.a n = A002246 (n + 1)

end A002246

/-! ## A002246.P8514506631892239960

`Δ[A100449(n)]-A000007(n)`
-/

namespace A002246.P8514506631892239960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000007 n

end

end A002246.P8514506631892239960

namespace A002246

/-- `Δ[A100449(n)]-A000007(n)` -/
def P8514506631892239960.Spec : Prop :=
  ∀ n, P8514506631892239960.a n = A002246 (n + 1)

end A002246

/-! ## A002246.P11038666269022841302

`A000010(n+1)*A255176(n)`
-/

namespace A002246.P11038666269022841302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A255176 n

end

end A002246.P11038666269022841302

namespace A002246

/-- `A000010(n+1)*A255176(n)` -/
def P11038666269022841302.Spec : Prop :=
  ∀ n, P11038666269022841302.a n = A002246 (n + 1)

end A002246

/-! ## A002246.P240694436588019048

`A000007(n)+2*A140434(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A002246

/-- `A000007(n)+2*A140434(n+1)` -/
def P240694436588019048.Spec : Prop :=
  ∀ n, P240694436588019048.a n = A002246 (n + 1)

theorem P240694436588019048.correct : P240694436588019048.Spec := by
  intro n
  simp only [A002246, Nat.add_sub_cancel]

end A002246

/-! ## A002246.P5909583424800772501

`(A157532(n+1)+1)*A000010(n+1)`
-/

namespace A002246.P5909583424800772501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157532 (n + 1) + 1) * A000010 (n + 1)

end

end A002246.P5909583424800772501

namespace A002246

/-- `(A157532(n+1)+1)*A000010(n+1)` -/
def P5909583424800772501.Spec : Prop :=
  ∀ n, P5909583424800772501.a n = A002246 (n + 1)

end A002246

/-! ## A002246.P17422981037340499667

`A140434(n+1)+2*A000010(n+1)`
-/

namespace A002246.P17422981037340499667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (n + 1) + 2 * A000010 (n + 1)

end

end A002246.P17422981037340499667

namespace A002246

/-- `A140434(n+1)+2*A000010(n+1)` -/
def P17422981037340499667.Spec : Prop :=
  ∀ n, P17422981037340499667.a n = A002246 (n + 1)

end A002246

/-! ## A002246.P1940476587007856400

`A319998(2*(n+1))+A140434(n+1)`
-/

namespace A002246.P1940476587007856400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319998 (2 * (n + 1)) + A140434 (n + 1)

end

end A002246.P1940476587007856400

namespace A002246

/-- `A319998(2*(n+1))+A140434(n+1)` -/
def P1940476587007856400.Spec : Prop :=
  ∀ n, P1940476587007856400.a n = A002246 (n + 1)

end A002246

/-! ## A002246.P1835063275924844087

`(floor(atan(A046092(n)))+3)*A000010(n+1)`
-/

namespace A002246.P1835063275924844087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊Real.arctan (A046092 n : ℝ)⌋ + 3) * A000010 (n + 1)

end

end A002246.P1835063275924844087

namespace A002246

/-- `(floor(atan(A046092(n)))+3)*A000010(n+1)` -/
def P1835063275924844087.Spec : Prop :=
  ∀ n, P1835063275924844087.a n = A002246 (n + 1)

end A002246

/-! ## A002246.P15256283402381618269

`(gcd(2, A000010(n+2))+2)*A000010(n+1)`
-/

namespace A002246.P15256283402381618269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000010 (n + 2)) + 2 : ℤ) * A000010 (n + 1)

end

end A002246.P15256283402381618269

namespace A002246

/-- `(gcd(2, A000010(n+2))+2)*A000010(n+1)` -/
def P15256283402381618269.Spec : Prop :=
  ∀ n, P15256283402381618269.a n = A002246 (n + 1)

end A002246

/-! ## A002246.P9229379208714975775

`(A000032(C(2, n+2))+2)*A000010(n+1)`
-/

namespace A002246.P9229379208714975775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 (Nat.choose 2 (n + 2)) + 2) * A000010 (n + 1)

end

end A002246.P9229379208714975775

namespace A002246

/-- `(A000032(C(2, n+2))+2)*A000010(n+1)` -/
def P9229379208714975775.Spec : Prop :=
  ∀ n, P9229379208714975775.a n = A002246 (n + 1)

end A002246

/-! ## A002246.P6235621393248940893

`4*A000010(A008683(a(n-1))+n+1)` with `a(0)=3`
-/

namespace A002246.P6235621393248940893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  4 * A000010 (A008683 (a (n - 1)).toNat + (n + 1 : ℤ)).toNat

end

end A002246.P6235621393248940893

namespace A002246

/-- `4*A000010(A008683(a(n-1))+n+1)` -/
def P6235621393248940893.Spec : Prop :=
  ∀ n, P6235621393248940893.a n = A002246 (n + 1)

end A002246

/-! ## A002246.P13862410549137559533

`∑{d}[n+1, A004767(#-1)*A008683((n+1)/#)]`
-/

namespace A002246.P13862410549137559533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004767 (d - 1) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A002246.P13862410549137559533

namespace A002246

/-- `∑{d}[n+1, A004767(#-1)*A008683((n+1)/#)]` -/
def P13862410549137559533.Spec : Prop :=
  ∀ n, P13862410549137559533.a n = A002246 (n + 1)

end A002246

/-! ## A002246.P2139901886058451170

`(A020639(A004277(n))+2)*A000010(n+1)`
-/

namespace A002246.P2139901886058451170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (A004277 n).toNat + 2) * A000010 (n + 1)

end

end A002246.P2139901886058451170

namespace A002246

/-- `(A020639(A004277(n))+2)*A000010(n+1)` -/
def P2139901886058451170.Spec : Prop :=
  ∀ n, P2139901886058451170.a n = A002246 (n + 1)

end A002246

/-! ## A002246.P966189461401057302

`(A020639(A008458(n))+2)*A000010(n+1)`
-/

namespace A002246.P966189461401057302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (A008458 n).toNat + 2) * A000010 (n + 1)

end

end A002246.P966189461401057302

namespace A002246

/-- `(A020639(A008458(n))+2)*A000010(n+1)` -/
def P966189461401057302.Spec : Prop :=
  ∀ n, P966189461401057302.a n = A002246 (n + 1)

end A002246

/-! ## A002246.P12910802203162585999

`(A020639(A008574(n))+2)*A000010(n+1)`
-/

namespace A002246.P12910802203162585999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (A008574 n).toNat + 2) * A000010 (n + 1)

end

end A002246.P12910802203162585999

namespace A002246

/-- `(A020639(A008574(n))+2)*A000010(n+1)` -/
def P12910802203162585999.Spec : Prop :=
  ∀ n, P12910802203162585999.a n = A002246 (n + 1)

end A002246

/-! ## A002246.P16963388158513156895

`(A020639(A035019(n))+2)*A000010(n+1)`
-/

namespace A002246.P16963388158513156895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (A035019 n).toNat + 2) * A000010 (n + 1)

end

end A002246.P16963388158513156895

namespace A002246

/-- `(A020639(A035019(n))+2)*A000010(n+1)` -/
def P16963388158513156895.Spec : Prop :=
  ∀ n, P16963388158513156895.a n = A002246 (n + 1)

end A002246

/-! ## A002246.P1931443121911176455

`(A020639(A046109(n))+2)*A000010(n+1)`
-/

namespace A002246.P1931443121911176455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (A046109 n).toNat + 2) * A000010 (n + 1)

end

end A002246.P1931443121911176455

namespace A002246

/-- `(A020639(A046109(n))+2)*A000010(n+1)` -/
def P1931443121911176455.Spec : Prop :=
  ∀ n, P1931443121911176455.a n = A002246 (n + 1)

end A002246

/-! ## A002246.P7893871750221874214

`(A001222(A129759(n+1))+3)*A000010(n+1)`
-/

namespace A002246.P7893871750221874214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001222 (A129759 (n + 1)).toNat + 3) * A000010 (n + 1)

end

end A002246.P7893871750221874214

namespace A002246

/-- `(A001222(A129759(n+1))+3)*A000010(n+1)` -/
def P7893871750221874214.Spec : Prop :=
  ∀ n, P7893871750221874214.a n = A002246 (n + 1)

end A002246

/-!
# A002247: A (6,2)-sequence.

The programs for A002247, there is no canonical definition to state claims against.
-/

/-! ## A002247.P3027502605409284418

`A008723(A008831(n+1)+9)`
-/

namespace A002247.P3027502605409284418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008723 (A008831 (n + 1) + 9).toNat

end

end A002247.P3027502605409284418

/-!
# A002248: Number of points on y^2 + xy = x^3 + x^2 + x over GF(2^n).

The programs for A002248, the canonical program `A002248.P10819311282227729342` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002248 has offset 1).

The definition of A002248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002248.P10819311282227729342

`4*a(n-1)-7*a(n-2)+8*a(n-3)-4*a(n-4)` with `a(0)=2, a(1)=8, a(2)=14, a(3)=16`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002248

/-- `4*a(n-1)-7*a(n-2)+8*a(n-3)-4*a(n-4)` -/
def P10819311282227729342.Spec : Prop :=
  ∀ n, P10819311282227729342.a n = A002248 (n + 1)

theorem P10819311282227729342.correct : P10819311282227729342.Spec := by
  intro n
  simp only [A002248, Nat.add_sub_cancel]

end A002248

/-! ## A002248.P2326055223637162455

`2*A215458(n+1)`
-/

namespace A002248.P2326055223637162455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A215458 (n + 1)

end

end A002248.P2326055223637162455

namespace A002248

/-- `2*A215458(n+1)` -/
def P2326055223637162455.Spec : Prop :=
  ∀ n, P2326055223637162455.a n = A002248 (n + 1)

end A002248

/-! ## A002248.P2948816342131745394

`2*(A105579(n)+2^n-1)`
-/

namespace A002248.P2948816342131745394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A105579 n + ((2 ^ n : ℤ) - 1))

end

end A002248.P2948816342131745394

namespace A002248

/-- `2*(A105579(n)+2^n-1)` -/
def P2948816342131745394.Spec : Prop :=
  ∀ n, P2948816342131745394.a n = A002248 (n + 1)

end A002248

/-! ## A002248.P10183015875569977226

`A048578(n)-A002249(n+1)`
-/

namespace A002248.P10183015875569977226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - A002249 (n + 1)

end

end A002248.P10183015875569977226

namespace A002248

/-- `A048578(n)-A002249(n+1)` -/
def P10183015875569977226.Spec : Prop :=
  ∀ n, P10183015875569977226.a n = A002248 (n + 1)

end A002248

/-! ## A002248.P14490052568247139383

`A000051(n+1)-A002249(n+1)`
-/

namespace A002248.P14490052568247139383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) - A002249 (n + 1)

end

end A002248.P14490052568247139383

namespace A002248

/-- `A000051(n+1)-A002249(n+1)` -/
def P14490052568247139383.Spec : Prop :=
  ∀ n, P14490052568247139383.a n = A002248 (n + 1)

end A002248

/-! ## A002248.P4855271288559410634

`A215458(n+2)+A105225(n+2)`
-/

namespace A002248.P4855271288559410634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215458 (n + 2) + A105225 (n + 2)

end

end A002248.P4855271288559410634

namespace A002248

/-- `A215458(n+2)+A105225(n+2)` -/
def P4855271288559410634.Spec : Prop :=
  ∀ n, P4855271288559410634.a n = A002248 (n + 1)

end A002248

/-! ## A002248.P971283843264484263

`∑[A000079(n)]+2-A002249(n+1)`
-/

namespace A002248.P971283843264484263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 - A002249 (n + 1))

end

end A002248.P971283843264484263

namespace A002248

/-- `∑[A000079(n)]+2-A002249(n+1)` -/
def P971283843264484263.Spec : Prop :=
  ∀ n, P971283843264484263.a n = A002248 (n + 1)

end A002248

/-! ## A002248.P4440511003422371035

`A000079(n+1)+1-A002249(n+1)`
-/

namespace A002248.P4440511003422371035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (1 - A002249 (n + 1))

end

end A002248.P4440511003422371035

namespace A002248

/-- `A000079(n+1)+1-A002249(n+1)` -/
def P4440511003422371035.Spec : Prop :=
  ∀ n, P4440511003422371035.a n = A002248 (n + 1)

end A002248

/-! ## A002248.P15282371955900263449

`A048578(n)-A002249(n)-Δ[A002249(n)]`
-/

namespace A002248.P15282371955900263449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - A002249 n - (f1 (n + 1) - f1 n)

end

end A002248.P15282371955900263449

namespace A002248

/-- `A048578(n)-A002249(n)-Δ[A002249(n)]` -/
def P15282371955900263449.Spec : Prop :=
  ∀ n, P15282371955900263449.a n = A002248 (n + 1)

end A002248

/-! ## A002248.P16422444046723049315

`A002249(n+1)+A048635(n+1)+A002249(n+1)`
-/

namespace A002248.P16422444046723049315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002249 (n + 1) + (A048635 (n + 1) + A002249 (n + 1))

end

end A002248.P16422444046723049315

namespace A002248

/-- `A002249(n+1)+A048635(n+1)+A002249(n+1)` -/
def P16422444046723049315.Spec : Prop :=
  ∀ n, P16422444046723049315.a n = A002248 (n + 1)

end A002248

/-!
# A002249: a(n) = a(n-1) - 2*a(n-2) with a(0) = 2, a(1) = 1.

The programs for A002249, the canonical program `A002249.P8449786654288110356` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002249 has offset 0).

The definition of A002249 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-2*a(n-2)` (program `A002249.P8449786654288110356`, by `A002249.P8449786654288110356.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002249.P8449786654288110356

`a(n-1)-2*a(n-2)` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002249

/-- `a(n-1)-2*a(n-2)` -/
def P8449786654288110356.Spec : Prop :=
  ∀ n, P8449786654288110356.a n = A002249 n

theorem P8449786654288110356.correct : P8449786654288110356.Spec := by
  intro n
  simp only [A002249]

end A002249

/-! ## A002249.P7104968304951066806

`(-1)^n*(2*A110512(n)-A001607(n))`
-/

namespace A002249.P7104968304951066806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (2 * A110512 n - A001607 n)

end

end A002249.P7104968304951066806

namespace A002249

/-- `(-1)^n*(2*A110512(n)-A001607(n))` -/
def P7104968304951066806.Spec : Prop :=
  ∀ n, P7104968304951066806.a n = A002249 n

end A002249

/-! ## A002249.P14733090587333453605

`(A107920(n+1)+2*A107920(n+2)-A107920(n+3))/2`
-/

namespace A002249.P14733090587333453605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107920 (n + 1) + 2 * A107920 (n + 2) - A107920 (n + 3) : ℚ) / 2

end

end A002249.P14733090587333453605

namespace A002249

/-- `(A107920(n+1)+2*A107920(n+2)-A107920(n+3))/2` -/
def P14733090587333453605.Spec : Prop :=
  ∀ n, P14733090587333453605.a n = (A002249 n : ℚ)

end A002249

/-! ## A002249.P11616355590228909178

`a(A060728(n))` with `a(0)=2, a(1)=1, a(2)=-3, a(3)=-5, a(4)=1, a(5)=11, a(6)=9, a(7)=-13, a(8)=-31`
-/

namespace A002249.P11616355590228909178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, -3, -5, 1, 11, 9, -13, -31] fun n a =>
  a (A060728 n).toNat

end

end A002249.P11616355590228909178

namespace A002249

/-- `a(A060728(n))` -/
def P11616355590228909178.Spec : Prop :=
  ∀ n, P11616355590228909178.a n = A002249 n

end A002249

/-! ## A002249.P4122117250525934170

`a(n-1)-a(n-2)-a(n-2)` with `a(0)=2, a(1)=1`
-/

namespace A002249.P4122117250525934170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  a (n - 1) - a (n - 2) - a (n - 2)

end

end A002249.P4122117250525934170

namespace A002249

/-- `a(n-1)-a(n-2)-a(n-2)` -/
def P4122117250525934170.Spec : Prop :=
  ∀ n, P4122117250525934170.a n = A002249 n

theorem P4122117250525934170.correct : P4122117250525934170.Spec := by
  intro n
  simp only [A002249, Nat.add_sub_cancel, A002249.P4122117250525934170.a, A002249.P8449786654288110356.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A002249

/-! ## A002249.P13355349935731431006

`Δ[A105579(n)]`
-/

namespace A002249.P13355349935731431006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002249.P13355349935731431006

namespace A002249

/-- `Δ[A105579(n)]` -/
def P13355349935731431006.Spec : Prop :=
  ∀ n, P13355349935731431006.a n = A002249 n

end A002249

/-! ## A002249.P15297558150576114814

`Δ[-A105225(n)]`
-/

namespace A002249.P15297558150576114814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A105225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002249.P15297558150576114814

namespace A002249

/-- `Δ[-A105225(n)]` -/
def P15297558150576114814.Spec : Prop :=
  ∀ n, P15297558150576114814.a n = A002249 n

end A002249

/-! ## A002249.P7172411977795916599

`Δ[Δ[A105225(n+1)/2]]`
-/

namespace A002249.P7172411977795916599
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105225 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002249.P7172411977795916599

namespace A002249

/-- `Δ[Δ[A105225(n+1)/2]]` -/
def P7172411977795916599.Spec : Prop :=
  ∀ n, P7172411977795916599.a n = (A002249 n : ℚ)

end A002249

/-! ## A002249.P16068262293280775517

`A078020(n)+∑[A078020(n)]`
-/

namespace A002249.P16068262293280775517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002249.P16068262293280775517

namespace A002249

/-- `A078020(n)+∑[A078020(n)]` -/
def P16068262293280775517.Spec : Prop :=
  ∀ n, P16068262293280775517.a n = A002249 n

end A002249

/-! ## A002249.P962526315398645955

`A107920(n+1)+A078020(n)`
-/

namespace A002249.P962526315398645955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 (n + 1) + A078020 n

end

end A002249.P962526315398645955

namespace A002249

/-- `A107920(n+1)+A078020(n)` -/
def P962526315398645955.Spec : Prop :=
  ∀ n, P962526315398645955.a n = A002249 n

end A002249

/-! ## A002249.P13115350299476836133

`A105225(n)-A105225(n+1)`
-/

namespace A002249.P13115350299476836133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105225 n - A105225 (n + 1)

end

end A002249.P13115350299476836133

namespace A002249

/-- `A105225(n)-A105225(n+1)` -/
def P13115350299476836133.Spec : Prop :=
  ∀ n, P13115350299476836133.a n = A002249 n

end A002249

/-! ## A002249.P5673401837306902437

`A105579(n+1)-A105579(n)`
-/

namespace A002249.P5673401837306902437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105579 (n + 1) - A105579 n

end

end A002249.P5673401837306902437

namespace A002249

/-- `A105579(n+1)-A105579(n)` -/
def P5673401837306902437.Spec : Prop :=
  ∀ n, P5673401837306902437.a n = A002249 n

end A002249

/-! ## A002249.P16838055700115025736

`A105578(n)-A105578(n+3)`
-/

namespace A002249.P16838055700115025736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 n - A105578 (n + 3)

end

end A002249.P16838055700115025736

namespace A002249

/-- `A105578(n)-A105578(n+3)` -/
def P16838055700115025736.Spec : Prop :=
  ∀ n, P16838055700115025736.a n = A002249 n

end A002249

/-! ## A002249.P16633084838604691717

`A107920(n+1)+Δ[A107920(n)]`
-/

namespace A002249.P16633084838604691717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107920 (n + 1) + (f1 (n + 1) - f1 n)

end

end A002249.P16633084838604691717

namespace A002249

/-- `A107920(n+1)+Δ[A107920(n)]` -/
def P16633084838604691717.Spec : Prop :=
  ∀ n, P16633084838604691717.a n = A002249 n

end A002249

/-! ## A002249.P7389019272606667716

`2*A078020(n)-Δ[A105578(n)]`
-/

namespace A002249.P7389019272606667716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078020 n - (f1 (n + 1) - f1 n)

end

end A002249.P7389019272606667716

namespace A002249

/-- `2*A078020(n)-Δ[A105578(n)]` -/
def P7389019272606667716.Spec : Prop :=
  ∀ n, P7389019272606667716.a n = A002249 n

end A002249

/-! ## A002249.P6459480706951730578

`Δ[-(A105578(n)+A078020(n+1))]`
-/

namespace A002249.P6459480706951730578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A105578 n + A078020 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002249.P6459480706951730578

namespace A002249

/-- `Δ[-(A105578(n)+A078020(n+1))]` -/
def P6459480706951730578.Spec : Prop :=
  ∀ n, P6459480706951730578.a n = A002249 n

end A002249

/-! ## A002249.P16909107821594614816

`(A107920(n+1)-A167433(n+1))/2`
-/

namespace A002249.P16909107821594614816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107920 (n + 1) - A167433 (n + 1) : ℚ) / 2

end

end A002249.P16909107821594614816

namespace A002249

/-- `(A107920(n+1)-A167433(n+1))/2` -/
def P16909107821594614816.Spec : Prop :=
  ∀ n, P16909107821594614816.a n = (A002249 n : ℚ)

end A002249

/-!
# A002250: a(n) = 4^n - 2*3^n.

The programs for A002250, the canonical program `A002250.P15900526212734195691` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002250 has offset 0).

The definition of A002250 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-2*3^n` (program `A002250.P15900526212734195691`, by `A002250.P15900526212734195691.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002250.P15900526212734195691

`4^n-2*3^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002250

/-- `4^n-2*3^n` -/
def P15900526212734195691.Spec : Prop :=
  ∀ n, P15900526212734195691.a n = A002250 n

theorem P15900526212734195691.correct : P15900526212734195691.Spec := by
  intro n
  simp only [A002250]

end A002250

/-! ## A002250.P4082278216608252733

`ceil(record[A167762(n)/(-1)^n]-3^n)`
-/

namespace A002250.P4082278216608252733
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167762 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (3 ^ n : ℚ)⌉

end

end A002250.P4082278216608252733

namespace A002250

/-- `ceil(record[A167762(n)/(-1)^n]-3^n)` -/
def P4082278216608252733.Spec : Prop :=
  ∀ n, P4082278216608252733.a n = A002250 n

end A002250

/-! ## A002250.P1584854096917233604

`ceil(record[A167936(n)^(-1)^n]-3^n)`
-/

namespace A002250.P1584854096917233604
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167936 n : ℚ) ^ ((-1) ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (3 ^ n : ℚ)⌉

end

end A002250.P1584854096917233604

namespace A002250

/-- `ceil(record[A167936(n)^(-1)^n]-3^n)` -/
def P1584854096917233604.Spec : Prop :=
  ∀ n, P1584854096917233604.a n = A002250 n

end A002250

/-! ## A002250.P426896474952973807

`or(2, A005061(n)-A000244(n))`
-/

namespace A002250.P426896474952973807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A005061 n - A000244 n)

end

end A002250.P426896474952973807

namespace A002250

/-- `or(2, A005061(n)-A000244(n))` -/
def P426896474952973807.Spec : Prop :=
  ∀ n, P426896474952973807.a n = A002250 n

end A002250

/-! ## A002250.P9936381894917169999

`Δ[A002450(n)-3^n]`
-/

namespace A002250.P9936381894917169999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n - (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002250.P9936381894917169999

namespace A002250

/-- `Δ[A002450(n)-3^n]` -/
def P9936381894917169999.Spec : Prop :=
  ∀ n, P9936381894917169999.a n = A002250 n

end A002250

/-! ## A002250.P7090998709804950752

`Δ[A163834(n)-3^n]`
-/

namespace A002250.P7090998709804950752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163834 n - (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002250.P7090998709804950752

namespace A002250

/-- `Δ[A163834(n)-3^n]` -/
def P7090998709804950752.Spec : Prop :=
  ∀ n, P7090998709804950752.a n = A002250 n

end A002250

/-! ## A002250.P16582926029217347755

`Δ[A163868(n)-3^n]`
-/

namespace A002250.P16582926029217347755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163868 n - (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002250.P16582926029217347755

namespace A002250

/-- `Δ[A163868(n)-3^n]` -/
def P16582926029217347755.Spec : Prop :=
  ∀ n, P16582926029217347755.a n = A002250 n

end A002250

/-! ## A002250.P18109155487220032186

`Δ[A001045(2*n)-A000244(n)]`
-/

namespace A002250.P18109155487220032186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (2 * n) - A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002250.P18109155487220032186

namespace A002250

/-- `Δ[A001045(2*n)-A000244(n)]` -/
def P18109155487220032186.Spec : Prop :=
  ∀ n, P18109155487220032186.a n = A002250 n

end A002250

/-! ## A002250.P13159980887528923881

`(2*A000079(n)²-A003946(n+1))/2`
-/

namespace A002250.P13159980887528923881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000079 n ^ 2 - A003946 (n + 1) : ℚ) / 2

end

end A002250.P13159980887528923881

namespace A002250

/-- `(2*A000079(n)²-A003946(n+1))/2` -/
def P13159980887528923881.Spec : Prop :=
  ∀ n, P13159980887528923881.a n = (A002250 n : ℚ)

end A002250

/-! ## A002250.P15490655637411722560

`(A000079(2*n+1)-A003946(n+1))/2`
-/

namespace A002250.P15490655637411722560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n + 1) - A003946 (n + 1) : ℚ) / 2

end

end A002250.P15490655637411722560

namespace A002250

/-- `(A000079(2*n+1)-A003946(n+1))/2` -/
def P15490655637411722560.Spec : Prop :=
  ∀ n, P15490655637411722560.a n = (A002250 n : ℚ)

end A002250

/-! ## A002250.P11804881747515422552

`(A155559(2*n+1)-A003946(n+1))/2`
-/

namespace A002250.P11804881747515422552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155559 (2 * n + 1) - A003946 (n + 1) : ℚ) / 2

end

end A002250.P11804881747515422552

namespace A002250

/-- `(A155559(2*n+1)-A003946(n+1))/2` -/
def P11804881747515422552.Spec : Prop :=
  ∀ n, P11804881747515422552.a n = (A002250 n : ℚ)

end A002250

/-! ## A002250.P10521187037220201614

`(2*A000079(n)²-A162766(2*n+1))/2`
-/

namespace A002250.P10521187037220201614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000079 n ^ 2 - A162766 (2 * n + 1) : ℚ) / 2

end

end A002250.P10521187037220201614

namespace A002250

/-- `(2*A000079(n)²-A162766(2*n+1))/2` -/
def P10521187037220201614.Spec : Prop :=
  ∀ n, P10521187037220201614.a n = (A002250 n : ℚ)

end A002250

/-! ## A002250.P14692913700132719283

`(2*A000079(n)²-A166552(2*(n+1)))/2`
-/

namespace A002250.P14692913700132719283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000079 n ^ 2 - A166552 (2 * (n + 1)) : ℚ) / 2

end

end A002250.P14692913700132719283

namespace A002250

/-- `(2*A000079(n)²-A166552(2*(n+1)))/2` -/
def P14692913700132719283.Spec : Prop :=
  ∀ n, P14692913700132719283.a n = (A002250 n : ℚ)

end A002250

/-! ## A002250.P6815825234900159018

`(A000079(2*n+1)-A162766(2*n+1))/2`
-/

namespace A002250.P6815825234900159018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n + 1) - A162766 (2 * n + 1) : ℚ) / 2

end

end A002250.P6815825234900159018

namespace A002250

/-- `(A000079(2*n+1)-A162766(2*n+1))/2` -/
def P6815825234900159018.Spec : Prop :=
  ∀ n, P6815825234900159018.a n = (A002250 n : ℚ)

end A002250

/-! ## A002250.P14886066253469076313

`(A000079(2*n+1)-A166552(2*(n+1)))/2`
-/

namespace A002250.P14886066253469076313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n + 1) - A166552 (2 * (n + 1)) : ℚ) / 2

end

end A002250.P14886066253469076313

namespace A002250

/-- `(A000079(2*n+1)-A166552(2*(n+1)))/2` -/
def P14886066253469076313.Spec : Prop :=
  ∀ n, P14886066253469076313.a n = (A002250 n : ℚ)

end A002250

/-! ## A002250.P16815774620510754120

`Δ[A000975(2*n+1)-Δ[A036557(2*n+1)]]`
-/

namespace A002250.P16815774620510754120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036557 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (2 * n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002250.P16815774620510754120

namespace A002250

/-- `Δ[A000975(2*n+1)-Δ[A036557(2*n+1)]]` -/
def P16815774620510754120.Spec : Prop :=
  ∀ n, P16815774620510754120.a n = A002250 n

end A002250

/-!
# A002251: Start with the nonnegative integers; then swap L(k) and U(k) for all k >= 1, where L = A000201, U = A001950 (lower and upper Wythoff sequences).

The programs for A002251, the canonical program `A002251.P8899938186717577679` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002251 has offset 0).

The definition of A002251 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019444, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002251.P8899938186717577679

`A019444(n+1)-1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A002251

/-- `A019444(n+1)-1` -/
def P8899938186717577679.Spec : Prop :=
  ∀ n, P8899938186717577679.a n = A002251 n

theorem P8899938186717577679.correct : P8899938186717577679.Spec := by
  intro n
  simp only [A002251]

end A002251

/-! ## A002251.P13274731315705790865

`Δ[n*floor(n/ϕ)]`
-/

namespace A002251.P13274731315705790865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002251.P13274731315705790865

namespace A002251

/-- `Δ[n*floor(n/ϕ)]` -/
def P13274731315705790865.Spec : Prop :=
  ∀ n, P13274731315705790865.a n = A002251 n

end A002251

/-! ## A002251.P17653365675896826426

`Δ[n*ceil(n/ϕ)]-char[xor(1, n)]`
-/

namespace A002251.P17653365675896826426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n : ℝ) / Real.goldenRatio⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A002251.P17653365675896826426

namespace A002251

/-- `Δ[n*ceil(n/ϕ)]-char[xor(1, n)]` -/
def P17653365675896826426.Spec : Prop :=
  ∀ n, P17653365675896826426.a n = A002251 n

end A002251

/-! ## A002251.P2943116806286570685

`A000027(Δ[n*ceil(n/ϕ)])-1`
-/

namespace A002251.P2943116806286570685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈(n : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat - 1

end

end A002251.P2943116806286570685

namespace A002251

/-- `A000027(Δ[n*ceil(n/ϕ)])-1` -/
def P2943116806286570685.Spec : Prop :=
  ∀ n, P2943116806286570685.a n = A002251 n

end A002251

/-! ## A002251.P10894688870396773257

`A005206(n)+n*A096270(n)`
-/

namespace A002251.P10894688870396773257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n + (n : ℤ) * A096270 n

end

end A002251.P10894688870396773257

namespace A002251

/-- `A005206(n)+n*A096270(n)` -/
def P10894688870396773257.Spec : Prop :=
  ∀ n, P10894688870396773257.a n = A002251 n

end A002251

/-! ## A002251.P667418187328063112

`A005206(n)+n*A114986(n)`
-/

namespace A002251.P667418187328063112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n + (n : ℤ) * A114986 n

end

end A002251.P667418187328063112

namespace A002251

/-- `A005206(n)+n*A114986(n)` -/
def P667418187328063112.Spec : Prop :=
  ∀ n, P667418187328063112.a n = A002251 n

end A002251

/-! ## A002251.P907498763685624497

`A293688(n)-n*A060143(n)`
-/

namespace A002251.P907498763685624497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293688 n - (n : ℤ) * A060143 n

end

end A002251.P907498763685624497

namespace A002251

/-- `A293688(n)-n*A060143(n)` -/
def P907498763685624497.Spec : Prop :=
  ∀ n, P907498763685624497.a n = A002251 n

end A002251

/-! ## A002251.P12070451999741272892

`A005206(n)+n*char[A000201(n+1)]`
-/

namespace A002251.P12070451999741272892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n + ((n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ)

end

end A002251.P12070451999741272892

namespace A002251

/-- `A005206(n)+n*char[A000201(n+1)]` -/
def P12070451999741272892.Spec : Prop :=
  ∀ n, P12070451999741272892.a n = A002251 n

end A002251

/-! ## A002251.P17398864928319343868

`A001478(n+1)+A019444(n+1)+n`
-/

namespace A002251.P17398864928319343868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A019444 (n + 1) + (n : ℤ))

end

end A002251.P17398864928319343868

namespace A002251

/-- `A001478(n+1)+A019444(n+1)+n` -/
def P17398864928319343868.Spec : Prop :=
  ∀ n, P17398864928319343868.a n = A002251 n

end A002251

/-! ## A002251.P292678176323118536

`A022342(n+1)-n*char[A001950(n+1)]`
-/

namespace A002251.P292678176323118536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1) - ((n * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ)

end

end A002251.P292678176323118536

namespace A002251

/-- `A022342(n+1)-n*char[A001950(n+1)]` -/
def P292678176323118536.Spec : Prop :=
  ∀ n, P292678176323118536.a n = A002251 n

end A002251

/-! ## A002251.P815114802710572518

`A060143(n+1)+n*A189479(n+2)`
-/

namespace A002251.P815114802710572518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (n + 1) + (n : ℤ) * A189479 (n + 2)

end

end A002251.P815114802710572518

namespace A002251

/-- `A060143(n+1)+n*A189479(n+2)` -/
def P815114802710572518.Spec : Prop :=
  ∀ n, P815114802710572518.a n = A002251 n

end A002251

/-! ## A002251.P11054913102578398557

`A023443(A019444(n+1))`
-/

namespace A002251.P11054913102578398557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A019444 (n + 1)).toNat

end

end A002251.P11054913102578398557

namespace A002251

/-- `A023443(A019444(n+1))` -/
def P11054913102578398557.Spec : Prop :=
  ∀ n, P11054913102578398557.a n = A002251 n

end A002251

/-! ## A002251.P6367593462551853512

`A001950(A026242(A026355(n+1)))-(n+2)`
-/

namespace A002251.P6367593462551853512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A026242 (A026355 (n + 1)).toNat).toNat - (n + 2 : ℤ)

end

end A002251.P6367593462551853512

namespace A002251

/-- `A001950(A026242(A026355(n+1)))-(n+2)` -/
def P6367593462551853512.Spec : Prop :=
  ∀ n, P6367593462551853512.a n = A002251 n

end A002251

/-! ## A002251.P6145619089032823439

`A001950(A026242(A099267(n+1)))-(n+2)`
-/

namespace A002251.P6145619089032823439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A026242 (A099267 (n + 1)).toNat).toNat - (n + 2 : ℤ)

end

end A002251.P6145619089032823439

namespace A002251

/-- `A001950(A026242(A099267(n+1)))-(n+2)` -/
def P6145619089032823439.Spec : Prop :=
  ∀ n, P6145619089032823439.a n = A002251 n

end A002251

/-! ## A002251.P377894634604228701

`A003603(A047924(n))-1`
-/

namespace A002251.P377894634604228701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A047924 n).toNat - 1

end

end A002251.P377894634604228701

namespace A002251

/-- `A003603(A047924(n))-1` -/
def P377894634604228701.Spec : Prop :=
  ∀ n, P377894634604228701.a n = A002251 n

end A002251

/-! ## A002251.P3105710996173421426

`A005206(n)+n*A003849(A007066(n+1))`
-/

namespace A002251.P3105710996173421426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n + (n : ℤ) * A003849 (A007066 (n + 1)).toNat

end

end A002251.P3105710996173421426

namespace A002251

/-- `A005206(n)+n*A003849(A007066(n+1))` -/
def P3105710996173421426.Spec : Prop :=
  ∀ n, P3105710996173421426.a n = A002251 n

end A002251

/-! ## A002251.P3825963016177097617

`ceil(ϕ*n)%A050411(ceil(ϕ*n+1+n))`
-/

namespace A002251.P3825963016177097617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.goldenRatio * (n : ℝ)⌉ (A050411 ⌈Real.goldenRatio * (n : ℝ) + 1 + (n : ℝ)⌉.toNat)

end

end A002251.P3825963016177097617

namespace A002251

/-- `ceil(ϕ*n)%A050411(ceil(ϕ*n+1+n))` -/
def P3825963016177097617.Spec : Prop :=
  ∀ n, P3825963016177097617.a n = A002251 n

end A002251

/-! ## A002251.P8413239589427306238

`A120873(A007066(n+1))-1`
-/

namespace A002251.P8413239589427306238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120873 (A007066 (n + 1)).toNat - 1

end

end A002251.P8413239589427306238

namespace A002251

/-- `A120873(A007066(n+1))-1` -/
def P8413239589427306238.Spec : Prop :=
  ∀ n, P8413239589427306238.a n = A002251 n

end A002251

/-! ## A002251.P18021397413035949300

`A120873(A026356(n+1))-1`
-/

namespace A002251.P18021397413035949300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120873 (A026356 (n + 1)).toNat - 1

end

end A002251.P18021397413035949300

namespace A002251

/-- `A120873(A026356(n+1))-1` -/
def P18021397413035949300.Spec : Prop :=
  ∀ n, P18021397413035949300.a n = A002251 n

end A002251

/-! ## A002251.P4727217983289813561

`A019586(A047924(n))`
-/

namespace A002251.P4727217983289813561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A047924 n).toNat

end

end A002251.P4727217983289813561

namespace A002251

/-- `A019586(A047924(n))` -/
def P4727217983289813561.Spec : Prop :=
  ∀ n, P4727217983289813561.a n = A002251 n

end A002251

/-!
# A002252: Order of letters on standard U.S. typewriter keyboard.

The programs for A002252, there is no canonical definition to state claims against.
-/

/-! ## A002252.P2354499711865235921

`A286898(n+1)%32`
-/

namespace A002252.P2354499711865235921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286898 (n + 1)) 32

end

end A002252.P2354499711865235921

/-! ## A002252.P9639266364082483060

`A053645(A286898(n+1))`
-/

namespace A002252.P9639266364082483060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A286898 (n + 1)).toNat

end

end A002252.P9639266364082483060

/-! ## A002252.P12990563640540980155

`A062050(A286898(n+1)-1)`
-/

namespace A002252.P12990563640540980155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A286898 (n + 1) - 1).toNat

end

end A002252.P12990563640540980155

/-! ## A002252.P9630792156485369102

`A286898(A000027(n+1))-64`
-/

namespace A002252.P9630792156485369102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286898 (A000027 (n + 1)).toNat - 64

end

end A002252.P9630792156485369102

/-! ## A002252.P1645616762077574251

`and(A009734(n+1), A286898(n+1))`
-/

namespace A002252.P1645616762077574251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A009734 (n + 1)) (A286898 (n + 1))

end

end A002252.P1645616762077574251

/-!
# A002253: Numbers k such that 3*2^k + 1 is prime.

The programs for A002253, there is no canonical definition to state claims against.
-/

/-! ## A002253.P16998515850801859950

`floor(log2(A039687(n+1)/3))`
-/

namespace A002253.P16998515850801859950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 ((A039687 (n + 1) : ℚ) / 3 : ℝ)⌋

end

end A002253.P16998515850801859950

/-! ## A002253.P9573160891627789935

`eq[3, A263046(n)]`
-/

namespace A002253.P9573160891627789935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002253.P9573160891627789935

/-! ## A002253.P8596269058503504818

`lt[A263046(n), A263046(A263014(2*n+1))]`
-/

namespace A002253.P8596269058503504818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263046 (A263014 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A002253.P8596269058503504818

/-! ## A002253.P11488404299291545991

`eq[A051886(n), A158799(n)]`
-/

namespace A002253.P11488404299291545991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051886 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158799 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002253.P11488404299291545991

/-! ## A002253.P15661999334904076922

`eq[A264098(n+1), A267896(A264098(n+1))]+1`
-/

namespace A002253.P15661999334904076922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267896 (A264098 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A002253.P15661999334904076922

/-!
# A002254: Numbers k such that 5*2^k + 1 is prime.

The programs for A002254, there is no canonical definition to state claims against.
-/

/-! ## A002254.P13038227275049698095

`eq[A168092(n), A263046(n)]`
-/

namespace A002254.P13038227275049698095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002254.P13038227275049698095

/-! ## A002254.P2892547811496777275

`eq[A128999(n+1), A263046(n)]`
-/

namespace A002254.P2892547811496777275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128999 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002254.P2892547811496777275

/-! ## A002254.P13635919916933294691

`eq[A334296(n)+3, A168092(n)]`
-/

namespace A002254.P13635919916933294691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334296 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168092 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002254.P13635919916933294691

/-! ## A002254.P10243473211954257842

`eq[A334296(n)+3, A128999(n+1)]`
-/

namespace A002254.P10243473211954257842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334296 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128999 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002254.P10243473211954257842

/-! ## A002254.P10890771864725747019

`eq[A025581(A055999(n)), A057778(n)]`
-/

namespace A002254.P10890771864725747019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A055999 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002254.P10890771864725747019

/-!
# A002255: Numbers k such that 7*4^k + 1 is prime.

The programs for A002255, there is no canonical definition to state claims against.
-/

/-! ## A002255.P7887691156623147241

`A032353(n+1)/2`
-/

namespace A002255.P7887691156623147241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032353 (n + 1) : ℚ) / 2

end

end A002255.P7887691156623147241

/-! ## A002255.P13578488241039433732

`record[A032353(A324347(n))/2]`
-/

namespace A002255.P13578488241039433732
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032353 (A324347 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002255.P13578488241039433732

/-! ## A002255.P7702514070661440027

`2^A280193(2*n+1)*A032353(n+1)`
-/

namespace A002255.P7702514070661440027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A280193 (2 * n + 1) : ℤ) * (A032353 (n + 1) : ℚ)

end

end A002255.P7702514070661440027

/-! ## A002255.P3301486023730688154

`2^A008683(A109833(n+2))*A032353(n+1)`
-/

namespace A002255.P3301486023730688154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A109833 (n + 2)).toNat : ℤ) * (A032353 (n + 1) : ℚ)

end

end A002255.P3301486023730688154

/-! ## A002255.P17123080410509094604

`A014682(A032353(n+1))`
-/

namespace A002255.P17123080410509094604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A032353 (n + 1)).toNat

end

end A002255.P17123080410509094604

/-!
# A002256: Numbers k such that 9*2^k + 1 is prime.

The programs for A002256, there is no canonical definition to state claims against.
-/

/-! ## A002256.P15896902851795924015

`val(A050528(n+1)-1, 2)`
-/

namespace A002256.P15896902851795924015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A050528 (n + 1) - 1).toNat 2

end

end A002256.P15896902851795924015

/-! ## A002256.P9722066914428396102

`val(Δ[A050528(n+1)], 2)`
-/

namespace A002256.P9722066914428396102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A002256.P9722066914428396102

/-! ## A002256.P17872204401550929455

`A000452(A066283(2*n+3)+A000452(n+1))`
-/

namespace A002256.P17872204401550929455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (A066283 (2 * n + 3) + A000452 (n + 1)).toNat

end

end A002256.P17872204401550929455

/-! ## A002256.P13774351184141873999

`floor(A141443(n+1)/13)+n+1`
-/

namespace A002256.P13774351184141873999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141443 (n + 1) : ℚ) / 13⌋ + (n + 1 : ℤ)

end

end A002256.P13774351184141873999

/-! ## A002256.P7242983208472863551

`record[A338687(∑[A241555(n)])]`
-/

namespace A002256.P7242983208472863551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241555 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338687 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002256.P7242983208472863551

/-!
# A002257: Numbers k such that 13*4^k + 1 is prime.

The programs for A002257, there is no canonical definition to state claims against.
-/

/-! ## A002257.P14914208678600356932

`A032356(n+1)/2`
-/

namespace A002257.P14914208678600356932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032356 (n + 1) : ℚ) / 2

end

end A002257.P14914208678600356932

/-! ## A002257.P12803649432015693216

`A014682(A032356(n+1))`
-/

namespace A002257.P12803649432015693216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A032356 (n + 1)).toNat

end

end A002257.P12803649432015693216

/-! ## A002257.P1399156303897938177

`A273943(lcm(2, A032356(n+1)))`
-/

namespace A002257.P1399156303897938177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A032356 (n + 1)))

end

end A002257.P1399156303897938177

/-! ## A002257.P16199140180933516117

`A273943(A032356(n+1)-floor(acot(n)))`
-/

namespace A002257.P16199140180933516117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A032356 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A002257.P16199140180933516117

/-! ## A002257.P14221790223770649587

`A273943(A032356(n+1)-A000007(n))`
-/

namespace A002257.P14221790223770649587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A032356 (n + 1) - A000007 n).toNat

end

end A002257.P14221790223770649587

/-!
# A002258: Numbers k such that 15*2^k + 1 is prime.

The programs for A002258, there is no canonical definition to state claims against.
-/

/-! ## A002258.P11665651745117982534

`A023445(floor(log2(A195745(n+1))))`
-/

namespace A002258.P11665651745117982534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (Nat.log 2 (A195745 (n + 1)).toNat)

end

end A002258.P11665651745117982534

/-! ## A002258.P6842013005190106262

`eq[A000079(n), A337882(n+3)]+1`
-/

namespace A002258.P6842013005190106262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337882 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A002258.P6842013005190106262

/-!
# A002260: Triangle read by rows: T(n,k) = k for n >= 1, k = 1..n.

The programs for A002260, the canonical program `A002260.P769748059679640451` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002260 has offset 1).

The definition of A002260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002260.P769748059679640451

`1+A002262(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A002260

/-- `1+A002262(n)` -/
def P769748059679640451.Spec : Prop :=
  ∀ n, P769748059679640451.a n = A002260 (n + 1)

theorem P769748059679640451.correct : P769748059679640451.Spec := by
  intro n
  simp only [A002260, Nat.add_sub_cancel]

end A002260

/-! ## A002260.P809863733980011919

`A001511(A118413(n+1))`
-/

namespace A002260.P809863733980011919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A118413 (n + 1)).toNat

end

end A002260.P809863733980011919

namespace A002260

/-- `A001511(A118413(n+1))` -/
def P809863733980011919.Spec : Prop :=
  ∀ n, P809863733980011919.a n = A002260 (n + 1)

end A002260

/-! ## A002260.P7095341371173384963

`A003602(A118416(n+1))`
-/

namespace A002260.P7095341371173384963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A118416 (n + 1)).toNat

end

end A002260.P7095341371173384963

namespace A002260

/-- `A003602(A118416(n+1))` -/
def P7095341371173384963.Spec : Prop :=
  ∀ n, P7095341371173384963.a n = A002260 (n + 1)

end A002260

/-! ## A002260.P6294199663809574352

`1-C(∑[char[∑[n]]], 2)+n`
-/

namespace A002260.P6294199663809574352
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)

end

end A002260.P6294199663809574352

namespace A002260

/-- `1-C(∑[char[∑[n]]], 2)+n` -/
def P6294199663809574352.Spec : Prop :=
  ∀ n, P6294199663809574352.a n = A002260 (n + 1)

end A002260

/-! ## A002260.P10504109152359152137

`1-(C(∑[char[∑[n]]], 2)-n)`
-/

namespace A002260.P10504109152359152137
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (n : ℤ))

end

end A002260.P10504109152359152137

namespace A002260

/-- `1-(C(∑[char[∑[n]]], 2)-n)` -/
def P10504109152359152137.Spec : Prop :=
  ∀ n, P10504109152359152137.a n = A002260 (n + 1)

end A002260

/-! ## A002260.P1414902008767845645

`n+1-C(round(sqrt(2*n+1)), 2)`
-/

namespace A002260.P1414902008767845645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat 2 : ℤ)

end

end A002260.P1414902008767845645

namespace A002260

/-- `n+1-C(round(sqrt(2*n+1)), 2)` -/
def P1414902008767845645.Spec : Prop :=
  ∀ n, P1414902008767845645.a n = A002260 (n + 1)

end A002260

/-! ## A002260.P9401839951446795346

`(n+1)%(C(∑[char[∑[n]]], 2)+1)+1`
-/

namespace A002260.P9401839951446795346
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1) + 1

end

end A002260.P9401839951446795346

namespace A002260

/-- `(n+1)%(C(∑[char[∑[n]]], 2)+1)+1` -/
def P9401839951446795346.Spec : Prop :=
  ∀ n, (P9401839951446795346.a n : ℤ) = A002260 (n + 1)

end A002260

/-! ## A002260.P9617445990787467266

`2*n-comp[C(comp[∑[n]]-n, 2)+n]+1`
-/

namespace A002260.P9617445990787467266
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + 1

end

end A002260.P9617445990787467266

namespace A002260

/-- `2*n-comp[C(comp[∑[n]]-n, 2)+n]+1` -/
def P9617445990787467266.Spec : Prop :=
  ∀ n, P9617445990787467266.a n = A002260 (n + 1)

end A002260

/-! ## A002260.P4100993966949587694

`abs(A140756(n+1))`
-/

namespace A002260.P4100993966949587694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140756 (n + 1)|

end

end A002260.P4100993966949587694

namespace A002260

/-- `abs(A140756(n+1))` -/
def P4100993966949587694.Spec : Prop :=
  ∀ n, P4100993966949587694.a n = A002260 (n + 1)

end A002260

/-! ## A002260.P2724282093589861329

`sqrt(A133819(n+1))`
-/

namespace A002260.P2724282093589861329
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ)

end

end A002260.P2724282093589861329

namespace A002260

/-- `sqrt(A133819(n+1))` -/
def P2724282093589861329.Spec : Prop :=
  ∀ n, P2724282093589861329.a n = (A002260 (n + 1) : ℝ)

end A002260

/-! ## A002260.P2308066097603142504

`sqrt(A143844(n))+1`
-/

namespace A002260.P2308066097603142504
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143844 n : ℝ) + 1

end

end A002260.P2308066097603142504

namespace A002260

/-- `sqrt(A143844(n))+1` -/
def P2308066097603142504.Spec : Prop :=
  ∀ n, P2308066097603142504.a n = (A002260 (n + 1) : ℝ)

end A002260

/-! ## A002260.P15350024645351035602

`log2(A059268(n))+1`
-/

namespace A002260.P15350024645351035602
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ) + 1

end

end A002260.P15350024645351035602

namespace A002260

/-- `log2(A059268(n))+1` -/
def P15350024645351035602.Spec : Prop :=
  ∀ n, P15350024645351035602.a n = (A002260 (n + 1) : ℝ)

end A002260

/-! ## A002260.P16022045315144260054

`val(A130328(n), 2)+1`
-/

namespace A002260.P16022045315144260054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130328 n).toNat 2 + 1

end

end A002260.P16022045315144260054

namespace A002260

/-- `val(A130328(n), 2)+1` -/
def P16022045315144260054.Spec : Prop :=
  ∀ n, (P16022045315144260054.a n : ℤ) = A002260 (n + 1)

end A002260

/-! ## A002260.P224948970265855182

`val(A175840(n), 2)+1`
-/

namespace A002260.P224948970265855182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A175840 n).toNat 2 + 1

end

end A002260.P224948970265855182

namespace A002260

/-- `val(A175840(n), 2)+1` -/
def P224948970265855182.Spec : Prop :=
  ∀ n, (P224948970265855182.a n : ℤ) = A002260 (n + 1)

end A002260

/-! ## A002260.P9655567369142402805

`1-A057944(n)+n`
-/

namespace A002260.P9655567369142402805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057944 n + (n : ℤ)

end

end A002260.P9655567369142402805

namespace A002260

/-- `1-A057944(n)+n` -/
def P9655567369142402805.Spec : Prop :=
  ∀ n, P9655567369142402805.a n = A002260 (n + 1)

end A002260

/-! ## A002260.P5694599994162426056

`A132118(n+1)-n`
-/

namespace A002260.P5694599994162426056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132118 (n + 1) - (n : ℤ)

end

end A002260.P5694599994162426056

namespace A002260

/-- `A132118(n+1)-n` -/
def P5694599994162426056.Spec : Prop :=
  ∀ n, P5694599994162426056.a n = A002260 (n + 1)

end A002260

/-! ## A002260.P3903965450438651767

`∑[2-A130296(n+1)]`
-/

namespace A002260.P3903965450438651767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002260.P3903965450438651767

namespace A002260

/-- `∑[2-A130296(n+1)]` -/
def P3903965450438651767.Spec : Prop :=
  ∀ n, P3903965450438651767.a n = A002260 (n + 1)

end A002260

/-! ## A002260.P17126169143703123653

`A057554(2*n+1)+1`
-/

namespace A002260.P17126169143703123653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (2 * n + 1) + 1

end

end A002260.P17126169143703123653

namespace A002260

/-- `A057554(2*n+1)+1` -/
def P17126169143703123653.Spec : Prop :=
  ∀ n, P17126169143703123653.a n = A002260 (n + 1)

end A002260

/-! ## A002260.P8987479628313243730

`val(A018900(n+1), 2)+1`
-/

namespace A002260.P8987479628313243730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A018900 (n + 1)).toNat 2 + 1

end

end A002260.P8987479628313243730

namespace A002260

/-- `val(A018900(n+1), 2)+1` -/
def P8987479628313243730.Spec : Prop :=
  ∀ n, (P8987479628313243730.a n : ℤ) = A002260 (n + 1)

end A002260

/-! ## A002260.P18096727272672537115

`2*n+1-A061885(n)`
-/

namespace A002260.P18096727272672537115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A061885 n

end

end A002260.P18096727272672537115

namespace A002260

/-- `2*n+1-A061885(n)` -/
def P18096727272672537115.Spec : Prop :=
  ∀ n, P18096727272672537115.a n = A002260 (n + 1)

end A002260

/-!
# A002261: Numbers k such that 11*2^k + 1 is prime.

The programs for A002261, there is no canonical definition to state claims against.
-/

/-! ## A002261.P13900316050932939243

`val(Δ[A050529(n+1)], 2)`
-/

namespace A002261.P13900316050932939243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A002261.P13900316050932939243

/-!
# A002262: Triangle read by rows: T(n,k) = k, 0 <= k <= n, in which row n lists the first n+1 nonnegative integers.

The programs for A002262, the canonical program `A002262.P12129691700837801527` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002262 has offset 0).

The definition of A002262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002262.P12129691700837801527

`n-A057944(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A002262

/-- `n-A057944(n)` -/
def P12129691700837801527.Spec : Prop :=
  ∀ n, P12129691700837801527.a n = A002262 n

theorem P12129691700837801527.correct : P12129691700837801527.Spec := by
  intro n
  simp only [A002262]

end A002262

/-! ## A002262.P8544505522571487181

`A002260(n+1)-1`
-/

namespace A002262.P8544505522571487181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 1

end

end A002262.P8544505522571487181

namespace A002262

/-- `A002260(n+1)-1` -/
def P8544505522571487181.Spec : Prop :=
  ∀ n, P8544505522571487181.a n = A002262 n

end A002262

/-! ## A002262.P9974967083710301454

`n-A000217(A003056(n))`
-/

namespace A002262.P9974967083710301454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000217 (A003056 n).toNat

end

end A002262.P9974967083710301454

namespace A002262

/-- `n-A000217(A003056(n))` -/
def P9974967083710301454.Spec : Prop :=
  ∀ n, P9974967083710301454.a n = A002262 n

end A002262

/-! ## A002262.P16892494343691437459

`A140129(A023758(n+2))`
-/

namespace A002262.P16892494343691437459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140129 (A023758 (n + 2)).toNat

end

end A002262.P16892494343691437459

namespace A002262

/-- `A140129(A023758(n+2))` -/
def P16892494343691437459.Spec : Prop :=
  ∀ n, P16892494343691437459.a n = A002262 n

end A002262

/-! ## A002262.P10525614350706101839

`n-C(∑[char[∑[n]]], 2)`
-/

namespace A002262.P10525614350706101839
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A002262.P10525614350706101839

namespace A002262

/-- `n-C(∑[char[∑[n]]], 2)` -/
def P10525614350706101839.Spec : Prop :=
  ∀ n, P10525614350706101839.a n = A002262 n

end A002262

/-! ## A002262.P3002911692468778261

`(n+1)%(C(∑[char[∑[n]]], 2)+1)`
-/

namespace A002262.P3002911692468778261
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1)

end

end A002262.P3002911692468778261

namespace A002262

/-- `(n+1)%(C(∑[char[∑[n]]], 2)+1)` -/
def P3002911692468778261.Spec : Prop :=
  ∀ n, (P3002911692468778261.a n : ℤ) = A002262 n

end A002262

/-! ## A002262.P1286188282674677581

`abs(C(comp[∑[n-1]]-n, 2)-n)`
-/

namespace A002262.P1286188282674677581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)|

end

end A002262.P1286188282674677581

namespace A002262

/-- `abs(C(comp[∑[n-1]]-n, 2)-n)` -/
def P1286188282674677581.Spec : Prop :=
  ∀ n, P1286188282674677581.a n = A002262 n

end A002262

/-! ## A002262.P10386121302748768777

`Δ[n²]-lt[(ceil(sqrt(n))²-n)², n]`
-/

namespace A002262.P10386121302748768777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ)

end

end A002262.P10386121302748768777

namespace A002262

/-- `Δ[n²]-lt[(ceil(sqrt(n))²-n)², n]` -/
def P10386121302748768777.Spec : Prop :=
  ∀ n, P10386121302748768777.a n = A002262 n

end A002262

/-! ## A002262.P3474776678475669004

`2*n-comp[C(comp[∑[n]]-n, 2)+n]`
-/

namespace A002262.P3474776678475669004
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A002262.P3474776678475669004

namespace A002262

/-- `2*n-comp[C(comp[∑[n]]-n, 2)+n]` -/
def P3474776678475669004.Spec : Prop :=
  ∀ n, P3474776678475669004.a n = A002262 n

end A002262

/-! ## A002262.P4435992495885987053

`sqrt(A143844(n))`
-/

namespace A002262.P4435992495885987053
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A143844 n : ℝ)

end

end A002262.P4435992495885987053

namespace A002262

/-- `sqrt(A143844(n))` -/
def P4435992495885987053.Spec : Prop :=
  ∀ n, P4435992495885987053.a n = (A002262 n : ℝ)

end A002262

/-! ## A002262.P303110978462892250

`log2(A059268(n))`
-/

namespace A002262.P303110978462892250
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ)

end

end A002262.P303110978462892250

namespace A002262

/-- `log2(A059268(n))` -/
def P303110978462892250.Spec : Prop :=
  ∀ n, P303110978462892250.a n = (A002262 n : ℝ)

end A002262

/-! ## A002262.P16762439489131139570

`val(A130328(n), 2)`
-/

namespace A002262.P16762439489131139570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130328 n).toNat 2

end

end A002262.P16762439489131139570

namespace A002262

/-- `val(A130328(n), 2)` -/
def P16762439489131139570.Spec : Prop :=
  ∀ n, (P16762439489131139570.a n : ℤ) = A002262 n

end A002262

/-! ## A002262.P3481170944285401559

`val(A130329(n), 2)`
-/

namespace A002262.P3481170944285401559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A130329 n).toNat 2

end

end A002262.P3481170944285401559

namespace A002262

/-- `val(A130329(n), 2)` -/
def P3481170944285401559.Spec : Prop :=
  ∀ n, (P3481170944285401559.a n : ℤ) = A002262 n

end A002262

/-! ## A002262.P435999854468645071

`val(A175840(n), 2)`
-/

namespace A002262.P435999854468645071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A175840 n).toNat 2

end

end A002262.P435999854468645071

namespace A002262

/-- `val(A175840(n), 2)` -/
def P435999854468645071.Spec : Prop :=
  ∀ n, (P435999854468645071.a n : ℤ) = A002262 n

end A002262

/-! ## A002262.P11020409414631735894

`val(A193859(n), 2)`
-/

namespace A002262.P11020409414631735894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A193859 n).toNat 2

end

end A002262.P11020409414631735894

namespace A002262

/-- `val(A193859(n), 2)` -/
def P11020409414631735894.Spec : Prop :=
  ∀ n, (P11020409414631735894.a n : ℤ) = A002262 n

end A002262

/-! ## A002262.P2375667889300255985

`val(A247936(n), 2)`
-/

namespace A002262.P2375667889300255985
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A247936 n).toNat 2

end

end A002262.P2375667889300255985

namespace A002262

/-- `val(A247936(n), 2)` -/
def P2375667889300255985.Spec : Prop :=
  ∀ n, (P2375667889300255985.a n : ℤ) = A002262 n

end A002262

/-! ## A002262.P4415103090220826518

`val(A036561(n), 3)`
-/

namespace A002262.P4415103090220826518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 n).toNat 3

end

end A002262.P4415103090220826518

namespace A002262

/-- `val(A036561(n), 3)` -/
def P4415103090220826518.Spec : Prop :=
  ∀ n, (P4415103090220826518.a n : ℤ) = A002262 n

end A002262

/-! ## A002262.P14685909787277079960

`val(A055235(n), 3)`
-/

namespace A002262.P14685909787277079960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055235 n).toNat 3

end

end A002262.P14685909787277079960

namespace A002262

/-- `val(A055235(n), 3)` -/
def P14685909787277079960.Spec : Prop :=
  ∀ n, (P14685909787277079960.a n : ℤ) = A002262 n

end A002262

/-! ## A002262.P3553535190408375414

`val(A055236(n), 4)`
-/

namespace A002262.P3553535190408375414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055236 n).toNat 4

end

end A002262.P3553535190408375414

namespace A002262

/-- `val(A055236(n), 4)` -/
def P3553535190408375414.Spec : Prop :=
  ∀ n, (P3553535190408375414.a n : ℤ) = A002262 n

end A002262

/-! ## A002262.P15803139807207871735

`val(A055237(n), 5)`
-/

namespace A002262.P15803139807207871735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055237 n).toNat 5

end

end A002262.P15803139807207871735

namespace A002262

/-- `val(A055237(n), 5)` -/
def P15803139807207871735.Spec : Prop :=
  ∀ n, (P15803139807207871735.a n : ℤ) = A002262 n

end A002262

/-!
# A002263: Numbers k such that 25*4^k + 1 is prime.

The programs for A002263, there is no canonical definition to state claims against.
-/

/-! ## A002263.P7663364716063246417

`A032362(n+1)/2`
-/

namespace A002263.P7663364716063246417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032362 (n + 1) : ℚ) / 2

end

end A002263.P7663364716063246417

/-! ## A002263.P15505062440332554403

`A001281(A032362(n+1))`
-/

namespace A002263.P15505062440332554403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A032362 (n + 1)).toNat

end

end A002263.P15505062440332554403

/-! ## A002263.P8677688030478360022

`A004524(A032362(n+1)+1)`
-/

namespace A002263.P8677688030478360022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A032362 (n + 1) + 1).toNat

end

end A002263.P8677688030478360022

/-! ## A002263.P11829365083194732379

`A004526(A032362(n+1)+1)`
-/

namespace A002263.P11829365083194732379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A032362 (n + 1) + 1).toNat

end

end A002263.P11829365083194732379

/-! ## A002263.P8135187221613829460

`A028242(A032362(n+1)+1)`
-/

namespace A002263.P8135187221613829460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A032362 (n + 1) + 1).toNat

end

end A002263.P8135187221613829460

/-!
# A002264: Nonnegative integers repeated 3 times.

The programs for A002264, the canonical program `A002264.P5647656940077635922` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002264 has offset 0).

The definition of A002264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002264.P5647656940077635922

`floor(n/3)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002264

/-- `floor(n/3)` -/
def P5647656940077635922.Spec : Prop :=
  ∀ n, P5647656940077635922.a n = A002264 n

theorem P5647656940077635922.correct : P5647656940077635922.Spec := by
  intro n
  simp only [A002264]

end A002264

/-! ## A002264.P9580499699548136469

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A002264.P9580499699548136469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  a (n - 1) + a (n - 3) - a (n - 4)

end

end A002264.P9580499699548136469

namespace A002264

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P9580499699548136469.Spec : Prop :=
  ∀ n, P9580499699548136469.a n = A002264 n

end A002264

/-! ## A002264.P6119477115918383921

`(n-A010872(n))/3`
-/

namespace A002264.P6119477115918383921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A010872 n : ℚ) / 3

end

end A002264.P6119477115918383921

namespace A002264

/-- `(n-A010872(n))/3` -/
def P6119477115918383921.Spec : Prop :=
  ∀ n, P6119477115918383921.a n = (A002264 n : ℚ)

end A002264

/-! ## A002264.P598821133662074976

`A004526(n)-A008615(n)`
-/

namespace A002264.P598821133662074976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A008615 n

end

end A002264.P598821133662074976

namespace A002264

/-- `A004526(n)-A008615(n)` -/
def P598821133662074976.Spec : Prop :=
  ∀ n, P598821133662074976.a n = A002264 n

end A002264

/-! ## A002264.P18101500271138350072

`comp[or(3, n)]-n`
-/

namespace A002264.P18101500271138350072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A002264.P18101500271138350072

namespace A002264

/-- `comp[or(3, n)]-n` -/
def P18101500271138350072.Spec : Prop :=
  ∀ n, P18101500271138350072.a n = A002264 n

end A002264

/-! ## A002264.P17803992212898199365

`∑[C(dr(n²), 9)]`
-/

namespace A002264.P17803992212898199365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.digitalRoot (n ^ 2 : ℤ)) 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002264.P17803992212898199365

namespace A002264

/-- `∑[C(dr(n²), 9)]` -/
def P17803992212898199365.Spec : Prop :=
  ∀ n, (P17803992212898199365.a n : ℤ) = A002264 n

end A002264

/-! ## A002264.P15227357761151473859

`∑[∑{p}[n, val(#, 3)]]`
-/

namespace A002264.P15227357761151473859
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002264.P15227357761151473859

namespace A002264

/-- `∑[∑{p}[n, val(#, 3)]]` -/
def P15227357761151473859.Spec : Prop :=
  ∀ n, (P15227357761151473859.a n : ℤ) = A002264 n

end A002264

/-! ## A002264.P17711739986440174341

`∑[val(∏{p}[n, #], 3)]`
-/

namespace A002264.P17711739986440174341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002264.P17711739986440174341

namespace A002264

/-- `∑[val(∏{p}[n, #], 3)]` -/
def P17711739986440174341.Spec : Prop :=
  ∀ n, (P17711739986440174341.a n : ℤ) = A002264 n

end A002264

/-! ## A002264.P12568467822626396178

`(n-n%3)/3`
-/

namespace A002264.P12568467822626396178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((n % 3 : ℕ) : ℤ) : ℚ) / 3

end

end A002264.P12568467822626396178

namespace A002264

/-- `(n-n%3)/3` -/
def P12568467822626396178.Spec : Prop :=
  ∀ n, P12568467822626396178.a n = (A002264 n : ℚ)

end A002264

/-! ## A002264.P16490894936515665782

`round(cos(2)+n/3)`
-/

namespace A002264.P16490894936515665782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (2 : ℝ) + ((n : ℚ) / 3 : ℝ))

end

end A002264.P16490894936515665782

namespace A002264

/-- `round(cos(2)+n/3)` -/
def P16490894936515665782.Spec : Prop :=
  ∀ n, P16490894936515665782.a n = A002264 n

end A002264

/-! ## A002264.P5896998025322458871

`ceil(cos(3)+n/3)`
-/

namespace A002264.P5896998025322458871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (3 : ℝ) + ((n : ℚ) / 3 : ℝ)⌉

end

end A002264.P5896998025322458871

namespace A002264

/-- `ceil(cos(3)+n/3)` -/
def P5896998025322458871.Spec : Prop :=
  ∀ n, P5896998025322458871.a n = A002264 n

end A002264

/-! ## A002264.P14112383054280102883

`round((n-cos(1))/3)`
-/

namespace A002264.P14112383054280102883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.cos (1 : ℝ)) / 3)

end

end A002264.P14112383054280102883

namespace A002264

/-- `round((n-cos(1))/3)` -/
def P14112383054280102883.Spec : Prop :=
  ∀ n, P14112383054280102883.a n = A002264 n

end A002264

/-! ## A002264.P14596431757113844327

`ceil(n/3-sin(1))`
-/

namespace A002264.P14596431757113844327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 3 : ℝ) - Real.sin (1 : ℝ)⌉

end

end A002264.P14596431757113844327

namespace A002264

/-- `ceil(n/3-sin(1))` -/
def P14596431757113844327.Spec : Prop :=
  ∀ n, P14596431757113844327.a n = A002264 n

end A002264

/-! ## A002264.P18365079743550985396

`ceil((tan(2)+n)/3)`
-/

namespace A002264.P18365079743550985396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.tan (2 : ℝ) + (n : ℝ)) / 3⌉

end

end A002264.P18365079743550985396

namespace A002264

/-- `ceil((tan(2)+n)/3)` -/
def P18365079743550985396.Spec : Prop :=
  ∀ n, P18365079743550985396.a n = A002264 n

end A002264

/-! ## A002264.P2562064127849218306

`round((n-sin(1))/3)`
-/

namespace A002264.P2562064127849218306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.sin (1 : ℝ)) / 3)

end

end A002264.P2562064127849218306

namespace A002264

/-- `round((n-sin(1))/3)` -/
def P2562064127849218306.Spec : Prop :=
  ∀ n, P2562064127849218306.a n = A002264 n

end A002264

/-! ## A002264.P17962732188168802966

`ceil(sin(4)+n/3)`
-/

namespace A002264.P17962732188168802966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (4 : ℝ) + ((n : ℚ) / 3 : ℝ)⌉

end

end A002264.P17962732188168802966

namespace A002264

/-- `ceil(sin(4)+n/3)` -/
def P17962732188168802966.Spec : Prop :=
  ∀ n, P17962732188168802966.a n = A002264 n

end A002264

/-! ## A002264.P11470019260524327421

`round((sin(4)+n)/3)`
-/

namespace A002264.P11470019260524327421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sin (4 : ℝ) + (n : ℝ)) / 3)

end

end A002264.P11470019260524327421

namespace A002264

/-- `round((sin(4)+n)/3)` -/
def P11470019260524327421.Spec : Prop :=
  ∀ n, P11470019260524327421.a n = A002264 n

end A002264

/-! ## A002264.P8559573443784025298

`ceil(n/3-atan(1))`
-/

namespace A002264.P8559573443784025298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 3 : ℝ) - Real.arctan (1 : ℝ)⌉

end

end A002264.P8559573443784025298

namespace A002264

/-- `ceil(n/3-atan(1))` -/
def P8559573443784025298.Spec : Prop :=
  ∀ n, P8559573443784025298.a n = A002264 n

end A002264

/-! ## A002264.P5885352683755063050

`ceil(n/3-cos(6))`
-/

namespace A002264.P5885352683755063050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 3 : ℝ) - Real.cos (6 : ℝ)⌉

end

end A002264.P5885352683755063050

namespace A002264

/-- `ceil(n/3-cos(6))` -/
def P5885352683755063050.Spec : Prop :=
  ∀ n, P5885352683755063050.a n = A002264 n

end A002264

/-! ## A002264.P967324950377595627

`round((n-atan(1))/3)`
-/

namespace A002264.P967324950377595627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.arctan (1 : ℝ)) / 3)

end

end A002264.P967324950377595627

namespace A002264

/-- `round((n-atan(1))/3)` -/
def P967324950377595627.Spec : Prop :=
  ∀ n, P967324950377595627.a n = A002264 n

end A002264

/-!
# A002265: Nonnegative integers repeated 4 times.

The programs for A002265, the canonical program `A002265.P2157561802369677908` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002265 has offset 0).

The definition of A002265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002265.P2157561802369677908

`floor(n/4)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002265

/-- `floor(n/4)` -/
def P2157561802369677908.Spec : Prop :=
  ∀ n, P2157561802369677908.a n = A002265 n

theorem P2157561802369677908.correct : P2157561802369677908.Spec := by
  intro n
  simp only [A002265]

end A002265

/-! ## A002265.P7977362396428903742

`a(n-4)+1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A002265.P7977362396428903742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  a (n - 4) + 1

end

end A002265.P7977362396428903742

namespace A002265

/-- `a(n-4)+1` -/
def P7977362396428903742.Spec : Prop :=
  ∀ n, (P7977362396428903742.a n : ℤ) = A002265 n

end A002265

/-! ## A002265.P12398174350511251875

`(2*n+(-1)^n+2*sin(π*n/2)+2*cos(π*n/2)-3)/8`
-/

namespace A002265.P12398174350511251875
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((2 * n : ℤ) + (-1) ^ n : ℝ) + 2 * Real.sin (Real.pi * ((n : ℚ) / 2 : ℝ)) + 2 * Real.cos (Real.pi * ((n : ℚ) / 2 : ℝ)) - 3) / 8

end

end A002265.P12398174350511251875

namespace A002265

/-- `(2*n+(-1)^n+2*sin(π*n/2)+2*cos(π*n/2)-3)/8` -/
def P12398174350511251875.Spec : Prop :=
  ∀ n, P12398174350511251875.a n = (A002265 n : ℝ)

end A002265

/-! ## A002265.P17109642947117614090

`n-A057353(n+1)`
-/

namespace A002265.P17109642947117614090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057353 (n + 1)

end

end A002265.P17109642947117614090

namespace A002265

/-- `n-A057353(n+1)` -/
def P17109642947117614090.Spec : Prop :=
  ∀ n, P17109642947117614090.a n = A002265 n

end A002265

/-! ## A002265.P4046627414694875879

`(n-A010873(n))/4`
-/

namespace A002265.P4046627414694875879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A010873 n : ℚ) / 4

end

end A002265.P4046627414694875879

namespace A002265

/-- `(n-A010873(n))/4` -/
def P4046627414694875879.Spec : Prop :=
  ∀ n, P4046627414694875879.a n = (A002265 n : ℚ)

end A002265

/-! ## A002265.P9179163835189723278

`A004526(A004526(n))`
-/

namespace A002265.P9179163835189723278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 n).toNat

end

end A002265.P9179163835189723278

namespace A002265

/-- `A004526(A004526(n))` -/
def P9179163835189723278.Spec : Prop :=
  ∀ n, P9179163835189723278.a n = A002265 n

end A002265

/-! ## A002265.P10486774111908848909

`A173562(n)-A000290(n)`
-/

namespace A002265.P10486774111908848909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173562 n - A000290 n

end

end A002265.P10486774111908848909

namespace A002265

/-- `A173562(n)-A000290(n)` -/
def P10486774111908848909.Spec : Prop :=
  ∀ n, P10486774111908848909.a n = A002265 n

end A002265

/-! ## A002265.P5470662530199489514

`and(n, -4)/4`
-/

namespace A002265.P5470662530199489514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-4) : ℚ) / 4

end

end A002265.P5470662530199489514

namespace A002265

/-- `and(n, -4)/4` -/
def P5470662530199489514.Spec : Prop :=
  ∀ n, P5470662530199489514.a n = (A002265 n : ℚ)

end A002265

/-! ## A002265.P2448133738694901005

`(or(3, n)-3)/4`
-/

namespace A002265.P2448133738694901005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 3 n : ℤ) - 3 : ℚ) / 4

end

end A002265.P2448133738694901005

namespace A002265

/-- `(or(3, n)-3)/4` -/
def P2448133738694901005.Spec : Prop :=
  ∀ n, P2448133738694901005.a n = (A002265 n : ℚ)

end A002265

/-! ## A002265.P16106983107384761872

`xor(3, or(3, n))/4`
-/

namespace A002265.P16106983107384761872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 3 (Nat.lor 3 n) : ℚ) / 4

end

end A002265.P16106983107384761872

namespace A002265

/-- `xor(3, or(3, n))/4` -/
def P16106983107384761872.Spec : Prop :=
  ∀ n, P16106983107384761872.a n = (A002265 n : ℚ)

end A002265

/-! ## A002265.P14882229949705707672

`(n-n%4)/4`
-/

namespace A002265.P14882229949705707672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((n % 4 : ℕ) : ℤ) : ℚ) / 4

end

end A002265.P14882229949705707672

namespace A002265

/-- `(n-n%4)/4` -/
def P14882229949705707672.Spec : Prop :=
  ∀ n, P14882229949705707672.a n = (A002265 n : ℚ)

end A002265

/-! ## A002265.P2761614250433769991

`(n-and(3, n))/4`
-/

namespace A002265.P2761614250433769991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.land 3 n : ℤ) : ℚ) / 4

end

end A002265.P2761614250433769991

namespace A002265

/-- `(n-and(3, n))/4` -/
def P2761614250433769991.Spec : Prop :=
  ∀ n, P2761614250433769991.a n = (A002265 n : ℚ)

end A002265

/-! ## A002265.P18198965061530341248

`round(cos(2)+n/4)`
-/

namespace A002265.P18198965061530341248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (2 : ℝ) + ((n : ℚ) / 4 : ℝ))

end

end A002265.P18198965061530341248

namespace A002265

/-- `round(cos(2)+n/4)` -/
def P18198965061530341248.Spec : Prop :=
  ∀ n, P18198965061530341248.a n = A002265 n

end A002265

/-! ## A002265.P4827153287892700812

`round((n-acos(0))/4)`
-/

namespace A002265.P4827153287892700812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.arccos (0 : ℝ)) / 4)

end

end A002265.P4827153287892700812

namespace A002265

/-- `round((n-acos(0))/4)` -/
def P4827153287892700812.Spec : Prop :=
  ∀ n, P4827153287892700812.a n = A002265 n

end A002265

/-! ## A002265.P8330412544902416746

`round((n-tan(1))/4)`
-/

namespace A002265.P8330412544902416746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.tan (1 : ℝ)) / 4)

end

end A002265.P8330412544902416746

namespace A002265

/-- `round((n-tan(1))/4)` -/
def P8330412544902416746.Spec : Prop :=
  ∀ n, P8330412544902416746.a n = A002265 n

end A002265

/-! ## A002265.P7668217053015222210

`round((n-asin(1))/4)`
-/

namespace A002265.P7668217053015222210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.arcsin (1 : ℝ)) / 4)

end

end A002265.P7668217053015222210

namespace A002265

/-- `round((n-asin(1))/4)` -/
def P7668217053015222210.Spec : Prop :=
  ∀ n, P7668217053015222210.a n = A002265 n

end A002265

/-! ## A002265.P2443244919862466781

`round(n/4-cos(5))`
-/

namespace A002265.P2443244919862466781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 4 : ℝ) - Real.cos (5 : ℝ))

end

end A002265.P2443244919862466781

namespace A002265

/-- `round(n/4-cos(5))` -/
def P2443244919862466781.Spec : Prop :=
  ∀ n, P2443244919862466781.a n = A002265 n

end A002265

/-! ## A002265.P9778253871188483596

`∑[char[or(3, n)+1]]`
-/

namespace A002265.P9778253871188483596
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002265.P9778253871188483596

namespace A002265

/-- `∑[char[or(3, n)+1]]` -/
def P9778253871188483596.Spec : Prop :=
  ∀ n, (P9778253871188483596.a n : ℤ) = A002265 n

end A002265

/-! ## A002265.P2728408336730625484

`∑[char[2*lcm(2, n+1)]]`
-/

namespace A002265.P2728408336730625484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm 2 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002265.P2728408336730625484

namespace A002265

/-- `∑[char[2*lcm(2, n+1)]]` -/
def P2728408336730625484.Spec : Prop :=
  ∀ n, (P2728408336730625484.a n : ℤ) = A002265 n

end A002265

/-! ## A002265.P5392333406259272215

`round(C(n, 2)/(2*(n+1)))`
-/

namespace A002265.P5392333406259272215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose n 2 : ℚ) / (2 * (n + 1) : ℚ))

end

end A002265.P5392333406259272215

namespace A002265

/-- `round(C(n, 2)/(2*(n+1)))` -/
def P5392333406259272215.Spec : Prop :=
  ∀ n, P5392333406259272215.a n = A002265 n

end A002265

/-!
# A002266: Integers repeated 5 times.

The programs for A002266, the canonical program `A002266.P12055520221930490546` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002266 has offset 0).

The definition of A002266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002266.P12055520221930490546

`floor(n/5)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002266

/-- `floor(n/5)` -/
def P12055520221930490546.Spec : Prop :=
  ∀ n, P12055520221930490546.a n = A002266 n

theorem P12055520221930490546.correct : P12055520221930490546.Spec := by
  intro n
  simp only [A002266]

end A002266

/-! ## A002266.P9208179966503403541

`(n-A010874(n))/5`
-/

namespace A002266.P9208179966503403541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A010874 n : ℚ) / 5

end

end A002266.P9208179966503403541

namespace A002266

/-- `(n-A010874(n))/5` -/
def P9208179966503403541.Spec : Prop :=
  ∀ n, P9208179966503403541.a n = (A002266 n : ℚ)

end A002266

/-! ## A002266.P7943538027592079238

`∑[∑{p}[n, val(#, 5)]]`
-/

namespace A002266.P7943538027592079238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002266.P7943538027592079238

namespace A002266

/-- `∑[∑{p}[n, val(#, 5)]]` -/
def P7943538027592079238.Spec : Prop :=
  ∀ n, (P7943538027592079238.a n : ℤ) = A002266 n

end A002266

/-! ## A002266.P3762369479249000272

`∑[val(∏{p}[n, #], 5)]`
-/

namespace A002266.P3762369479249000272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002266.P3762369479249000272

namespace A002266

/-- `∑[val(∏{p}[n, #], 5)]` -/
def P3762369479249000272.Spec : Prop :=
  ∀ n, (P3762369479249000272.a n : ℤ) = A002266 n

end A002266

/-! ## A002266.P11535761789679085726

`(n-n%5)/5`
-/

namespace A002266.P11535761789679085726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((n % 5 : ℕ) : ℤ) : ℚ) / 5

end

end A002266.P11535761789679085726

namespace A002266

/-- `(n-n%5)/5` -/
def P11535761789679085726.Spec : Prop :=
  ∀ n, P11535761789679085726.a n = (A002266 n : ℚ)

end A002266

/-! ## A002266.P18162621111324400934

`round(cos(2)+n/5)`
-/

namespace A002266.P18162621111324400934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (2 : ℝ) + ((n : ℚ) / 5 : ℝ))

end

end A002266.P18162621111324400934

namespace A002266

/-- `round(cos(2)+n/5)` -/
def P18162621111324400934.Spec : Prop :=
  ∀ n, P18162621111324400934.a n = A002266 n

end A002266

/-! ## A002266.P6083410774763490156

`ceil(cos(3)+n/5)`
-/

namespace A002266.P6083410774763490156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (3 : ℝ) + ((n : ℚ) / 5 : ℝ)⌉

end

end A002266.P6083410774763490156

namespace A002266

/-- `ceil(cos(3)+n/5)` -/
def P6083410774763490156.Spec : Prop :=
  ∀ n, P6083410774763490156.a n = A002266 n

end A002266

/-! ## A002266.P2673693820058555746

`ceil(n/5-sin(1))`
-/

namespace A002266.P2673693820058555746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 5 : ℝ) - Real.sin (1 : ℝ)⌉

end

end A002266.P2673693820058555746

namespace A002266

/-- `ceil(n/5-sin(1))` -/
def P2673693820058555746.Spec : Prop :=
  ∀ n, P2673693820058555746.a n = A002266 n

end A002266

/-! ## A002266.P18135061497274832249

`round((tan(2)+n)/5)`
-/

namespace A002266.P18135061497274832249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.tan (2 : ℝ) + (n : ℝ)) / 5)

end

end A002266.P18135061497274832249

namespace A002266

/-- `round((tan(2)+n)/5)` -/
def P18135061497274832249.Spec : Prop :=
  ∀ n, P18135061497274832249.a n = A002266 n

end A002266

/-! ## A002266.P5230382366089522388

`round((n-acos(0))/5)`
-/

namespace A002266.P5230382366089522388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.arccos (0 : ℝ)) / 5)

end

end A002266.P5230382366089522388

namespace A002266

/-- `round((n-acos(0))/5)` -/
def P5230382366089522388.Spec : Prop :=
  ∀ n, P5230382366089522388.a n = A002266 n

end A002266

/-! ## A002266.P3653396342638101218

`round((n-tan(1))/5)`
-/

namespace A002266.P3653396342638101218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.tan (1 : ℝ)) / 5)

end

end A002266.P3653396342638101218

namespace A002266

/-- `round((n-tan(1))/5)` -/
def P3653396342638101218.Spec : Prop :=
  ∀ n, P3653396342638101218.a n = A002266 n

end A002266

/-! ## A002266.P755228725898260008

`ceil(sin(5)+n/5)`
-/

namespace A002266.P755228725898260008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (5 : ℝ) + ((n : ℚ) / 5 : ℝ)⌉

end

end A002266.P755228725898260008

namespace A002266

/-- `ceil(sin(5)+n/5)` -/
def P755228725898260008.Spec : Prop :=
  ∀ n, P755228725898260008.a n = A002266 n

end A002266

/-! ## A002266.P8299731439702937515

`round((n-asin(1))/5)`
-/

namespace A002266.P8299731439702937515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.arcsin (1 : ℝ)) / 5)

end

end A002266.P8299731439702937515

namespace A002266

/-- `round((n-asin(1))/5)` -/
def P8299731439702937515.Spec : Prop :=
  ∀ n, P8299731439702937515.a n = A002266 n

end A002266

/-! ## A002266.P8269164251817398977

`ceil(n/5-cos(6))`
-/

namespace A002266.P8269164251817398977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 5 : ℝ) - Real.cos (6 : ℝ)⌉

end

end A002266.P8269164251817398977

namespace A002266

/-- `ceil(n/5-cos(6))` -/
def P8269164251817398977.Spec : Prop :=
  ∀ n, P8269164251817398977.a n = A002266 n

end A002266

/-! ## A002266.P7307403122907496352

`∑[char[lcm(5, n+1)]]`
-/

namespace A002266.P7307403122907496352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002266.P7307403122907496352

namespace A002266

/-- `∑[char[lcm(5, n+1)]]` -/
def P7307403122907496352.Spec : Prop :=
  ∀ n, (P7307403122907496352.a n : ℤ) = A002266 n

end A002266

/-! ## A002266.P3398237172060032203

`round((n-cosh(1))/5)`
-/

namespace A002266.P3398237172060032203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.cosh (1 : ℝ)) / 5)

end

end A002266.P3398237172060032203

namespace A002266

/-- `round((n-cosh(1))/5)` -/
def P3398237172060032203.Spec : Prop :=
  ∀ n, P3398237172060032203.a n = A002266 n

end A002266

/-! ## A002266.P2425346874380029412

`ceil(n/5-tan(7))`
-/

namespace A002266.P2425346874380029412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 5 : ℝ) - Real.tan (7 : ℝ)⌉

end

end A002266.P2425346874380029412

namespace A002266

/-- `ceil(n/5-tan(7))` -/
def P2425346874380029412.Spec : Prop :=
  ∀ n, P2425346874380029412.a n = A002266 n

end A002266

/-! ## A002266.P14422488118217487530

`ceil(n/5-tanh(2))`
-/

namespace A002266.P14422488118217487530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 5 : ℝ) - Real.tanh (2 : ℝ)⌉

end

end A002266.P14422488118217487530

namespace A002266

/-- `ceil(n/5-tanh(2))` -/
def P14422488118217487530.Spec : Prop :=
  ∀ n, P14422488118217487530.a n = A002266 n

end A002266

/-! ## A002266.P9603450656165600088

`round(cot(2)+n/5)`
-/

namespace A002266.P9603450656165600088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 : ℝ) + ((n : ℚ) / 5 : ℝ))

end

end A002266.P9603450656165600088

namespace A002266

/-- `round(cot(2)+n/5)` -/
def P9603450656165600088.Spec : Prop :=
  ∀ n, P9603450656165600088.a n = A002266 n

end A002266

/-! ## A002266.P2990085877006002634

`round(n/5-sin(9))`
-/

namespace A002266.P2990085877006002634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℚ) / 5 : ℝ) - Real.sin (9 : ℝ))

end

end A002266.P2990085877006002634

namespace A002266

/-- `round(n/5-sin(9))` -/
def P2990085877006002634.Spec : Prop :=
  ∀ n, P2990085877006002634.a n = A002266 n

end A002266

/-!
# A002267: The 15 supersingular primes: primes dividing order of Monster simple group.

The programs for A002267, there is no canonical definition to state claims against.
-/

/-! ## A002267.P1220580883664423645

`p?[A174670(n+1)]`
-/

namespace A002267.P1220580883664423645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002267.P1220580883664423645

/-! ## A002267.P12273923301308240283

`p?[A276181(n+1)]`
-/

namespace A002267.P12273923301308240283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002267.P12273923301308240283

/-! ## A002267.P5259999760002706789

`p?[A367141(n+1)]`
-/

namespace A002267.P5259999760002706789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002267.P5259999760002706789

/-! ## A002267.P4265945493509249211

`p?[record[A269524(n+1)]]`
-/

namespace A002267.P4265945493509249211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269524 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002267.P4265945493509249211

/-!
# A002271: Numbers m such that all odd numbers k, 1 < k < m, relatively prime to m are primes.

The programs for A002271, there is no canonical definition to state claims against.
-/

/-! ## A002271.P14463209756549225775

`A141109(n+1)/2`
-/

namespace A002271.P14463209756549225775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141109 (n + 1) : ℚ) / 2

end

end A002271.P14463209756549225775

/-! ## A002271.P12119968058095548906

`A001281(A141109(n+1))`
-/

namespace A002271.P12119968058095548906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A141109 (n + 1)).toNat

end

end A002271.P12119968058095548906

/-! ## A002271.P12425997114898744215

`A004526(A141109(n+1)+1)`
-/

namespace A002271.P12425997114898744215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A141109 (n + 1) + 1).toNat

end

end A002271.P12425997114898744215

/-! ## A002271.P297966296143252309

`A123108(A141109(n+1)+1)`
-/

namespace A002271.P297966296143252309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A141109 (n + 1) + 1).toNat

end

end A002271.P297966296143252309

/-! ## A002271.P7733006473834228502

`A003602(A141109(n+1)-1)`
-/

namespace A002271.P7733006473834228502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A141109 (n + 1) - 1).toNat

end

end A002271.P7733006473834228502

/-!
# A002272: Theta series of 32-dimensional Quebbemann lattice Q_32.

The programs for A002272, there is no canonical definition to state claims against.
-/

/-! ## A002272.P1943969694906377304

`A071044(A002280(n))*A109145(n)`
-/

namespace A002272.P1943969694906377304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A002280 n).toNat * A109145 n

end

end A002272.P1943969694906377304

/-!
# A002273: Theta series of 28-dimensional Quebbemann lattice.

The programs for A002273, there is no canonical definition to state claims against.
-/

/-! ## A002273.P12483880656137564187

`A002520(2*n)`
-/

namespace A002273.P12483880656137564187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002520 (2 * n)

end

end A002273.P12483880656137564187

/-! ## A002273.P14874032082869856086

`A002520(A004277(n))+A000007(n)`
-/

namespace A002273.P14874032082869856086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002520 (A004277 n).toNat + A000007 n

end

end A002273.P14874032082869856086

/-! ## A002273.P9984227534236516683

`A010894(n)+A002520(A004277(n))`
-/

namespace A002273.P9984227534236516683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (n + 21) + A002520 (A004277 n).toNat

end

end A002273.P9984227534236516683

/-! ## A002273.P13600859454513371598

`A011744(n)+A002520(A005843(n))`
-/

namespace A002273.P13600859454513371598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011744 n + A002520 (A005843 n).toNat

end

end A002273.P13600859454513371598

/-! ## A002273.P12984542753830432537

`gcd(A000038(n), A002520(A005843(n)))`
-/

namespace A002273.P12984542753830432537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A002520 (A005843 n).toNat)

end

end A002273.P12984542753830432537

/-!
# A002275: Repunits: (10^n - 1)/9. Often denoted by R_n.

The programs for A002275, the canonical program `A002275.P11331712682657475845` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002275 has offset 0).

The definition of A002275 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n-1)/9` (program `A002275.P14686821048833844636`, by `A002275.P14686821048833844636.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002275.P14686821048833844636

`(10^n-1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002275.P14686821048833844636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - 1 : ℚ) / 9

end

end A002275.P14686821048833844636

namespace A002275

/-- `(10^n-1)/9` -/
def P14686821048833844636.Spec : Prop :=
  ∀ n, P14686821048833844636.a n = (A002275 n : ℚ)

theorem P14686821048833844636.correct : P14686821048833844636.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A002275, Nat.add_sub_cancel, A002275.P14686821048833844636.a, A002275.P11331712682657475845.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A002275, Nat.add_sub_cancel, A002275.P14686821048833844636.a, A002275.P11331712682657475845.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002275

/-! ## A002275.P11331712682657475845

`10*a(n-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002275

/-- `10*a(n-1)+1` -/
def P11331712682657475845.Spec : Prop :=
  ∀ n, (P11331712682657475845.a n : ℤ) = A002275 n

theorem P11331712682657475845.correct : P11331712682657475845.Spec := by
  intro n
  simp only [A002275]

end A002275

/-! ## A002275.P15134538049462454235

`a(n-1)+10^(n-1)` with `a(0)=0`
-/

namespace A002275.P15134538049462454235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A002275.P15134538049462454235

namespace A002275

/-- `a(n-1)+10^(n-1)` -/
def P15134538049462454235.Spec : Prop :=
  ∀ n, P15134538049462454235.a n = (A002275 n : ℚ)

end A002275

/-! ## A002275.P5998205615763544869

`round(or(1, 10^n)/9)`
-/

namespace A002275.P5998205615763544869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (10 ^ n) : ℚ) / 9)

end

end A002275.P5998205615763544869

namespace A002275

/-- `round(or(1, 10^n)/9)` -/
def P5998205615763544869.Spec : Prop :=
  ∀ n, P5998205615763544869.a n = A002275 n

end A002275

/-! ## A002275.P17594142631506801455

`round(and(10^n, -2)/9)`
-/

namespace A002275.P17594142631506801455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land (10 ^ n : ℤ) (-2) : ℚ) / 9)

end

end A002275.P17594142631506801455

namespace A002275

/-- `round(and(10^n, -2)/9)` -/
def P17594142631506801455.Spec : Prop :=
  ∀ n, P17594142631506801455.a n = A002275 n

end A002275

/-! ## A002275.P3709949757070498092

`∑[and(10^n, -2)/10]`
-/

namespace A002275.P3709949757070498092
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (10 ^ n : ℤ) (-2) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002275.P3709949757070498092

namespace A002275

/-- `∑[and(10^n, -2)/10]` -/
def P3709949757070498092.Spec : Prop :=
  ∀ n, P3709949757070498092.a n = (A002275 n : ℚ)

end A002275

/-! ## A002275.P5476300087586293699

`lcm(10, a(n-1))+1` with `a(0)=0`
-/

namespace A002275.P5476300087586293699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 10 (a (n - 1)) + 1

end

end A002275.P5476300087586293699

namespace A002275

/-- `lcm(10, a(n-1))+1` -/
def P5476300087586293699.Spec : Prop :=
  ∀ n, (P5476300087586293699.a n : ℤ) = A002275 n

end A002275

/-! ## A002275.P2122187480723739856

`or(1, 10*a(n-1))` with `a(0)=0`
-/

namespace A002275.P2122187480723739856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (10 * a (n - 1))

end

end A002275.P2122187480723739856

namespace A002275

/-- `or(1, 10*a(n-1))` -/
def P2122187480723739856.Spec : Prop :=
  ∀ n, (P2122187480723739856.a n : ℤ) = A002275 n

end A002275

/-! ## A002275.P9081580685080501300

`xor(1, 10*a(n-1))` with `a(0)=0`
-/

namespace A002275.P9081580685080501300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (10 * a (n - 1))

end

end A002275.P9081580685080501300

namespace A002275

/-- `xor(1, 10*a(n-1))` -/
def P9081580685080501300.Spec : Prop :=
  ∀ n, (P9081580685080501300.a n : ℤ) = A002275 n

end A002275

/-! ## A002275.P4810295622560808693

`∑[10*a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A002275.P4810295622560808693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002275.P4810295622560808693

namespace A002275

/-- `∑[10*a(n-1)]` -/
def P4810295622560808693.Spec : Prop :=
  ∀ n, (P4810295622560808693.a n : ℤ) = A002275 n

end A002275

/-! ## A002275.P10539387591360776491

`round(∑[10^((n-1)%(n+2))])`
-/

namespace A002275.P10539387591360776491
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002275.P10539387591360776491

namespace A002275

/-- `round(∑[10^((n-1)%(n+2))])` -/
def P10539387591360776491.Spec : Prop :=
  ∀ n, P10539387591360776491.a n = A002275 n

end A002275

/-! ## A002275.P18397263553979415794

`3-2*(1-5*a(n-1))` with `a(0)=0`
-/

namespace A002275.P18397263553979415794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 - 2 * (1 - 5 * a (n - 1))

end

end A002275.P18397263553979415794

namespace A002275

/-- `3-2*(1-5*a(n-1))` -/
def P18397263553979415794.Spec : Prop :=
  ∀ n, P18397263553979415794.a n = A002275 n

end A002275

/-! ## A002275.P16140997774423022082

`A071762(∑[n])`
-/

namespace A002275.P16140997774423022082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071762 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002275.P16140997774423022082

namespace A002275

/-- `A071762(∑[n])` -/
def P16140997774423022082.Spec : Prop :=
  ∀ n, P16140997774423022082.a n = A002275 n

end A002275

/-! ## A002275.P17709207311237127874

`∑[A178501(n)]`
-/

namespace A002275.P17709207311237127874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002275.P17709207311237127874

namespace A002275

/-- `∑[A178501(n)]` -/
def P17709207311237127874.Spec : Prop :=
  ∀ n, P17709207311237127874.a n = A002275 n

end A002275

/-! ## A002275.P2040577272522818785

`A047855(n)-1`
-/

namespace A002275.P2040577272522818785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n - 1

end

end A002275.P2040577272522818785

namespace A002275

/-- `A047855(n)-1` -/
def P2040577272522818785.Spec : Prop :=
  ∀ n, P2040577272522818785.a n = A002275 n

end A002275

/-! ## A002275.P16655443231611413150

`A098406(n)-2`
-/

namespace A002275.P16655443231611413150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098406 n - 2

end

end A002275.P16655443231611413150

namespace A002275

/-- `A098406(n)-2` -/
def P16655443231611413150.Spec : Prop :=
  ∀ n, P16655443231611413150.a n = A002275 n

end A002275

/-! ## A002275.P10025792335797953899

`A081857(2*n)`
-/

namespace A002275.P10025792335797953899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081857 (2 * n)

end

end A002275.P10025792335797953899

namespace A002275

/-- `A081857(2*n)` -/
def P10025792335797953899.Spec : Prop :=
  ∀ n, P10025792335797953899.a n = A002275 n

end A002275

/-!
# A002276: a(n) = 2*(10^n - 1)/9.

The programs for A002276, the canonical program `A002276.P5858072646950609456` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002276 has offset 0).

The definition of A002276 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(10^n-1)/9` (program `A002276.P3082590700301133963`, by `A002276.P3082590700301133963.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002276.P3082590700301133963

`2*(10^n-1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002276.P3082590700301133963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (((10 ^ n : ℤ) - 1 : ℚ) / 9)

end

end A002276.P3082590700301133963

namespace A002276

/-- `2*(10^n-1)/9` -/
def P3082590700301133963.Spec : Prop :=
  ∀ n, P3082590700301133963.a n = (A002276 n : ℚ)

theorem P3082590700301133963.correct : P3082590700301133963.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A002276, Nat.add_sub_cancel, A002276.P3082590700301133963.a, A002276.P5858072646950609456.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A002276, Nat.add_sub_cancel, A002276.P3082590700301133963.a, A002276.P5858072646950609456.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002276

/-! ## A002276.P14913626985356616382

`a(n-1)+2*10^(n-1)` with `a(0)=0`
-/

namespace A002276.P14913626985356616382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A002276.P14913626985356616382

namespace A002276

/-- `a(n-1)+2*10^(n-1)` -/
def P14913626985356616382.Spec : Prop :=
  ∀ n, P14913626985356616382.a n = (A002276 n : ℚ)

end A002276

/-! ## A002276.P5858072646950609456

`11*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002276

/-- `11*a(n-1)-10*a(n-2)` -/
def P5858072646950609456.Spec : Prop :=
  ∀ n, P5858072646950609456.a n = A002276 n

theorem P5858072646950609456.correct : P5858072646950609456.Spec := by
  intro n
  simp only [A002276]

end A002276

/-! ## A002276.P17540972678478363913

`lcm(2, floor(10^n/9))`
-/

namespace A002276.P17540972678478363913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ⌊(10 ^ n : ℚ) / 9⌋

end

end A002276.P17540972678478363913

namespace A002276

/-- `lcm(2, floor(10^n/9))` -/
def P17540972678478363913.Spec : Prop :=
  ∀ n, (P17540972678478363913.a n : ℤ) = A002276 n

end A002276

/-! ## A002276.P15743726853178860055

`2+a(n-1)*10` with `a(0)=0`
-/

namespace A002276.P15743726853178860055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 + a (n - 1) * 10

end

end A002276.P15743726853178860055

namespace A002276

/-- `2+a(n-1)*10` -/
def P15743726853178860055.Spec : Prop :=
  ∀ n, (P15743726853178860055.a n : ℤ) = A002276 n

end A002276

/-! ## A002276.P16739054464469029308

`or(2, 10*a(n-1))` with `a(0)=0`
-/

namespace A002276.P16739054464469029308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 2 (10 * a (n - 1))

end

end A002276.P16739054464469029308

namespace A002276

/-- `or(2, 10*a(n-1))` -/
def P16739054464469029308.Spec : Prop :=
  ∀ n, (P16739054464469029308.a n : ℤ) = A002276 n

end A002276

/-! ## A002276.P9315703828278527613

`xor(2, 10*a(n-1))` with `a(0)=0`
-/

namespace A002276.P9315703828278527613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 2 (10 * a (n - 1))

end

end A002276.P9315703828278527613

namespace A002276

/-- `xor(2, 10*a(n-1))` -/
def P9315703828278527613.Spec : Prop :=
  ∀ n, (P9315703828278527613.a n : ℤ) = A002276 n

end A002276

/-! ## A002276.P11089084942281026519

`lcm(20, a(n-1))+2` with `a(0)=0`
-/

namespace A002276.P11089084942281026519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 20 (a (n - 1)) + 2

end

end A002276.P11089084942281026519

namespace A002276

/-- `lcm(20, a(n-1))+2` -/
def P11089084942281026519.Spec : Prop :=
  ∀ n, (P11089084942281026519.a n : ℤ) = A002276 n

end A002276

/-! ## A002276.P988101317989386350

`∑[10*a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A002276.P988101317989386350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002276.P988101317989386350

namespace A002276

/-- `∑[10*a(n-1)]` -/
def P988101317989386350.Spec : Prop :=
  ∀ n, (P988101317989386350.a n : ℤ) = A002276 n

end A002276

/-! ## A002276.P17911997399919549454

`4-2*(1-5*a(n-1))` with `a(0)=0`
-/

namespace A002276.P17911997399919549454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 - 2 * (1 - 5 * a (n - 1))

end

end A002276.P17911997399919549454

namespace A002276

/-- `4-2*(1-5*a(n-1))` -/
def P17911997399919549454.Spec : Prop :=
  ∀ n, P17911997399919549454.a n = A002276 n

end A002276

/-! ## A002276.P119135447771080089

`A093135(n)-1`
-/

namespace A002276.P119135447771080089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093135 n - 1

end

end A002276.P119135447771080089

namespace A002276

/-- `A093135(n)-1` -/
def P119135447771080089.Spec : Prop :=
  ∀ n, P119135447771080089.a n = A002276 n

end A002276

/-! ## A002276.P3677580564478667525

`A094626(2*n)`
-/

namespace A002276.P3677580564478667525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094626 (2 * n)

end

end A002276.P3677580564478667525

namespace A002276

/-- `A094626(2*n)` -/
def P3677580564478667525.Spec : Prop :=
  ∀ n, P3677580564478667525.a n = A002276 n

end A002276

/-! ## A002276.P7549352282953489329

`A322925(2*n)`
-/

namespace A002276.P7549352282953489329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322925 (2 * n)

end

end A002276.P7549352282953489329

namespace A002276

/-- `A322925(2*n)` -/
def P7549352282953489329.Spec : Prop :=
  ∀ n, P7549352282953489329.a n = A002276 n

end A002276

/-! ## A002276.P10068534730985911549

`A002278(n)/2`
-/

namespace A002276.P10068534730985911549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002278 n : ℚ) / 2

end

end A002276.P10068534730985911549

namespace A002276

/-- `A002278(n)/2` -/
def P10068534730985911549.Spec : Prop :=
  ∀ n, P10068534730985911549.a n = (A002276 n : ℚ)

end A002276

/-! ## A002276.P14800995840215476580

`A002280(n)/3`
-/

namespace A002276.P14800995840215476580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002280 n : ℚ) / 3

end

end A002276.P14800995840215476580

namespace A002276

/-- `A002280(n)/3` -/
def P14800995840215476580.Spec : Prop :=
  ∀ n, P14800995840215476580.a n = (A002276 n : ℚ)

end A002276

/-! ## A002276.P14521486617037331020

`A002282(n)/4`
-/

namespace A002276.P14521486617037331020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002282 n : ℚ) / 4

end

end A002276.P14521486617037331020

namespace A002276

/-- `A002282(n)/4` -/
def P14521486617037331020.Spec : Prop :=
  ∀ n, P14521486617037331020.a n = (A002276 n : ℚ)

end A002276

/-! ## A002276.P14302299829613925159

`A092900(Δ[n²])`
-/

namespace A002276.P14302299829613925159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092900 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002276.P14302299829613925159

namespace A002276

/-- `A092900(Δ[n²])` -/
def P14302299829613925159.Spec : Prop :=
  ∀ n, P14302299829613925159.a n = A002276 n

end A002276

/-! ## A002276.P2045649676284227033

`∑[A093136(n)]-1`
-/

namespace A002276.P2045649676284227033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A002276.P2045649676284227033

namespace A002276

/-- `∑[A093136(n)]-1` -/
def P2045649676284227033.Spec : Prop :=
  ∀ n, P2045649676284227033.a n = A002276 n

end A002276

/-! ## A002276.P9278117353873083215

`Δ[A036544(n)]-2`
-/

namespace A002276.P9278117353873083215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A002276.P9278117353873083215

namespace A002276

/-- `Δ[A036544(n)]-2` -/
def P9278117353873083215.Spec : Prop :=
  ∀ n, P9278117353873083215.a n = A002276 n

end A002276

/-!
# A002277: a(n) = 3*(10^n - 1)/9.

The programs for A002277, the canonical program `A002277.P12879065700277818312` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002277 has offset 0).

The definition of A002277 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(10^n-1)/9` (program `A002277.P5103767534068867154`, by `A002277.P5103767534068867154.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002277.P7004318462075511993

`(10^n-1)/3`
-/

namespace A002277.P7004318462075511993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - 1 : ℚ) / 3

end

end A002277.P7004318462075511993

namespace A002277

/-- `(10^n-1)/3` -/
def P7004318462075511993.Spec : Prop :=
  ∀ n, P7004318462075511993.a n = (A002277 n : ℚ)

theorem P7004318462075511993.correct : P7004318462075511993.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A002277, Nat.add_sub_cancel, A002277.P7004318462075511993.a, A002277.P12879065700277818312.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A002277, Nat.add_sub_cancel, A002277.P7004318462075511993.a, A002277.P12879065700277818312.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002277

/-! ## A002277.P5103767534068867154

`3*(10^n-1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002277.P5103767534068867154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (((10 ^ n : ℤ) - 1 : ℚ) / 9)

end

end A002277.P5103767534068867154

namespace A002277

/-- `3*(10^n-1)/9` -/
def P5103767534068867154.Spec : Prop :=
  ∀ n, P5103767534068867154.a n = (A002277 n : ℚ)

theorem P5103767534068867154.correct : P5103767534068867154.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A002277, Nat.add_sub_cancel, A002277.P5103767534068867154.a, A002277.P12879065700277818312.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A002277, Nat.add_sub_cancel, A002277.P5103767534068867154.a, A002277.P12879065700277818312.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002277

/-! ## A002277.P13030119497983852490

`a(n-1)+3*10^(n-1)` with `a(0)=0`
-/

namespace A002277.P13030119497983852490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 3 * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A002277.P13030119497983852490

namespace A002277

/-- `a(n-1)+3*10^(n-1)` -/
def P13030119497983852490.Spec : Prop :=
  ∀ n, P13030119497983852490.a n = (A002277 n : ℚ)

end A002277

/-! ## A002277.P12879065700277818312

`11*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002277

/-- `11*a(n-1)-10*a(n-2)` -/
def P12879065700277818312.Spec : Prop :=
  ∀ n, P12879065700277818312.a n = A002277 n

theorem P12879065700277818312.correct : P12879065700277818312.Spec := by
  intro n
  simp only [A002277]

end A002277

/-! ## A002277.P9018334144799576851

`lcm(3, round(10^n/3))`
-/

namespace A002277.P9018334144799576851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (SequenceMachineLib.roundAway ((10 ^ n : ℚ) / 3))

end

end A002277.P9018334144799576851

namespace A002277

/-- `lcm(3, round(10^n/3))` -/
def P9018334144799576851.Spec : Prop :=
  ∀ n, (P9018334144799576851.a n : ℤ) = A002277 n

end A002277

/-! ## A002277.P15504287812160341856

`round(and(10^n, -2)/3)`
-/

namespace A002277.P15504287812160341856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land (10 ^ n : ℤ) (-2) : ℚ) / 3)

end

end A002277.P15504287812160341856

namespace A002277

/-- `round(and(10^n, -2)/3)` -/
def P15504287812160341856.Spec : Prop :=
  ∀ n, P15504287812160341856.a n = A002277 n

end A002277

/-! ## A002277.P13332833760952152578

`10*a(n-1)+3` with `a(0)=0`
-/

namespace A002277.P13332833760952152578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) + 3

end

end A002277.P13332833760952152578

namespace A002277

/-- `10*a(n-1)+3` -/
def P13332833760952152578.Spec : Prop :=
  ∀ n, (P13332833760952152578.a n : ℤ) = A002277 n

end A002277

/-! ## A002277.P13697582410933397668

`lcm(10, a(n-1))+3` with `a(0)=0`
-/

namespace A002277.P13697582410933397668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 10 (a (n - 1)) + 3

end

end A002277.P13697582410933397668

namespace A002277

/-- `lcm(10, a(n-1))+3` -/
def P13697582410933397668.Spec : Prop :=
  ∀ n, (P13697582410933397668.a n : ℤ) = A002277 n

end A002277

/-! ## A002277.P6628245351910260483

`∑[10*a(n-1)]` with `a(0)=0, a(1)=3`
-/

namespace A002277.P6628245351910260483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002277.P6628245351910260483

namespace A002277

/-- `∑[10*a(n-1)]` -/
def P6628245351910260483.Spec : Prop :=
  ∀ n, (P6628245351910260483.a n : ℤ) = A002277 n

end A002277

/-! ## A002277.P9589059675934489818

`5-2*(1-5*a(n-1))` with `a(0)=0`
-/

namespace A002277.P9589059675934489818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  5 - 2 * (1 - 5 * a (n - 1))

end

end A002277.P9589059675934489818

namespace A002277

/-- `5-2*(1-5*a(n-1))` -/
def P9589059675934489818.Spec : Prop :=
  ∀ n, P9589059675934489818.a n = A002277 n

end A002277

/-! ## A002277.P11019494517308909338

`Δ[A133462(n)]`
-/

namespace A002277.P11019494517308909338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002277.P11019494517308909338

namespace A002277

/-- `Δ[A133462(n)]` -/
def P11019494517308909338.Spec : Prop :=
  ∀ n, P11019494517308909338.a n = A002277 n

end A002277

/-! ## A002277.P15377959080663104470

`A323639(n)+1`
-/

namespace A002277.P15377959080663104470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323639 n + 1

end

end A002277.P15377959080663104470

namespace A002277

/-- `A323639(n)+1` -/
def P15377959080663104470.Spec : Prop :=
  ∀ n, P15377959080663104470.a n = A002277 n

end A002277

/-! ## A002277.P3429143052774429440

`A093137(n)-1`
-/

namespace A002277.P3429143052774429440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093137 n - 1

end

end A002277.P3429143052774429440

namespace A002277

/-- `A093137(n)-1` -/
def P3429143052774429440.Spec : Prop :=
  ∀ n, P3429143052774429440.a n = A002277 n

end A002277

/-! ## A002277.P5338646940197812688

`A133473(n)-2`
-/

namespace A002277.P5338646940197812688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133473 n - 2

end

end A002277.P5338646940197812688

namespace A002277

/-- `A133473(n)-2` -/
def P5338646940197812688.Spec : Prop :=
  ∀ n, P5338646940197812688.a n = A002277 n

end A002277

/-! ## A002277.P15353754962910459322

`A133201(3*n)`
-/

namespace A002277.P15353754962910459322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133201 (3 * n)

end

end A002277.P15353754962910459322

namespace A002277

/-- `A133201(3*n)` -/
def P15353754962910459322.Spec : Prop :=
  ∀ n, P15353754962910459322.a n = A002277 n

end A002277

/-! ## A002277.P9520525351442711411

`∑[A093138(n)]-1`
-/

namespace A002277.P9520525351442711411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A002277.P9520525351442711411

namespace A002277

/-- `∑[A093138(n)]-1` -/
def P9520525351442711411.Spec : Prop :=
  ∀ n, P9520525351442711411.a n = A002277 n

end A002277

/-!
# A002278: a(n) = 4*(10^n - 1)/9.

The programs for A002278, the canonical program `A002278.P8453858393094762641` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002278 has offset 0).

The definition of A002278 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(10^n-1)/9` (program `A002278.P5111561207153556695`, by `A002278.P5111561207153556695.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002278.P5111561207153556695

`4*(10^n-1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002278.P5111561207153556695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (((10 ^ n : ℤ) - 1 : ℚ) / 9)

end

end A002278.P5111561207153556695

namespace A002278

/-- `4*(10^n-1)/9` -/
def P5111561207153556695.Spec : Prop :=
  ∀ n, P5111561207153556695.a n = (A002278 n : ℚ)

theorem P5111561207153556695.correct : P5111561207153556695.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A002278, Nat.add_sub_cancel, A002278.P5111561207153556695.a, A002278.P8453858393094762641.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A002278, Nat.add_sub_cancel, A002278.P5111561207153556695.a, A002278.P8453858393094762641.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002278

/-! ## A002278.P3959938051024215744

`a(n-1)+4*10^(n-1)` with `a(0)=0`
-/

namespace A002278.P3959938051024215744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 4 * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A002278.P3959938051024215744

namespace A002278

/-- `a(n-1)+4*10^(n-1)` -/
def P3959938051024215744.Spec : Prop :=
  ∀ n, P3959938051024215744.a n = (A002278 n : ℚ)

end A002278

/-! ## A002278.P8453858393094762641

`11*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002278

/-- `11*a(n-1)-10*a(n-2)` -/
def P8453858393094762641.Spec : Prop :=
  ∀ n, P8453858393094762641.a n = A002278 n

theorem P8453858393094762641.correct : P8453858393094762641.Spec := by
  intro n
  simp only [A002278]

end A002278

/-!
# A002279: a(n) = 5*(10^n - 1)/9.

The programs for A002279, the canonical program `A002279.P353217221656750870` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002279 has offset 0).

The definition of A002279 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*(10^n-1)/9` (program `A002279.P14632576697581972201`, by `A002279.P14632576697581972201.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002279.P14632576697581972201

`5*(10^n-1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002279.P14632576697581972201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * (((10 ^ n : ℤ) - 1 : ℚ) / 9)

end

end A002279.P14632576697581972201

namespace A002279

/-- `5*(10^n-1)/9` -/
def P14632576697581972201.Spec : Prop :=
  ∀ n, P14632576697581972201.a n = (A002279 n : ℚ)

theorem P14632576697581972201.correct : P14632576697581972201.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A002279, Nat.add_sub_cancel, A002279.P14632576697581972201.a, A002279.P353217221656750870.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A002279, Nat.add_sub_cancel, A002279.P14632576697581972201.a, A002279.P353217221656750870.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002279

/-! ## A002279.P10315742170194063117

`a(n-1)+5*10^(n-1)` with `a(0)=0`
-/

namespace A002279.P10315742170194063117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 5 * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A002279.P10315742170194063117

namespace A002279

/-- `a(n-1)+5*10^(n-1)` -/
def P10315742170194063117.Spec : Prop :=
  ∀ n, P10315742170194063117.a n = (A002279 n : ℚ)

end A002279

/-! ## A002279.P353217221656750870

`11*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002279

/-- `11*a(n-1)-10*a(n-2)` -/
def P353217221656750870.Spec : Prop :=
  ∀ n, P353217221656750870.a n = A002279 n

theorem P353217221656750870.correct : P353217221656750870.Spec := by
  intro n
  simp only [A002279]

end A002279

/-! ## A002279.P11263877891574174944

`5*A002283(n)/9`
-/

namespace A002279.P11263877891574174944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A002283 n : ℚ) / 9

end

end A002279.P11263877891574174944

namespace A002279

/-- `5*A002283(n)/9` -/
def P11263877891574174944.Spec : Prop :=
  ∀ n, P11263877891574174944.a n = (A002279 n : ℚ)

end A002279

/-! ## A002279.P2472296934073260352

`lcm(5, floor(10^n/9))`
-/

namespace A002279.P2472296934073260352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 ⌊(10 ^ n : ℚ) / 9⌋

end

end A002279.P2472296934073260352

namespace A002279

/-- `lcm(5, floor(10^n/9))` -/
def P2472296934073260352.Spec : Prop :=
  ∀ n, (P2472296934073260352.a n : ℤ) = A002279 n

end A002279

/-! ## A002279.P7678217338310220990

`10*a(n-1)+5` with `a(0)=0`
-/

namespace A002279.P7678217338310220990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) + 5

end

end A002279.P7678217338310220990

namespace A002279

/-- `10*a(n-1)+5` -/
def P7678217338310220990.Spec : Prop :=
  ∀ n, (P7678217338310220990.a n : ℤ) = A002279 n

end A002279

/-! ## A002279.P10364446986314039737

`∑[10*a(n-1)]` with `a(0)=0, a(1)=5`
-/

namespace A002279.P10364446986314039737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002279.P10364446986314039737

namespace A002279

/-- `∑[10*a(n-1)]` -/
def P10364446986314039737.Spec : Prop :=
  ∀ n, (P10364446986314039737.a n : ℤ) = A002279 n

end A002279

/-! ## A002279.P12210474980985169500

`A093142(n)-1`
-/

namespace A002279.P12210474980985169500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093142 n - 1

end

end A002279.P12210474980985169500

namespace A002279

/-- `A093142(n)-1` -/
def P12210474980985169500.Spec : Prop :=
  ∀ n, P12210474980985169500.a n = A002279 n

end A002279

/-! ## A002279.P13745501377642452352

`A178769(n)-2`
-/

namespace A002279.P13745501377642452352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178769 n - 2

end

end A002279.P13745501377642452352

namespace A002279

/-- `A178769(n)-2` -/
def P13745501377642452352.Spec : Prop :=
  ∀ n, P13745501377642452352.a n = A002279 n

end A002279

/-! ## A002279.P2461973988534690746

`A322927(2*n)`
-/

namespace A002279.P2461973988534690746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322927 (2 * n)

end

end A002279.P2461973988534690746

namespace A002279

/-- `A322927(2*n)` -/
def P2461973988534690746.Spec : Prop :=
  ∀ n, P2461973988534690746.a n = A002279 n

end A002279

/-! ## A002279.P8804042961761766200

`∑[A093143(n)]-1`
-/

namespace A002279.P8804042961761766200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A002279.P8804042961761766200

namespace A002279

/-- `∑[A093143(n)]-1` -/
def P8804042961761766200.Spec : Prop :=
  ∀ n, P8804042961761766200.a n = A002279 n

end A002279

/-! ## A002279.P11869807222160211400

`A344749(A122709(n))`
-/

namespace A002279.P11869807222160211400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344749 (A122709 n).toNat

end

end A002279.P11869807222160211400

namespace A002279

/-- `A344749(A122709(n))` -/
def P11869807222160211400.Spec : Prop :=
  ∀ n, P11869807222160211400.a n = A002279 n

end A002279

/-! ## A002279.P16030775156538318979

`A002277(n)+A002276(n)`
-/

namespace A002279.P16030775156538318979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 n + A002276 n

end

end A002279.P16030775156538318979

namespace A002279

/-- `A002277(n)+A002276(n)` -/
def P16030775156538318979.Spec : Prop :=
  ∀ n, P16030775156538318979.a n = A002279 n

end A002279

/-! ## A002279.P375876808172807901

`A002278(n)+A002275(n)`
-/

namespace A002279.P375876808172807901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 n + A002275 n

end

end A002279.P375876808172807901

namespace A002279

/-- `A002278(n)+A002275(n)` -/
def P375876808172807901.Spec : Prop :=
  ∀ n, P375876808172807901.a n = A002279 n

end A002279

/-! ## A002279.P713581852865187836

`A002280(n)-A002275(n)`
-/

namespace A002279.P713581852865187836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002280 n - A002275 n

end

end A002279.P713581852865187836

namespace A002279

/-- `A002280(n)-A002275(n)` -/
def P713581852865187836.Spec : Prop :=
  ∀ n, P713581852865187836.a n = A002279 n

end A002279

/-! ## A002279.P5414988007197566854

`A002281(n)-A002276(n)`
-/

namespace A002279.P5414988007197566854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 n - A002276 n

end

end A002279.P5414988007197566854

namespace A002279

/-- `A002281(n)-A002276(n)` -/
def P5414988007197566854.Spec : Prop :=
  ∀ n, P5414988007197566854.a n = A002279 n

end A002279

/-! ## A002279.P5997256471820836824

`A002282(n)-A002277(n)`
-/

namespace A002279.P5997256471820836824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002282 n - A002277 n

end

end A002279.P5997256471820836824

namespace A002279

/-- `A002282(n)-A002277(n)` -/
def P5997256471820836824.Spec : Prop :=
  ∀ n, P5997256471820836824.a n = A002279 n

end A002279

/-! ## A002279.P3949417177111088435

`A002283(n)-A002278(n)`
-/

namespace A002279.P3949417177111088435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n - A002278 n

end

end A002279.P3949417177111088435

namespace A002279

/-- `A002283(n)-A002278(n)` -/
def P3949417177111088435.Spec : Prop :=
  ∀ n, P3949417177111088435.a n = A002279 n

end A002279

/-! ## A002279.P11666399252020614292

`A002281(n)-A322925(2*n)`
-/

namespace A002279.P11666399252020614292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 n - A322925 (2 * n)

end

end A002279.P11666399252020614292

namespace A002279

/-- `A002281(n)-A322925(2*n)` -/
def P11666399252020614292.Spec : Prop :=
  ∀ n, P11666399252020614292.a n = A002279 n

end A002279

/-!
# A002280: a(n) = 6*(10^n - 1)/9.

The programs for A002280, the canonical program `A002280.P16042412326128935504` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002280 has offset 0).

The definition of A002280 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*(10^n-1)/9` (program `A002280.P13102503586076489315`, by `A002280.P13102503586076489315.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002280.P13102503586076489315

`6*(10^n-1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002280.P13102503586076489315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * (((10 ^ n : ℤ) - 1 : ℚ) / 9)

end

end A002280.P13102503586076489315

namespace A002280

/-- `6*(10^n-1)/9` -/
def P13102503586076489315.Spec : Prop :=
  ∀ n, P13102503586076489315.a n = (A002280 n : ℚ)

theorem P13102503586076489315.correct : P13102503586076489315.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A002280, Nat.add_sub_cancel, A002280.P13102503586076489315.a, A002280.P16042412326128935504.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A002280, Nat.add_sub_cancel, A002280.P13102503586076489315.a, A002280.P16042412326128935504.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002280

/-! ## A002280.P6887107999654155743

`a(n-1)+6*10^(n-1)` with `a(0)=0`
-/

namespace A002280.P6887107999654155743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 6 * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A002280.P6887107999654155743

namespace A002280

/-- `a(n-1)+6*10^(n-1)` -/
def P6887107999654155743.Spec : Prop :=
  ∀ n, P6887107999654155743.a n = (A002280 n : ℚ)

end A002280

/-! ## A002280.P16042412326128935504

`11*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002280

/-- `11*a(n-1)-10*a(n-2)` -/
def P16042412326128935504.Spec : Prop :=
  ∀ n, P16042412326128935504.a n = A002280 n

theorem P16042412326128935504.correct : P16042412326128935504.Spec := by
  intro n
  simp only [A002280]

end A002280

/-! ## A002280.P16318028986558637569

`lcm(2, floor(10^n/3))`
-/

namespace A002280.P16318028986558637569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ⌊(10 ^ n : ℚ) / 3⌋

end

end A002280.P16318028986558637569

namespace A002280

/-- `lcm(2, floor(10^n/3))` -/
def P16318028986558637569.Spec : Prop :=
  ∀ n, (P16318028986558637569.a n : ℤ) = A002280 n

end A002280

/-! ## A002280.P7324341616261985902

`10*a(n-1)+6` with `a(0)=0`
-/

namespace A002280.P7324341616261985902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) + 6

end

end A002280.P7324341616261985902

namespace A002280

/-- `10*a(n-1)+6` -/
def P7324341616261985902.Spec : Prop :=
  ∀ n, (P7324341616261985902.a n : ℤ) = A002280 n

end A002280

/-! ## A002280.P15098319154220350188

`∑[10*a(n-1)]` with `a(0)=0, a(1)=6`
-/

namespace A002280.P15098319154220350188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002280.P15098319154220350188

namespace A002280

/-- `∑[10*a(n-1)]` -/
def P15098319154220350188.Spec : Prop :=
  ∀ n, (P15098319154220350188.a n : ℤ) = A002280 n

end A002280

/-! ## A002280.P17440875574863268710

`lcm(20, a(n-1))+6` with `a(0)=0, a(1)=6`
-/

namespace A002280.P17440875574863268710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n a =>
  Nat.lcm 20 (a (n - 1)) + 6

end

end A002280.P17440875574863268710

namespace A002280

/-- `lcm(20, a(n-1))+6` -/
def P17440875574863268710.Spec : Prop :=
  ∀ n, (P17440875574863268710.a n : ℤ) = A002280 n

end A002280

/-! ## A002280.P15996277107785918916

`10-2*(2-5*a(n-1))` with `a(0)=0`
-/

namespace A002280.P15996277107785918916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  10 - 2 * (2 - 5 * a (n - 1))

end

end A002280.P15996277107785918916

namespace A002280

/-- `10-2*(2-5*a(n-1))` -/
def P15996277107785918916.Spec : Prop :=
  ∀ n, P15996277107785918916.a n = A002280 n

end A002280

/-! ## A002280.P16993615404478372063

`∑[A090019(n)]-1`
-/

namespace A002280.P16993615404478372063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A002280.P16993615404478372063

namespace A002280

/-- `∑[A090019(n)]-1` -/
def P16993615404478372063.Spec : Prop :=
  ∀ n, P16993615404478372063.a n = A002280 n

end A002280

/-! ## A002280.P8180235544469562377

`Δ[2*A133462(n)]`
-/

namespace A002280.P8180235544469562377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002280.P8180235544469562377

namespace A002280

/-- `Δ[2*A133462(n)]` -/
def P8180235544469562377.Spec : Prop :=
  ∀ n, P8180235544469562377.a n = A002280 n

end A002280

/-! ## A002280.P925475882060014458

`A067275(n+1)-1`
-/

namespace A002280.P925475882060014458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067275 (n + 1) - 1

end

end A002280.P925475882060014458

namespace A002280

/-- `A067275(n+1)-1` -/
def P925475882060014458.Spec : Prop :=
  ∀ n, P925475882060014458.a n = A002280 n

end A002280

/-! ## A002280.P7167040902754065239

`A289006(3*n+1)`
-/

namespace A002280.P7167040902754065239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289006 (3 * n + 1)

end

end A002280.P7167040902754065239

namespace A002280

/-- `A289006(3*n+1)` -/
def P7167040902754065239.Spec : Prop :=
  ∀ n, P7167040902754065239.a n = A002280 n

end A002280

/-! ## A002280.P3593654533541859123

`A237424(∑[n+1])-1`
-/

namespace A002280.P3593654533541859123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237424 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A002280.P3593654533541859123

namespace A002280

/-- `A237424(∑[n+1])-1` -/
def P3593654533541859123.Spec : Prop :=
  ∀ n, P3593654533541859123.a n = A002280 n

end A002280

/-! ## A002280.P15208456754230132850

`A002278(n)+A002276(n)`
-/

namespace A002280.P15208456754230132850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 n + A002276 n

end

end A002280.P15208456754230132850

namespace A002280

/-- `A002278(n)+A002276(n)` -/
def P15208456754230132850.Spec : Prop :=
  ∀ n, P15208456754230132850.a n = A002280 n

end A002280

/-! ## A002280.P1491181278277838449

`A002279(n)+A002275(n)`
-/

namespace A002280.P1491181278277838449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n + A002275 n

end

end A002280.P1491181278277838449

namespace A002280

/-- `A002279(n)+A002275(n)` -/
def P1491181278277838449.Spec : Prop :=
  ∀ n, P1491181278277838449.a n = A002280 n

end A002280

/-! ## A002280.P3877129365069723623

`A323639(n)+A093137(n)`
-/

namespace A002280.P3877129365069723623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323639 n + A093137 n

end

end A002280.P3877129365069723623

namespace A002280

/-- `A323639(n)+A093137(n)` -/
def P3877129365069723623.Spec : Prop :=
  ∀ n, P3877129365069723623.a n = A002280 n

end A002280

/-! ## A002280.P13834472497499767698

`A002281(n)-A002275(n)`
-/

namespace A002280.P13834472497499767698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 n - A002275 n

end

end A002280.P13834472497499767698

namespace A002280

/-- `A002281(n)-A002275(n)` -/
def P13834472497499767698.Spec : Prop :=
  ∀ n, P13834472497499767698.a n = A002280 n

end A002280

/-! ## A002280.P12331928781503014802

`A002282(n)-A002276(n)`
-/

namespace A002280.P12331928781503014802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002282 n - A002276 n

end

end A002280.P12331928781503014802

namespace A002280

/-- `A002282(n)-A002276(n)` -/
def P12331928781503014802.Spec : Prop :=
  ∀ n, P12331928781503014802.a n = A002280 n

end A002280

/-! ## A002280.P8875349195141342638

`A002283(n)-A002277(n)`
-/

namespace A002280.P8875349195141342638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n - A002277 n

end

end A002280.P8875349195141342638

namespace A002280

/-- `A002283(n)-A002277(n)` -/
def P8875349195141342638.Spec : Prop :=
  ∀ n, P8875349195141342638.a n = A002280 n

end A002280

/-!
# A002281: a(n) = 7*(10^n - 1)/9.

The programs for A002281, the canonical program `A002281.P10588741059418973815` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002281 has offset 0).

The definition of A002281 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*(10^n-1)/9` (program `A002281.P4376726582071763406`, by `A002281.P4376726582071763406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002281.P4376726582071763406

`7*(10^n-1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002281.P4376726582071763406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * (((10 ^ n : ℤ) - 1 : ℚ) / 9)

end

end A002281.P4376726582071763406

namespace A002281

/-- `7*(10^n-1)/9` -/
def P4376726582071763406.Spec : Prop :=
  ∀ n, P4376726582071763406.a n = (A002281 n : ℚ)

theorem P4376726582071763406.correct : P4376726582071763406.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A002281, Nat.add_sub_cancel, A002281.P4376726582071763406.a, A002281.P10588741059418973815.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A002281, Nat.add_sub_cancel, A002281.P4376726582071763406.a, A002281.P10588741059418973815.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002281

/-! ## A002281.P4695450323177859806

`a(n-1)+7*10^(n-1)` with `a(0)=0`
-/

namespace A002281.P4695450323177859806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 7 * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A002281.P4695450323177859806

namespace A002281

/-- `a(n-1)+7*10^(n-1)` -/
def P4695450323177859806.Spec : Prop :=
  ∀ n, P4695450323177859806.a n = (A002281 n : ℚ)

end A002281

/-! ## A002281.P10588741059418973815

`11*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=7`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002281

/-- `11*a(n-1)-10*a(n-2)` -/
def P10588741059418973815.Spec : Prop :=
  ∀ n, P10588741059418973815.a n = A002281 n

theorem P10588741059418973815.correct : P10588741059418973815.Spec := by
  intro n
  simp only [A002281]

end A002281

/-! ## A002281.P16850410835906189867

`(A099915(n)-1)/2`
-/

namespace A002281.P16850410835906189867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099915 n - 1 : ℚ) / 2

end

end A002281.P16850410835906189867

namespace A002281

/-- `(A099915(n)-1)/2` -/
def P16850410835906189867.Spec : Prop :=
  ∀ n, P16850410835906189867.a n = (A002281 n : ℚ)

end A002281

/-! ## A002281.P17496075048498927308

`10*a(n-1)+7` with `a(0)=0`
-/

namespace A002281.P17496075048498927308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) + 7

end

end A002281.P17496075048498927308

namespace A002281

/-- `10*a(n-1)+7` -/
def P17496075048498927308.Spec : Prop :=
  ∀ n, (P17496075048498927308.a n : ℤ) = A002281 n

end A002281

/-! ## A002281.P2717573032605828039

`lcm(10, a(n-1))+7` with `a(0)=0`
-/

namespace A002281.P2717573032605828039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 10 (a (n - 1)) + 7

end

end A002281.P2717573032605828039

namespace A002281

/-- `lcm(10, a(n-1))+7` -/
def P2717573032605828039.Spec : Prop :=
  ∀ n, (P2717573032605828039.a n : ℤ) = A002281 n

end A002281

/-! ## A002281.P635487483074948744

`∑[10*a(n-1)]` with `a(0)=0, a(1)=7`
-/

namespace A002281.P635487483074948744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002281.P635487483074948744

namespace A002281

/-- `∑[10*a(n-1)]` -/
def P635487483074948744.Spec : Prop :=
  ∀ n, (P635487483074948744.a n : ℤ) = A002281 n

end A002281

/-! ## A002281.P8255745809994393402

`∑[lcm(7, floor(10^(n-1)))]`
-/

namespace A002281.P8255745809994393402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002281.P8255745809994393402

namespace A002281

/-- `∑[lcm(7, floor(10^(n-1)))]` -/
def P8255745809994393402.Spec : Prop :=
  ∀ n, (P8255745809994393402.a n : ℤ) = A002281 n

end A002281

/-! ## A002281.P2084711702502646320

`∑[A196662(n)]-1`
-/

namespace A002281.P2084711702502646320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A002281.P2084711702502646320

namespace A002281

/-- `∑[A196662(n)]-1` -/
def P2084711702502646320.Spec : Prop :=
  ∀ n, P2084711702502646320.a n = A002281 n

end A002281

/-! ## A002281.P4166883225884621686

`A002278(n)+A002277(n)`
-/

namespace A002281.P4166883225884621686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 n + A002277 n

end

end A002281.P4166883225884621686

namespace A002281

/-- `A002278(n)+A002277(n)` -/
def P4166883225884621686.Spec : Prop :=
  ∀ n, P4166883225884621686.a n = A002281 n

end A002281

/-! ## A002281.P2583455424881651534

`A002279(n)+A002276(n)`
-/

namespace A002281.P2583455424881651534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 n + A002276 n

end

end A002281.P2583455424881651534

namespace A002281

/-- `A002279(n)+A002276(n)` -/
def P2583455424881651534.Spec : Prop :=
  ∀ n, P2583455424881651534.a n = A002281 n

end A002281

/-! ## A002281.P12756695652719221805

`A002280(n)+A002275(n)`
-/

namespace A002281.P12756695652719221805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002280 n + A002275 n

end

end A002281.P12756695652719221805

namespace A002281

/-- `A002280(n)+A002275(n)` -/
def P12756695652719221805.Spec : Prop :=
  ∀ n, P12756695652719221805.a n = A002281 n

end A002281

/-! ## A002281.P5930789025095104894

`A002282(n)-A002275(n)`
-/

namespace A002281.P5930789025095104894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002282 n - A002275 n

end

end A002281.P5930789025095104894

namespace A002281

/-- `A002282(n)-A002275(n)` -/
def P5930789025095104894.Spec : Prop :=
  ∀ n, P5930789025095104894.a n = A002281 n

end A002281

/-! ## A002281.P7360986999713700269

`A002283(n)-A002276(n)`
-/

namespace A002281.P7360986999713700269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n - A002276 n

end

end A002281.P7360986999713700269

namespace A002281

/-- `A002283(n)-A002276(n)` -/
def P7360986999713700269.Spec : Prop :=
  ∀ n, P7360986999713700269.a n = A002281 n

end A002281

/-! ## A002281.P228311294742557884

`A011557(n)-A093135(n)`
-/

namespace A002281.P228311294742557884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n - A093135 n

end

end A002281.P228311294742557884

namespace A002281

/-- `A011557(n)-A093135(n)` -/
def P228311294742557884.Spec : Prop :=
  ∀ n, P228311294742557884.a n = A002281 n

end A002281

/-! ## A002281.P7542373585570542597

`A011557(n)-∑[A093136(n)]`
-/

namespace A002281.P7542373585570542597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002281.P7542373585570542597

namespace A002281

/-- `A011557(n)-∑[A093136(n)]` -/
def P7542373585570542597.Spec : Prop :=
  ∀ n, P7542373585570542597.a n = A002281 n

end A002281

/-! ## A002281.P6861005309526729310

`A002275(n)+2*A002277(n)`
-/

namespace A002281.P6861005309526729310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n + 2 * A002277 n

end

end A002281.P6861005309526729310

namespace A002281

/-- `A002275(n)+2*A002277(n)` -/
def P6861005309526729310.Spec : Prop :=
  ∀ n, P6861005309526729310.a n = A002281 n

end A002281

/-! ## A002281.P8931409261806892751

`A002283(n)-A322925(2*n)`
-/

namespace A002281.P8931409261806892751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n - A322925 (2 * n)

end

end A002281.P8931409261806892751

namespace A002281

/-- `A002283(n)-A322925(2*n)` -/
def P8931409261806892751.Spec : Prop :=
  ∀ n, P8931409261806892751.a n = A002281 n

end A002281

/-! ## A002281.P381101209589663199

`A002275(n)+A002279(n)+A002275(n)`
-/

namespace A002281.P381101209589663199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n + (A002279 n + A002275 n)

end

end A002281.P381101209589663199

namespace A002281

/-- `A002275(n)+A002279(n)+A002275(n)` -/
def P381101209589663199.Spec : Prop :=
  ∀ n, P381101209589663199.a n = A002281 n

end A002281

/-!
# A002282: a(n) = 8*(10^n - 1)/9.

The programs for A002282, the canonical program `A002282.P11594694327652366288` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002282 has offset 0).

The definition of A002282 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*(10^n-1)/9` (program `A002282.P17268710875771710459`, by `A002282.P17268710875771710459.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002282.P17268710875771710459

`8*(10^n-1)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A002282.P17268710875771710459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * (((10 ^ n : ℤ) - 1 : ℚ) / 9)

end

end A002282.P17268710875771710459

namespace A002282

/-- `8*(10^n-1)/9` -/
def P17268710875771710459.Spec : Prop :=
  ∀ n, P17268710875771710459.a n = (A002282 n : ℚ)

theorem P17268710875771710459.correct : P17268710875771710459.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A002282, Nat.add_sub_cancel, A002282.P17268710875771710459.a, A002282.P11594694327652366288.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A002282, Nat.add_sub_cancel, A002282.P17268710875771710459.a, A002282.P11594694327652366288.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A002282

/-! ## A002282.P8506443753847990415

`a(n-1)+8*10^(n-1)` with `a(0)=0`
-/

namespace A002282.P8506443753847990415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 8 * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A002282.P8506443753847990415

namespace A002282

/-- `a(n-1)+8*10^(n-1)` -/
def P8506443753847990415.Spec : Prop :=
  ∀ n, P8506443753847990415.a n = (A002282 n : ℚ)

end A002282

/-! ## A002282.P11594694327652366288

`11*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=8`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002282

/-- `11*a(n-1)-10*a(n-2)` -/
def P11594694327652366288.Spec : Prop :=
  ∀ n, P11594694327652366288.a n = A002282 n

theorem P11594694327652366288.correct : P11594694327652366288.Spec := by
  intro n
  simp only [A002282]

end A002282

/-! ## A002282.P9239500003022547657

`A002283(n)-A002275(n)`
-/

namespace A002282.P9239500003022547657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n - A002275 n

end

end A002282.P9239500003022547657

namespace A002282

/-- `A002283(n)-A002275(n)` -/
def P9239500003022547657.Spec : Prop :=
  ∀ n, P9239500003022547657.a n = A002282 n

end A002282

/-! ## A002282.P2104250079307449366

`(A246058(n)-1)/2`
-/

namespace A002282.P2104250079307449366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246058 n - 1 : ℚ) / 2

end

end A002282.P2104250079307449366

namespace A002282

/-- `(A246058(n)-1)/2` -/
def P2104250079307449366.Spec : Prop :=
  ∀ n, P2104250079307449366.a n = (A002282 n : ℚ)

end A002282

/-! ## A002282.P4992830612170705107

`lcm(8, floor(10^n/9))`
-/

namespace A002282.P4992830612170705107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 ⌊(10 ^ n : ℚ) / 9⌋

end

end A002282.P4992830612170705107

namespace A002282

/-- `lcm(8, floor(10^n/9))` -/
def P4992830612170705107.Spec : Prop :=
  ∀ n, (P4992830612170705107.a n : ℤ) = A002282 n

end A002282

/-! ## A002282.P147393753253232008

`10*a(n-1)+8` with `a(0)=0`
-/

namespace A002282.P147393753253232008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) + 8

end

end A002282.P147393753253232008

namespace A002282

/-- `10*a(n-1)+8` -/
def P147393753253232008.Spec : Prop :=
  ∀ n, (P147393753253232008.a n : ℤ) = A002282 n

end A002282

/-! ## A002282.P4794235396980795846

`or(8, 10*a(n-1))` with `a(0)=0`
-/

namespace A002282.P4794235396980795846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 8 (10 * a (n - 1))

end

end A002282.P4794235396980795846

namespace A002282

/-- `or(8, 10*a(n-1))` -/
def P4794235396980795846.Spec : Prop :=
  ∀ n, (P4794235396980795846.a n : ℤ) = A002282 n

end A002282

/-! ## A002282.P16538073377505441295

`xor(8, 10*a(n-1))` with `a(0)=0`
-/

namespace A002282.P16538073377505441295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 8 (10 * a (n - 1))

end

end A002282.P16538073377505441295

namespace A002282

/-- `xor(8, 10*a(n-1))` -/
def P16538073377505441295.Spec : Prop :=
  ∀ n, (P16538073377505441295.a n : ℤ) = A002282 n

end A002282

/-! ## A002282.P17318871344163950410

`∑[10*a(n-1)]` with `a(0)=0, a(1)=8`
-/

namespace A002282.P17318871344163950410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002282.P17318871344163950410

namespace A002282

/-- `∑[10*a(n-1)]` -/
def P17318871344163950410.Spec : Prop :=
  ∀ n, (P17318871344163950410.a n : ℤ) = A002282 n

end A002282

/-! ## A002282.P13196136335243621224

`A059482(n)-1`
-/

namespace A002282.P13196136335243621224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059482 n - 1

end

end A002282.P13196136335243621224

namespace A002282

/-- `A059482(n)-1` -/
def P13196136335243621224.Spec : Prop :=
  ∀ n, P13196136335243621224.a n = A002282 n

end A002282

/-! ## A002282.P8123582094117348974

`∑[A346178(n)]-1`
-/

namespace A002282.P8123582094117348974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A002282.P8123582094117348974

namespace A002282

/-- `∑[A346178(n)]-1` -/
def P8123582094117348974.Spec : Prop :=
  ∀ n, P8123582094117348974.a n = A002282 n

end A002282

/-! ## A002282.P12184366225288402319

`A328333(2*n)-1`
-/

namespace A002282.P12184366225288402319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328333 (2 * n) - 1

end

end A002282.P12184366225288402319

namespace A002282

/-- `A328333(2*n)-1` -/
def P12184366225288402319.Spec : Prop :=
  ∀ n, P12184366225288402319.a n = A002282 n

end A002282

/-!
# A002283: a(n) = 10^n - 1.

The programs for A002283, the canonical program `A002283.P2252111154706607536` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002283 has offset 0).

The definition of A002283 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-1` (program `A002283.P2252111154706607536`, by `A002283.P2252111154706607536.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002283.P2252111154706607536

`10^n-1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002283

/-- `10^n-1` -/
def P2252111154706607536.Spec : Prop :=
  ∀ n, P2252111154706607536.a n = A002283 n

theorem P2252111154706607536.correct : P2252111154706607536.Spec := by
  intro n
  simp only [A002283]

end A002283

/-!
# A002286: Bisection of A002470.

The programs for A002286, there is no canonical definition to state claims against.
-/

/-! ## A002286.P17361386927057478811

`A002470(2*(n+1)-1)`
-/

namespace A002286.P17361386927057478811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002470 (2 * (n + 1) - 1)

end

end A002286.P17361386927057478811

/-! ## A002286.P11138103631293393387

`A002470(A005408(n))^A000038(n)!`
-/

namespace A002286.P11138103631293393387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002470 (A005408 n).toNat ^ Nat.factorial (A000038 n).toNat

end

end A002286.P11138103631293393387

/-! ## A002286.P2732282108212242489

`A002470(A005408(n))+A000038(n+1)`
-/

namespace A002286.P2732282108212242489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002470 (A005408 n).toNat + A000038 (n + 1)

end

end A002286.P2732282108212242489

/-! ## A002286.P269543750734283135

`A002470(A005408(n))-A008437(2*n)`
-/

namespace A002286.P269543750734283135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002470 (A005408 n).toNat - A008437 (2 * n)

end

end A002286.P269543750734283135

/-! ## A002286.P4893332351002058883

`A002470(A005408(n))%A022009(n+1)`
-/

namespace A002286.P4893332351002058883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002470 (A005408 n).toNat) (A022009 (n + 1))

end

end A002286.P4893332351002058883

/-! ## A002286.P17656849886008518587

`A002470(A005408(n))/or(1, A323152(n+1))`
-/

namespace A002286.P17656849886008518587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002470 (A005408 n).toNat : ℚ) / (Int.lor 1 (A323152 (n + 1)) : ℚ)

end

end A002286.P17656849886008518587

/-! ## A002286.P5840692067678615629

`A008437(A074400(n+1))+A002470(A005408(n))`
-/

namespace A002286.P5840692067678615629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 (A074400 (n + 1)).toNat + A002470 (A005408 n).toNat

end

end A002286.P5840692067678615629

/-! ## A002286.P6245989225027409920

`A002470(A005408(n))/A015090(A001511(n+1))`
-/

namespace A002286.P6245989225027409920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002470 (A005408 n).toNat : ℚ) / (A015090 (A001511 (n + 1)).toNat : ℚ)

end

end A002286.P6245989225027409920

/-! ## A002286.P3485571091834450803

`A002470(A005408(n))/A001221(A045429(n+1))`
-/

namespace A002286.P3485571091834450803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002470 (A005408 n).toNat : ℚ) / (A001221 (A045429 (n + 1)).toNat : ℚ)

end

end A002286.P3485571091834450803

/-! ## A002286.P7761176460520099045

`A002470(A005408(n))/A001221(A104887(n+1))`
-/

namespace A002286.P7761176460520099045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002470 (A005408 n).toNat : ℚ) / (A001221 (A104887 (n + 1)).toNat : ℚ)

end

end A002286.P7761176460520099045

/-! ## A002286.P15193588719954436842

`A002470(A005408(n))/A014963(A115036(n+1))`
-/

namespace A002286.P15193588719954436842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002470 (A005408 n).toNat : ℚ) / (A014963 (A115036 (n + 1)).toNat : ℚ)

end

end A002286.P15193588719954436842

/-! ## A002286.P18269642695861148924

`A002470(A005408(n))-A265511(A007494(2*n))`
-/

namespace A002286.P18269642695861148924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002470 (A005408 n).toNat - A265511 (A007494 (2 * n)).toNat

end

end A002286.P18269642695861148924

/-! ## A002286.P11830976141902846964

`or(A002470(A005408(n)), A323152((n+1)²))`
-/

namespace A002286.P11830976141902846964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002470 (A005408 n).toNat) (A323152 ((n + 1) ^ 2))

end

end A002286.P11830976141902846964

/-! ## A002286.P14396594054549770886

`A103631(∑[n+1])+A002470(A005408(n))`
-/

namespace A002286.P14396594054549770886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 (∑ j ∈ Finset.range (n + 1), f1 j) + A002470 (A005408 n).toNat

end

end A002286.P14396594054549770886

/-! ## A002286.P10152382354634777367

`A002260(A000124(n))*A002470(A005408(n))`
-/

namespace A002286.P10152382354634777367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A000124 n).toNat * A002470 (A005408 n).toNat

end

end A002286.P10152382354634777367

/-! ## A002286.P17856586023728790822

`A008437(n²)+A002470(A005408(n))`
-/

namespace A002286.P17856586023728790822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 (n ^ 2) + A002470 (A005408 n).toNat

end

end A002286.P17856586023728790822

/-!
# A002287: Bisection of A002470.

The programs for A002287, there is no canonical definition to state claims against.
-/

/-! ## A002287.P15971855256202372020

`A002470(2*n)`
-/

namespace A002287.P15971855256202372020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002470 (2 * n)

end

end A002287.P15971855256202372020

/-! ## A002287.P11058966560389829664

`and(-2, A002470(A004277(n)))`
-/

namespace A002287.P11058966560389829664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A002470 (A004277 n).toNat)

end

end A002287.P11058966560389829664

/-! ## A002287.P7519354329396627372

`A002470(A004277(n))-A000007(n)`
-/

namespace A002287.P7519354329396627372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002470 (A004277 n).toNat - A000007 n

end

end A002287.P7519354329396627372

/-! ## A002287.P4791378674592324641

`A002470(A004277(n))%A000152(n)`
-/

namespace A002287.P4791378674592324641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002470 (A004277 n).toNat) (A000152 n)

end

end A002287.P4791378674592324641

/-! ## A002287.P12136520588271529325

`A002470(A005843(n))%A020449(n+1)`
-/

namespace A002287.P12136520588271529325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002470 (A005843 n).toNat) (A020449 (n + 1))

end

end A002287.P12136520588271529325

/-! ## A002287.P16282654134974704766

`A002470(A004277(n))-A209229(∑[n+1])`
-/

namespace A002287.P16282654134974704766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002470 (A004277 n).toNat - A209229 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002287.P16282654134974704766

/-! ## A002287.P15383298708679068792

`A002470(A004277(n))-A036987(A001157(n+1))`
-/

namespace A002287.P15383298708679068792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002470 (A004277 n).toNat - A036987 (A001157 (n + 1)).toNat

end

end A002287.P15383298708679068792

/-!
# A002289: Weight distribution of [ 23,12,7 ] binary perfect Golay code.

The programs for A002289, there is no canonical definition to state claims against.
-/

/-! ## A002289.P1484403211491352484

`abs(A158078(A004907(n+1)))`
-/

namespace A002289.P1484403211491352484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158078 (A004907 (n + 1)).toNat|

end

end A002289.P1484403211491352484

/-! ## A002289.P6033296891550770430

`abs(A158078(n)%A091716(n+1))`
-/

namespace A002289.P6033296891550770430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A158078 n) (A091716 (n + 1))|

end

end A002289.P6033296891550770430

/-! ## A002289.P5112814997343673847

`A000038(A000081(n))-A158078(n)`
-/

namespace A002289.P5112814997343673847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A000081 n).toNat - A158078 n

end

end A002289.P5112814997343673847

/-! ## A002289.P11259029753495137554

`A000038(A033487(n))-A158078(n)`
-/

namespace A002289.P11259029753495137554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A033487 n).toNat - A158078 n

end

end A002289.P11259029753495137554

/-!
# A002290: Absolute value of Glaisher's alpha(n).

The programs for A002290, there is no canonical definition to state claims against.
-/

/-! ## A002290.P7769699242548549135

`abs(A225543(n))`
-/

namespace A002290.P7769699242548549135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225543 n|

end

end A002290.P7769699242548549135

/-! ## A002290.P13613957945647721000

`gcd(A000038(n), A225543(n))`
-/

namespace A002290.P13613957945647721000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A225543 n)

end

end A002290.P13613957945647721000

/-! ## A002290.P5430354145043526584

`lcm(A000034(n), A225543(n))`
-/

namespace A002290.P5430354145043526584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A225543 n)

end

end A002290.P5430354145043526584

/-! ## A002290.P16507059013197076769

`abs(A000735(n)+16*A225872(n))`
-/

namespace A002290.P16507059013197076769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000735 n + 16 * A225872 n|

end

end A002290.P16507059013197076769

/-! ## A002290.P4442137717401653455

`sqrt(A225543(n)^(A010017(n)%3))`
-/

namespace A002290.P4442137717401653455
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A225543 n : ℚ) ^ (Int.tmod (A010017 n) 3 : ℤ) : ℝ)

end

end A002290.P4442137717401653455

/-! ## A002290.P1521154669278957751

`∑{d}[A225543(n), A000010(#)]`
-/

namespace A002290.P1521154669278957751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A002290.P1521154669278957751

/-!
# A002291: Absolute value of Glaisher's beta'(2n+1).

The programs for A002291, there is no canonical definition to state claims against.
-/

/-! ## A002291.P12962772247607893428

`abs(A225872(n))`
-/

namespace A002291.P12962772247607893428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225872 n|

end

end A002291.P12962772247607893428

/-! ## A002291.P5990053358643779830

`lcm(A010121(n), A225872(n))`
-/

namespace A002291.P5990053358643779830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010121 n) (A225872 n)

end

end A002291.P5990053358643779830

/-! ## A002291.P7455258637607633132

`lcm(-A225872(n), A020985(n))`
-/

namespace A002291.P7455258637607633132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A225872 n) (A020985 n)

end

end A002291.P7455258637607633132

/-! ## A002291.P13085016758476184048

`gcd(n+1-A000027(n+1), A225872(n))`
-/

namespace A002291.P13085016758476184048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A000027 (n + 1)) (A225872 n)

end

end A002291.P13085016758476184048

/-! ## A002291.P13397586950456417829

`gcd(A056898(A000040(n+1)), A225872(n))`
-/

namespace A002291.P13397586950456417829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056898 (A000040 (n + 1)).toNat) (A225872 n)

end

end A002291.P13397586950456417829

/-! ## A002291.P2264643686180285438

`∑{d}[A225872(n), A000010(#)]`
-/

namespace A002291.P2264643686180285438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A002291.P2264643686180285438

/-!
# A002292: Related to representation as sums of squares.

The programs for A002292, there is no canonical definition to state claims against.
-/

/-! ## A002292.P11709532448408283411

`abs(A225923(n))`
-/

namespace A002292.P11709532448408283411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225923 n|

end

end A002292.P11709532448408283411

/-! ## A002292.P1169416138105234191

`abs(A225912(Δ[n²]))`
-/

namespace A002292.P1169416138105234191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A225912 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A002292.P1169416138105234191

/-! ## A002292.P14770767411005322430

`root(A225912(2*n+1)², 2)`
-/

namespace A002292.P14770767411005322430
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A225912 (2 * n + 1) ^ 2 : ℝ) ^ (1 / (2 : ℝ))

end

end A002292.P14770767411005322430

/-! ## A002292.P18295868860532052812

`round(sqrt(A225912(n+1+n)²+1))`
-/

namespace A002292.P18295868860532052812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A225912 (n + 1 + n) ^ 2 + 1 : ℝ))

end

end A002292.P18295868860532052812

/-! ## A002292.P11637108287997661963

`gcd(A000038(n), A225923(n))`
-/

namespace A002292.P11637108287997661963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A225923 n)

end

end A002292.P11637108287997661963

/-! ## A002292.P15916962122379768222

`lcm(A000034(n), A225923(n))`
-/

namespace A002292.P15916962122379768222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A225923 n)

end

end A002292.P15916962122379768222

/-! ## A002292.P13415445072161214862

`sqrt(A225923(n)^A036453(n+1))`
-/

namespace A002292.P13415445072161214862
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A225923 n : ℚ) ^ (A036453 (n + 1) : ℤ) : ℝ)

end

end A002292.P13415445072161214862

/-! ## A002292.P17104406614081766005

`lcm(A020985(n), A225912(2*n+1))`
-/

namespace A002292.P17104406614081766005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A225912 (2 * n + 1))

end

end A002292.P17104406614081766005

/-! ## A002292.P4707825584332818761

`gcd(A047753(2*(n+1)), A225912(2*n+1))`
-/

namespace A002292.P4707825584332818761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047753 (2 * (n + 1))) (A225912 (2 * n + 1))

end

end A002292.P4707825584332818761

/-! ## A002292.P16716992162832359071

`gcd(A025443(A025443(n)), A225912(2*n+1))`
-/

namespace A002292.P16716992162832359071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025443 (A025443 n).toNat) (A225912 (2 * n + 1))

end

end A002292.P16716992162832359071

/-!
# A002293: Number of dissections of a polygon: binomial(4*n, n)/(3*n + 1).

The programs for A002293, the canonical program `A002293.P16807140435425026858` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002293 has offset 0).

The definition of A002293 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005810, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002293.P16807140435425026858

`A005810(n)/(3*n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A002293

/-- `A005810(n)/(3*n+1)` -/
def P16807140435425026858.Spec : Prop :=
  ∀ n, P16807140435425026858.a n = (A002293 n : ℚ)

end A002293

/-! ## A002293.P15954919707612237853

`A369082(2*n)`
-/

namespace A002293.P15954919707612237853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369082 (2 * n)

end

end A002293.P15954919707612237853

namespace A002293

/-- `A369082(2*n)` -/
def P15954919707612237853.Spec : Prop :=
  ∀ n, P15954919707612237853.a n = A002293 n

end A002293

/-! ## A002293.P5464318101823904817

`A124753(3*n)`
-/

namespace A002293.P5464318101823904817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124753 (3 * n)

end

end A002293.P5464318101823904817

namespace A002293

/-- `A124753(3*n)` -/
def P5464318101823904817.Spec : Prop :=
  ∀ n, P5464318101823904817.a n = A002293 n

end A002293

/-! ## A002293.P15899608711913575681

`abs(A109962(∑[n]))`
-/

namespace A002293.P15899608711913575681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109962 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A002293.P15899608711913575681

namespace A002293

/-- `abs(A109962(∑[n]))` -/
def P15899608711913575681.Spec : Prop :=
  ∀ n, P15899608711913575681.a n = A002293 n

end A002293

/-! ## A002293.P14148257922282629785

`A069270(∑[n]+n)`
-/

namespace A002293.P14148257922282629785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A002293.P14148257922282629785

namespace A002293

/-- `A069270(∑[n]+n)` -/
def P14148257922282629785.Spec : Prop :=
  ∀ n, P14148257922282629785.a n = A002293 n

end A002293

/-! ## A002293.P7054194006768252583

`A188108(A133263(n))`
-/

namespace A002293.P7054194006768252583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188108 (A133263 n).toNat

end

end A002293.P7054194006768252583

namespace A002293

/-- `A188108(A133263(n))` -/
def P7054194006768252583.Spec : Prop :=
  ∀ n, P7054194006768252583.a n = A002293 n

end A002293

/-! ## A002293.P9037336842934786897

`A188108(A238531(n+1))`
-/

namespace A002293.P9037336842934786897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188108 (A238531 (n + 1)).toNat

end

end A002293.P9037336842934786897

namespace A002293

/-- `A188108(A238531(n+1))` -/
def P9037336842934786897.Spec : Prop :=
  ∀ n, P9037336842934786897.a n = A002293 n

end A002293

/-! ## A002293.P5624789518153503009

`∑[A334682(n)]+1-A334682(n)`
-/

namespace A002293.P5624789518153503009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A334682 n)

end

end A002293.P5624789518153503009

namespace A002293

/-- `∑[A334682(n)]+1-A334682(n)` -/
def P5624789518153503009.Spec : Prop :=
  ∀ n, P5624789518153503009.a n = A002293 n

end A002293

/-! ## A002293.P5463969857703522389

`A126596(n)/Δ[n²]`
-/

namespace A002293.P5463969857703522389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126596 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A002293.P5463969857703522389

namespace A002293

/-- `A126596(n)/Δ[n²]` -/
def P5463969857703522389.Spec : Prop :=
  ∀ n, P5463969857703522389.a n = (A002293 n : ℚ)

end A002293

/-! ## A002293.P18372753511533994337

`A208983(2*n)/Δ[n²]`
-/

namespace A002293.P18372753511533994337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208983 (2 * n) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A002293.P18372753511533994337

namespace A002293

/-- `A208983(2*n)/Δ[n²]` -/
def P18372753511533994337.Spec : Prop :=
  ∀ n, P18372753511533994337.a n = (A002293 n : ℚ)

end A002293

/-! ## A002293.P11578129545641055837

`A052203(n)/A016813(n)`
-/

namespace A002293.P11578129545641055837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052203 n : ℚ) / (A016813 n : ℚ)

end

end A002293.P11578129545641055837

namespace A002293

/-- `A052203(n)/A016813(n)` -/
def P11578129545641055837.Spec : Prop :=
  ∀ n, P11578129545641055837.a n = (A002293 n : ℚ)

end A002293

/-! ## A002293.P18060070132199633222

`A052204(n)/A016861(n)`
-/

namespace A002293.P18060070132199633222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052204 n : ℚ) / (A016861 n : ℚ)

end

end A002293.P18060070132199633222

namespace A002293

/-- `A052204(n)/A016861(n)` -/
def P18060070132199633222.Spec : Prop :=
  ∀ n, P18060070132199633222.a n = (A002293 n : ℚ)

end A002293

/-! ## A002293.P1585872445789706425

`gcd(A005810(n), A052203(n))`
-/

namespace A002293.P1585872445789706425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005810 n) (A052203 n)

end

end A002293.P1585872445789706425

namespace A002293

/-- `gcd(A005810(n), A052203(n))` -/
def P1585872445789706425.Spec : Prop :=
  ∀ n, (P1585872445789706425.a n : ℤ) = A002293 n

end A002293

/-! ## A002293.P18197760756985943666

`A052203(n)/(A016777(n)+n)`
-/

namespace A002293.P18197760756985943666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052203 n : ℚ) / (A016777 n + (n : ℤ) : ℚ)

end

end A002293.P18197760756985943666

namespace A002293

/-- `A052203(n)/(A016777(n)+n)` -/
def P18197760756985943666.Spec : Prop :=
  ∀ n, P18197760756985943666.a n = (A002293 n : ℚ)

end A002293

/-! ## A002293.P7564780273595961451

`A283799(2*n)/A114752(2*n+1)`
-/

namespace A002293.P7564780273595961451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283799 (2 * n) : ℚ) / (A114752 (2 * n + 1) : ℚ)

end

end A002293.P7564780273595961451

namespace A002293

/-- `A283799(2*n)/A114752(2*n+1)` -/
def P7564780273595961451.Spec : Prop :=
  ∀ n, P7564780273595961451.a n = (A002293 n : ℚ)

end A002293

/-! ## A002293.P14215696986612708921

`A000108(n)/A051944(n)*A052203(n)`
-/

namespace A002293.P14215696986612708921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (A051944 n : ℚ) * (A052203 n : ℚ)

end

end A002293.P14215696986612708921

namespace A002293

/-- `A000108(n)/A051944(n)*A052203(n)` -/
def P14215696986612708921.Spec : Prop :=
  ∀ n, P14215696986612708921.a n = (A002293 n : ℚ)

end A002293

/-! ## A002293.P6062404070342746480

`A243663(∑[abs(1-n)])`
-/

namespace A002293.P6062404070342746480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243663 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002293.P6062404070342746480

namespace A002293

/-- `A243663(∑[abs(1-n)])` -/
def P6062404070342746480.Spec : Prop :=
  ∀ n, P6062404070342746480.a n = A002293 n

end A002293

/-! ## A002293.P11010756464930967556

`gcd(n²*A052203(n), A052204(n))`
-/

namespace A002293.P11010756464930967556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n ^ 2 : ℤ) * A052203 n) (A052204 n)

end

end A002293.P11010756464930967556

namespace A002293

/-- `gcd(n²*A052203(n), A052204(n))` -/
def P11010756464930967556.Spec : Prop :=
  ∀ n, (P11010756464930967556.a n : ℤ) = A002293 n

end A002293

/-!
# A002294: a(n) = binomial(5*n, n)/(4*n + 1).

The programs for A002294, there is no canonical definition to state claims against.
-/

/-! ## A002294.P10767384392339282689

`A001449(n)/(4*n+1)`
-/

namespace A002294.P10767384392339282689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001449 n : ℚ) / (4 * n + 1 : ℚ)

end

end A002294.P10767384392339282689

/-! ## A002294.P6919137653879955238

`A143546(2*n)`
-/

namespace A002294.P6919137653879955238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143546 (2 * n)

end

end A002294.P6919137653879955238

/-! ## A002294.P4493477439920318373

`A118968(4*n)`
-/

namespace A002294.P4493477439920318373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118968 (4 * n)

end

end A002294.P4493477439920318373

/-! ## A002294.P13110943683806382649

`(2*n+1)/3*A197272(n)`
-/

namespace A002294.P13110943683806382649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / 3 * (A197272 n : ℚ)

end

end A002294.P13110943683806382649

/-! ## A002294.P10237557855915484241

`(2*n+1)/A016861(n)*A118969(n)`
-/

namespace A002294.P10237557855915484241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A016861 n : ℚ) * (A118969 n : ℚ)

end

end A002294.P10237557855915484241

/-! ## A002294.P9956419555025723704

`A079589(n)/A016861(n)`
-/

namespace A002294.P9956419555025723704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079589 n : ℚ) / (A016861 n : ℚ)

end

end A002294.P9956419555025723704

/-! ## A002294.P4186171963424361506

`gcd(A001449(n), A079589(n))`
-/

namespace A002294.P4186171963424361506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001449 n) (A079589 n)

end

end A002294.P4186171963424361506

/-! ## A002294.P16332588008560893047

`A062993(A167614(n+2))`
-/

namespace A002294.P16332588008560893047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062993 (A167614 (n + 2)).toNat

end

end A002294.P16332588008560893047

/-! ## A002294.P6595454306960443683

`A001764(n)/A153231(n)*A217364(n)`
-/

namespace A002294.P6595454306960443683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001764 n : ℚ) / (A153231 n : ℚ) * (A217364 n : ℚ)

end

end A002294.P6595454306960443683

/-! ## A002294.P5366123750076629882

`A062985(n*(2*n+3))`
-/

namespace A002294.P5366123750076629882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062985 (n * (2 * n + 3))

end

end A002294.P5366123750076629882

/-!
# A002295: Number of dissections of a polygon: binomial(6n,n)/(5n+1).

The programs for A002295, there is no canonical definition to state claims against.
-/

/-! ## A002295.P8182728148189316481

`A004355(n)/(5*n+1)`
-/

namespace A002295.P8182728148189316481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004355 n : ℚ) / (5 * n + 1 : ℚ)

end

end A002295.P8182728148189316481

/-! ## A002295.P7164357970266072499

`A386379(5*n)`
-/

namespace A002295.P7164357970266072499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386379 (5 * n)

end

end A002295.P7164357970266072499

/-! ## A002295.P9752593395519431584

`A051053(6*n+1)/(6*n+1)`
-/

namespace A002295.P9752593395519431584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051053 (6 * n + 1) : ℚ) / (6 * n + 1 : ℚ)

end

end A002295.P9752593395519431584

/-! ## A002295.P16217960160935664787

`A079590(n)/A016921(n)`
-/

namespace A002295.P16217960160935664787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079590 n : ℚ) / (A016921 n : ℚ)

end

end A002295.P16217960160935664787

/-! ## A002295.P16145945147479294100

`gcd(A004355(n), A079590(n))`
-/

namespace A002295.P16145945147479294100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004355 n) (A079590 n)

end

end A002295.P16145945147479294100

/-! ## A002295.P3392354808534060380

`ceil(A079590(n)/A271114(n))`
-/

namespace A002295.P3392354808534060380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A079590 n : ℚ) / (A271114 n : ℚ)⌉

end

end A002295.P3392354808534060380

/-! ## A002295.P16017864379788839150

`A079590(n)/(A008588(n)+1)`
-/

namespace A002295.P16017864379788839150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079590 n : ℚ) / (A008588 n + 1 : ℚ)

end

end A002295.P16017864379788839150

/-! ## A002295.P14387040936427309851

`A079590(n)/A016777(2*n)`
-/

namespace A002295.P14387040936427309851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079590 n : ℚ) / (A016777 (2 * n) : ℚ)

end

end A002295.P14387040936427309851

/-! ## A002295.P320769803687782101

`A079590(n)/(A016861(n)+n)`
-/

namespace A002295.P320769803687782101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079590 n : ℚ) / (A016861 n + (n : ℤ) : ℚ)

end

end A002295.P320769803687782101

/-!
# A002296: Number of dissections of a polygon: binomial(7n,n)/(6n+1).

The programs for A002296, there is no canonical definition to state claims against.
-/

/-! ## A002296.P8908511660882274286

`A004368(n)/(6*n+1)`
-/

namespace A002296.P8908511660882274286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004368 n : ℚ) / (6 * n + 1 : ℚ)

end

end A002296.P8908511660882274286

/-! ## A002296.P3357150006615027435

`A143547(2*n)`
-/

namespace A002296.P3357150006615027435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143547 (2 * n)

end

end A002296.P3357150006615027435

/-! ## A002296.P7207168157688821281

`A386380(6*n)`
-/

namespace A002296.P7207168157688821281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386380 (6 * n)

end

end A002296.P7207168157688821281

/-! ## A002296.P9426665829962129330

`C(7*n+1, n)/(7*n+1)`
-/

namespace A002296.P9426665829962129330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (7 * n + 1) n : ℚ) / (7 * n + 1 : ℚ)

end

end A002296.P9426665829962129330

/-! ## A002296.P16007810368037329484

`A070914(eq[64, A130321(n)])`
-/

namespace A002296.P16007810368037329484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002296.P16007810368037329484

/-!
# A002297: Numerator of (2/Pi) * Integral_{x>=0} (sin x / x)^n dx.

The programs for A002297, there is no canonical definition to state claims against.
-/

/-! ## A002297.P3891340494725909722

`A049330(n+1)+char[3]`
-/

namespace A002297.P3891340494725909722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049330 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A002297.P3891340494725909722

/-! ## A002297.P929311161419280644

`A063524(A004524(n))+A049330(n+1)`
-/

namespace A002297.P929311161419280644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A004524 n).toNat + A049330 (n + 1)

end

end A002297.P929311161419280644

/-! ## A002297.P2683445094063346863

`A049330(n+1)*A051340(A127944(n))`
-/

namespace A002297.P2683445094063346863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049330 (n + 1) * A051340 (A127944 n).toNat

end

end A002297.P2683445094063346863

/-! ## A002297.P274356033592254315

`A049330(n+1)*A089723(A133263(n))`
-/

namespace A002297.P274356033592254315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049330 (n + 1) * A089723 (A133263 n).toNat

end

end A002297.P274356033592254315

/-! ## A002297.P6703777462623446734

`A160383(A049238(n+2))+A049330(n+1)`
-/

namespace A002297.P6703777462623446734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (A049238 (n + 2)).toNat + A049330 (n + 1)

end

end A002297.P6703777462623446734

/-!
# A002298: Denominator of (2/Pi)*Integral_{0..inf} (sin x / x)^n dx.

The programs for A002298, there is no canonical definition to state claims against.
-/

/-! ## A002298.P10110272164594166472

`lcm(2, A049331(n+1))/2`
-/

namespace A002298.P10110272164594166472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A049331 (n + 1)) : ℚ) / 2

end

end A002298.P10110272164594166472

/-! ## A002298.P13791899100013724958

`A049331(n+1)/A049342(A273766(n))`
-/

namespace A002298.P13791899100013724958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049331 (n + 1) : ℚ) / (A049342 (A273766 n).toNat : ℚ)

end

end A002298.P13791899100013724958

/-! ## A002298.P18003575378925729846

`A006519(A119619(n+1))*A119619(n+1)`
-/

namespace A002298.P18003575378925729846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A119619 (n + 1)).toNat * A119619 (n + 1)

end

end A002298.P18003575378925729846

/-! ## A002298.P4564502172037787286

`A049331(n+1)/A000034(A143330(n))`
-/

namespace A002298.P4564502172037787286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049331 (n + 1) : ℚ) / (A000034 (A143330 n).toNat : ℚ)

end

end A002298.P4564502172037787286

/-!
# A002299: Binomial coefficients C(2*n+5,5).

The programs for A002299, the canonical program `A002299.P16050502060262399824` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002299 has offset 0).

The definition of A002299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002299.P11546628832935776993

`n*(8*n^4+60*n^3+170*n²+225*n+137)/30+1`
-/

namespace A002299.P11546628832935776993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((8 * n ^ 4 + 60 * n ^ 3 + 170 * n ^ 2 + 225 * n + 137 : ℚ) / 30) + 1

end

end A002299.P11546628832935776993

namespace A002299

/-- `n*(8*n^4+60*n^3+170*n²+225*n+137)/30+1` -/
def P11546628832935776993.Spec : Prop :=
  ∀ n, P11546628832935776993.a n = (A002299 n : ℚ)

end A002299

/-! ## A002299.P13530525610984055376

`A053126(n+4)*(2*n+1)/5`
-/

namespace A002299.P13530525610984055376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053126 (n + 4) : ℚ) * ((2 * n + 1 : ℚ) / 5)

end

end A002299.P13530525610984055376

namespace A002299

/-- `A053126(n+4)*(2*n+1)/5` -/
def P13530525610984055376.Spec : Prop :=
  ∀ n, P13530525610984055376.a n = (A002299 n : ℚ)

end A002299

/-! ## A002299.P16050502060262399824

`A000389(2*n+5)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002299

/-- `A000389(2*n+5)` -/
def P16050502060262399824.Spec : Prop :=
  ∀ n, P16050502060262399824.a n = A002299 n

theorem P16050502060262399824.correct : P16050502060262399824.Spec := by
  intro n
  simp only [A002299]

end A002299

/-! ## A002299.P11477607172706309717

`C(2*n+5, 5)`
-/

namespace A002299.P11477607172706309717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 5) 5

end

end A002299.P11477607172706309717

namespace A002299

/-- `C(2*n+5, 5)` -/
def P11477607172706309717.Spec : Prop :=
  ∀ n, (P11477607172706309717.a n : ℤ) = A002299 n

end A002299

/-! ## A002299.P5579434969641574440

`∑[∑[A063496(n+1)]]`
-/

namespace A002299.P5579434969641574440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063496 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002299.P5579434969641574440

namespace A002299

/-- `∑[∑[A063496(n+1)]]` -/
def P5579434969641574440.Spec : Prop :=
  ∀ n, P5579434969641574440.a n = A002299 n

end A002299

/-! ## A002299.P13191831001374130666

`record[C(A000265(n+5), 5)]`
-/

namespace A002299.P13191831001374130666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000265 (n + 5)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002299.P13191831001374130666

namespace A002299

/-- `record[C(A000265(n+5), 5)]` -/
def P13191831001374130666.Spec : Prop :=
  ∀ n, (P13191831001374130666.a n : ℤ) = A002299 n

end A002299

/-! ## A002299.P5561559375672856176

`A000217(n+1)/A000292(n+1)*A053135(n)`
-/

namespace A002299.P5561559375672856176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) : ℚ) / (A000292 (n + 1) : ℚ) * (A053135 n : ℚ)

end

end A002299.P5561559375672856176

namespace A002299

/-- `A000217(n+1)/A000292(n+1)*A053135(n)` -/
def P5561559375672856176.Spec : Prop :=
  ∀ n, P5561559375672856176.a n = (A002299 n : ℚ)

end A002299

/-! ## A002299.P1179823558425155365

`A000384(n+1)/A131423(n+1)*A053135(n)`
-/

namespace A002299.P1179823558425155365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000384 (n + 1) : ℚ) / (A131423 (n + 1) : ℚ) * (A053135 n : ℚ)

end

end A002299.P1179823558425155365

namespace A002299

/-- `A000384(n+1)/A131423(n+1)*A053135(n)` -/
def P1179823558425155365.Spec : Prop :=
  ∀ n, P1179823558425155365.a n = (A002299 n : ℚ)

end A002299

/-! ## A002299.P1467434872239089830

`∑[A187756(n+1)]`
-/

namespace A002299.P1467434872239089830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002299.P1467434872239089830

namespace A002299

/-- `∑[A187756(n+1)]` -/
def P1467434872239089830.Spec : Prop :=
  ∀ n, P1467434872239089830.a n = A002299 n

end A002299

/-! ## A002299.P6379783655589596207

`∑[(n+1)*A000447(n+1)]`
-/

namespace A002299.P6379783655589596207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002299.P6379783655589596207

namespace A002299

/-- `∑[(n+1)*A000447(n+1)]` -/
def P6379783655589596207.Spec : Prop :=
  ∀ n, P6379783655589596207.a n = A002299 n

end A002299

/-! ## A002299.P10271706360874649553

`record[C(A065037(n+4), 5)]`
-/

namespace A002299.P10271706360874649553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065037 (n + 4)).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002299.P10271706360874649553

namespace A002299

/-- `record[C(A065037(n+4), 5)]` -/
def P10271706360874649553.Spec : Prop :=
  ∀ n, (P10271706360874649553.a n : ℤ) = A002299 n

end A002299

/-! ## A002299.P7665770261110725995

`A277935(2*(n+1))/2`
-/

namespace A002299.P7665770261110725995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277935 (2 * (n + 1)) : ℚ) / 2

end

end A002299.P7665770261110725995

namespace A002299

/-- `A277935(2*(n+1))/2` -/
def P7665770261110725995.Spec : Prop :=
  ∀ n, P7665770261110725995.a n = (A002299 n : ℚ)

end A002299

/-! ## A002299.P16174372606183779183

`A120408(2*n+1)/A090449(2*n+5)`
-/

namespace A002299.P16174372606183779183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120408 (2 * n + 1) : ℚ) / (A090449 (2 * n + 5) : ℚ)

end

end A002299.P16174372606183779183

namespace A002299

/-- `A120408(2*n+1)/A090449(2*n+5)` -/
def P16174372606183779183.Spec : Prop :=
  ∀ n, P16174372606183779183.a n = (A002299 n : ℚ)

end A002299

/-! ## A002299.P14468670941099509659

`A189980(4*n)`
-/

namespace A002299.P14468670941099509659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189980 (4 * n + 10)

end

end A002299.P14468670941099509659

namespace A002299

/-- `A189980(4*n)` -/
def P14468670941099509659.Spec : Prop :=
  ∀ n, P14468670941099509659.a n = A002299 n

end A002299

/-! ## A002299.P197775567456224643

`A114095(A131877(n))`
-/

namespace A002299.P197775567456224643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114095 (A131877 n).toNat

end

end A002299.P197775567456224643

namespace A002299

/-- `A114095(A131877(n))` -/
def P197775567456224643.Spec : Prop :=
  ∀ n, P197775567456224643.a n = A002299 n

end A002299

/-! ## A002299.P2707186284608307692

`∑[(n+1)*∑[∩[2*n+1, n²]]]`
-/

namespace A002299.P2707186284608307692
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∧ ∃ j, f4 j = x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002299.P2707186284608307692

namespace A002299

/-- `∑[(n+1)*∑[∩[2*n+1, n²]]]` -/
def P2707186284608307692.Spec : Prop :=
  ∀ n, (P2707186284608307692.a n : ℤ) = A002299 n

end A002299

/-! ## A002299.P5372766956658258626

`A082139(2*n)/A011782(2*n)`
-/

namespace A002299.P5372766956658258626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082139 (2 * n) : ℚ) / (A011782 (2 * n) : ℚ)

end

end A002299.P5372766956658258626

namespace A002299

/-- `A082139(2*n)/A011782(2*n)` -/
def P5372766956658258626.Spec : Prop :=
  ∀ n, P5372766956658258626.a n = (A002299 n : ℚ)

end A002299

/-! ## A002299.P8148321768014587727

`A054849(2*n+5)/A000079(n)²`
-/

namespace A002299.P8148321768014587727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054849 (2 * n + 5) : ℚ) / (A000079 n ^ 2 : ℚ)

end

end A002299.P8148321768014587727

namespace A002299

/-- `A054849(2*n+5)/A000079(n)²` -/
def P8148321768014587727.Spec : Prop :=
  ∀ n, P8148321768014587727.a n = (A002299 n : ℚ)

end A002299

/-! ## A002299.P4324946241332680085

`A054849(2*n+5)/A000079(2*n)`
-/

namespace A002299.P4324946241332680085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054849 (2 * n + 5) : ℚ) / (A000079 (2 * n) : ℚ)

end

end A002299.P4324946241332680085

namespace A002299

/-- `A054849(2*n+5)/A000079(2*n)` -/
def P4324946241332680085.Spec : Prop :=
  ∀ n, P4324946241332680085.a n = (A002299 n : ℚ)

end A002299

/-! ## A002299.P17560650735218728634

`A091042(∑[n+3])`
-/

namespace A002299.P17560650735218728634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002299.P17560650735218728634

namespace A002299

/-- `A091042(∑[n+3])` -/
def P17560650735218728634.Spec : Prop :=
  ∀ n, P17560650735218728634.a n = A002299 n

end A002299

