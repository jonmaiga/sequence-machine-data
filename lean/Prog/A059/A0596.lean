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
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A059600: Expansion of (1+6*x+x^2)/(1-x)^8.

The programs for A059600, the canonical program `A059600.P7976124112871278022` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059600 has offset 0).

The definition of A059600 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+6x+x^2)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` (program `A059600.P7976124112871278022`, by `A059600.P7976124112871278022.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059600.P7976124112871278022

`ogf((1+6x+x^2)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059600

/-- `ogf((1+6x+x^2)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P7976124112871278022.Spec : Prop :=
  ∀ n, P7976124112871278022.a n = A059600 n

theorem P7976124112871278022.correct : P7976124112871278022.Spec := by
  intro n
  simp only [A059600]

end A059600

/-! ## A059600.P12864628076204144439

`∑[∑[∑[∑[∑[Δ[n²]²]]]]]`
-/

namespace A059600.P12864628076204144439
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f6 (n + 1) : ℤ) - (f6 n : ℤ)) ^ 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059600.P12864628076204144439

namespace A059600

/-- `∑[∑[∑[∑[∑[Δ[n²]²]]]]]` -/
def P12864628076204144439.Spec : Prop :=
  ∀ n, P12864628076204144439.a n = A059600 n

end A059600

/-! ## A059600.P8292701687366055942

`C(2*(n+4), 7)/8-a(n-1)` with `a(0)=1`
-/

namespace A059600.P8292701687366055942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (2 * (n + 4)) 7 : ℚ) / 8 - a (n - 1)

end

end A059600.P8292701687366055942

namespace A059600

/-- `C(2*(n+4), 7)/8-a(n-1)` -/
def P8292701687366055942.Spec : Prop :=
  ∀ n, P8292701687366055942.a n = (A059600 n : ℚ)

end A059600

/-! ## A059600.P12530131154034538790

`∑[2*A060103(n)]/2`
-/

namespace A059600.P12530131154034538790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060103 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A059600.P12530131154034538790

namespace A059600

/-- `∑[2*A060103(n)]/2` -/
def P12530131154034538790.Spec : Prop :=
  ∀ n, P12530131154034538790.a n = (A059600 n : ℚ)

end A059600

/-! ## A059600.P9856660125125948980

`A000973(n+8)-a(n-1)` with `a(0)=1`
-/

namespace A059600.P9856660125125948980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000973 (n + 8) - a (n - 1)

end

end A059600.P9856660125125948980

namespace A059600

/-- `A000973(n+8)-a(n-1)` -/
def P9856660125125948980.Spec : Prop :=
  ∀ n, P9856660125125948980.a n = A059600 n

end A059600

/-! ## A059600.P6544183824342140277

`or(∑[A060103(n)], A000007(n))`
-/

namespace A059600.P6544183824342140277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A059600.P6544183824342140277

namespace A059600

/-- `or(∑[A060103(n)], A000007(n))` -/
def P6544183824342140277.Spec : Prop :=
  ∀ n, P6544183824342140277.a n = A059600 n

end A059600

/-! ## A059600.P16283814114855936245

`A000040(n+2)%2*∑[A060103(n)]`
-/

namespace A059600.P16283814114855936245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059600.P16283814114855936245

namespace A059600

/-- `A000040(n+2)%2*∑[A060103(n)]` -/
def P16283814114855936245.Spec : Prop :=
  ∀ n, P16283814114855936245.a n = A059600 n

end A059600

/-! ## A059600.P18210881882853885727

`A038164(2*n)`
-/

namespace A059600.P18210881882853885727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038164 (2 * n)

end

end A059600.P18210881882853885727

namespace A059600

/-- `A038164(2*n)` -/
def P18210881882853885727.Spec : Prop :=
  ∀ n, P18210881882853885727.a n = A059600 n

end A059600

/-! ## A059600.P5243149054336878111

`A060099(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A059600.P5243149054336878111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060099 (2 * n) + a (n - 1)

end

end A059600.P5243149054336878111

namespace A059600

/-- `A060099(2*n)+a(n-1)` -/
def P5243149054336878111.Spec : Prop :=
  ∀ n, P5243149054336878111.a n = A059600 n

end A059600

/-! ## A059600.P5144739738091794936

`A031164(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A059600.P5144739738091794936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A031164 (2 * n) - a (n - 1)

end

end A059600.P5144739738091794936

namespace A059600

/-- `A031164(2*n)-a(n-1)` -/
def P5144739738091794936.Spec : Prop :=
  ∀ n, P5144739738091794936.a n = A059600 n

end A059600

/-! ## A059600.P9456045895750071855

`A007318(∑[n])*∑[A060099(2*n)]`
-/

namespace A059600.P9456045895750071855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060099 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A059600.P9456045895750071855

namespace A059600

/-- `A007318(∑[n])*∑[A060099(2*n)]` -/
def P9456045895750071855.Spec : Prop :=
  ∀ n, P9456045895750071855.a n = A059600 n

end A059600

/-! ## A059600.P10404466076909878572

`∑[A060103(n)]%A098450(n+1)`
-/

namespace A059600.P10404466076909878572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A098450 (n + 1))

end

end A059600.P10404466076909878572

namespace A059600

/-- `∑[A060103(n)]%A098450(n+1)` -/
def P10404466076909878572.Spec : Prop :=
  ∀ n, P10404466076909878572.a n = A059600 n

end A059600

/-!
# A059601: Expansion of (1+10*x+5*x^2)/(1-x)^10.

The programs for A059601, the canonical program `A059601.P3034583862335267029` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059601 has offset 0).

The definition of A059601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059601.P3034583862335267029

`∑[∑[∑[∑[∑[(2*n+1)*∑[(n+1)²]]]]]]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059601

/-- `∑[∑[∑[∑[∑[(2*n+1)*∑[(n+1)²]]]]]]` -/
def P3034583862335267029.Spec : Prop :=
  ∀ n, (P3034583862335267029.a n : ℤ) = A059601 n

theorem P3034583862335267029.correct : P3034583862335267029.Spec := by
  intro n
  simp only [A059601]

end A059601

/-! ## A059601.P14388834107383132276

`2*∑[A060104(n)/2]`
-/

namespace A059601.P14388834107383132276
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060104 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059601.P14388834107383132276

namespace A059601

/-- `2*∑[A060104(n)/2]` -/
def P14388834107383132276.Spec : Prop :=
  ∀ n, P14388834107383132276.a n = (A059601 n : ℚ)

end A059601

/-! ## A059601.P2238352567861099579

`gcd(∑[A060104(n)], A000038(n))`
-/

namespace A059601.P2238352567861099579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060104 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A059601.P2238352567861099579

namespace A059601

/-- `gcd(∑[A060104(n)], A000038(n))` -/
def P2238352567861099579.Spec : Prop :=
  ∀ n, (P2238352567861099579.a n : ℤ) = A059601 n

end A059601

/-! ## A059601.P11704625240410603546

`lcm(∑[A060104(n)], A000034(n))`
-/

namespace A059601.P11704625240410603546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060104 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000034 n)

end

end A059601.P11704625240410603546

namespace A059601

/-- `lcm(∑[A060104(n)], A000034(n))` -/
def P11704625240410603546.Spec : Prop :=
  ∀ n, (P11704625240410603546.a n : ℤ) = A059601 n

end A059601

/-! ## A059601.P17664801555009798039

`∑[A060104(n)]^(A000007(n)+1)`
-/

namespace A059601.P17664801555009798039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060104 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A000007 n + 1 : ℤ)

end

end A059601.P17664801555009798039

namespace A059601

/-- `∑[A060104(n)]^(A000007(n)+1)` -/
def P17664801555009798039.Spec : Prop :=
  ∀ n, P17664801555009798039.a n = (A059601 n : ℚ)

end A059601

/-! ## A059601.P7438361879967454153

`A038165(2*n)`
-/

namespace A059601.P7438361879967454153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038165 (2 * n)

end

end A059601.P7438361879967454153

namespace A059601

/-- `A038165(2*n)` -/
def P7438361879967454153.Spec : Prop :=
  ∀ n, P7438361879967454153.a n = A059601 n

end A059601

/-! ## A059601.P5608598878459053962

`A060100(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A059601.P5608598878459053962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060100 (2 * n) + a (n - 1)

end

end A059601.P5608598878459053962

namespace A059601

/-- `A060100(2*n)+a(n-1)` -/
def P5608598878459053962.Spec : Prop :=
  ∀ n, P5608598878459053962.a n = A059601 n

end A059601

/-! ## A059601.P15700603529187925004

`record[gcd(val(n+2+n, 4), A038165(n))]`
-/

namespace A059601.P15700603529187925004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (n + 2 + n) 4 : ℤ) (A038165 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059601.P15700603529187925004

namespace A059601

/-- `record[gcd(val(n+2+n, 4), A038165(n))]` -/
def P15700603529187925004.Spec : Prop :=
  ∀ n, (P15700603529187925004.a n : ℤ) = A059601 n

end A059601

/-! ## A059601.P9922281829083294728

`or(char[8], A038165(A005843(n)))`
-/

namespace A059601.P9922281829083294728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A038165 (A005843 n).toNat)

end

end A059601.P9922281829083294728

namespace A059601

/-- `or(char[8], A038165(A005843(n)))` -/
def P9922281829083294728.Spec : Prop :=
  ∀ n, P9922281829083294728.a n = A059601 n

end A059601

/-! ## A059601.P8051250552933047889

`A038165(A005843(n))+A000007(n+1)`
-/

namespace A059601.P8051250552933047889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038165 (A005843 n).toNat + A000007 (n + 1)

end

end A059601.P8051250552933047889

namespace A059601

/-- `A038165(A005843(n))+A000007(n+1)` -/
def P8051250552933047889.Spec : Prop :=
  ∀ n, P8051250552933047889.a n = A059601 n

end A059601

/-! ## A059601.P7220308701868056218

`A038165(A005843(n))+A005171(A000040(n+1))`
-/

namespace A059601.P7220308701868056218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038165 (A005843 n).toNat + A005171 (A000040 (n + 1)).toNat

end

end A059601.P7220308701868056218

namespace A059601

/-- `A038165(A005843(n))+A005171(A000040(n+1))` -/
def P7220308701868056218.Spec : Prop :=
  ∀ n, P7220308701868056218.a n = A059601 n

end A059601

/-! ## A059601.P6173022699961968742

`A038165(A005843(n))+A015389(Δ[n²])`
-/

namespace A059601.P6173022699961968742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038165 (A005843 n).toNat + A015389 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A059601.P6173022699961968742

namespace A059601

/-- `A038165(A005843(n))+A015389(Δ[n²])` -/
def P6173022699961968742.Spec : Prop :=
  ∀ n, P6173022699961968742.a n = A059601 n

end A059601

/-! ## A059601.P8771910388905654511

`A038165(A005843(n))/A007318(∑[n])`
-/

namespace A059601.P8771910388905654511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038165 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A059601.P8771910388905654511

namespace A059601

/-- `A038165(A005843(n))/A007318(∑[n])` -/
def P8771910388905654511.Spec : Prop :=
  ∀ n, P8771910388905654511.a n = (A059601 n : ℚ)

end A059601

/-! ## A059601.P10673009914485858830

`∑[A060104(n)]%A098450(n+1)`
-/

namespace A059601.P10673009914485858830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A098450 (n + 1))

end

end A059601.P10673009914485858830

namespace A059601

/-- `∑[A060104(n)]%A098450(n+1)` -/
def P10673009914485858830.Spec : Prop :=
  ∀ n, P10673009914485858830.a n = A059601 n

end A059601

/-! ## A059601.P7422581578813320515

`A038165(A005843(n))%A001557(n)`
-/

namespace A059601.P7422581578813320515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038165 (A005843 n).toNat) (A001557 n)

end

end A059601.P7422581578813320515

namespace A059601

/-- `A038165(A005843(n))%A001557(n)` -/
def P7422581578813320515.Spec : Prop :=
  ∀ n, P7422581578813320515.a n = A059601 n

end A059601

/-!
# A059602: Expansion of (5+10*x+x^2)/(1-x)^10.

The programs for A059602, the canonical program `A059602.P13739844539296539363` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059602 has offset 0).

The definition of A059602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059602.P13739844539296539363

`∑[A060558(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A059602

/-- `∑[A060558(n)]` -/
def P13739844539296539363.Spec : Prop :=
  ∀ n, P13739844539296539363.a n = A059602 n

theorem P13739844539296539363.correct : P13739844539296539363.Spec := by
  intro n
  simp only [A059602]

end A059602

/-! ## A059602.P5461734916997961930

`2*A060559(n)-A060105(n)`
-/

namespace A059602.P5461734916997961930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060559 n - A060105 n

end

end A059602.P5461734916997961930

namespace A059602

/-- `2*A060559(n)-A060105(n)` -/
def P5461734916997961930.Spec : Prop :=
  ∀ n, P5461734916997961930.a n = A059602 n

end A059602

/-! ## A059602.P7734786115960261940

`A038165(Δ[n²])`
-/

namespace A059602.P7734786115960261940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038165 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A059602.P7734786115960261940

namespace A059602

/-- `A038165(Δ[n²])` -/
def P7734786115960261940.Spec : Prop :=
  ∀ n, P7734786115960261940.a n = A059602 n

end A059602

/-! ## A059602.P10111647249632899786

`∑[A060100(Δ[n²])]`
-/

namespace A059602.P10111647249632899786
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060100 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059602.P10111647249632899786

namespace A059602

/-- `∑[A060100(Δ[n²])]` -/
def P10111647249632899786.Spec : Prop :=
  ∀ n, P10111647249632899786.a n = A059602 n

end A059602

/-! ## A059602.P17112361810601897786

`∑[∑[∑[A299335(2*n+1)]]]`
-/

namespace A059602.P17112361810601897786
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299335 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059602.P17112361810601897786

namespace A059602

/-- `∑[∑[∑[A299335(2*n+1)]]]` -/
def P17112361810601897786.Spec : Prop :=
  ∀ n, P17112361810601897786.a n = A059602 n

end A059602

/-! ## A059602.P13992547073780051481

`A060101(2*n+1)-A060105(n)`
-/

namespace A059602.P13992547073780051481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060101 (2 * n + 1) - A060105 n

end

end A059602.P13992547073780051481

namespace A059602

/-- `A060101(2*n+1)-A060105(n)` -/
def P13992547073780051481.Spec : Prop :=
  ∀ n, P13992547073780051481.a n = A059602 n

end A059602

/-! ## A059602.P12969943098489895534

`A054498(2*n+1)+A054498(2*n)`
-/

namespace A059602.P12969943098489895534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054498 (2 * n + 1) + A054498 (2 * n)

end

end A059602.P12969943098489895534

namespace A059602

/-- `A054498(2*n+1)+A054498(2*n)` -/
def P12969943098489895534.Spec : Prop :=
  ∀ n, P12969943098489895534.a n = A059602 n

end A059602

/-! ## A059602.P15681948735365613279

`A060101(2*n+1)-A060101(2*n)`
-/

namespace A059602.P15681948735365613279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060101 (2 * n + 1) - A060101 (2 * n)

end

end A059602.P15681948735365613279

namespace A059602

/-- `A060101(2*n+1)-A060101(2*n)` -/
def P15681948735365613279.Spec : Prop :=
  ∀ n, P15681948735365613279.a n = A059602 n

end A059602

/-! ## A059602.P13583717337936226509

`∑[∑[A038164(2*n+1)+A038164(2*n)]]`
-/

namespace A059602.P13583717337936226509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038164 (2 * n + 1) + A038164 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059602.P13583717337936226509

namespace A059602

/-- `∑[∑[A038164(2*n+1)+A038164(2*n)]]` -/
def P13583717337936226509.Spec : Prop :=
  ∀ n, P13583717337936226509.a n = A059602 n

end A059602

/-! ## A059602.P11160034258800068377

`gcd(A038165(2*n+1)*A038165(n+1), A038165(2*n+1))`
-/

namespace A059602.P11160034258800068377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038165 (2 * n + 1) * A038165 (n + 1)) (A038165 (2 * n + 1))

end

end A059602.P11160034258800068377

namespace A059602

/-- `gcd(A038165(2*n+1)*A038165(n+1), A038165(2*n+1))` -/
def P11160034258800068377.Spec : Prop :=
  ∀ n, (P11160034258800068377.a n : ℤ) = A059602 n

end A059602

/-!
# A059603: Expansion of (1+15*x+15*x^2+x^3)/(1-x)^12.

The programs for A059603, the canonical program `A059603.P16506682477234733057` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059603 has offset 0).

The definition of A059603 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059603.P16506682477234733057

`∑[A060105(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A059603

/-- `∑[A060105(n)]` -/
def P16506682477234733057.Spec : Prop :=
  ∀ n, P16506682477234733057.a n = A059603 n

theorem P16506682477234733057.correct : P16506682477234733057.Spec := by
  intro n
  simp only [A059603]

end A059603

/-! ## A059603.P6489460691741083080

`A038166(2*n)`
-/

namespace A059603.P6489460691741083080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038166 (2 * n)

end

end A059603.P6489460691741083080

namespace A059603

/-- `A038166(2*n)` -/
def P6489460691741083080.Spec : Prop :=
  ∀ n, P6489460691741083080.a n = A059603 n

end A059603

/-! ## A059603.P5148386456963134533

`∑[A060101(2*n)]`
-/

namespace A059603.P5148386456963134533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060101 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059603.P5148386456963134533

namespace A059603

/-- `∑[A060101(2*n)]` -/
def P5148386456963134533.Spec : Prop :=
  ∀ n, P5148386456963134533.a n = A059603 n

end A059603

/-! ## A059603.P13425915453272899052

`∑[record[A060101(and(n, n+1))]]`
-/

namespace A059603.P13425915453272899052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060101 (Nat.land n (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059603.P13425915453272899052

namespace A059603

/-- `∑[record[A060101(and(n, n+1))]]` -/
def P13425915453272899052.Spec : Prop :=
  ∀ n, P13425915453272899052.a n = A059603 n

end A059603

/-! ## A059603.P18196388834885421525

`A060101(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A059603.P18196388834885421525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A060101 (n + n) + a (n - 1)

end

end A059603.P18196388834885421525

namespace A059603

/-- `A060101(n+n)+a(n-1)` -/
def P18196388834885421525.Spec : Prop :=
  ∀ n, P18196388834885421525.a n = A059603 n

end A059603

/-! ## A059603.P2967629184182784872

`∑[record[A060101(A014681(n))]]`
-/

namespace A059603.P2967629184182784872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060101 (A014681 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059603.P2967629184182784872

namespace A059603

/-- `∑[record[A060101(A014681(n))]]` -/
def P2967629184182784872.Spec : Prop :=
  ∀ n, P2967629184182784872.a n = A059603 n

end A059603

/-! ## A059603.P17308899952048595667

`∑[record[A060101(A068527(n))]]`
-/

namespace A059603.P17308899952048595667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060101 (A068527 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059603.P17308899952048595667

namespace A059603

/-- `∑[record[A060101(A068527(n))]]` -/
def P17308899952048595667.Spec : Prop :=
  ∀ n, P17308899952048595667.a n = A059603 n

end A059603

/-!
# A059605: a(n) = (1/3!)*(n^3 + 24*n^2 + 107*n + 90), compare A059604.

The programs for A059605, the canonical program `A059605.P7097613643047911544` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059605 has offset 0).

The definition of A059605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059605.P7097613643047911544

`1/6*(n^3+24*n²+107*n+90)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059605

/-- `1/6*(n^3+24*n²+107*n+90)` -/
def P7097613643047911544.Spec : Prop :=
  ∀ n, P7097613643047911544.a n = (A059605 n : ℚ)

end A059605

/-! ## A059605.P5733651182689986158

`∑[(n+4)²-A133263(n)]`
-/

namespace A059605.P5733651182689986158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 4) ^ 2 : ℤ) - A133263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059605.P5733651182689986158

namespace A059605

/-- `∑[(n+4)²-A133263(n)]` -/
def P5733651182689986158.Spec : Prop :=
  ∀ n, P5733651182689986158.a n = A059605 n

end A059605

/-! ## A059605.P189731328371964522

`A005337(n+8)-A005563(n)`
-/

namespace A059605.P189731328371964522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005337 (n + 8) - A005563 n

end

end A059605.P189731328371964522

namespace A059605

/-- `A005337(n+8)-A005563(n)` -/
def P189731328371964522.Spec : Prop :=
  ∀ n, P189731328371964522.a n = A059605 n

end A059605

/-! ## A059605.P11724273769975601486

`∑[A004273(n)+A000217(n+5)]`
-/

namespace A059605.P11724273769975601486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + A000217 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059605.P11724273769975601486

namespace A059605

/-- `∑[A004273(n)+A000217(n+5)]` -/
def P11724273769975601486.Spec : Prop :=
  ∀ n, P11724273769975601486.a n = A059605 n

end A059605

/-! ## A059605.P14703674808610301254

`∑[A008486(n)+A155212(n)+12]`
-/

namespace A059605.P14703674808610301254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A155212 n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059605.P14703674808610301254

namespace A059605

/-- `∑[A008486(n)+A155212(n)+12]` -/
def P14703674808610301254.Spec : Prop :=
  ∀ n, P14703674808610301254.a n = A059605 n

end A059605

/-! ## A059605.P2929173414669481861

`A028881(n+3)+A026054(n+3)`
-/

namespace A059605.P2929173414669481861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028881 (n + 3) + A026054 (n + 3)

end

end A059605.P2929173414669481861

namespace A059605

/-- `A028881(n+3)+A026054(n+3)` -/
def P2929173414669481861.Spec : Prop :=
  ∀ n, P2929173414669481861.a n = A059605 n

end A059605

/-! ## A059605.P6980726344422144706

`A082112(n+1)+A082047(n)-A082045(n)`
-/

namespace A059605.P6980726344422144706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082112 (n + 1) + (A082047 n - A082045 n)

end

end A059605.P6980726344422144706

namespace A059605

/-- `A082112(n+1)+A082047(n)-A082045(n)` -/
def P6980726344422144706.Spec : Prop :=
  ∀ n, P6980726344422144706.a n = A059605 n

end A059605

/-! ## A059605.P692568424924034036

`A082112(n+1)+A082107(n)-A082047(n)`
-/

namespace A059605.P692568424924034036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082112 (n + 1) + (A082107 n - A082047 n)

end

end A059605.P692568424924034036

namespace A059605

/-- `A082112(n+1)+A082107(n)-A082047(n)` -/
def P692568424924034036.Spec : Prop :=
  ∀ n, P692568424924034036.a n = A059605 n

end A059605

/-! ## A059605.P10258108287196150599

`A082112(n+1)+A082114(n)-A082107(n)`
-/

namespace A059605.P10258108287196150599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082112 (n + 1) + (A082114 n - A082107 n)

end

end A059605.P10258108287196150599

namespace A059605

/-- `A082112(n+1)+A082114(n)-A082107(n)` -/
def P10258108287196150599.Spec : Prop :=
  ∀ n, P10258108287196150599.a n = A059605 n

end A059605

/-! ## A059605.P11767129149451810005

`A159920(n+3)+A052905(n)-A005581(n)`
-/

namespace A059605.P11767129149451810005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159920 (n + 3) + (A052905 n - A005581 n)

end

end A059605.P11767129149451810005

namespace A059605

/-- `A159920(n+3)+A052905(n)-A005581(n)` -/
def P11767129149451810005.Spec : Prop :=
  ∀ n, P11767129149451810005.a n = A059605 n

end A059605

/-! ## A059605.P15497579517224107111

`A055998(n+1)+A101853(n+1)+A051936(n+5)`
-/

namespace A059605.P15497579517224107111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (n + 1) + (A101853 (n + 1) + A051936 (n + 5))

end

end A059605.P15497579517224107111

namespace A059605

/-- `A055998(n+1)+A101853(n+1)+A051936(n+5)` -/
def P15497579517224107111.Spec : Prop :=
  ∀ n, P15497579517224107111.a n = A059605 n

end A059605

/-! ## A059605.P3317719681423165684

`∑[A027379(n)+A016897(n+2)]`
-/

namespace A059605.P3317719681423165684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n + A016897 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059605.P3317719681423165684

namespace A059605

/-- `∑[A027379(n)+A016897(n+2)]` -/
def P3317719681423165684.Spec : Prop :=
  ∀ n, P3317719681423165684.a n = A059605 n

end A059605

/-! ## A059605.P16533119128700038836

`∑[A004277(n)+A000096(n+4)]`
-/

namespace A059605.P16533119128700038836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + A000096 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059605.P16533119128700038836

namespace A059605

/-- `∑[A004277(n)+A000096(n+4)]` -/
def P16533119128700038836.Spec : Prop :=
  ∀ n, P16533119128700038836.a n = A059605 n

end A059605

/-! ## A059605.P1073700302175703996

`∑[A253145(n+4)+A004273(n)]`
-/

namespace A059605.P1073700302175703996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (n + 4) + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059605.P1073700302175703996

namespace A059605

/-- `∑[A253145(n+4)+A004273(n)]` -/
def P1073700302175703996.Spec : Prop :=
  ∀ n, P1073700302175703996.a n = A059605 n

end A059605

/-! ## A059605.P5856980972208466198

`∑[A161680(n+6)+A004273(n)]`
-/

namespace A059605.P5856980972208466198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 6) + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059605.P5856980972208466198

namespace A059605

/-- `∑[A161680(n+6)+A004273(n)]` -/
def P5856980972208466198.Spec : Prop :=
  ∀ n, P5856980972208466198.a n = A059605 n

end A059605

/-! ## A059605.P9296116653573279068

`∑[A179865(n+6)+A004273(n)]`
-/

namespace A059605.P9296116653573279068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 6) + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059605.P9296116653573279068

namespace A059605

/-- `∑[A179865(n+6)+A004273(n)]` -/
def P9296116653573279068.Spec : Prop :=
  ∀ n, P9296116653573279068.a n = A059605 n

end A059605

/-!
# A059606: Expansion of (1/2)*(exp(2*x)-1)*exp(exp(x)-1).

The programs for A059606, there is no canonical definition to state claims against.
-/

/-! ## A059606.P14147316776385059446

`A056862(∑[n+1]+1)`
-/

namespace A059606.P14147316776385059446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056862 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A059606.P14147316776385059446

/-! ## A059606.P1401041109018749256

`A033452(n)-A003128(n)`
-/

namespace A059606.P1401041109018749256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033452 n - A003128 n

end

end A059606.P1401041109018749256

/-! ## A059606.P18038711207562375210

`A087649(n)-A000110(n)`
-/

namespace A059606.P18038711207562375210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087649 n - A000110 n

end

end A059606.P18038711207562375210

/-! ## A059606.P6326966956349310934

`A005493(n)-A087649(n)`
-/

namespace A059606.P6326966956349310934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005493 n - A087649 n

end

end A059606.P6326966956349310934

/-! ## A059606.P1871627714313998498

`A003128(n)+Δ[A000110(n)]`
-/

namespace A059606.P1871627714313998498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003128 n + (f1 (n + 1) - f1 n)

end

end A059606.P1871627714313998498

/-! ## A059606.P1150965619747356515

`record[A346426(n)-A346500(n)]`
-/

namespace A059606.P1150965619747356515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 n - A346500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059606.P1150965619747356515

/-! ## A059606.P4648163013078551938

`A087648(n)-A000110(n+1)`
-/

namespace A059606.P4648163013078551938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087648 n - A000110 (n + 1)

end

end A059606.P4648163013078551938

/-! ## A059606.P1840245205521342204

`(A005493(n)-A000110(n))/2`
-/

namespace A059606.P1840245205521342204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005493 n - A000110 n : ℚ) / 2

end

end A059606.P1840245205521342204

/-! ## A059606.P2649059672580250325

`(A033452(n)+Δ[A000110(n)])/2`
-/

namespace A059606.P2649059672580250325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033452 n + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A059606.P2649059672580250325

/-! ## A059606.P7853270851760762475

`Δ[A000110(n)]+A226506(n)/2`
-/

namespace A059606.P7853270851760762475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A226506 n : ℚ) / 2

end

end A059606.P7853270851760762475

/-!
# A059607: As an upper right triangle, number of distinct partitions of n where the highest part is k (0<=k<=n).

The programs for A059607, there is no canonical definition to state claims against.
-/

/-! ## A059607.P11895226854141256941

`C(A059619(n), A176088(n))`
-/

namespace A059607.P11895226854141256941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059619 n).toNat (A176088 n).toNat

end

end A059607.P11895226854141256941

/-! ## A059607.P13864621432587442561

`floor(A059619(char[1]+n)/A176088(n))`
-/

namespace A059607.P13864621432587442561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059619 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / (A176088 n : ℚ)⌋

end

end A059607.P13864621432587442561

/-! ## A059607.P17549371134665807138

`A111338(floor(A059619(n)/A176088(n))+1)`
-/

namespace A059607.P17549371134665807138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111338 (⌊(A059619 n : ℚ) / (A176088 n : ℚ)⌋ + 1).toNat

end

end A059607.P17549371134665807138

/-! ## A059607.P166423615425623338

`A156552(floor(A059619(n)/A176088(n))+1)`
-/

namespace A059607.P166423615425623338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (⌊(A059619 n : ℚ) / (A176088 n : ℚ)⌋ + 1).toNat

end

end A059607.P166423615425623338

/-! ## A059607.P945958925432056936

`A006530(floor(A059619(n)/A176088(n))+1)-1`
-/

namespace A059607.P945958925432056936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (⌊(A059619 n : ℚ) / (A176088 n : ℚ)⌋ + 1).toNat - 1

end

end A059607.P945958925432056936

/-! ## A059607.P337342527399672078

`A020639(floor(A059619(n)/A176088(n))+1)-1`
-/

namespace A059607.P337342527399672078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (⌊(A059619 n : ℚ) / (A176088 n : ℚ)⌋ + 1).toNat - 1

end

end A059607.P337342527399672078

/-! ## A059607.P10683698998069307219

`A004737(floor(A059619(n)/A176088(n))+10)-1`
-/

namespace A059607.P10683698998069307219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (⌊(A059619 n : ℚ) / (A176088 n : ℚ)⌋ + 10).toNat - 1

end

end A059607.P10683698998069307219

/-! ## A059607.P13280603631528923199

`A240086(ceil((A059619(n)/A176088(n)+1)²/3)²)`
-/

namespace A059607.P13280603631528923199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240086 (⌈((A059619 n : ℚ) / (A176088 n : ℚ) + 1) ^ 2 / 3⌉ ^ 2).toNat

end

end A059607.P13280603631528923199

/-! ## A059607.P16479797572501461130

`or(A010052(A154367(n+1)), A089198(n))`
-/

namespace A059607.P16479797572501461130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 (A154367 (n + 1)).toNat) (A089198 n)

end

end A059607.P16479797572501461130

/-!
# A059608: Numbers k such that 2^k - 5 is prime.

The programs for A059608, there is no canonical definition to state claims against.
-/

/-! ## A059608.P10358422404918789279

`log2(A156560(n+1)+5)`
-/

namespace A059608.P10358422404918789279
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A156560 (n + 1) + 5 : ℝ)

end

end A059608.P10358422404918789279

/-! ## A059608.P7115430724709608328

`log2(∩[A181741(n+1), A185647(n)+1]+5)`
-/

namespace A059608.P7115430724709608328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185647 n + 1

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 5 : ℝ)

end

end A059608.P7115430724709608328

/-! ## A059608.P10561970945489297680

`log2(∩[A181741(n+1), A192161(n+1)]+5)`
-/

namespace A059608.P10561970945489297680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192161 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 5 : ℝ)

end

end A059608.P10561970945489297680

/-! ## A059608.P1128370292931991673

`A068509(A187100(n+2)+1)`
-/

namespace A059608.P1128370292931991673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068509 (A187100 (n + 2) + 1).toNat

end

end A059608.P1128370292931991673

/-! ## A059608.P7885262989560909233

`A002202(record[A145339(n+1)])+2`
-/

namespace A059608.P7885262989560909233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2

end

end A059608.P7885262989560909233

/-!
# A059609: Numbers k such that 2^k - 7 is prime.

The programs for A059609, there is no canonical definition to state claims against.
-/

/-! ## A059609.P8489120468065820501

`2*A138578(n+1)-7`
-/

namespace A059609.P8489120468065820501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138578 (n + 1) - 7

end

end A059609.P8489120468065820501

/-! ## A059609.P9461898882847598648

`A004274(A138578(n+1)-2)`
-/

namespace A059609.P9461898882847598648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A138578 (n + 1) - 2).toNat

end

end A059609.P9461898882847598648

/-! ## A059609.P2636244622046467664

`A004281(A138578(n+1)-2)`
-/

namespace A059609.P2636244622046467664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 (A138578 (n + 1) - 2).toNat

end

end A059609.P2636244622046467664

/-!
# A059611: Numbers k such that 2^k - 17 is prime.

The programs for A059611, there is no canonical definition to state claims against.
-/

/-! ## A059611.P4956788555294725438

`lt[A000217(A059885(3*n+5)), A218356(n+1)]`
-/

namespace A059611.P4956788555294725438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A059885 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059611.P4956788555294725438

/-! ## A059611.P7918293809229532697

`record[and(A044370(n+1), A268575(n))]`
-/

namespace A059611.P7918293809229532697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044370 (n + 1)) (A268575 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059611.P7918293809229532697

/-! ## A059611.P5745698964224216036

`A015937(A309093(2*(n+1))+2)`
-/

namespace A059611.P5745698964224216036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015937 (A309093 (2 * (n + 1)) + 2).toNat

end

end A059611.P5745698964224216036

/-! ## A059611.P6216057746143840049

`record[A074833(n+3)-A194602(n+1)]`
-/

namespace A059611.P6216057746143840049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074833 (n + 3) - A194602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059611.P6216057746143840049

/-! ## A059611.P16586780866239683307

`A337812(A342951(n+2))`
-/

namespace A059611.P16586780866239683307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337812 (A342951 (n + 2)).toNat

end

end A059611.P16586780866239683307

/-!
# A059613: Numbers k such that 5^k - 4 is prime.

The programs for A059613, there is no canonical definition to state claims against.
-/

/-! ## A059613.P5898192694693989233

`eq[4, A013605(n+1)]+1`
-/

namespace A059613.P5898192694693989233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013605 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A059613.P5898192694693989233

/-! ## A059613.P735030906692614492

`eq[4, A013605(n^(n%2))]`
-/

namespace A059613.P735030906692614492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013605 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059613.P735030906692614492

/-! ## A059613.P17925922190124261947

`eq[4, A013605(A028310(n))]`
-/

namespace A059613.P17925922190124261947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013605 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059613.P17925922190124261947

/-! ## A059613.P9192583055761115034

`A004442(eq[4, A013605(n+1)])`
-/

namespace A059613.P9192583055761115034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059613.P9192583055761115034

/-!
# A059614: Numbers k such that 6^k - 5 is prime.

The programs for A059614, there is no canonical definition to state claims against.
-/

/-! ## A059614.P10141726729397049825

`eq[5, A182262(n+1)]+1`
-/

namespace A059614.P10141726729397049825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182262 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A059614.P10141726729397049825

/-! ## A059614.P7968433677180054954

`eq[5, A182262(A028310(n))]`
-/

namespace A059614.P7968433677180054954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182262 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059614.P7968433677180054954

/-! ## A059614.P15555926302875804257

`A020725(eq[5, A182262(n+1)])`
-/

namespace A059614.P15555926302875804257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059614.P15555926302875804257

/-! ## A059614.P6859175964335253738

`eq[5, A013607(n+1)]+1`
-/

namespace A059614.P6859175964335253738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013607 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A059614.P6859175964335253738

/-! ## A059614.P4308080126554216512

`A020725(eq[5, A013607(n+1)])`
-/

namespace A059614.P4308080126554216512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059614.P4308080126554216512

/-!
# A059615: a(n) is the number of non-parallel lines determined by a pair of vertices (extreme points) in the polytope of real n X n doubly stochastic matrices. The vertices are the n! permutation matrices.

The programs for A059615, there is no canonical definition to state claims against.
-/

/-! ## A059615.P1201125364237774466

`A000217(n)*A004396(A139017(n))`
-/

namespace A059615.P1201125364237774466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A004396 (A139017 n).toNat

end

end A059615.P1201125364237774466

/-!
# A059616: Numerator of n*(n-1)/(8*(2*n+1)).

The programs for A059616, the canonical program `A059616.P15840929490615819020` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059616 has offset 0).

The definition of A059616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059616.P5848265163839621944

`C(n, 2)/gcd(C(n, 2), A281813(n))`
-/

namespace A059616.P5848265163839621944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℚ) / (Int.gcd (Nat.choose n 2 : ℤ) (A281813 n) : ℚ)

end

end A059616.P5848265163839621944

namespace A059616

/-- `C(n, 2)/gcd(C(n, 2), A281813(n))` -/
def P5848265163839621944.Spec : Prop :=
  ∀ n, P5848265163839621944.a n = (A059616 n : ℚ)

end A059616

/-! ## A059616.P17500782067462844237

`lcm(8, n)/8*A051712(A028310(n))`
-/

namespace A059616.P17500782067462844237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 8 n : ℚ) / 8 * (A051712 (A028310 n).toNat : ℚ)

end

end A059616.P17500782067462844237

namespace A059616

/-- `lcm(8, n)/8*A051712(A028310(n))` -/
def P17500782067462844237.Spec : Prop :=
  ∀ n, P17500782067462844237.a n = (A059616 n : ℚ)

end A059616

/-! ## A059616.P8489535397098546506

`A059617(n)/A017113(n)*C(n, 2)`
-/

namespace A059616.P8489535397098546506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059617 n : ℚ) / (A017113 n : ℚ) * (Nat.choose n 2 : ℚ)

end

end A059616.P8489535397098546506

namespace A059616

/-- `A059617(n)/A017113(n)*C(n, 2)` -/
def P8489535397098546506.Spec : Prop :=
  ∀ n, P8489535397098546506.a n = (A059616 n : ℚ)

end A059616

/-! ## A059616.P15840929490615819020

`A051712(A028310(n))*A106609(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A059616

/-- `A051712(A028310(n))*A106609(n)` -/
def P15840929490615819020.Spec : Prop :=
  ∀ n, P15840929490615819020.a n = A059616 n

theorem P15840929490615819020.correct : P15840929490615819020.Spec := by
  intro n
  simp only [A059616]

end A059616

/-! ## A059616.P603365560912848052

`A161680(n)/gcd(A017113(n), A161680(n))`
-/

namespace A059616.P603365560912848052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161680 n : ℚ) / (Int.gcd (A017113 n) (A161680 n) : ℚ)

end

end A059616.P603365560912848052

namespace A059616

/-- `A161680(n)/gcd(A017113(n), A161680(n))` -/
def P603365560912848052.Spec : Prop :=
  ∀ n, P603365560912848052.a n = (A059616 n : ℚ)

end A059616

/-! ## A059616.P937117623327086472

`A026741(gcd(C(n, 2), A000332(n)))`
-/

namespace A059616.P937117623327086472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.gcd (Nat.choose n 2 : ℤ) (A000332 n))

end

end A059616.P937117623327086472

namespace A059616

/-- `A026741(gcd(C(n, 2), A000332(n)))` -/
def P937117623327086472.Spec : Prop :=
  ∀ n, P937117623327086472.a n = A059616 n

end A059616

/-! ## A059616.P13902459342200409943

`A026741(gcd(C(n, 4), A161680(n)))`
-/

namespace A059616.P13902459342200409943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.gcd (Nat.choose n 4 : ℤ) (A161680 n))

end

end A059616.P13902459342200409943

namespace A059616

/-- `A026741(gcd(C(n, 4), A161680(n)))` -/
def P13902459342200409943.Spec : Prop :=
  ∀ n, P13902459342200409943.a n = A059616 n

end A059616

/-! ## A059616.P2255857885217098331

`lcm(A051724(C(n, 2)), A106617(n))`
-/

namespace A059616.P2255857885217098331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051724 (Nat.choose n 2)) (A106617 n)

end

end A059616.P2255857885217098331

namespace A059616

/-- `lcm(A051724(C(n, 2)), A106617(n))` -/
def P2255857885217098331.Spec : Prop :=
  ∀ n, (P2255857885217098331.a n : ℤ) = A059616 n

end A059616

/-! ## A059616.P6923875335551287089

`A051724(A161680(n))*A109007(n)`
-/

namespace A059616.P6923875335551287089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A161680 n).toNat * A109007 n

end

end A059616.P6923875335551287089

namespace A059616

/-- `A051724(A161680(n))*A109007(n)` -/
def P6923875335551287089.Spec : Prop :=
  ∀ n, P6923875335551287089.a n = A059616 n

end A059616

/-! ## A059616.P1413958592256501963

`A026741(gcd(A000332(n), A002415(n)))`
-/

namespace A059616.P1413958592256501963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.gcd (A000332 n) (A002415 n))

end

end A059616.P1413958592256501963

namespace A059616

/-- `A026741(gcd(A000332(n), A002415(n)))` -/
def P1413958592256501963.Spec : Prop :=
  ∀ n, P1413958592256501963.a n = A059616 n

end A059616

/-!
# A059617: Denominator of n*(n-1)/(8*(2*n+1)).

The programs for A059617, the canonical program `A059617.P11277497583377156099` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059617 has offset 0).

The definition of A059617 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059617.P4782238756453971636

`A281813(n)/gcd(C(n, 2), A281813(n))`
-/

namespace A059617.P4782238756453971636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281813 n : ℚ) / (Int.gcd (Nat.choose n 2 : ℤ) (A281813 n) : ℚ)

end

end A059617.P4782238756453971636

namespace A059617

/-- `A281813(n)/gcd(C(n, 2), A281813(n))` -/
def P4782238756453971636.Spec : Prop :=
  ∀ n, P4782238756453971636.a n = (A059617 n : ℚ)

end A059617

/-! ## A059617.P11277497583377156099

`A146535(n+1)*A176895(floor(n/2))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059617

/-- `A146535(n+1)*A176895(floor(n/2))` -/
def P11277497583377156099.Spec : Prop :=
  ∀ n, P11277497583377156099.a n = A059617 n

theorem P11277497583377156099.correct : P11277497583377156099.Spec := by
  intro n
  simp only [A059617]

end A059617

/-! ## A059617.P4320557973473752824

`A017113(n)/gcd(A017113(n), A161680(n))`
-/

namespace A059617.P4320557973473752824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017113 n : ℚ) / (Int.gcd (A017113 n) (A161680 n) : ℚ)

end

end A059617.P4320557973473752824

namespace A059617

/-- `A017113(n)/gcd(A017113(n), A161680(n))` -/
def P4320557973473752824.Spec : Prop :=
  ∀ n, P4320557973473752824.a n = (A059617 n : ℚ)

end A059617

/-! ## A059617.P12536410690650075427

`A051724(2*n+1)*A176895(A161680(n))`
-/

namespace A059617.P12536410690650075427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (2 * n + 1) * A176895 (A161680 n).toNat

end

end A059617.P12536410690650075427

namespace A059617

/-- `A051724(2*n+1)*A176895(A161680(n))` -/
def P12536410690650075427.Spec : Prop :=
  ∀ n, P12536410690650075427.a n = A059617 n

end A059617

/-! ## A059617.P14413959984038718331

`lcm(A051724(n+1+n), A176895(A161680(n)))`
-/

namespace A059617.P14413959984038718331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051724 (n + 1 + n)) (A176895 (A161680 n).toNat)

end

end A059617.P14413959984038718331

namespace A059617

/-- `lcm(A051724(n+1+n), A176895(A161680(n)))` -/
def P14413959984038718331.Spec : Prop :=
  ∀ n, (P14413959984038718331.a n : ℤ) = A059617 n

end A059617

/-! ## A059617.P8237536376351850983

`lcm(3, Δ[n²])/3*A176895(A055999(n))`
-/

namespace A059617.P8237536376351850983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 3 * (A176895 (A055999 n).toNat : ℚ)

end

end A059617.P8237536376351850983

namespace A059617

/-- `lcm(3, Δ[n²])/3*A176895(A055999(n))` -/
def P8237536376351850983.Spec : Prop :=
  ∀ n, P8237536376351850983.a n = (A059617 n : ℚ)

end A059617

/-! ## A059617.P17551944087573933662

`(2*n+1)/∏{p}[n+2, A014963(3*#)]*A176895(A055999(n))`
-/

namespace A059617.P17551944087573933662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), A014963 (3 * p) : ℤ) : ℚ) * (A176895 (A055999 n).toNat : ℚ)

end

end A059617.P17551944087573933662

namespace A059617

/-- `(2*n+1)/∏{p}[n+2, A014963(3*#)]*A176895(A055999(n))` -/
def P17551944087573933662.Spec : Prop :=
  ∀ n, P17551944087573933662.a n = (A059617 n : ℚ)

end A059617

/-!
# A059618: Number of strongly unimodal partitions of n (strongly unimodal means strictly increasing then strictly decreasing).

The programs for A059618, there is no canonical definition to state claims against.
-/

/-! ## A059618.P16507638708423044112

`A059619(∑[n])`
-/

namespace A059618.P16507638708423044112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059619 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059618.P16507638708423044112

/-! ## A059618.P12247771168590258890

`or(char[2], A059619(A000217(n)))`
-/

namespace A059618.P12247771168590258890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A059619 (A000217 n).toNat)

end

end A059618.P12247771168590258890

/-! ## A059618.P10653079769083287686

`A059619(A000217(n))%A139582(n)`
-/

namespace A059618.P10653079769083287686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059619 (A000217 n).toNat) (A139582 n)

end

end A059618.P10653079769083287686

/-! ## A059618.P18141992029297397393

`A059619(A000217(n))+A000007(n+1)`
-/

namespace A059618.P18141992029297397393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059619 (A000217 n).toNat + A000007 (n + 1)

end

end A059618.P18141992029297397393

/-! ## A059618.P11836874493548457726

`A059619(A000217(n))+A000038(n+1)`
-/

namespace A059618.P11836874493548457726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059619 (A000217 n).toNat + A000038 (n + 1)

end

end A059618.P11836874493548457726

/-! ## A059618.P5586868665794610252

`A057427(n+1)*A059619(A000217(n))`
-/

namespace A059618.P5586868665794610252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A059619 (A000217 n).toNat

end

end A059618.P5586868665794610252

/-! ## A059618.P14530121030361903854

`A008683(A039833(n+1))*A059619(A000217(n))`
-/

namespace A059618.P14530121030361903854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A039833 (n + 1)).toNat * A059619 (A000217 n).toNat

end

end A059618.P14530121030361903854

/-!
# A059620: Colors of the 88 keys of the standard piano: white keys = 0, black keys = 1, start with A0 = the 0th key.

The programs for A059620, the canonical program `A059620.P6590344707801180169` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059620 has offset 0).

The definition of A059620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059620.P6590344707801180169

`floor((5*n+7)/12)-floor((5*n+2)/12)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059620

/-- `floor((5*n+7)/12)-floor((5*n+2)/12)` -/
def P6590344707801180169.Spec : Prop :=
  ∀ n, P6590344707801180169.a n = A059620 n

theorem P6590344707801180169.correct : P6590344707801180169.Spec := by
  intro n
  simp only [A059620]

end A059620

/-!
# A059622: Numbers k such that (5*3^k - 7)/2 is prime.

The programs for A059622, there is no canonical definition to state claims against.
-/

/-! ## A059622.P11542642983352305569

`4*A239933(a(n-1))` with `a(0)=2, a(1)=4`
-/

namespace A059622.P11542642983352305569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  4 * A239933 (a (n - 1)).toNat

end

end A059622.P11542642983352305569

/-! ## A059622.P17247737694513537281

`A008574(n)*A358105(A020330(n+1))`
-/

namespace A059622.P17247737694513537281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n * A358105 (A020330 (n + 1)).toNat

end

end A059622.P17247737694513537281

/-! ## A059622.P9009752118690156221

`A000005(A000556(n))*A068578(2*n+1)`
-/

namespace A059622.P9009752118690156221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000556 n).toNat * A068578 (2 * n + 1)

end

end A059622.P9009752118690156221

/-!
# A059623: As upper right triangle, number of weakly unimodal partitions of n where initial part is k (n >= k >= 1).

The programs for A059623, there is no canonical definition to state claims against.
-/

/-! ## A059623.P9993266004168933389

`A367194(A388547(n+1))`
-/

namespace A059623.P9993266004168933389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367194 (A388547 (n + 1)).toNat

end

end A059623.P9993266004168933389

/-! ## A059623.P18373327067997666344

`A350029(2*A144018(n+1))`
-/

namespace A059623.P18373327067997666344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350029 (2 * A144018 (n + 1)).toNat

end

end A059623.P18373327067997666344

/-! ## A059623.P945550266823713054

`A000009(A071417(n)^A278657(n))`
-/

namespace A059623.P945550266823713054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (SequenceMachineLib.roundAway ((A071417 n : ℚ) ^ (A278657 n : ℤ))).toNat

end

end A059623.P945550266823713054

/-! ## A059623.P2929983742396870963

`A140997(n+1)-A010057(A022367(n))`
-/

namespace A059623.P2929983742396870963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 (n + 1) - A010057 (A022367 n).toNat

end

end A059623.P2929983742396870963

/-! ## A059623.P13046924456223721966

`A064358(A114423(n))`
-/

namespace A059623.P13046924456223721966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064358 (A114423 n).toNat

end

end A059623.P13046924456223721966

/-!
# A059624: Expansion of (3+10*x+3*x^2)/(1-x)^12.

The programs for A059624, the canonical program `A059624.P2258279082146612919` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059624 has offset 0).

The definition of A059624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059624.P2258279082146612919

`∑[A060559(n)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A059624

/-- `∑[A060559(n)]` -/
def P2258279082146612919.Spec : Prop :=
  ∀ n, P2258279082146612919.a n = A059624 n

theorem P2258279082146612919.correct : P2258279082146612919.Spec := by
  intro n
  simp only [A059624]

end A059624

/-! ## A059624.P2547391346832879461

`A038166(Δ[n²])/2`
-/

namespace A059624.P2547391346832879461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038166 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A059624.P2547391346832879461

namespace A059624

/-- `A038166(Δ[n²])/2` -/
def P2547391346832879461.Spec : Prop :=
  ∀ n, P2547391346832879461.a n = (A059624 n : ℚ)

end A059624

/-! ## A059624.P4537516828245593642

`∑[A060101(Δ[n²])/2]`
-/

namespace A059624.P4537516828245593642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060101 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059624.P4537516828245593642

namespace A059624

/-- `∑[A060101(Δ[n²])/2]` -/
def P4537516828245593642.Spec : Prop :=
  ∀ n, P4537516828245593642.a n = (A059624 n : ℚ)

end A059624

/-! ## A059624.P7935042669260146774

`floor(A038166(2*n+1)/2)`
-/

namespace A059624.P7935042669260146774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038166 (2 * n + 1) : ℚ) / 2⌋

end

end A059624.P7935042669260146774

namespace A059624

/-- `floor(A038166(2*n+1)/2)` -/
def P7935042669260146774.Spec : Prop :=
  ∀ n, P7935042669260146774.a n = A059624 n

end A059624

/-! ## A059624.P4537712253996681721

`∑[A060101(2*n+1)]/2`
-/

namespace A059624.P4537712253996681721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060101 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A059624.P4537712253996681721

namespace A059624

/-- `∑[A060101(2*n+1)]/2` -/
def P4537712253996681721.Spec : Prop :=
  ∀ n, P4537712253996681721.a n = (A059624 n : ℚ)

end A059624

/-!
# A059625: Eleventh column (m=10) of convolution triangle A059594.

The programs for A059625, there is no canonical definition to state claims against.
-/

/-! ## A059625.P16878303813847828997

`A060086(eq[11, A002262(n)])`
-/

namespace A059625.P16878303813847828997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059625.P16878303813847828997

/-! ## A059625.P2118562222955133888

`A060086(eq[12, A002260(n+1)])`
-/

namespace A059625.P2118562222955133888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059625.P2118562222955133888

/-! ## A059625.P9731494546576338574

`A060086(eq[23, A158405(n+1)])`
-/

namespace A059625.P9731494546576338574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059625.P9731494546576338574

/-! ## A059625.P9075862974075960450

`A060086(A034856(n+11)-(n-1))`
-/

namespace A059625.P9075862974075960450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (A034856 (n + 11) - ((n : ℤ) - 1)).toNat

end

end A059625.P9075862974075960450

/-! ## A059625.P10333146601556526234

`A060086(A000124(n+12)-(n+2))`
-/

namespace A059625.P10333146601556526234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060086 (A000124 (n + 12) - (n + 2 : ℤ)).toNat

end

end A059625.P10333146601556526234

/-!
# A059626: Generalized nim sum n + n + n in base 10; carryless multiplication 3 X n base 10.

The programs for A059626, there is no canonical definition to state claims against.
-/

/-! ## A059626.P8205399458954004373

`A059630(A055120(n))`
-/

namespace A059626.P8205399458954004373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059630 (A055120 n).toNat

end

end A059626.P8205399458954004373

/-! ## A059626.P11243845896660630861

`A059630(A059630(A059630(n)))`
-/

namespace A059626.P11243845896660630861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059630 (A059630 (A059630 n).toNat).toNat

end

end A059626.P11243845896660630861

/-! ## A059626.P415133253523424282

`A059692(A167614(n+2))`
-/

namespace A059626.P415133253523424282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 (A167614 (n + 2)).toNat

end

end A059626.P415133253523424282

/-! ## A059626.P5741376378155967918

`A059692(eq[3, A002262(n)])`
-/

namespace A059626.P5741376378155967918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059626.P5741376378155967918

/-! ## A059626.P532040228428603598

`A059692(A000217(n+3)+3)`
-/

namespace A059626.P532040228428603598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 (A000217 (n + 3) + 3).toNat

end

end A059626.P532040228428603598

/-! ## A059626.P13854090008152433805

`A059692(A055998(n+1)+6)`
-/

namespace A059626.P13854090008152433805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 (A055998 (n + 1) + 6).toNat

end

end A059626.P13854090008152433805

/-! ## A059626.P12858156325398915001

`A059692(eq[3, A025581(n)])`
-/

namespace A059626.P12858156325398915001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059626.P12858156325398915001

/-!
# A059627: Generalized nim sum n + n + n + n in base 10; carryless multiplication 4 X n base 10.

The programs for A059627, there is no canonical definition to state claims against.
-/

/-! ## A059627.P10242882832123295507

`A004520(A004520(n))`
-/

namespace A059627.P10242882832123295507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 (A004520 n).toNat

end

end A059627.P10242882832123295507

/-! ## A059627.P1656168837986047594

`A059629(A055120(n))`
-/

namespace A059627.P1656168837986047594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059629 (A055120 n).toNat

end

end A059627.P1656168837986047594

/-! ## A059627.P16903899016089185988

`A059631(A059626(n))`
-/

namespace A059627.P16903899016089185988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059631 (A059626 n).toNat

end

end A059627.P16903899016089185988

/-! ## A059627.P3991592973933410727

`A059630(2*A106747(2*n))`
-/

namespace A059627.P3991592973933410727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059630 (2 * A106747 (2 * n)).toNat

end

end A059627.P3991592973933410727

/-! ## A059627.P11654004334404735503

`A059630(2*n-A103181(2*n))`
-/

namespace A059627.P11654004334404735503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059630 ((2 * n : ℤ) - A103181 (2 * n)).toNat

end

end A059627.P11654004334404735503

/-!
# A059628: Carryless multiplication 5 X n base 10.

The programs for A059628, there is no canonical definition to state claims against.
-/

/-! ## A059628.P4283467118184125486

`5*A103181(n)`
-/

namespace A059628.P4283467118184125486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A103181 n

end

end A059628.P4283467118184125486

/-!
# A059629: Carryless multiplication 6 X n base 10.

The programs for A059629, there is no canonical definition to state claims against.
-/

/-! ## A059629.P17649052803750633974

`A059626(A004520(n))`
-/

namespace A059629.P17649052803750633974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059626 (A004520 n).toNat

end

end A059629.P17649052803750633974

/-! ## A059629.P3631160258054968770

`A059627(A055120(n))`
-/

namespace A059629.P3631160258054968770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059627 (A055120 n).toNat

end

end A059629.P3631160258054968770

/-! ## A059629.P9385876256565553852

`A059627(A059627(n))`
-/

namespace A059629.P9385876256565553852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059627 (A059627 n).toNat

end

end A059629.P9385876256565553852

/-! ## A059629.P1272105461620658045

`A059631(A059630(n))`
-/

namespace A059629.P1272105461620658045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059631 (A059630 n).toNat

end

end A059629.P1272105461620658045

/-! ## A059629.P12708600793104780456

`A059631(A004520(2*n-n))`
-/

namespace A059629.P12708600793104780456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059631 (A004520 (2 * n - n)).toNat

end

end A059629.P12708600793104780456

/-! ## A059629.P10506297505727516189

`A059626(2*A106747(2*n))`
-/

namespace A059629.P10506297505727516189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059626 (2 * A106747 (2 * n)).toNat

end

end A059629.P10506297505727516189

/-! ## A059629.P4820326519936744444

`A059626(2*n-A103181(2*n))`
-/

namespace A059629.P4820326519936744444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059626 ((2 * n : ℤ) - A103181 (2 * n)).toNat

end

end A059629.P4820326519936744444

/-! ## A059629.P15962079196484596169

`A059626(A169894((n+1)*2*n))`
-/

namespace A059629.P15962079196484596169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059626 (A169894 ((n + 1) * (2 * n))).toNat

end

end A059629.P15962079196484596169

/-!
# A059630: Carryless multiplication 7 X n base 10.

The programs for A059630, there is no canonical definition to state claims against.
-/

/-! ## A059630.P1259674733217145349

`A059626(A055120(n))`
-/

namespace A059630.P1259674733217145349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059626 (A055120 n).toNat

end

end A059630.P1259674733217145349

/-! ## A059630.P10365415155007699535

`A059626(A059626(A059626(n)))`
-/

namespace A059630.P10365415155007699535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059626 (A059626 (A059626 n).toNat).toNat

end

end A059630.P10365415155007699535

/-! ## A059630.P9587694247200104498

`A059692(eq[7, A002262(n)])`
-/

namespace A059630.P9587694247200104498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059630.P9587694247200104498

/-! ## A059630.P876017589553447709

`A059692(A167499(n+6)+2)`
-/

namespace A059630.P876017589553447709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 (A167499 (n + 6) + 2).toNat

end

end A059630.P876017589553447709

/-! ## A059630.P367556257528313384

`A059692(eq[8, A002260(n+1)])`
-/

namespace A059630.P367556257528313384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059630.P367556257528313384

/-! ## A059630.P4669386230510748987

`A059692(eq[8, A134868(n+1)])`
-/

namespace A059630.P4669386230510748987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059630.P4669386230510748987

/-! ## A059630.P16676018983387150602

`A059692(eq[8, A135223(n+1)])`
-/

namespace A059630.P16676018983387150602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059630.P16676018983387150602

/-! ## A059630.P4148762675896153871

`A059692(eq[7, A025581(n)])`
-/

namespace A059630.P4148762675896153871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059630.P4148762675896153871

/-! ## A059630.P1888002351626613292

`A059692(eq[8, A193739(n)])`
-/

namespace A059630.P1888002351626613292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059630.P1888002351626613292

/-! ## A059630.P17468105884030950901

`A059692(eq[8, A004736(n+1)])`
-/

namespace A059630.P17468105884030950901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059630.P17468105884030950901

/-!
# A059631: Carryless multiplication 8 X n base 10.

The programs for A059631, there is no canonical definition to state claims against.
-/

/-! ## A059631.P2322391735200949480

`A055120(A004520(n))`
-/

namespace A059631.P2322391735200949480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A004520 n).toNat

end

end A059631.P2322391735200949480

/-! ## A059631.P2870006697934696463

`A004520(A059627(n))`
-/

namespace A059631.P2870006697934696463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 (A059627 n).toNat

end

end A059631.P2870006697934696463

/-! ## A059631.P18139260567439800783

`A059629(A059626(n))`
-/

namespace A059631.P18139260567439800783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059629 (A059626 n).toNat

end

end A059631.P18139260567439800783

/-! ## A059631.P14721868524604232578

`A059627(A059630(n))`
-/

namespace A059631.P14721868524604232578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059627 (A059630 n).toNat

end

end A059631.P14721868524604232578

/-! ## A059631.P3969456190185314598

`A059627(A059627(n)/2)`
-/

namespace A059631.P3969456190185314598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059627 (SequenceMachineLib.roundAway ((A059627 n : ℚ) / 2)).toNat

end

end A059631.P3969456190185314598

/-! ## A059631.P8665300514783686132

`A004520(A004520(A004520(A004488(A004488(n)))))`
-/

namespace A059631.P8665300514783686132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 (A004520 (A004520 (A004488 (A004488 n).toNat).toNat).toNat).toNat

end

end A059631.P8665300514783686132

/-! ## A059631.P7564040136337690985

`A048379(A103181(2*n)+A061601(2*n))`
-/

namespace A059631.P7564040136337690985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A103181 (2 * n) + A061601 (2 * n)).toNat

end

end A059631.P7564040136337690985

/-! ## A059631.P427601047941876231

`A055120(A169894((n+1)*2*n))`
-/

namespace A059631.P427601047941876231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A169894 ((n + 1) * (2 * n))).toNat

end

end A059631.P427601047941876231

/-!
# A059632: Carryless product 11 X n base 10.

The programs for A059632, there is no canonical definition to state claims against.
-/

/-! ## A059632.P4849442575520771339

`A226134(eq[A007953(n), A059995(n)])`
-/

namespace A059632.P4849442575520771339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226134 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A059632.P4849442575520771339

/-!
# A059633: Expansion of g.f. x^3/(1 - 2*x + x^3 - x^4).

The programs for A059633, the canonical program `A059633.P3179263404459243636` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059633 has offset 3).

The definition of A059633 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^3-x^4))` (program `A059633.P3179263404459243636`, by `A059633.P3179263404459243636.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059633.P3179263404459243636

`ogf(1/(1-2x+x^3-x^4))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059633

/-- `ogf(1/(1-2x+x^3-x^4))` -/
def P3179263404459243636.Spec : Prop :=
  ∀ n, P3179263404459243636.a n = A059633 (n + 3)

theorem P3179263404459243636.correct : P3179263404459243636.Spec := by
  intro n
  simp only [A059633, Nat.add_sub_cancel]

end A059633

/-! ## A059633.P425339394939945735

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`
-/

namespace A059633.P425339394939945735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 7] fun n a =>
  2 * a (n - 1) - a (n - 3) + a (n - 4)

end

end A059633.P425339394939945735

namespace A059633

/-- `2*a(n-1)-a(n-3)+a(n-4)` -/
def P425339394939945735.Spec : Prop :=
  ∀ n, P425339394939945735.a n = A059633 (n + 3)

end A059633

/-! ## A059633.P9850983706593782266

`A049856(n+5)-A049856(n+4)-A049856(n+3)+A049856(n+2)`
-/

namespace A059633.P9850983706593782266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (n + 5) - A049856 (n + 4) - A049856 (n + 3) + A049856 (n + 2)

end

end A059633.P9850983706593782266

namespace A059633

/-- `A049856(n+5)-A049856(n+4)-A049856(n+3)+A049856(n+2)` -/
def P9850983706593782266.Spec : Prop :=
  ∀ n, P9850983706593782266.a n = A059633 (n + 3)

end A059633

/-! ## A059633.P1262291778633250336

`round(a(n-1)+ϕ*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A059633.P1262291778633250336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.goldenRatio * (a (n - 2) : ℝ))

end

end A059633.P1262291778633250336

namespace A059633

/-- `round(a(n-1)+ϕ*a(n-2))` -/
def P1262291778633250336.Spec : Prop :=
  ∀ n, P1262291778633250336.a n = A059633 (n + 3)

end A059633

/-! ## A059633.P5423272803216692738

`a(n-1)-round(-ϕ*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A059633.P5423272803216692738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - SequenceMachineLib.roundAway (-(Real.goldenRatio * (a (n - 2) : ℝ)))

end

end A059633.P5423272803216692738

namespace A059633

/-- `a(n-1)-round(-ϕ*a(n-2))` -/
def P5423272803216692738.Spec : Prop :=
  ∀ n, P5423272803216692738.a n = A059633 (n + 3)

end A059633

/-! ## A059633.P13709874315707252274

`round(a(n-1)+a(n-2)/(ϕ-1))` with `a(0)=1, a(1)=2`
-/

namespace A059633.P13709874315707252274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + (a (n - 2) : ℝ) / (Real.goldenRatio - 1))

end

end A059633.P13709874315707252274

namespace A059633

/-- `round(a(n-1)+a(n-2)/(ϕ-1))` -/
def P13709874315707252274.Spec : Prop :=
  ∀ n, P13709874315707252274.a n = A059633 (n + 3)

end A059633

/-! ## A059633.P8898621191024976990

`2*a(n-1)-(a(n-3)-a(n-4))` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7`
-/

namespace A059633.P8898621191024976990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 7] fun n a =>
  2 * a (n - 1) - (a (n - 3) - a (n - 4))

end

end A059633.P8898621191024976990

namespace A059633

/-- `2*a(n-1)-(a(n-3)-a(n-4))` -/
def P8898621191024976990.Spec : Prop :=
  ∀ n, P8898621191024976990.a n = A059633 (n + 3)

end A059633

/-! ## A059633.P2277715295952366991

`∑[A049856(n+2)]`
-/

namespace A059633.P2277715295952366991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059633.P2277715295952366991

namespace A059633

/-- `∑[A049856(n+2)]` -/
def P2277715295952366991.Spec : Prop :=
  ∀ n, P2277715295952366991.a n = A059633 (n + 3)

end A059633

/-! ## A059633.P12703465525769133249

`A049870(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A059633.P12703465525769133249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A049870 n + a (n - 3)

end

end A059633.P12703465525769133249

namespace A059633

/-- `A049870(n)+a(n-3)` -/
def P12703465525769133249.Spec : Prop :=
  ∀ n, P12703465525769133249.a n = A059633 (n + 3)

end A059633

/-! ## A059633.P9108842095032538225

`A290987(n)-a(n-1)+n` with `a(0)=1`
-/

namespace A059633.P9108842095032538225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A290987 n - a (n - 1) + (n : ℤ)

end

end A059633.P9108842095032538225

namespace A059633

/-- `A290987(n)-a(n-1)+n` -/
def P9108842095032538225.Spec : Prop :=
  ∀ n, P9108842095032538225.a n = A059633 (n + 3)

end A059633

/-! ## A059633.P10577123710004128769

`A049864(n+1)+A049858(n)`
-/

namespace A059633.P10577123710004128769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 (n + 1) + A049858 n

end

end A059633.P10577123710004128769

namespace A059633

/-- `A049864(n+1)+A049858(n)` -/
def P10577123710004128769.Spec : Prop :=
  ∀ n, P10577123710004128769.a n = A059633 (n + 3)

end A059633

/-! ## A059633.P3112402369387557108

`A049856(n+3)+A049856(n)`
-/

namespace A059633.P3112402369387557108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (n + 3) + A049856 n

end

end A059633.P3112402369387557108

namespace A059633

/-- `A049856(n+3)+A049856(n)` -/
def P3112402369387557108.Spec : Prop :=
  ∀ n, P3112402369387557108.a n = A059633 (n + 3)

end A059633

/-! ## A059633.P11086703732053021660

`A049858(n)+Δ[A049858(n+1)]`
-/

namespace A059633.P11086703732053021660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 n + (f1 (n + 1) - f1 n)

end

end A059633.P11086703732053021660

namespace A059633

/-- `A049858(n)+Δ[A049858(n+1)]` -/
def P11086703732053021660.Spec : Prop :=
  ∀ n, P11086703732053021660.a n = A059633 (n + 3)

end A059633

/-! ## A059633.P2258495420133166925

`Δ[A049864(n+2)]`
-/

namespace A059633.P2258495420133166925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059633.P2258495420133166925

namespace A059633

/-- `Δ[A049864(n+2)]` -/
def P2258495420133166925.Spec : Prop :=
  ∀ n, P2258495420133166925.a n = A059633 (n + 3)

end A059633

/-! ## A059633.P9655466315972358788

`A049864(n+3)-A049864(n+2)`
-/

namespace A059633.P9655466315972358788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 (n + 3) - A049864 (n + 2)

end

end A059633.P9655466315972358788

namespace A059633

/-- `A049864(n+3)-A049864(n+2)` -/
def P9655466315972358788.Spec : Prop :=
  ∀ n, P9655466315972358788.a n = A059633 (n + 3)

end A059633

/-! ## A059633.P8855657022558588636

`Δ[Δ[A049858(n+2)]]`
-/

namespace A059633.P8855657022558588636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059633.P8855657022558588636

namespace A059633

/-- `Δ[Δ[A049858(n+2)]]` -/
def P8855657022558588636.Spec : Prop :=
  ∀ n, P8855657022558588636.a n = A059633 (n + 3)

end A059633

/-! ## A059633.P6395828331608166259

`Δ[Δ[Δ[A290987(n)]]]`
-/

namespace A059633.P6395828331608166259
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059633.P6395828331608166259

namespace A059633

/-- `Δ[Δ[Δ[A290987(n)]]]` -/
def P6395828331608166259.Spec : Prop :=
  ∀ n, P6395828331608166259.a n = A059633 (n + 3)

end A059633

/-!
# A059634: Primes p such that x^56 = 2 has no solution mod p.

The programs for A059634, there is no canonical definition to state claims against.
-/

/-! ## A059634.P7575984511604423353

`∪[A045316(n+1), A059265(n+1)]`
-/

namespace A059634.P7575984511604423353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059634.P7575984511604423353

/-!
# A059635: Primes p such that x^56 = 2 has no solution mod p, but x^28 = 2 has a solution mod p.

The programs for A059635, there is no canonical definition to state claims against.
-/

/-! ## A059635.P14402107639849293389

`∩[A045316(n+1), A049560(n+1)]`
-/

namespace A059635.P14402107639849293389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059635.P14402107639849293389

/-! ## A059635.P10008269204350381115

`∩[A049560(n+1), A059634(n+1)]`
-/

namespace A059635.P10008269204350381115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059635.P10008269204350381115

/-! ## A059635.P6850130756860614465

`A001134(comp[a(n-1)-A054354(n)-1])` with `a(0)=6, a(1)=2`
-/

namespace A059635.P6850130756860614465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 2] fun n f1 =>
  f1 (n - 1) - A054354 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001134 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A059635.P6850130756860614465

/-! ## A059635.P15037186988322758772

`A001134(A055495(n+1)^A245501(n))`
-/

namespace A059635.P15037186988322758772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001134 (SequenceMachineLib.roundAway ((A055495 (n + 1) : ℚ) ^ (A245501 n : ℤ))).toNat

end

end A059635.P15037186988322758772

/-!
# A059636: Primes p such that x^44 = 2 has no solution mod p.

The programs for A059636, there is no canonical definition to state claims against.
-/

/-! ## A059636.P452589095317956343

`∪[A040100(n+1), A059311(n+1)]`
-/

namespace A059636.P452589095317956343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059636.P452589095317956343

/-! ## A059636.P1483135849608178992

`p?[A265187(n+1)-abs(A265196(n))]`
-/

namespace A059636.P1483135849608178992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (n + 1) - |A265196 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059636.P1483135849608178992

/-! ## A059636.P262378319152432520

`p?[∪[A040100(n+1), A018945(n+2)]]`
-/

namespace A059636.P262378319152432520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018945 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A059636.P262378319152432520

/-! ## A059636.P6876813688975821830

`lt[A074206(n), A107393(A194443(n))]`
-/

namespace A059636.P6876813688975821830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 (A194443 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059636.P6876813688975821830

/-! ## A059636.P3056615655507830616

`p?[A320840(2*n)]`
-/

namespace A059636.P3056615655507830616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320840 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059636.P3056615655507830616

/-!
# A059637: Primes p such that x^45 = 2 has no solution mod p.

The programs for A059637, there is no canonical definition to state claims against.
-/

/-! ## A059637.P17098341815556149501

`∪[A040160(n+1), A059262(n+1)]`
-/

namespace A059637.P17098341815556149501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059637.P17098341815556149501

/-! ## A059637.P5254425412018206796

`∪[A059262(n+1), A059308(n+1)]`
-/

namespace A059637.P5254425412018206796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059637.P5254425412018206796

/-! ## A059637.P7699782494598522662

`p?[A229307(n+1)+A146771(A071919(n))]`
-/

namespace A059637.P7699782494598522662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229307 (n + 1) + A146771 (A071919 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059637.P7699782494598522662

/-!
# A059638: Primes p such that x^46 = 2 has no solution mod p.

The programs for A059638, there is no canonical definition to state claims against.
-/

/-! ## A059638.P137410653613970179

`p?[or(A047621(n+1), A096159(n+1))]`
-/

namespace A059638.P137410653613970179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047621 (n + 1)) (A096159 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059638.P137410653613970179

/-! ## A059638.P18078759390982990765

`record[A006530((xor(2, n)+1+n)*A335182(n+1))]`
-/

namespace A059638.P18078759390982990765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((Nat.xor 2 n + 1 + n : ℤ) * A335182 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059638.P18078759390982990765

/-! ## A059638.P1248110732756650168

`p?[A008576(n)-A017857(A277230(n+1))]`
-/

namespace A059638.P1248110732756650168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n - A017857 (A277230 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059638.P1248110732756650168

/-! ## A059638.P16217107831988415554

`p?[A008576(n)-A025469(A046092(n))]`
-/

namespace A059638.P16217107831988415554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n - A025469 (A046092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059638.P16217107831988415554

/-! ## A059638.P7563890396868858120

`p?[A047444(n+1)-A186747(A053878(n+2))]`
-/

namespace A059638.P7563890396868858120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047444 (n + 1) - A186747 (A053878 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059638.P7563890396868858120

/-!
# A059640: Primes p such that x^51 = 2 has no solution mod p.

The programs for A059640, there is no canonical definition to state claims against.
-/

/-! ## A059640.P5226631766282625497

`record[A040034(n+1)-A181340(2*n+5)]`
-/

namespace A059640.P5226631766282625497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1) - A181340 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059640.P5226631766282625497

/-! ## A059640.P3280846251226888003

`A290531(A239090(n+1))+A040034(n+1)`
-/

namespace A059640.P3280846251226888003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290531 (A239090 (n + 1)).toNat + A040034 (n + 1)

end

end A059640.P3280846251226888003

/-! ## A059640.P17585742795347020367

`A040034(n+1)-A137579(A051223(n+1))`
-/

namespace A059640.P17585742795347020367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1) - A137579 (A051223 (n + 1)).toNat

end

end A059640.P17585742795347020367

/-!
# A059641: Primes p such that x^52 = 2 has no solution mod p.

The programs for A059641, there is no canonical definition to state claims against.
-/

/-! ## A059641.P5787426715786704088

`∪[A040100(n+1), A059314(n+1)]`
-/

namespace A059641.P5787426715786704088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059641.P5787426715786704088

/-! ## A059641.P14924196533818986342

`p?[A000040(A013936(n+2))-A184945(n)²]`
-/

namespace A059641.P14924196533818986342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A013936 (n + 2)).toNat - A184945 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059641.P14924196533818986342

/-! ## A059641.P1924995394681223561

`A000040(A013936(n+2))%A037337(A000032(n))`
-/

namespace A059641.P1924995394681223561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A013936 (n + 2)).toNat) (A037337 (A000032 n).toNat)

end

end A059641.P1924995394681223561

/-! ## A059641.P15286500799289648232

`A000038(A000045(n+1))+A000040(A013936(n+2))`
-/

namespace A059641.P15286500799289648232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A000045 (n + 1)).toNat + A000040 (A013936 (n + 2)).toNat

end

end A059641.P15286500799289648232

/-! ## A059641.P6749796723155662717

`A000040(A145353(n+2)%A191852(3*n+4))`
-/

namespace A059641.P6749796723155662717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A145353 (n + 2)) (A191852 (3 * n + 4))).toNat

end

end A059641.P6749796723155662717

/-!
# A059642: Primes p such that x^55 = 2 has no solution mod p.

The programs for A059642, there is no canonical definition to state claims against.
-/

/-! ## A059642.P9718955730218797465

`p?[eq[1, A017887(n)]+1]`
-/

namespace A059642.P9718955730218797465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A059642.P9718955730218797465

/-! ## A059642.P18151621081588775377

`p?[eq[1, A017887(A004442(n))]]`
-/

namespace A059642.P18151621081588775377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 (A004442 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A059642.P18151621081588775377

/-! ## A059642.P2219033251801300203

`p?[A004442(n)*A017887(n)]`
-/

namespace A059642.P2219033251801300203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n * A017887 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059642.P2219033251801300203

/-! ## A059642.P14976503470186377800

`eq[A017887(n), A229340(n+1)]+1`
-/

namespace A059642.P14976503470186377800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229340 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A059642.P14976503470186377800

/-! ## A059642.P9280136572710036267

`eq[A017887(n), A340070(n+1)]+1`
-/

namespace A059642.P9280136572710036267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A059642.P9280136572710036267

/-!
# A059643: Primes p such that x^57 = 2 has no solution mod p.

The programs for A059643, there is no canonical definition to state claims against.
-/

/-! ## A059643.P3447355888035425122

`p?[or(A010894(n), A332335(n+1))]`
-/

namespace A059643.P3447355888035425122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 (n + 21)) (A332335 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059643.P3447355888035425122

/-!
# A059644: Primes p such that x^58 = 2 has no solution mod p.

The programs for A059644, there is no canonical definition to state claims against.
-/

/-! ## A059644.P7107363530075062300

`p?[A008576(n)+A017857(A277230(n+1))²]`
-/

namespace A059644.P7107363530075062300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + A017857 (A277230 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059644.P7107363530075062300

/-!
# A059645: Primes p such that x^60 = 2 has no solution mod p.

The programs for A059645, there is no canonical definition to state claims against.
-/

/-! ## A059645.P12367382487662525876

`∪[A040034(n+1), A059309(n+1)]`
-/

namespace A059645.P12367382487662525876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059645.P12367382487662525876

/-! ## A059645.P16722059174739102564

`∪[A040100(n+1), A059308(n+1)]`
-/

namespace A059645.P16722059174739102564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059645.P16722059174739102564

/-! ## A059645.P13311278790288501629

`∪[A040100(n+1), A059334(n+1)]`
-/

namespace A059645.P13311278790288501629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059645.P13311278790288501629

/-! ## A059645.P14159686668161357402

`∪[A040993(n+1), A059309(n+1)]`
-/

namespace A059645.P14159686668161357402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059645.P14159686668161357402

/-! ## A059645.P14994446497371687840

`∪[A059263(n+1), A059264(n+1)]`
-/

namespace A059645.P14994446497371687840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059645.P14994446497371687840

/-! ## A059645.P18057817266790764278

`∪[A059264(n+1), A059309(n+1)]`
-/

namespace A059645.P18057817266790764278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059645.P18057817266790764278

/-! ## A059645.P9786289152992904831

`∪[A059309(n+1), A059334(n+1)]`
-/

namespace A059645.P9786289152992904831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059645.P9786289152992904831

/-!
# A059646: Primes p such that x^62 = 2 has no solution mod p.

The programs for A059646, there is no canonical definition to state claims against.
-/

/-! ## A059646.P15079444110657120808

`∪[A057749(n+1), p?[A008576(n)]]`
-/

namespace A059646.P15079444110657120808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057749 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059646.P15079444110657120808

/-! ## A059646.P11689616426438275892

`∪[A003629(n+1), A057749(n+1)]`
-/

namespace A059646.P11689616426438275892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059646.P11689616426438275892

/-! ## A059646.P13533429649511935860

`p?[∪[A047621(n+1), A057749(n+1)]]`
-/

namespace A059646.P13533429649511935860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047621 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057749 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A059646.P13533429649511935860

/-! ## A059646.P14903558570936785155

`record[p?[A008576(n)]-A034545(n+1)]`
-/

namespace A059646.P14903558570936785155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - A034545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059646.P14903558570936785155

/-!
# A059647: Primes p such that x^63 = 2 has no solution mod p.

The programs for A059647, there is no canonical definition to state claims against.
-/

/-! ## A059647.P13294392334700917670

`∪[A059262(n+1), A059310(n+1)]`
-/

namespace A059647.P13294392334700917670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059647.P13294392334700917670

/-!
# A059648: a(n) = [[(k^2)*n]-(k*[k*n])], where k = sqrt(2) and [] is the floor function.

The programs for A059648, the canonical program `A059648.P7247611612074337130` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059648 has offset 0).

The definition of A059648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059648.P18426052336318941445

`char[A059649(n+1)]`
-/

namespace A059648.P18426052336318941445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A059648.P18426052336318941445

namespace A059648

/-- `char[A059649(n+1)]` -/
def P18426052336318941445.Spec : Prop :=
  ∀ n, (P18426052336318941445.a n : ℤ) = A059648 n

end A059648

/-! ## A059648.P5819821526287815743

`char[record[A026252(n+1)]]`
-/

namespace A059648.P5819821526287815743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026252 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A059648.P5819821526287815743

namespace A059648

/-- `char[record[A026252(n+1)]]` -/
def P5819821526287815743.Spec : Prop :=
  ∀ n, (P5819821526287815743.a n : ℤ) = A059648 n

end A059648

/-! ## A059648.P7505961352150563930

`A138330(A028310(n))-1`
-/

namespace A059648.P7505961352150563930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138330 (A028310 n).toNat - 1

end

end A059648.P7505961352150563930

namespace A059648

/-- `A138330(A028310(n))-1` -/
def P7505961352150563930.Spec : Prop :=
  ∀ n, P7505961352150563930.a n = A059648 n

end A059648

/-! ## A059648.P7247611612074337130

`A327177((n-1)*A327205(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A059648

/-- `A327177((n-1)*A327205(n))` -/
def P7247611612074337130.Spec : Prop :=
  ∀ n, P7247611612074337130.a n = A059648 n

theorem P7247611612074337130.correct : P7247611612074337130.Spec := by
  intro n
  simp only [A059648]

end A059648

/-! ## A059648.P812153795316644232

`comp[A184119(n+1)]-A001951(n)`
-/

namespace A059648.P812153795316644232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184119 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - A001951 n

end

end A059648.P812153795316644232

namespace A059648

/-- `comp[A184119(n+1)]-A001951(n)` -/
def P812153795316644232.Spec : Prop :=
  ∀ n, P812153795316644232.a n = A059648 n

end A059648

/-! ## A059648.P9531974339494586275

`A064437(n+1)+1-A285075(n+1)`
-/

namespace A059648.P9531974339494586275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064437 (n + 1) + (1 - A285075 (n + 1))

end

end A059648.P9531974339494586275

namespace A059648

/-- `A064437(n+1)+1-A285075(n+1)` -/
def P9531974339494586275.Spec : Prop :=
  ∀ n, P9531974339494586275.a n = A059648 n

end A059648

/-! ## A059648.P18272424775943475098

`A024000(A285075(n+1)-A064437(n+1))`
-/

namespace A059648.P18272424775943475098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A285075 (n + 1) - A064437 (n + 1)).toNat

end

end A059648.P18272424775943475098

namespace A059648

/-- `A024000(A285075(n+1)-A064437(n+1))` -/
def P18272424775943475098.Spec : Prop :=
  ∀ n, P18272424775943475098.a n = A059648 n

end A059648

/-! ## A059648.P7597159849341971458

`A078012(A285075(n+1)-A064437(n+1))`
-/

namespace A059648.P7597159849341971458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (A285075 (n + 1) - A064437 (n + 1)).toNat

end

end A059648.P7597159849341971458

namespace A059648

/-- `A078012(A285075(n+1)-A064437(n+1))` -/
def P7597159849341971458.Spec : Prop :=
  ∀ n, P7597159849341971458.a n = A059648 n

end A059648

/-! ## A059648.P4623633391257861161

`n-A049473(A001951(n))`
-/

namespace A059648.P4623633391257861161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A049473 (A001951 n).toNat

end

end A059648.P4623633391257861161

namespace A059648

/-- `n-A049473(A001951(n))` -/
def P4623633391257861161.Spec : Prop :=
  ∀ n, P4623633391257861161.a n = A059648 n

end A059648

/-! ## A059648.P11734692666896243674

`n-A049473(A097508(n)+n)`
-/

namespace A059648.P11734692666896243674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A049473 (A097508 n + (n : ℤ)).toNat

end

end A059648.P11734692666896243674

namespace A059648

/-- `n-A049473(A097508(n)+n)` -/
def P11734692666896243674.Spec : Prop :=
  ∀ n, P11734692666896243674.a n = A059648 n

end A059648

/-! ## A059648.P10120368350829402989

`A004273(n)-A001951(A001951(n))`
-/

namespace A059648.P10120368350829402989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n - A001951 (A001951 n).toNat

end

end A059648.P10120368350829402989

namespace A059648

/-- `A004273(n)-A001951(A001951(n))` -/
def P10120368350829402989.Spec : Prop :=
  ∀ n, P10120368350829402989.a n = A059648 n

end A059648

/-! ## A059648.P5852922134392161642

`A004277(n)-(A001951(A001951(n))+1)`
-/

namespace A059648.P5852922134392161642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - (A001951 (A001951 n).toNat + 1)

end

end A059648.P5852922134392161642

namespace A059648

/-- `A004277(n)-(A001951(A001951(n))+1)` -/
def P5852922134392161642.Spec : Prop :=
  ∀ n, P5852922134392161642.a n = A059648 n

end A059648

/-! ## A059648.P926830699503495044

`A049472(2*n-A001951(A001951(n)))`
-/

namespace A059648.P926830699503495044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 ((2 * n : ℤ) - A001951 (A001951 n).toNat).toNat

end

end A059648.P926830699503495044

namespace A059648

/-- `A049472(2*n-A001951(A001951(n)))` -/
def P926830699503495044.Spec : Prop :=
  ∀ n, P926830699503495044.a n = A059648 n

end A059648

/-! ## A059648.P353479876280336218

`n-A049473(A049473(n)+A049472(n))`
-/

namespace A059648.P353479876280336218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A049473 (A049473 n + A049472 n).toNat

end

end A059648.P353479876280336218

namespace A059648

/-- `n-A049473(A049473(n)+A049472(n))` -/
def P353479876280336218.Spec : Prop :=
  ∀ n, P353479876280336218.a n = A059648 n

end A059648

/-! ## A059648.P12666182523327351400

`A188037(n+1)*A188037(A001951(n)+1)`
-/

namespace A059648.P12666182523327351400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (n + 1) * A188037 (A001951 n + 1).toNat

end

end A059648.P12666182523327351400

namespace A059648

/-- `A188037(n+1)*A188037(A001951(n)+1)` -/
def P12666182523327351400.Spec : Prop :=
  ∀ n, P12666182523327351400.a n = A059648 n

end A059648

/-! ## A059648.P10661000716432841758

`A285073(A001953(n)+1)`
-/

namespace A059648.P10661000716432841758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (A001953 n + 1).toNat

end

end A059648.P10661000716432841758

namespace A059648

/-- `A285073(A001953(n)+1)` -/
def P10661000716432841758.Spec : Prop :=
  ∀ n, P10661000716432841758.a n = A059648 n

end A059648

/-! ## A059648.P5300341730214875522

`A285073(A136119(n+1))`
-/

namespace A059648.P5300341730214875522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (A136119 (n + 1)).toNat

end

end A059648.P5300341730214875522

namespace A059648

/-- `A285073(A136119(n+1))` -/
def P5300341730214875522.Spec : Prop :=
  ∀ n, P5300341730214875522.a n = A059648 n

end A059648

/-! ## A059648.P2796547380245592257

`A285073(A184620(n+1))`
-/

namespace A059648.P2796547380245592257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (A184620 (n + 1)).toNat

end

end A059648.P2796547380245592257

namespace A059648

/-- `A285073(A184620(n+1))` -/
def P2796547380245592257.Spec : Prop :=
  ∀ n, P2796547380245592257.a n = A059648 n

end A059648

/-! ## A059648.P18385590191761895547

`A285073(A086377(n+1)-n)`
-/

namespace A059648.P18385590191761895547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285073 (A086377 (n + 1) - (n : ℤ)).toNat

end

end A059648.P18385590191761895547

namespace A059648

/-- `A285073(A086377(n+1)-n)` -/
def P18385590191761895547.Spec : Prop :=
  ∀ n, P18385590191761895547.a n = A059648 n

end A059648

/-!
# A059649: Positions of ones in A059648.

The programs for A059649, the canonical program `A059649.P13745681311885547364` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059649 has offset 1).

The definition of A059649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059649.P13745681311885547364

`comp[ceil(n/sqrt(2))+floor(n/2)]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059649

/-- `comp[ceil(n/sqrt(2))+floor(n/2)]` -/
def P13745681311885547364.Spec : Prop :=
  ∀ n, (P13745681311885547364.a n : ℤ) = A059649 (n + 1)

theorem P13745681311885547364.correct : P13745681311885547364.Spec := by
  intro n
  simp only [A059649, Nat.add_sub_cancel]

end A059649

/-! ## A059649.P6460137565885826260

`A059650(n)+a(n-1)` with `a(0)=2`
-/

namespace A059649.P6460137565885826260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A059650 n + a (n - 1)

end

end A059649.P6460137565885826260

namespace A059649

/-- `A059650(n)+a(n-1)` -/
def P6460137565885826260.Spec : Prop :=
  ∀ n, P6460137565885826260.a n = A059649 (n + 1)

end A059649

/-! ## A059649.P18193980848997164808

`record[A026252(n+1)]`
-/

namespace A059649.P18193980848997164808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059649.P18193980848997164808

namespace A059649

/-- `record[A026252(n+1)]` -/
def P18193980848997164808.Spec : Prop :=
  ∀ n, P18193980848997164808.a n = A059649 (n + 1)

end A059649

/-! ## A059649.P16293305408329982314

`A026252(lt[n, A026252(n+1)]+1)`
-/

namespace A059649.P16293305408329982314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026252 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A059649.P16293305408329982314

namespace A059649

/-- `A026252(lt[n, A026252(n+1)]+1)` -/
def P16293305408329982314.Spec : Prop :=
  ∀ n, P16293305408329982314.a n = A059649 (n + 1)

end A059649

/-! ## A059649.P6422322591315478692

`∩[A003151(n+1), A080652(n+1)]`
-/

namespace A059649.P6422322591315478692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059649.P6422322591315478692

namespace A059649

/-- `∩[A003151(n+1), A080652(n+1)]` -/
def P6422322591315478692.Spec : Prop :=
  ∀ n, (P6422322591315478692.a n : ℤ) = A059649 (n + 1)

end A059649

/-! ## A059649.P3600199736120513326

`∩[A080652(n+1), A188045(n+1)]`
-/

namespace A059649.P3600199736120513326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059649.P3600199736120513326

namespace A059649

/-- `∩[A080652(n+1), A188045(n+1)]` -/
def P3600199736120513326.Spec : Prop :=
  ∀ n, (P3600199736120513326.a n : ℤ) = A059649 (n + 1)

end A059649

/-! ## A059649.P11881202147794986280

`∩[A080652(n+1), A190490(n+1)]`
-/

namespace A059649.P11881202147794986280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059649.P11881202147794986280

namespace A059649

/-- `∩[A080652(n+1), A190490(n+1)]` -/
def P11881202147794986280.Spec : Prop :=
  ∀ n, (P11881202147794986280.a n : ℤ) = A059649 (n + 1)

end A059649

/-! ## A059649.P10637857611201655657

`∩[A080652(n+1), A187978(n+1)]`
-/

namespace A059649.P10637857611201655657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059649.P10637857611201655657

namespace A059649

/-- `∩[A080652(n+1), A187978(n+1)]` -/
def P10637857611201655657.Spec : Prop :=
  ∀ n, (P10637857611201655657.a n : ℤ) = A059649 (n + 1)

end A059649

/-! ## A059649.P9480565194451962506

`filter[A080652(n+1), A187967(#)]`
-/

namespace A059649.P9480565194451962506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187967 (f1 j).toNat = 1) n)

end

end A059649.P9480565194451962506

namespace A059649

/-- `filter[A080652(n+1), A187967(#)]` -/
def P9480565194451962506.Spec : Prop :=
  ∀ n, P9480565194451962506.a n = A059649 (n + 1)

end A059649

/-! ## A059649.P11956399424718937859

`∩[A080652(n+1), A190193(n+1)]`
-/

namespace A059649.P11956399424718937859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059649.P11956399424718937859

namespace A059649

/-- `∩[A080652(n+1), A190193(n+1)]` -/
def P11956399424718937859.Spec : Prop :=
  ∀ n, (P11956399424718937859.a n : ℤ) = A059649 (n + 1)

end A059649

/-! ## A059649.P5520060657945227505

`∩[A080652(n+1), A190247(n+1)]`
-/

namespace A059649.P5520060657945227505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059649.P5520060657945227505

namespace A059649

/-- `∩[A080652(n+1), A190247(n+1)]` -/
def P5520060657945227505.Spec : Prop :=
  ∀ n, (P5520060657945227505.a n : ℤ) = A059649 (n + 1)

end A059649

/-! ## A059649.P17158951851441669729

`∩[A080652(n+1), A327224(n+1)]`
-/

namespace A059649.P17158951851441669729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059649.P17158951851441669729

namespace A059649

/-- `∩[A080652(n+1), A327224(n+1)]` -/
def P17158951851441669729.Spec : Prop :=
  ∀ n, (P17158951851441669729.a n : ℤ) = A059649 (n + 1)

end A059649

/-! ## A059649.P4443234356871158917

`A080755(A120753(n+1))`
-/

namespace A059649.P4443234356871158917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (A120753 (n + 1)).toNat

end

end A059649.P4443234356871158917

namespace A059649

/-- `A080755(A120753(n+1))` -/
def P4443234356871158917.Spec : Prop :=
  ∀ n, P4443234356871158917.a n = A059649 (n + 1)

end A059649

/-! ## A059649.P14533484774613379092

`∩[A080652(n+1), A083088(n)]`
-/

namespace A059649.P14533484774613379092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059649.P14533484774613379092

namespace A059649

/-- `∩[A080652(n+1), A083088(n)]` -/
def P14533484774613379092.Spec : Prop :=
  ∀ n, (P14533484774613379092.a n : ℤ) = A059649 (n + 1)

end A059649

/-! ## A059649.P16554549827034203654

`∩[A081477(n+1), A083088(n)]`
-/

namespace A059649.P16554549827034203654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059649.P16554549827034203654

namespace A059649

/-- `∩[A081477(n+1), A083088(n)]` -/
def P16554549827034203654.Spec : Prop :=
  ∀ n, (P16554549827034203654.a n : ℤ) = A059649 (n + 1)

end A059649

/-! ## A059649.P5219341408148281426

`∩[A003151(n+1), A081477(n+1)]`
-/

namespace A059649.P5219341408148281426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059649.P5219341408148281426

namespace A059649

/-- `∩[A003151(n+1), A081477(n+1)]` -/
def P5219341408148281426.Spec : Prop :=
  ∀ n, (P5219341408148281426.a n : ℤ) = A059649 (n + 1)

end A059649

/-! ## A059649.P2757909651362969864

`∩[A080652(n+1), A080755(n+1)]`
-/

namespace A059649.P2757909651362969864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059649.P2757909651362969864

namespace A059649

/-- `∩[A080652(n+1), A080755(n+1)]` -/
def P2757909651362969864.Spec : Prop :=
  ∀ n, (P2757909651362969864.a n : ℤ) = A059649 (n + 1)

end A059649

/-! ## A059649.P1405663176053656905

`∩[A080755(n+1), A081477(n+1)]`
-/

namespace A059649.P1405663176053656905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059649.P1405663176053656905

namespace A059649

/-- `∩[A080755(n+1), A081477(n+1)]` -/
def P1405663176053656905.Spec : Prop :=
  ∀ n, (P1405663176053656905.a n : ℤ) = A059649 (n + 1)

end A059649

/-! ## A059649.P360402885392809366

`∩[A081477(n+1), A187978(n+1)]`
-/

namespace A059649.P360402885392809366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059649.P360402885392809366

namespace A059649

/-- `∩[A081477(n+1), A187978(n+1)]` -/
def P360402885392809366.Spec : Prop :=
  ∀ n, (P360402885392809366.a n : ℤ) = A059649 (n + 1)

end A059649

/-!
# A059650: First differences of A059649.

The programs for A059650, the canonical program `A059650.P2634749567942594963` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059650 has offset 1).

The definition of A059650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059650.P2634749567942594963

`Δ[A059649(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059650

/-- `Δ[A059649(n+1)]` -/
def P2634749567942594963.Spec : Prop :=
  ∀ n, P2634749567942594963.a n = A059650 (n + 1)

theorem P2634749567942594963.correct : P2634749567942594963.Spec := by
  intro n
  simp only [A059650, Nat.add_sub_cancel]

end A059650

/-! ## A059650.P17678563050009481988

`A000037(Δ[A120753(n+1)])`
-/

namespace A059650.P17678563050009481988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (f1 (n + 1) - f1 n).toNat

end

end A059650.P17678563050009481988

namespace A059650

/-- `A000037(Δ[A120753(n+1)])` -/
def P17678563050009481988.Spec : Prop :=
  ∀ n, P17678563050009481988.a n = A059650 (n + 1)

end A059650

/-! ## A059650.P16253330589576009183

`A000040(Δ[A120753(n+1)])`
-/

namespace A059650.P16253330589576009183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n).toNat

end

end A059650.P16253330589576009183

namespace A059650

/-- `A000040(Δ[A120753(n+1)])` -/
def P16253330589576009183.Spec : Prop :=
  ∀ n, P16253330589576009183.a n = A059650 (n + 1)

end A059650

/-! ## A059650.P4499465090654793514

`A216884(Δ[A120753(n+1)])`
-/

namespace A059650.P4499465090654793514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (f1 (n + 1) - f1 n).toNat

end

end A059650.P4499465090654793514

namespace A059650

/-- `A216884(Δ[A120753(n+1)])` -/
def P4499465090654793514.Spec : Prop :=
  ∀ n, P4499465090654793514.a n = A059650 (n + 1)

end A059650

/-! ## A059650.P14301904291897379373

`A275895(Δ[A120753(n+1)]²)`
-/

namespace A059650.P14301904291897379373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A059650.P14301904291897379373

namespace A059650

/-- `A275895(Δ[A120753(n+1)]²)` -/
def P14301904291897379373.Spec : Prop :=
  ∀ n, P14301904291897379373.a n = A059650 (n + 1)

end A059650

/-! ## A059650.P17399677717048692208

`A001951(Δ[A120753(n+1)])+1`
-/

namespace A059650.P17399677717048692208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (f1 (n + 1) - f1 n).toNat + 1

end

end A059650.P17399677717048692208

namespace A059650

/-- `A001951(Δ[A120753(n+1)])+1` -/
def P17399677717048692208.Spec : Prop :=
  ∀ n, P17399677717048692208.a n = A059650 (n + 1)

end A059650

/-! ## A059650.P1038872749841068255

`A059649(n+2)-A059649(n+1)`
-/

namespace A059650.P1038872749841068255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059649 (n + 2) - A059649 (n + 1)

end

end A059650.P1038872749841068255

namespace A059650

/-- `A059649(n+2)-A059649(n+1)` -/
def P1038872749841068255.Spec : Prop :=
  ∀ n, P1038872749841068255.a n = A059650 (n + 1)

theorem P1038872749841068255.correct : P1038872749841068255.Spec := by
  intro n
  simp only [A059650, Nat.add_sub_cancel, A059650.P1038872749841068255.a, A059650.P2634749567942594963.f1, A059650.P2634749567942594963.a, SequenceMachineLib.memo_apply]

end A059650

/-! ## A059650.P15662298218712343895

`Δ[record[A026252(n+1)]]`
-/

namespace A059650.P15662298218712343895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026252 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059650.P15662298218712343895

namespace A059650

/-- `Δ[record[A026252(n+1)]]` -/
def P15662298218712343895.Spec : Prop :=
  ∀ n, P15662298218712343895.a n = A059650 (n + 1)

end A059650

/-! ## A059650.P10926851012559262491

`Δ[record[A003151(A026249(2*n+1))-n]]`
-/

namespace A059650.P10926851012559262491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A026249 (2 * n + 1)).toNat - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059650.P10926851012559262491

namespace A059650

/-- `Δ[record[A003151(A026249(2*n+1))-n]]` -/
def P10926851012559262491.Spec : Prop :=
  ∀ n, P10926851012559262491.a n = A059650 (n + 1)

end A059650

/-! ## A059650.P11406349597711650244

`Δ[eq[1, A059648(n)]]`
-/

namespace A059650.P11406349597711650244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059648 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A059650.P11406349597711650244

namespace A059650

/-- `Δ[eq[1, A059648(n)]]` -/
def P11406349597711650244.Spec : Prop :=
  ∀ n, P11406349597711650244.a n = A059650 (n + 1)

end A059650

/-! ## A059650.P11536890336399287633

`Δ[lt[1, A138330(n+1)]]`
-/

namespace A059650.P11536890336399287633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138330 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A059650.P11536890336399287633

namespace A059650

/-- `Δ[lt[1, A138330(n+1)]]` -/
def P11536890336399287633.Spec : Prop :=
  ∀ n, P11536890336399287633.a n = A059650 (n + 1)

end A059650

/-! ## A059650.P13876204159828539519

`Δ[lt[A327205(n), A327177(n)]]`
-/

namespace A059650.P13876204159828539519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A059650.P13876204159828539519

namespace A059650

/-- `Δ[lt[A327205(n), A327177(n)]]` -/
def P13876204159828539519.Spec : Prop :=
  ∀ n, P13876204159828539519.a n = A059650 (n + 1)

end A059650

/-! ## A059650.P10851109866214620364

`Δ[lt[A026252(n+1), A026245(n+1)]]`
-/

namespace A059650.P10851109866214620364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026252 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026245 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A059650.P10851109866214620364

namespace A059650

/-- `Δ[lt[A026252(n+1), A026245(n+1)]]` -/
def P10851109866214620364.Spec : Prop :=
  ∀ n, P10851109866214620364.a n = A059650 (n + 1)

end A059650

/-! ## A059650.P6617632725880698117

`Δ[lt[A026252(n+1), A026246(n+1)]]`
-/

namespace A059650.P6617632725880698117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026252 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026246 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A059650.P6617632725880698117

namespace A059650

/-- `Δ[lt[A026252(n+1), A026246(n+1)]]` -/
def P6617632725880698117.Spec : Prop :=
  ∀ n, P6617632725880698117.a n = A059650 (n + 1)

end A059650

/-! ## A059650.P9806243016880614132

`Δ[lt[A026252(n+1), A026247(n+1)]]`
-/

namespace A059650.P9806243016880614132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026252 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026247 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A059650.P9806243016880614132

namespace A059650

/-- `Δ[lt[A026252(n+1), A026247(n+1)]]` -/
def P9806243016880614132.Spec : Prop :=
  ∀ n, P9806243016880614132.a n = A059650 (n + 1)

end A059650

/-! ## A059650.P6320345583567707374

`Δ[lt[A026252(n+1), A026249(n+1)]]`
-/

namespace A059650.P6320345583567707374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026252 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A059650.P6320345583567707374

namespace A059650

/-- `Δ[lt[A026252(n+1), A026249(n+1)]]` -/
def P6320345583567707374.Spec : Prop :=
  ∀ n, P6320345583567707374.a n = A059650 (n + 1)

end A059650

/-! ## A059650.P13166646533674083785

`Δ[lt[A026252(n+1), A026257(n+1)]]`
-/

namespace A059650.P13166646533674083785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026252 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026257 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A059650.P13166646533674083785

namespace A059650

/-- `Δ[lt[A026252(n+1), A026257(n+1)]]` -/
def P13166646533674083785.Spec : Prop :=
  ∀ n, P13166646533674083785.a n = A059650 (n + 1)

end A059650

/-!
# A059651: a(n) = [[(k^2)*n]-(k*[k*n])], where k = cube root of 2 and [] is the floor function.

The programs for A059651, there is no canonical definition to state claims against.
-/

/-! ## A059651.P13225353797029907859

`char[A059657(n+1)]-char[A059659(n+1)]`
-/

namespace A059651.P13225353797029907859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059659 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A059651.P13225353797029907859

/-! ## A059651.P12306928880361729731

`A103451(A020301(n+1))-A029691(3*n+2)`
-/

namespace A059651.P12306928880361729731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 (A020301 (n + 1)).toNat - A029691 (3 * n + 2)

end

end A059651.P12306928880361729731

/-! ## A059651.P3687328585934371094

`-A194681(A054566(n))`
-/

namespace A059651.P3687328585934371094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A194681 (A054566 n).toNat

end

end A059651.P3687328585934371094

/-! ## A059651.P6412238045097776638

`A083035(A226230(n+1))-1`
-/

namespace A059651.P6412238045097776638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (A226230 (n + 1)).toNat - 1

end

end A059651.P6412238045097776638

/-! ## A059651.P13669366005573930388

`A000038(A000230(n))-A286490(n+4)`
-/

namespace A059651.P13669366005573930388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A000230 n).toNat - A286490 (n + 4)

end

end A059651.P13669366005573930388

/-!
# A059652: a(n) = [[(k^2)*n]-(k*[k*n])], where k = sqrt(3/2) and [] is the floor function.

The programs for A059652, there is no canonical definition to state claims against.
-/

/-! ## A059652.P3358450746013625660

`char[A059653(n+1)]-char[A059655(n+1)]`
-/

namespace A059652.P3358450746013625660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059655 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A059652.P3358450746013625660

/-! ## A059652.P8030926481912561951

`A094648(n)%A001511(A061419(n+1))`
-/

namespace A059652.P8030926481912561951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094648 n) (A001511 (A061419 (n + 1)).toNat)

end

end A059652.P8030926481912561951

/-! ## A059652.P2821170608260741124

`A285599(n+2)-A285599(A114854(n+1))`
-/

namespace A059652.P2821170608260741124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285599 (n + 2) - A285599 (A114854 (n + 1)).toNat

end

end A059652.P2821170608260741124

/-! ## A059652.P13912876797579368271

`A008683(lcm(A060257(n+1), A089408(n)))`
-/

namespace A059652.P13912876797579368271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lcm (A060257 (n + 1)) (A089408 n))

end

end A059652.P13912876797579368271

/-! ## A059652.P16044889415473873478

`A014750(A276677(n+1))`
-/

namespace A059652.P16044889415473873478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014750 (A276677 (n + 1)).toNat

end

end A059652.P16044889415473873478

/-!
# A059653: Positions of ones (+1's) in A059652.

The programs for A059653, there is no canonical definition to state claims against.
-/

/-! ## A059653.P18404557966402549520

`A059654(n)+a(n-1)` with `a(0)=4`
-/

namespace A059653.P18404557966402549520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A059654 n + a (n - 1)

end

end A059653.P18404557966402549520

/-! ## A059653.P6007298702985751314

`∑[A059654(abs(1-n)+1)]`
-/

namespace A059653.P6007298702985751314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059654 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059653.P6007298702985751314

/-! ## A059653.P8755614576703362148

`eq[1, A059652(n)]`
-/

namespace A059653.P8755614576703362148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059653.P8755614576703362148

/-! ## A059653.P8499476011308469841

`lt[A010051(3*(n+1)), A059652(n)]`
-/

namespace A059653.P8499476011308469841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059653.P8499476011308469841

/-! ## A059653.P17636070343522334873

`lt[A174965(n+5), A059652(n)+1]`
-/

namespace A059653.P17636070343522334873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174965 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059652 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059653.P17636070343522334873

/-! ## A059653.P10945686869249255191

`record[A003417(A277645(n+1))]`
-/

namespace A059653.P10945686869249255191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 (A277645 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059653.P10945686869249255191

/-!
# A059654: First differences of A059653.

The programs for A059654, there is no canonical definition to state claims against.
-/

/-! ## A059654.P8586542228026541858

`Δ[A059653(n+1)]`
-/

namespace A059654.P8586542228026541858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059654.P8586542228026541858

/-! ## A059654.P5186152619567425852

`abs(Δ[A059653(1-A001489(n))])`
-/

namespace A059654.P5186152619567425852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059653 (1 - A001489 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A059654.P5186152619567425852

/-! ## A059654.P6106589166384148948

`A059653(n+2)-A059653(n+1)`
-/

namespace A059654.P6106589166384148948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059653 (n + 2) - A059653 (n + 1)

end

end A059654.P6106589166384148948

/-! ## A059654.P4994084677341936602

`Δ[record[A059653(A158416(n))]]`
-/

namespace A059654.P4994084677341936602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059653 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059654.P4994084677341936602

/-! ## A059654.P1085782560030388959

`Δ[record[A059653(A065648(n))]]`
-/

namespace A059654.P1085782560030388959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059653 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059654.P1085782560030388959

/-! ## A059654.P10449467306653721255

`Δ[eq[1, A059652(n)]]`
-/

namespace A059654.P10449467306653721255
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059652 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A059654.P10449467306653721255

/-!
# A059655: Positions of minus ones (-1's) in A059652.

The programs for A059655, there is no canonical definition to state claims against.
-/

/-! ## A059655.P1867965508529929839

`A059656(n)+a(n-1)` with `a(0)=1`
-/

namespace A059655.P1867965508529929839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059656 n + a (n - 1)

end

end A059655.P1867965508529929839

/-! ## A059655.P4402013927172218927

`∑[A059656(n+1)]+1-A059656(n+1)`
-/

namespace A059655.P4402013927172218927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A059656 (n + 1))

end

end A059655.P4402013927172218927

/-! ## A059655.P8851839436646826030

`∑[A059656(n*a(A007814(2*n+5)))]` with `a(0)=1`
-/

namespace A059655.P8851839436646826030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A059656 ((n : ℤ) * f1 (A007814 (2 * n + 5)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059655.P8851839436646826030

/-! ## A059655.P14408382068765999542

`lt[A059652(n), 0]`
-/

namespace A059655.P14408382068765999542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059652 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A059655.P14408382068765999542

/-! ## A059655.P12050042365600342490

`eq[A059652(n), A280193(n)]`
-/

namespace A059655.P12050042365600342490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059652 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059655.P12050042365600342490

/-! ## A059655.P13431794907237476480

`eq[A059652(n), A153881(n+1)]`
-/

namespace A059655.P13431794907237476480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059652 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059655.P13431794907237476480

/-! ## A059655.P6745307819799144592

`eq[A059652(n), A168361(n+1)]`
-/

namespace A059655.P6745307819799144592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059652 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059655.P6745307819799144592

/-! ## A059655.P17780989597694638814

`record[gcd(n+1, A005408(A022162(n+1)))]`
-/

namespace A059655.P17780989597694638814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A005408 (A022162 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059655.P17780989597694638814

/-! ## A059655.P352295894326072622

`record[A032742(A141310(A022840(n+1)))]`
-/

namespace A059655.P352295894326072622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A141310 (A022840 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059655.P352295894326072622

/-! ## A059655.P13977981259681160674

`eq[A059652(n), A082469(n+1)]`
-/

namespace A059655.P13977981259681160674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059652 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082469 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059655.P13977981259681160674

/-! ## A059655.P156120170551127134

`eq[A059652(n), A115638(n)]`
-/

namespace A059655.P156120170551127134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059652 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059655.P156120170551127134

/-!
# A059656: First differences of A059655.

The programs for A059656, there is no canonical definition to state claims against.
-/

/-! ## A059656.P1363335384339904305

`Δ[A059655(n+1)]`
-/

namespace A059656.P1363335384339904305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059656.P1363335384339904305

/-! ## A059656.P13979390164199123160

`A059655(n+2)-A059655(n+1)`
-/

namespace A059656.P13979390164199123160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059655 (n + 2) - A059655 (n + 1)

end

end A059656.P13979390164199123160

/-! ## A059656.P16864515041304564155

`Δ[eq[1, -A059652(n)]]`
-/

namespace A059656.P16864515041304564155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A059652 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A059656.P16864515041304564155

/-! ## A059656.P5428322447300745360

`Δ[eq[A059652(n), A280193(n)]]`
-/

namespace A059656.P5428322447300745360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059652 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A059656.P5428322447300745360

/-!
# A059657: Positions of ones (+1's) in A059651.

The programs for A059657, there is no canonical definition to state claims against.
-/

/-! ## A059657.P8591433061329813058

`lt[0, A059651(n)]`
-/

namespace A059657.P8591433061329813058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059657.P8591433061329813058

/-! ## A059657.P5308980288751622729

`eq[1, A059651(round(sqrt(n²+1)))]`
-/

namespace A059657.P5308980288751622729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059651 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059657.P5308980288751622729

/-! ## A059657.P16552161906646590696

`A000027(eq[1, A059651(n)])`
-/

namespace A059657.P16552161906646590696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059657.P16552161906646590696

/-! ## A059657.P4930762018518543943

`eq[A059651(n), A059652(A059653(n+1))]`
-/

namespace A059657.P4930762018518543943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059651 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059652 (A059653 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059657.P4930762018518543943

/-! ## A059657.P1390161979579273633

`eq[A059651(n), A236677(A079599(n))]`
-/

namespace A059657.P1390161979579273633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059651 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236677 (A079599 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059657.P1390161979579273633

/-!
# A059658: First differences of A059657.

The programs for A059658, there is no canonical definition to state claims against.
-/

/-! ## A059658.P4692641150835970680

`Δ[A059657(n+1)]`
-/

namespace A059658.P4692641150835970680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059658.P4692641150835970680

/-! ## A059658.P16233141712869528841

`A028310(Δ[A059657(-xor(n, -1))])`
-/

namespace A059658.P16233141712869528841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059657 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A059658.P16233141712869528841

/-! ## A059658.P3482349823007114291

`A059657(n+2)-A059657(n+1)`
-/

namespace A059658.P3482349823007114291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059657 (n + 2) - A059657 (n + 1)

end

end A059658.P3482349823007114291

/-! ## A059658.P6856232435312616311

`Δ[record[A059657(A065648(n))]]`
-/

namespace A059658.P6856232435312616311
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059657 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059658.P6856232435312616311

/-! ## A059658.P3369212590978421152

`Δ[record[A059657(A038568(n))]]`
-/

namespace A059658.P3369212590978421152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059657 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059658.P3369212590978421152

/-!
# A059659: Positions of minus ones (-1's) in A059651.

The programs for A059659, there is no canonical definition to state claims against.
-/

/-! ## A059659.P3847825074369687508

`A059660(n)+a(n-1)` with `a(0)=1`
-/

namespace A059659.P3847825074369687508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059660 n + a (n - 1)

end

end A059659.P3847825074369687508

/-! ## A059659.P10103582810761718787

`∑[A059660(A000038(n)+n)]`
-/

namespace A059659.P10103582810761718787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059660 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059659.P10103582810761718787

/-! ## A059659.P297101833969620884

`∑[A059660(or(n, A000038(n)))]`
-/

namespace A059659.P297101833969620884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059660 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059659.P297101833969620884

/-! ## A059659.P2354514219172120540

`∑[A059660(n+1)]+1-A059660(n+1)`
-/

namespace A059659.P2354514219172120540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A059660 (n + 1))

end

end A059659.P2354514219172120540

/-! ## A059659.P15311410839913677908

`∑[A059660(A001281(A004277(n)))]`
-/

namespace A059659.P15311410839913677908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059660 (A001281 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059659.P15311410839913677908

/-! ## A059659.P7225397385783622992

`lt[A059651(n), 0]`
-/

namespace A059659.P7225397385783622992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059651 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A059659.P7225397385783622992

/-! ## A059659.P9398934126793175360

`A000027(eq[0, A059651(n)+1])`
-/

namespace A059659.P9398934126793175360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059651 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059659.P9398934126793175360

/-! ## A059659.P14854957092017215624

`A000027(eq[2, 1-A059651(n)])`
-/

namespace A059659.P14854957092017215624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A059651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059659.P14854957092017215624

/-! ## A059659.P10350010387235002313

`eq[A059651(n), A153881(n+1)]`
-/

namespace A059659.P10350010387235002313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059651 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059659.P10350010387235002313

/-! ## A059659.P13669031523243654564

`eq[2, A236677(A079599(n))-A059651(n)]`
-/

namespace A059659.P13669031523243654564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236677 (A079599 n).toNat - A059651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059659.P13669031523243654564

/-! ## A059659.P5818319247790554417

`∑[A059660(n*a(A193350(n²)))]` with `a(0)=1`
-/

namespace A059659.P5818319247790554417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A059660 ((n : ℤ) * f1 (A193350 (n ^ 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059659.P5818319247790554417

/-!
# A059660: First differences of A059659.

The programs for A059660, there is no canonical definition to state claims against.
-/

/-! ## A059660.P4225280660356345087

`Δ[A059659(n+1)]`
-/

namespace A059660.P4225280660356345087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059660.P4225280660356345087

/-! ## A059660.P5794276956451592505

`A004426(Δ[A059659(-xor(n, -1))])`
-/

namespace A059660.P5794276956451592505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059659 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004426 (f1 (n + 1) - f1 n).toNat

end

end A059660.P5794276956451592505

/-! ## A059660.P7986530893694230286

`A059659(n+2)-A059659(n+1)`
-/

namespace A059660.P7986530893694230286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059659 (n + 2) - A059659 (n + 1)

end

end A059660.P7986530893694230286

/-! ## A059660.P5393601728599050119

`Δ[eq[1, -A059651(n)]]`
-/

namespace A059660.P5393601728599050119
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A059651 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A059660.P5393601728599050119

/-!
# A059661: Like A059459, but each term must be greater than the previous ones.

The programs for A059661, there is no canonical definition to state claims against.
-/

/-! ## A059661.P12993889546975456400

`∑[2^A259630(n+1)]`
-/

namespace A059661.P12993889546975456400
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A259630 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059661.P12993889546975456400

/-! ## A059661.P12150149545969920733

`∑[A000079(A259630(n+1))]`
-/

namespace A059661.P12150149545969920733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A259630 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059661.P12150149545969920733

/-! ## A059661.P18252983092838802255

`∑[A131577(A259630(n+1)+1)]`
-/

namespace A059661.P18252983092838802255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A259630 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059661.P18252983092838802255

/-! ## A059661.P15860484715227880000

`A000007(n)+∑[A073923(n+1)]`
-/

namespace A059661.P15860484715227880000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059661.P15860484715227880000

/-! ## A059661.P14812585505798989573

`∑[A073923(n+1)+A008683(A000079(n))]`
-/

namespace A059661.P14812585505798989573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073923 (n + 1) + A008683 (A000079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059661.P14812585505798989573

/-!
# A059662: Positions of the flipped bits (here they are always set from 0 to 1) in the sequence A059661.

The programs for A059662, there is no canonical definition to state claims against.
-/

/-! ## A059662.P15456169150960286260

`A259630(n+2)`
-/

namespace A059662.P15456169150960286260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259630 (n + 2)

end

end A059662.P15456169150960286260

/-! ## A059662.P2541463004342025876

`log2(Δ[A059661(n+1)])`
-/

namespace A059662.P2541463004342025876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059661 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A059662.P2541463004342025876

/-! ## A059662.P7338869941260063608

`log2(A073923(n+2)-A000007(n))`
-/

namespace A059662.P7338869941260063608
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A073923 (n + 2) - A000007 n : ℝ)

end

end A059662.P7338869941260063608

/-! ## A059662.P13073956608811534066

`log2(A073923(n+2)-A112316(n))`
-/

namespace A059662.P13073956608811534066
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A073923 (n + 2) - A112316 n : ℝ)

end

end A059662.P13073956608811534066

/-! ## A059662.P10029086999067067783

`log2(A073923(n+2))*A112316(A112316(2*n))`
-/

namespace A059662.P10029086999067067783
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A073923 (n + 2) : ℝ) * (A112316 (A112316 (2 * n)).toNat : ℝ)

end

end A059662.P10029086999067067783

/-!
# A059663: Positions of the flipped bits in the sequence A059459.

The programs for A059663, there is no canonical definition to state claims against.
-/

/-! ## A059663.P14004418178391738312

`log2(abs(Δ[A059459(n+1)]))`
-/

namespace A059663.P14004418178391738312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059459 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (|f1 (n + 1) - f1 n| : ℝ)

end

end A059663.P14004418178391738312

/-! ## A059663.P137506712134121113

`log2(xor(A059459(n+1), A059459(n+2)))`
-/

namespace A059663.P137506712134121113
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.xor (A059459 (n + 1)) (A059459 (n + 2)) : ℝ)

end

end A059663.P137506712134121113

/-! ## A059663.P9007350863473559331

`A110654(log2(Δ[A059459(n+1)]²))`
-/

namespace A059663.P9007350863473559331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.roundAway (Real.logb 2 ((f1 (n + 1) - f1 n) ^ 2 : ℝ))).toNat

end

end A059663.P9007350863473559331

/-! ## A059663.P4411117141529529714

`val(Δ[A059459(A000027(n+1))]², 4)`
-/

namespace A059663.P4411117141529529714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059459 (A000027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((f1 (n + 1) - f1 n) ^ 2).toNat 4

end

end A059663.P4411117141529529714

/-! ## A059663.P15639060162739414074

`∑{e}[Δ[A059459(A000027(n+1))], #]`
-/

namespace A059663.P15639060162739414074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059459 (A000027 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A059663.P15639060162739414074

/-!
# A059664: Primes p such that x^18 = 2 has no solution mod p, but x^6 = 2 has a solution mod p.

The programs for A059664, there is no canonical definition to state claims against.
-/

/-! ## A059664.P8446093895312571235

`∩[A040992(n+1), A059262(n+1)]`
-/

namespace A059664.P8446093895312571235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059664.P8446093895312571235

/-! ## A059664.P11629860609270436295

`∩[A059262(n+1), A070183(n+1)]`
-/

namespace A059664.P11629860609270436295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059664.P11629860609270436295

/-! ## A059664.P3550097411819592280

`∩[A059665(n+1), A070180(n+1)]`
-/

namespace A059664.P3550097411819592280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059664.P3550097411819592280

/-! ## A059664.P2793287689704389901

`∩[A040992(n+1), A212375(n+1)]`
-/

namespace A059664.P2793287689704389901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059664.P2793287689704389901

/-! ## A059664.P9237077403751765643

`∩[A070180(n+1), A070183(n+1)]`
-/

namespace A059664.P9237077403751765643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059664.P9237077403751765643

/-!
# A059665: Primes p such that x^54 = 2 has no solution mod p, but x^6 = 2 has a solution mod p.

The programs for A059665, there is no canonical definition to state claims against.
-/

/-! ## A059665.P9411515098769890160

`A053139(∪[A059664(n+1), A059666(n+1)])`
-/

namespace A059665.P9411515098769890160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059666 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053139 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A059665.P9411515098769890160

/-!
# A059666: Primes p such that x^54 = 2 has no solution mod p, but x^18 = 2 has a solution mod p.

The programs for A059666, there is no canonical definition to state claims against.
-/

/-! ## A059666.P9792264577596290827

`∩[A059354(n+1), A059665(n+1)]`
-/

namespace A059666.P9792264577596290827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059666.P9792264577596290827

/-! ## A059666.P1768158038082527927

`∩[A059354(n+1), A086708(n+1)]`
-/

namespace A059666.P1768158038082527927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059666.P1768158038082527927

/-!
# A059668: Primes p such that x^36 = 2 has no solution mod p, but x^12 = 2 has a solution mod p.

The programs for A059668, there is no canonical definition to state claims against.
-/

/-! ## A059668.P16134515303732575171

`∩[A040098(n+1), A070183(n+1)]`
-/

namespace A059668.P16134515303732575171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059668.P16134515303732575171

/-! ## A059668.P11972844933252161463

`∩[A049544(n+1), A070183(n+1)]`
-/

namespace A059668.P11972844933252161463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059668.P11972844933252161463

/-! ## A059668.P1516445554083513958

`∩[A049544(n+1), A059262(n+1)]`
-/

namespace A059668.P1516445554083513958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059668.P1516445554083513958

/-! ## A059668.P17191493716614199300

`∩[A070180(n+1), A070188(n+1)]`
-/

namespace A059668.P17191493716614199300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059668.P17191493716614199300

/-! ## A059668.P10954810337806463053

`∩[A059665(n+1), A070188(n+4)]`
-/

namespace A059668.P10954810337806463053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070188 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059668.P10954810337806463053

/-! ## A059668.P3141300419851196919

`∩[A059664(n+1), A070188(n+1)]`
-/

namespace A059668.P3141300419851196919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059668.P3141300419851196919

/-! ## A059668.P15361554266644806473

`∩[A070183(n+1), A070188(n+1)]`
-/

namespace A059668.P15361554266644806473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059668.P15361554266644806473

/-!
# A059669: Primes p such that x^48 = 2 has no solution mod p, but x^24 = 2 has a solution mod p.

The programs for A059669, there is no canonical definition to state claims against.
-/

/-! ## A059669.P15753510903236299396

`∩[A049556(n+1), A070181(n+1)]`
-/

namespace A059669.P15753510903236299396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059669.P15753510903236299396

/-! ## A059669.P3585638613310484338

`∩[A059287(n+1), A070188(n+1)]`
-/

namespace A059669.P3585638613310484338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059669.P3585638613310484338

/-! ## A059669.P6336735783739547914

`∩[A059287(n+1), A051081(A154611(n+1))]`
-/

namespace A059669.P6336735783739547914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051081 (A154611 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059669.P6336735783739547914

/-! ## A059669.P12720001338274980936

`∩[A059287(n+1), A051081(A153088(n+1))]`
-/

namespace A059669.P12720001338274980936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051081 (A153088 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059669.P12720001338274980936

/-! ## A059669.P421030744855000572

`∩[A059287(n+1), A051081(A153350(n+1))]`
-/

namespace A059669.P421030744855000572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051081 (A153350 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059669.P421030744855000572

/-!
# A059672: Sum of binary numbers with n 1's and one (possibly leading) 0.

The programs for A059672, the canonical program `A059672.P12148314090275833649` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059672 has offset 0).

The definition of A059672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059672.P12148314090275833649

`n*(2^(n+1)-1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059672

/-- `n*(2^(n+1)-1)` -/
def P12148314090275833649.Spec : Prop :=
  ∀ n, P12148314090275833649.a n = A059672 n

theorem P12148314090275833649.correct : P12148314090275833649.Spec := by
  intro n
  simp only [A059672]

end A059672

/-! ## A059672.P2466553851765318821

`A058922(n+1)-n`
-/

namespace A059672.P2466553851765318821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058922 (n + 1) - (n : ℤ)

end

end A059672.P2466553851765318821

namespace A059672

/-- `A058922(n+1)-n` -/
def P2466553851765318821.Spec : Prop :=
  ∀ n, P2466553851765318821.a n = A059672 n

end A059672

/-! ## A059672.P4557512167444592899

`6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=3, a(2)=14, a(3)=45`
-/

namespace A059672.P4557512167444592899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 14, 45] fun n a =>
  6 * a (n - 1) - 13 * a (n - 2) + 12 * a (n - 3) - 4 * a (n - 4)

end

end A059672.P4557512167444592899

namespace A059672

/-- `6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` -/
def P4557512167444592899.Spec : Prop :=
  ∀ n, P4557512167444592899.a n = A059672 n

theorem P4557512167444592899.correct : P4557512167444592899.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A059672, Nat.add_sub_cancel, A059672.P4557512167444592899.a, A059672.P12148314090275833649.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A059672, Nat.add_sub_cancel, A059672.P4557512167444592899.a, A059672.P12148314090275833649.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A059672

/-! ## A059672.P13474561400582472834

`round(n/acot(∑[2^n]))`
-/

namespace A059672.P13474561400582472834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A059672.P13474561400582472834

namespace A059672

/-- `round(n/acot(∑[2^n]))` -/
def P13474561400582472834.Spec : Prop :=
  ∀ n, P13474561400582472834.a n = A059672 n

end A059672

/-! ## A059672.P5836444619628419089

`n/tan(acot(∑[2^n]))`
-/

namespace A059672.P5836444619628419089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.tan (SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A059672.P5836444619628419089

namespace A059672

/-- `n/tan(acot(∑[2^n]))` -/
def P5836444619628419089.Spec : Prop :=
  ∀ n, P5836444619628419089.a n = (A059672 n : ℝ)

end A059672

/-! ## A059672.P12976771402678847497

`∑[∑[ogf((3x-4x^2)/(1-4x+4x^2))]]`
-/

namespace A059672.P12976771402678847497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -4] [1, -4, 4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059672.P12976771402678847497

namespace A059672

/-- `∑[∑[ogf((3x-4x^2)/(1-4x+4x^2))]]` -/
def P12976771402678847497.Spec : Prop :=
  ∀ n, P12976771402678847497.a n = A059672 n

end A059672

/-! ## A059672.P18176876682717403554

`abs(n*∑[2*a(n-1)])` with `a(0)=1`
-/

namespace A059672.P18176876682717403554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059672.P18176876682717403554

namespace A059672

/-- `abs(n*∑[2*a(n-1)])` -/
def P18176876682717403554.Spec : Prop :=
  ∀ n, (P18176876682717403554.a n : ℤ) = A059672 n

end A059672

/-! ## A059672.P9237174028516528964

`floor(n*∑[2*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A059672.P9237174028516528964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059672.P9237174028516528964

namespace A059672

/-- `floor(n*∑[2*a(n-1)])` -/
def P9237174028516528964.Spec : Prop :=
  ∀ n, (P9237174028516528964.a n : ℤ) = A059672 n

end A059672

/-! ## A059672.P10356565821205302534

`ceil(n*∑[2*a(n-1)])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A059672.P10356565821205302534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059672.P10356565821205302534

namespace A059672

/-- `ceil(n*∑[2*a(n-1)])` -/
def P10356565821205302534.Spec : Prop :=
  ∀ n, (P10356565821205302534.a n : ℤ) = A059672 n

end A059672

/-! ## A059672.P5387265087189198815

`round(n*∑[2*a(n-1)])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A059672.P5387265087189198815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059672.P5387265087189198815

namespace A059672

/-- `round(n*∑[2*a(n-1)])` -/
def P5387265087189198815.Spec : Prop :=
  ∀ n, (P5387265087189198815.a n : ℤ) = A059672 n

end A059672

/-! ## A059672.P9286424703788269919

`n*Δ[2*a(n-1)]-n` with `a(0)=2`
-/

namespace A059672.P9286424703788269919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (n : ℤ)

end

end A059672.P9286424703788269919

namespace A059672

/-- `n*Δ[2*a(n-1)]-n` -/
def P9286424703788269919.Spec : Prop :=
  ∀ n, P9286424703788269919.a n = A059672 n

end A059672

/-! ## A059672.P4097491583327033602

`lcm(n, n*∑[2*a(n-1)])` with `a(0)=1`
-/

namespace A059672.P4097491583327033602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A059672.P4097491583327033602

namespace A059672

/-- `lcm(n, n*∑[2*a(n-1)])` -/
def P4097491583327033602.Spec : Prop :=
  ∀ n, (P4097491583327033602.a n : ℤ) = A059672 n

end A059672

/-! ## A059672.P11552846482657633419

`n*∑[2*a(n-1)]+n` with `a(0)=0, a(1)=2`
-/

namespace A059672.P11552846482657633419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + n

end

end A059672.P11552846482657633419

namespace A059672

/-- `n*∑[2*a(n-1)]+n` -/
def P11552846482657633419.Spec : Prop :=
  ∀ n, (P11552846482657633419.a n : ℤ) = A059672 n

end A059672

/-! ## A059672.P11377305367496472964

`n-n*∑[2*a(n-1)]` with `a(0)=0, a(1)=-2`
-/

namespace A059672.P11377305367496472964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059672.P11377305367496472964

namespace A059672

/-- `n-n*∑[2*a(n-1)]` -/
def P11377305367496472964.Spec : Prop :=
  ∀ n, P11377305367496472964.a n = A059672 n

end A059672

/-! ## A059672.P7099649722392578297

`4*(a(n-1)+1-a(n-2))-n` with `a(0)=0, a(1)=3`
-/

namespace A059672.P7099649722392578297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  4 * (a (n - 1) + (1 - a (n - 2))) - (n : ℤ)

end

end A059672.P7099649722392578297

namespace A059672

/-- `4*(a(n-1)+1-a(n-2))-n` -/
def P7099649722392578297.Spec : Prop :=
  ∀ n, P7099649722392578297.a n = A059672 n

theorem P7099649722392578297.correct : P7099649722392578297.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A059672, Nat.add_sub_cancel, A059672.P7099649722392578297.a, A059672.P12148314090275833649.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A059672, Nat.add_sub_cancel, A059672.P7099649722392578297.a, A059672.P12148314090275833649.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A059672

/-! ## A059672.P9289971893756505055

`4*(1-(a(n-2)-a(n-1)))-n` with `a(0)=0, a(1)=3`
-/

namespace A059672.P9289971893756505055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  4 * (1 - (a (n - 2) - a (n - 1))) - (n : ℤ)

end

end A059672.P9289971893756505055

namespace A059672

/-- `4*(1-(a(n-2)-a(n-1)))-n` -/
def P9289971893756505055.Spec : Prop :=
  ∀ n, P9289971893756505055.a n = A059672 n

theorem P9289971893756505055.correct : P9289971893756505055.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A059672, Nat.add_sub_cancel, A059672.P9289971893756505055.a, A059672.P12148314090275833649.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A059672, Nat.add_sub_cancel, A059672.P9289971893756505055.a, A059672.P12148314090275833649.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A059672

/-! ## A059672.P5594004766224661977

`∑[A087323(n)]`
-/

namespace A059672.P5594004766224661977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059672.P5594004766224661977

namespace A059672

/-- `∑[A087323(n)]` -/
def P5594004766224661977.Spec : Prop :=
  ∀ n, P5594004766224661977.a n = A059672 n

end A059672

/-! ## A059672.P12789557379616949505

`A276659(n)+∑[n]`
-/

namespace A059672.P12789557379616949505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276659 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A059672.P12789557379616949505

namespace A059672

/-- `A276659(n)+∑[n]` -/
def P12789557379616949505.Spec : Prop :=
  ∀ n, P12789557379616949505.a n = A059672 n

end A059672

/-! ## A059672.P18437893035506347828

`∑[abs(Δ[A188716(n)])]`
-/

namespace A059672.P18437893035506347828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188716 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059672.P18437893035506347828

namespace A059672

/-- `∑[abs(Δ[A188716(n)])]` -/
def P18437893035506347828.Spec : Prop :=
  ∀ n, P18437893035506347828.a n = A059672 n

end A059672

/-!
# A059673: Sum of binary numbers with n 1's and one (non-leading) 0.

The programs for A059673, the canonical program `A059673.P11814336333660723167` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059673 has offset 0).

The definition of A059673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059673.P11814336333660723167

`(2*n-1)*2^n+1-n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059673

/-- `(2*n-1)*2^n+1-n` -/
def P11814336333660723167.Spec : Prop :=
  ∀ n, P11814336333660723167.a n = A059673 n

theorem P11814336333660723167.correct : P11814336333660723167.Spec := by
  intro n
  simp only [A059673]

end A059673

/-! ## A059673.P6162275091432601518

`∑[or(1, 2*n)*ceil(2^(n-1))-1]`
-/

namespace A059673.P6162275091432601518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 * n) : ℤ) * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059673.P6162275091432601518

namespace A059673

/-- `∑[or(1, 2*n)*ceil(2^(n-1))-1]` -/
def P6162275091432601518.Spec : Prop :=
  ∀ n, P6162275091432601518.a n = A059673 n

end A059673

/-! ## A059673.P14544618726265728212

`∑[A128135(n+1)-1]`
-/

namespace A059673.P14544618726265728212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128135 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059673.P14544618726265728212

namespace A059673

/-- `∑[A128135(n+1)-1]` -/
def P14544618726265728212.Spec : Prop :=
  ∀ n, P14544618726265728212.a n = A059673 n

end A059673

/-! ## A059673.P16451649639135554803

`∑[(2*n+1)*A011782(n)-1]`
-/

namespace A059673.P16451649639135554803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A011782 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059673.P16451649639135554803

namespace A059673

/-- `∑[(2*n+1)*A011782(n)-1]` -/
def P16451649639135554803.Spec : Prop :=
  ∀ n, P16451649639135554803.a n = A059673 n

end A059673

/-! ## A059673.P14344668492543150334

`abs((1-2*n)*A000225(n)-n)`
-/

namespace A059673.P14344668492543150334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (2 * n : ℤ)) * A000225 n - (n : ℤ)|

end

end A059673.P14344668492543150334

namespace A059673

/-- `abs((1-2*n)*A000225(n)-n)` -/
def P14344668492543150334.Spec : Prop :=
  ∀ n, P14344668492543150334.a n = A059673 n

end A059673

/-! ## A059673.P11772550911535535798

`abs(∑[(2*n+1)*A131577(n)]-n)`
-/

namespace A059673.P11772550911535535798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A059673.P11772550911535535798

namespace A059673

/-- `abs(∑[(2*n+1)*A131577(n)]-n)` -/
def P11772550911535535798.Spec : Prop :=
  ∀ n, P11772550911535535798.a n = A059673 n

end A059673

/-! ## A059673.P2703894744587342677

`abs((2*n-1)*A000079(n)+1-n)`
-/

namespace A059673.P2703894744587342677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * n : ℤ) - 1) * A000079 n + 1 - (n : ℤ)|

end

end A059673.P2703894744587342677

namespace A059673

/-- `abs((2*n-1)*A000079(n)+1-n)` -/
def P2703894744587342677.Spec : Prop :=
  ∀ n, P2703894744587342677.a n = A059673 n

end A059673

/-! ## A059673.P10927146994515591967

`∑[A002064(n)-A122958(n)]`
-/

namespace A059673.P10927146994515591967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002064 n - A122958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059673.P10927146994515591967

namespace A059673

/-- `∑[A002064(n)-A122958(n)]` -/
def P10927146994515591967.Spec : Prop :=
  ∀ n, P10927146994515591967.a n = A059673 n

end A059673

/-! ## A059673.P11306554432534268255

`∑[A087323(n)-A131577(n)]`
-/

namespace A059673.P11306554432534268255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 n - A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059673.P11306554432534268255

namespace A059673

/-- `∑[A087323(n)-A131577(n)]` -/
def P11306554432534268255.Spec : Prop :=
  ∀ n, P11306554432534268255.a n = A059673 n

end A059673

/-! ## A059673.P6137082443278461891

`abs(n*A126646(n)-A000225(n))`
-/

namespace A059673.P6137082443278461891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A126646 n - A000225 n|

end

end A059673.P6137082443278461891

namespace A059673

/-- `abs(n*A126646(n)-A000225(n))` -/
def P6137082443278461891.Spec : Prop :=
  ∀ n, P6137082443278461891.a n = A059673 n

end A059673

/-! ## A059673.P6002563765469479085

`record[n*A072345(n)-A004526(n)]`
-/

namespace A059673.P6002563765469479085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A072345 n - A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059673.P6002563765469479085

namespace A059673

/-- `record[n*A072345(n)-A004526(n)]` -/
def P6002563765469479085.Spec : Prop :=
  ∀ n, P6002563765469479085.a n = A059673 n

end A059673

/-! ## A059673.P8128679091263236308

`abs(n+1-A048497(n+1)/2)`
-/

namespace A059673.P8128679091263236308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℚ) - (A048497 (n + 1) : ℚ) / 2|

end

end A059673.P8128679091263236308

namespace A059673

/-- `abs(n+1-A048497(n+1)/2)` -/
def P8128679091263236308.Spec : Prop :=
  ∀ n, P8128679091263236308.a n = (A059673 n : ℚ)

end A059673

/-! ## A059673.P9511800525272759063

`ceil(∑[A000079(n)]*A004273(n)/2)`
-/

namespace A059673.P9511800525272759063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j) * A004273 n : ℤ) : ℚ) / 2⌉

end

end A059673.P9511800525272759063

namespace A059673

/-- `ceil(∑[A000079(n)]*A004273(n)/2)` -/
def P9511800525272759063.Spec : Prop :=
  ∀ n, P9511800525272759063.a n = A059673 n

end A059673

/-! ## A059673.P11979750725815952747

`abs(1-(A143126(n)+n))`
-/

namespace A059673.P11979750725815952747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A143126 n + (n : ℤ))|

end

end A059673.P11979750725815952747

namespace A059673

/-- `abs(1-(A143126(n)+n))` -/
def P11979750725815952747.Spec : Prop :=
  ∀ n, P11979750725815952747.a n = A059673 n

end A059673

/-! ## A059673.P2064853335935252729

`∑[A075300(2*n²)]`
-/

namespace A059673.P2064853335935252729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075300 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059673.P2064853335935252729

namespace A059673

/-- `∑[A075300(2*n²)]` -/
def P2064853335935252729.Spec : Prop :=
  ∀ n, P2064853335935252729.a n = A059673 n

end A059673

/-!
# A059674: Square array a(m,n) = binomial(max(m,n), min(m,n)) (m>=0, n>=0) read by antidiagonals.

The programs for A059674, the canonical program `A059674.P10796812070366866973` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059674 has offset 0).

The definition of A059674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059674.P10796812070366866973

`gcd(A026729(n), A052553(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A059674

/-- `gcd(A026729(n), A052553(n))` -/
def P10796812070366866973.Spec : Prop :=
  ∀ n, (P10796812070366866973.a n : ℤ) = A059674 n

theorem P10796812070366866973.correct : P10796812070366866973.Spec := by
  intro n
  simp only [A059674]

end A059674

/-! ## A059674.P10350497041357593913

`C(A003984(n), A004197(n))`
-/

namespace A059674.P10350497041357593913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003984 n).toNat (A004197 n).toNat

end

end A059674.P10350497041357593913

namespace A059674

/-- `C(A003984(n), A004197(n))` -/
def P10350497041357593913.Spec : Prop :=
  ∀ n, (P10350497041357593913.a n : ℤ) = A059674 n

end A059674

/-! ## A059674.P4983355177275832638

`C(A051125(n+1)-1, A049581(n))`
-/

namespace A059674.P4983355177275832638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051125 (n + 1) - 1).toNat (A049581 n).toNat

end

end A059674.P4983355177275832638

namespace A059674

/-- `C(A051125(n+1)-1, A049581(n))` -/
def P4983355177275832638.Spec : Prop :=
  ∀ n, (P4983355177275832638.a n : ℤ) = A059674 n

end A059674

/-! ## A059674.P6795782270258414313

`or(A026729(n), A169803(A083920(n)))`
-/

namespace A059674.P6795782270258414313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026729 n) (A169803 (A083920 n).toNat)

end

end A059674.P6795782270258414313

namespace A059674

/-- `or(A026729(n), A169803(A083920(n)))` -/
def P6795782270258414313.Spec : Prop :=
  ∀ n, P6795782270258414313.a n = A059674 n

end A059674

/-! ## A059674.P10361792866473575761

`C(A003056(n)-A004197(n), A004197(n))`
-/

namespace A059674.P10361792866473575761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n - A004197 n).toNat (A004197 n).toNat

end

end A059674.P10361792866473575761

namespace A059674

/-- `C(A003056(n)-A004197(n), A004197(n))` -/
def P10361792866473575761.Spec : Prop :=
  ∀ n, (P10361792866473575761.a n : ℤ) = A059674 n

end A059674

/-! ## A059674.P15315419396818440031

`gcd(A109466(A061579(n)), A109466(n))`
-/

namespace A059674.P15315419396818440031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109466 (A061579 n).toNat) (A109466 n)

end

end A059674.P15315419396818440031

namespace A059674

/-- `gcd(A109466(A061579(n)), A109466(n))` -/
def P15315419396818440031.Spec : Prop :=
  ∀ n, (P15315419396818440031.a n : ℤ) = A059674 n

end A059674

/-! ## A059674.P7118953174387397489

`or(A026729(n), A026729(A061579(n)))`
-/

namespace A059674.P7118953174387397489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026729 n) (A026729 (A061579 n).toNat)

end

end A059674.P7118953174387397489

namespace A059674

/-- `or(A026729(n), A026729(A061579(n)))` -/
def P7118953174387397489.Spec : Prop :=
  ∀ n, P7118953174387397489.a n = A059674 n

end A059674

/-! ## A059674.P802834708279246568

`or(A052553(n), A052553(A061579(n)))`
-/

namespace A059674.P802834708279246568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052553 n) (A052553 (A061579 n).toNat)

end

end A059674.P802834708279246568

namespace A059674

/-- `or(A052553(n), A052553(A061579(n)))` -/
def P802834708279246568.Spec : Prop :=
  ∀ n, P802834708279246568.a n = A059674 n

end A059674

/-! ## A059674.P6230000148390338377

`A140751(A316323(n))`
-/

namespace A059674.P6230000148390338377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140751 (A316323 n).toNat

end

end A059674.P6230000148390338377

namespace A059674

/-- `A140751(A316323(n))` -/
def P6230000148390338377.Spec : Prop :=
  ∀ n, P6230000148390338377.a n = A059674 n

end A059674

/-! ## A059674.P3927986508165580218

`A140751(A213922(n+1))`
-/

namespace A059674.P3927986508165580218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140751 (A213922 (n + 1)).toNat

end

end A059674.P3927986508165580218

namespace A059674

/-- `A140751(A213922(n+1))` -/
def P3927986508165580218.Spec : Prop :=
  ∀ n, P3927986508165580218.a n = A059674 n

end A059674

/-! ## A059674.P13852342335817520139

`A290252(A271709(n)-1)`
-/

namespace A059674.P13852342335817520139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290252 (A271709 n - 1).toNat

end

end A059674.P13852342335817520139

namespace A059674

/-- `A290252(A271709(n)-1)` -/
def P13852342335817520139.Spec : Prop :=
  ∀ n, P13852342335817520139.a n = A059674 n

end A059674

/-! ## A059674.P14154696041647418549

`A060351(A131816(n))`
-/

namespace A059674.P14154696041647418549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (A131816 n).toNat

end

end A059674.P14154696041647418549

namespace A059674

/-- `A060351(A131816(n))` -/
def P14154696041647418549.Spec : Prop :=
  ∀ n, P14154696041647418549.a n = A059674 n

end A059674

/-!
# A059676: Numbers n such that n*5^n - 1 is prime.

The programs for A059676, there is no canonical definition to state claims against.
-/

/-! ## A059676.P11313529352222312001

`A245353(A083841(n+1))+A083832(n+1)`
-/

namespace A059676.P11313529352222312001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245353 (A083841 (n + 1)).toNat + A083832 (n + 1)

end

end A059676.P11313529352222312001

/-!
# A059678: Triangle T(n,k) giving number of fixed 2 X k polyominoes with n cells (n >= 2, 1<=k<=n-1).

The programs for A059678, there is no canonical definition to state claims against.
-/

/-! ## A059678.P3744793610297858088

`A127560(A126862(n+1)%A016813(n))`
-/

namespace A059678.P3744793610297858088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127560 (Int.tmod (A126862 (n + 1)) (A016813 n)).toNat

end

end A059678.P3744793610297858088

/-! ## A059678.P4006232885397793016

`A127560(A126862(n+1))`
-/

namespace A059678.P4006232885397793016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127560 (A126862 (n + 1)).toNat

end

end A059678.P4006232885397793016

/-! ## A059678.P6453677028242245687

`A127560(eq[1, A056558(n)])`
-/

namespace A059678.P6453677028242245687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059678.P6453677028242245687

/-! ## A059678.P16619463725133501832

`A127560(eq[1, A056560(n)])`
-/

namespace A059678.P16619463725133501832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059678.P16619463725133501832

/-! ## A059678.P17639722480095225741

`A127560(eq[2, A333516(n+1)])`
-/

namespace A059678.P17639722480095225741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333516 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127560 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059678.P17639722480095225741

/-!
# A059679: Triangle T(n,k) giving number of fixed 3 X k polyominoes with n cells (n >= 3, 1<=k<=n-2).

The programs for A059679, there is no canonical definition to state claims against.
-/

/-! ## A059679.P14987586481780505133

`A127560(A286901(2*(n+2))+n)`
-/

namespace A059679.P14987586481780505133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127560 (A286901 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A059679.P14987586481780505133

/-!
# A059682: Triangle T(n,k) giving number of 2 X k polyominoes with n cells (n >= 2, 1<=k<=n-1).

The programs for A059682, there is no canonical definition to state claims against.
-/

/-! ## A059682.P2689440497821253578

`A231713(lcm(A097135(n), A105868(n)))`
-/

namespace A059682.P2689440497821253578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231713 (Int.lcm (A097135 n) (A105868 n))

end

end A059682.P2689440497821253578

/-! ## A059682.P16217166722758235158

`A026729(n)*A071773(A245612(A245612(n)))`
-/

namespace A059682.P16217166722758235158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A071773 (A245612 (A245612 n).toNat).toNat

end

end A059682.P16217166722758235158

/-! ## A059682.P13796099473064040503

`A358758(A114199(n))+A111006(n)`
-/

namespace A059682.P13796099473064040503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358758 (A114199 n).toNat + A111006 n

end

end A059682.P13796099473064040503

/-! ## A059682.P15987854061992132186

`A186746(A187829(n+1))+A111006(n)`
-/

namespace A059682.P15987854061992132186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186746 (A187829 (n + 1)).toNat + A111006 n

end

end A059682.P15987854061992132186

/-! ## A059682.P16903633228746144370

`∑{e}[A084609(A112883(n)), #]`
-/

namespace A059682.P16903633228746144370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084609 (A112883 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A059682.P16903633228746144370

/-!
# A059685: Number of split interval orders on n points.

The programs for A059685, there is no canonical definition to state claims against.
-/

/-! ## A059685.P1945009335028473284

`A008619(A352149(n)+A219861(n+1))`
-/

namespace A059685.P1945009335028473284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A352149 n + A219861 (n + 1)).toNat

end

end A059685.P1945009335028473284

/-! ## A059685.P17834033315135329357

`A065033(A352149(n)+A219861(n+1))`
-/

namespace A059685.P17834033315135329357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A352149 n + A219861 (n + 1)).toNat

end

end A059685.P17834033315135329357

/-! ## A059685.P16845128753858986830

`A054633(A345194(n+1)+A260732(n))`
-/

namespace A059685.P16845128753858986830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054633 (A345194 (n + 1) + A260732 n).toNat

end

end A059685.P16845128753858986830

/-!
# A059686: Grimm numbers (1): a(n) = largest k so that for each m in {n+1, n+2, ..., n+k} there corresponds a different prime factor p_m.

The programs for A059686, there is no canonical definition to state claims against.
-/

/-! ## A059686.P7979848980042423262

`A101083(n+1)%A174681(n+1)`
-/

namespace A059686.P7979848980042423262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101083 (n + 1)) (A174681 (n + 1))

end

end A059686.P7979848980042423262

/-! ## A059686.P2445961281334517886

`A101083(n+1)+val(A134413(n+1), 7)`
-/

namespace A059686.P2445961281334517886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101083 (n + 1) + (SequenceMachineLib.valuation (A134413 (n + 1)).toNat 7 : ℤ)

end

end A059686.P2445961281334517886

/-! ## A059686.P1360433391277204570

`A101083(n+1)+A000007(A008000(n))`
-/

namespace A059686.P1360433391277204570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101083 (n + 1) + A000007 (A008000 n).toNat

end

end A059686.P1360433391277204570

/-! ## A059686.P12037093480450983

`A101083(n+1)+A000007(A123050(n))`
-/

namespace A059686.P12037093480450983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101083 (n + 1) + A000007 (A123050 n).toNat

end

end A059686.P12037093480450983

/-! ## A059686.P1098474161412120619

`A101083(n+1)+A000007(A260526(n))`
-/

namespace A059686.P1098474161412120619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101083 (n + 1) + A000007 (A260526 n).toNat

end

end A059686.P1098474161412120619

/-! ## A059686.P17058280233050166561

`A101083(n+1)+A000007(A062687(n+1))`
-/

namespace A059686.P17058280233050166561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101083 (n + 1) + A000007 (A062687 (n + 1)).toNat

end

end A059686.P17058280233050166561

/-!
# A059689: List consisting of all functions from [1,2,3,...,n] into [1,2,3,...,n] for n=1,2,3,... (written out in full) in lexicographic order.

The programs for A059689, there is no canonical definition to state claims against.
-/

/-! ## A059689.P15947094620948384903

`A347526(A118185(n)+∑[A200668(n+1)])`
-/

namespace A059689.P15947094620948384903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347526 (A118185 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059689.P15947094620948384903

/-! ## A059689.P16103209415678233109

`A036584(A155736(A112307(n+1))²)`
-/

namespace A059689.P16103209415678233109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036584 (A155736 (A112307 (n + 1)).toNat ^ 2).toNat

end

end A059689.P16103209415678233109

/-! ## A059689.P5993185957302851381

`A154402(A212973(n)+A123494(3*n+4))`
-/

namespace A059689.P5993185957302851381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (A212973 n + A123494 (3 * n + 4)).toNat

end

end A059689.P5993185957302851381

/-! ## A059689.P1010228689331764126

`gcd(A273311(A058147(n+2)), A342789(n+1))`
-/

namespace A059689.P1010228689331764126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A273311 (A058147 (n + 2)).toNat) (A342789 (n + 1))

end

end A059689.P1010228689331764126

/-!
# A059690: Number of distinct Cunningham chains of first kind whose initial prime (cf. A059453) <= 2^n.

The programs for A059690, there is no canonical definition to state claims against.
-/

/-! ## A059690.P792641483805829035

`A273190(or(8, A004146(n)))`
-/

namespace A059690.P792641483805829035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (Int.lor 8 (A004146 n)).toNat

end

end A059690.P792641483805829035

/-! ## A059690.P6778438370812395498

`A004736(∏[Δ[A239458(n+1)]])`
-/

namespace A059690.P6778438370812395498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239458 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059690.P6778438370812395498

/-! ## A059690.P12349215160109855883

`A003002(A003000(n))-floor(n/3)`
-/

namespace A059690.P12349215160109855883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A003000 n).toNat - ⌊(n : ℚ) / 3⌋

end

end A059690.P12349215160109855883

/-! ## A059690.P17202110511152022877

`A192685(n)+A005614(A136304(n))`
-/

namespace A059690.P17202110511152022877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192685 n + A005614 (A136304 n).toNat

end

end A059690.P17202110511152022877

/-! ## A059690.P14829504510747975991

`A337637(A384481(n)+A007664(n))`
-/

namespace A059690.P14829504510747975991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337637 (A384481 n + A007664 n).toNat

end

end A059690.P14829504510747975991

/-!
# A059691: Carryless product 12 X n base 10.

The programs for A059691, there is no canonical definition to state claims against.
-/

/-! ## A059691.P9199121209608880738

`A004520(n)+10*A001222(A000079(n))`
-/

namespace A059691.P9199121209608880738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 n + 10 * A001222 (A000079 n).toNat

end

end A059691.P9199121209608880738

/-! ## A059691.P6976566906006513181

`A004520(A062399(n))+10*n`
-/

namespace A059691.P6976566906006513181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004520 (A062399 n).toNat + (10 * n : ℤ)

end

end A059691.P6976566906006513181

/-! ## A059691.P14238108067675866701

`eq[A025895(n), A070425(n)]`
-/

namespace A059691.P14238108067675866701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025895 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070425 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059691.P14238108067675866701

/-! ## A059691.P692814691382127907

`eq[2*A054899(n), A053831(n)]`
-/

namespace A059691.P692814691382127907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054899 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053831 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059691.P692814691382127907

/-! ## A059691.P10681932587226395272

`eq[2*A059995(n), A053831(n)]`
-/

namespace A059691.P10681932587226395272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059995 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053831 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059691.P10681932587226395272

/-!
# A059692: Table of carryless products i * j, i>=0, j>=0, read by antidiagonals.

The programs for A059692, there is no canonical definition to state claims against.
-/

/-! ## A059692.P8051307384056955308

`A004247(n)%A329517(A329504(n+1))`
-/

namespace A059692.P8051307384056955308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004247 n) (A329517 (A329504 (n + 1)).toNat)

end

end A059692.P8051307384056955308

/-! ## A059692.P8907904813940406513

`(A004247(n)%A331325(n))%10`
-/

namespace A059692.P8907904813940406513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A004247 n) (A331325 n)) 10

end

end A059692.P8907904813940406513

/-! ## A059692.P16596735697267507012

`A010879(A004247(n)^A304042(n))`
-/

namespace A059692.P16596735697267507012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (SequenceMachineLib.roundAway ((A004247 n : ℚ) ^ (A304042 n : ℤ))).toNat

end

end A059692.P16596735697267507012

/-! ## A059692.P4963092505577848759

`A010879((A077028(n)-1)%A338555(n+1))`
-/

namespace A059692.P4963092505577848759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (Int.tmod (A077028 n - 1) (A338555 (n + 1))).toNat

end

end A059692.P4963092505577848759

/-! ## A059692.P8266574562259883500

`(A004247(n)+A000007(A182849(n+1)))%10`
-/

namespace A059692.P8266574562259883500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004247 n + A000007 (A182849 (n + 1)).toNat) 10

end

end A059692.P8266574562259883500

/-! ## A059692.P13340072508031701607

`A341620(A175840(n))%10`
-/

namespace A059692.P13340072508031701607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341620 (A175840 n).toNat) 10

end

end A059692.P13340072508031701607

/-! ## A059692.P4592233656283755593

`((1-A176270(n))%A094748(n+1))%10`
-/

namespace A059692.P4592233656283755593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (1 - A176270 n) (A094748 (n + 1))) 10

end

end A059692.P4592233656283755593

/-!
# A059694: Primes p such that 1p1, 3p3, 7p7 and 9p9 are all primes.

The programs for A059694, there is no canonical definition to state claims against.
-/

/-! ## A059694.P11578974945585676276

`∩[A059677(n+1), A069687(n+1)]`
-/

namespace A059694.P11578974945585676276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059694.P11578974945585676276

/-! ## A059694.P11730997152707929487

`p?[A059677(n+1)]`
-/

namespace A059694.P11730997152707929487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059694.P11730997152707929487

/-! ## A059694.P14986753686470625707

`p?[record[A059677(A022446(n))]]`
-/

namespace A059694.P14986753686470625707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059677 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059694.P14986753686470625707

/-! ## A059694.P10713241428791828607

`p?[record[A059677(A065648(n))]]`
-/

namespace A059694.P10713241428791828607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059677 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059694.P10713241428791828607

/-! ## A059694.P17231834262420410107

`p?[record[A059677(A133310(n))]]`
-/

namespace A059694.P17231834262420410107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059677 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059694.P17231834262420410107

/-! ## A059694.P14134520693825277867

`∩[A059677(n+1), A069689(n+1)]`
-/

namespace A059694.P14134520693825277867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059694.P14134520693825277867

/-! ## A059694.P3977738342386503921

`∩[A059677(n+1), A341017(n+1)]`
-/

namespace A059694.P3977738342386503921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059694.P3977738342386503921

/-!
# A059695: Primes p such that p^2 reversed is also prime.

The programs for A059695, there is no canonical definition to state claims against.
-/

/-! ## A059695.P15102796503525180794

`p?[A059007(n+1)]`
-/

namespace A059695.P15102796503525180794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059695.P15102796503525180794

/-! ## A059695.P1426699778167974213

`or(1, p?[A059007(A328399(2*n))])`
-/

namespace A059695.P1426699778167974213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (A328399 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A059695.P1426699778167974213

/-! ## A059695.P15535646146715319518

`A000027(p?[A059007(-xor(n, -1))])`
-/

namespace A059695.P15535646146715319518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A059695.P15535646146715319518

/-! ## A059695.P12296783618514578838

`p?[A059007(A328399(2*n))%A005914(n)]`
-/

namespace A059695.P12296783618514578838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059007 (A328399 (2 * n)).toNat) (A005914 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059695.P12296783618514578838

/-! ## A059695.P15252515713641937616

`∩[A059007(n+1), A261123(n+1)]`
-/

namespace A059695.P15252515713641937616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059695.P15252515713641937616

/-! ## A059695.P8105620521902951269

`∩[A059007(n+1), A065396(n+1)]`
-/

namespace A059695.P8105620521902951269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059695.P8105620521902951269

/-! ## A059695.P3203806375001387598

`∩[A059007(n+1), A071621(n+1)]`
-/

namespace A059695.P3203806375001387598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059695.P3203806375001387598

/-! ## A059695.P13585401781639748764

`∩[A000040(n+1), A059007(n+1)]`
-/

namespace A059695.P13585401781639748764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059695.P13585401781639748764

/-! ## A059695.P17134477723177468911

`∩[A004139(n+1), A059007(n+1)]`
-/

namespace A059695.P17134477723177468911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059695.P17134477723177468911

/-! ## A059695.P5852384009564094153

`∩[A006005(n+1), A059007(n+1)]`
-/

namespace A059695.P5852384009564094153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059695.P5852384009564094153

/-! ## A059695.P3005298169149204405

`∩[A008578(n+1), A059007(n+1)]`
-/

namespace A059695.P3005298169149204405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059695.P3005298169149204405

/-! ## A059695.P12799080843774246432

`∩[A045319(n+1), A059007(n+1)]`
-/

namespace A059695.P12799080843774246432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059695.P12799080843774246432

/-! ## A059695.P14709573841089361365

`∩[A045344(n+1), A059007(n+1)]`
-/

namespace A059695.P14709573841089361365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059695.P14709573841089361365

/-! ## A059695.P7863653832502662408

`∩[A059007(n+1), A065091(n+1)]`
-/

namespace A059695.P7863653832502662408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059695.P7863653832502662408

/-! ## A059695.P1486631251104953902

`∩[A033946(n+1), A059007(n+1)]`
-/

namespace A059695.P1486631251104953902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059695.P1486631251104953902

/-! ## A059695.P14358669552089553622

`∩[A059007(n+1), A158611(n+1)]`
-/

namespace A059695.P14358669552089553622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059695.P14358669552089553622

/-! ## A059695.P17204650611786542428

`∩[A326715(n+1), A059007(n+1)]`
-/

namespace A059695.P17204650611786542428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059695.P17204650611786542428

/-! ## A059695.P2303425723758087167

`∩[A075763(n+1), A059007(n+1)]`
-/

namespace A059695.P2303425723758087167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059695.P2303425723758087167

/-! ## A059695.P12308883091759883728

`record[A006530(A059007(n+3))]`
-/

namespace A059695.P12308883091759883728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A059007 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059695.P12308883091759883728

/-!
# A059696: Primes p such that p^3 reversed is also prime.

The programs for A059696, there is no canonical definition to state claims against.
-/

/-! ## A059696.P5127061422033884073

`p?[A059008(n+1)]`
-/

namespace A059696.P5127061422033884073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059696.P5127061422033884073

/-! ## A059696.P3702942116197841217

`∩[A059008(n+1), A261123(n+1)]`
-/

namespace A059696.P3702942116197841217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059696.P3702942116197841217

/-! ## A059696.P12353233943947713708

`∩[A000040(n+1), A059008(n+1)]`
-/

namespace A059696.P12353233943947713708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059696.P12353233943947713708

/-! ## A059696.P17901459999695432550

`∩[A006005(n+1), A059008(n+1)]`
-/

namespace A059696.P17901459999695432550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059696.P17901459999695432550

/-! ## A059696.P2388272175347254155

`∩[A008578(n+1), A059008(n+1)]`
-/

namespace A059696.P2388272175347254155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059696.P2388272175347254155

/-! ## A059696.P12890293410195330350

`∩[A033946(n+1), A059008(n+1)]`
-/

namespace A059696.P12890293410195330350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059696.P12890293410195330350

/-! ## A059696.P392615616905005107

`∩[A045344(n+1), A059008(n+1)]`
-/

namespace A059696.P392615616905005107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059696.P392615616905005107

/-! ## A059696.P285592368616326046

`∩[A046022(n+1), A059008(n+1)]`
-/

namespace A059696.P285592368616326046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059696.P285592368616326046

/-! ## A059696.P6233343526542045708

`∩[A051948(n+1), A059008(n+1)]`
-/

namespace A059696.P6233343526542045708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059696.P6233343526542045708

/-! ## A059696.P136095363728083071

`∩[A053813(n+1), A059008(n+1)]`
-/

namespace A059696.P136095363728083071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059696.P136095363728083071

/-! ## A059696.P13608725326009186945

`∩[A059008(n+1), A060634(n+1)]`
-/

namespace A059696.P13608725326009186945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059696.P13608725326009186945

/-! ## A059696.P16223033296663005494

`∩[A059008(n+1), A062972(n+1)]`
-/

namespace A059696.P16223033296663005494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059696.P16223033296663005494

/-! ## A059696.P1581012508411347152

`∩[A059008(n+1), A064728(n+1)]`
-/

namespace A059696.P1581012508411347152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059696.P1581012508411347152

/-! ## A059696.P7634263399468496378

`∩[A059008(n+1), A065091(n+1)]`
-/

namespace A059696.P7634263399468496378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059696.P7634263399468496378

/-! ## A059696.P15673339890187984443

`∩[A059008(n+1), A067126(n+1)]`
-/

namespace A059696.P15673339890187984443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059696.P15673339890187984443

/-! ## A059696.P5196085103435409688

`∩[A059008(n+1), A083249(n+1)]`
-/

namespace A059696.P5196085103435409688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059696.P5196085103435409688

/-! ## A059696.P10788062512199064270

`∩[A059008(n+1), A161346(n+1)]`
-/

namespace A059696.P10788062512199064270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059696.P10788062512199064270

/-! ## A059696.P11118688706194440564

`∩[A059008(n+1), A193339(n+1)]`
-/

namespace A059696.P11118688706194440564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059696.P11118688706194440564

/-! ## A059696.P13969359773838366197

`∩[A059008(n+1), A070159(n+1)]`
-/

namespace A059696.P13969359773838366197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059696.P13969359773838366197

/-!
# A059697: Primes p such that p^4 reversed is also prime.

The programs for A059697, there is no canonical definition to state claims against.
-/

/-! ## A059697.P8882548702584258170

`p?[A059205(n+1)]`
-/

namespace A059697.P8882548702584258170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059697.P8882548702584258170

/-! ## A059697.P12552887065165677348

`∩[A059205(n+1), A261123(n+1)]`
-/

namespace A059697.P12552887065165677348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059697.P12552887065165677348

/-! ## A059697.P1646688127148619148

`∩[A000040(n+1), A059205(n+1)]`
-/

namespace A059697.P1646688127148619148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059697.P1646688127148619148

/-! ## A059697.P11953289949377174763

`∩[A008578(n+1), A059205(n+1)]`
-/

namespace A059697.P11953289949377174763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059697.P11953289949377174763

/-! ## A059697.P6371222069900159526

`∩[A033946(n+1), A059205(n+1)]`
-/

namespace A059697.P6371222069900159526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059697.P6371222069900159526

/-! ## A059697.P14145313026394646087

`∩[A045319(n+1), A059205(n+1)]`
-/

namespace A059697.P14145313026394646087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059697.P14145313026394646087

/-! ## A059697.P12362406803888276571

`∩[A045344(n+1), A059205(n+1)]`
-/

namespace A059697.P12362406803888276571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059697.P12362406803888276571

/-! ## A059697.P328149993711652027

`∩[A046022(n+1), A059205(n+1)]`
-/

namespace A059697.P328149993711652027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059697.P328149993711652027

/-! ## A059697.P1941847688149314492

`∩[A051948(n+1), A059205(n+1)]`
-/

namespace A059697.P1941847688149314492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059697.P1941847688149314492

/-! ## A059697.P3960436778934655659

`∩[A053813(n+1), A059205(n+1)]`
-/

namespace A059697.P3960436778934655659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059697.P3960436778934655659

/-! ## A059697.P11155970177775942557

`∩[A059205(n+1), A066050(n+1)]`
-/

namespace A059697.P11155970177775942557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059697.P11155970177775942557

/-! ## A059697.P863430542573307490

`∩[A059205(n+1), A067126(n+1)]`
-/

namespace A059697.P863430542573307490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059697.P863430542573307490

/-! ## A059697.P6809953282588537993

`∩[A059205(n+1), A062972(n+1)]`
-/

namespace A059697.P6809953282588537993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059697.P6809953282588537993

/-! ## A059697.P10371405908918390079

`∩[A059205(n+1), A284696(n+1)]`
-/

namespace A059697.P10371405908918390079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059697.P10371405908918390079

/-! ## A059697.P2864517894380561463

`∩[A326715(n+1), A059205(n+1)]`
-/

namespace A059697.P2864517894380561463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059205 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059697.P2864517894380561463

/-! ## A059697.P2805021303884584283

`∩[A059205(n+1), A132630(n+1)]`
-/

namespace A059697.P2805021303884584283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059697.P2805021303884584283

/-! ## A059697.P14527037749698703089

`∩[A059205(n+1), A328232(n+1)]`
-/

namespace A059697.P14527037749698703089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059697.P14527037749698703089

/-! ## A059697.P1466099755686698769

`∩[A059205(n+1), A079603(n+1)]`
-/

namespace A059697.P1466099755686698769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059697.P1466099755686698769

/-! ## A059697.P2546378734409765111

`record[A020639(A059205(n+2))]`
-/

namespace A059697.P2546378734409765111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A059205 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059697.P2546378734409765111

/-!
# A059698: Primes p such that p^5 reversed is also prime.

The programs for A059698, there is no canonical definition to state claims against.
-/

/-! ## A059698.P11077226444012936142

`p?[A059206(n+1)]`
-/

namespace A059698.P11077226444012936142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059698.P11077226444012936142

/-! ## A059698.P10761245704260887518

`p?[record[A059206(A052938(n))]]`
-/

namespace A059698.P10761245704260887518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059206 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059698.P10761245704260887518

/-! ## A059698.P12100169972588548197

`p?[A040001(n)*A059206(A052938(n))]`
-/

namespace A059698.P12100169972588548197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A059206 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059698.P12100169972588548197

/-! ## A059698.P18244712504309822244

`∩[A059206(n+1), A106118(n+1)]`
-/

namespace A059698.P18244712504309822244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059698.P18244712504309822244

/-! ## A059698.P10716081121040657309

`∩[A059206(n+1), A261123(n+1)]`
-/

namespace A059698.P10716081121040657309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059698.P10716081121040657309

/-! ## A059698.P1647262889999111063

`∩[A000040(n+1), A059206(n+1)]`
-/

namespace A059698.P1647262889999111063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059698.P1647262889999111063

/-! ## A059698.P13074579870389941985

`∩[A008578(n+1), A059206(n+1)]`
-/

namespace A059698.P13074579870389941985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059698.P13074579870389941985

/-! ## A059698.P7948040980026176607

`∩[A033946(n+1), A059206(n+1)]`
-/

namespace A059698.P7948040980026176607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059698.P7948040980026176607

/-! ## A059698.P11663495585866461531

`∩[A045319(n+1), A059206(n+1)]`
-/

namespace A059698.P11663495585866461531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059698.P11663495585866461531

/-! ## A059698.P12929603327941183896

`∩[A045344(n+1), A059206(n+1)]`
-/

namespace A059698.P12929603327941183896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059698.P12929603327941183896

/-! ## A059698.P13997740362986351974

`∩[A053813(n+1), A059206(n+1)]`
-/

namespace A059698.P13997740362986351974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059698.P13997740362986351974

/-! ## A059698.P9470347860181362646

`∩[A059206(n+1), A060634(n+1)]`
-/

namespace A059698.P9470347860181362646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059698.P9470347860181362646

/-! ## A059698.P430267797511572301

`∩[A059206(n+1), A097605(n+1)]`
-/

namespace A059698.P430267797511572301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059698.P430267797511572301

/-! ## A059698.P18111969948485588517

`∩[A059206(n+1), A116974(n+1)]`
-/

namespace A059698.P18111969948485588517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059698.P18111969948485588517

/-! ## A059698.P9720530171731196155

`∩[A059206(n+1), A158611(n+1)]`
-/

namespace A059698.P9720530171731196155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059698.P9720530171731196155

/-! ## A059698.P5591060081705335957

`∩[A059206(n+1), A182140(n+1)]`
-/

namespace A059698.P5591060081705335957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059698.P5591060081705335957

/-! ## A059698.P16296804848952469335

`∩[A182986(n+1), A059206(n+1)]`
-/

namespace A059698.P16296804848952469335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059698.P16296804848952469335

/-! ## A059698.P7909795688585738169

`∩[A326715(n+1), A059206(n+1)]`
-/

namespace A059698.P7909795688585738169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059698.P7909795688585738169

/-! ## A059698.P9028564646527271119

`∩[A059206(n+1), A348440(n+1)]`
-/

namespace A059698.P9028564646527271119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059698.P9028564646527271119

/-! ## A059698.P14483665520396056488

`∩[A059206(n+1), A384369(n+1)]`
-/

namespace A059698.P14483665520396056488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059698.P14483665520396056488

/-!
# A059699: Primes p such that p^6 reversed is also prime.

The programs for A059699, there is no canonical definition to state claims against.
-/

/-! ## A059699.P5425358130922917466

`p?[A059207(n+1)]`
-/

namespace A059699.P5425358130922917466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059699.P5425358130922917466

/-! ## A059699.P5414379571097217968

`record[p?[A059207(A324347(n))]]`
-/

namespace A059699.P5414379571097217968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059207 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059699.P5414379571097217968

/-! ## A059699.P7813556246922184368

`p?[A001285(n)*A059207(A008619(n))]`
-/

namespace A059699.P7813556246922184368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n * A059207 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059699.P7813556246922184368

/-! ## A059699.P16368969332196757902

`p?[record[A059207(A267806(n))]]`
-/

namespace A059699.P16368969332196757902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059207 (A267806 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059699.P16368969332196757902

/-! ## A059699.P8227241191653494714

`p?[record[A059207(A141256(n))]]`
-/

namespace A059699.P8227241191653494714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059207 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059699.P8227241191653494714

/-! ## A059699.P12074344513360471319

`∩[A038672(n+1), A059207(n+1)]`
-/

namespace A059699.P12074344513360471319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059699.P12074344513360471319

/-! ## A059699.P13521115053115978843

`∩[A059207(n+1), A122259(n+1)]`
-/

namespace A059699.P13521115053115978843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059699.P13521115053115978843

/-! ## A059699.P3543691822005444443

`∩[A000040(n+1), A059207(n+1)]`
-/

namespace A059699.P3543691822005444443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059699.P3543691822005444443

/-! ## A059699.P13971882752251328505

`∩[A004139(n+1), A059207(n+1)]`
-/

namespace A059699.P13971882752251328505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059699.P13971882752251328505

/-! ## A059699.P1591313179255586477

`∩[A006005(n+1), A059207(n+1)]`
-/

namespace A059699.P1591313179255586477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059699.P1591313179255586477

/-! ## A059699.P12084786133373273799

`∩[A008578(n+1), A059207(n+1)]`
-/

namespace A059699.P12084786133373273799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059699.P12084786133373273799

/-! ## A059699.P15731825475551239066

`∩[A033946(n+1), A059207(n+1)]`
-/

namespace A059699.P15731825475551239066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059699.P15731825475551239066

/-! ## A059699.P17088021905968674377

`∩[A045319(n+1), A059207(n+1)]`
-/

namespace A059699.P17088021905968674377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059699.P17088021905968674377

/-! ## A059699.P5192911360975946921

`∩[A045344(n+1), A059207(n+1)]`
-/

namespace A059699.P5192911360975946921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059699.P5192911360975946921

/-! ## A059699.P1787723600473628804

`∩[A046022(n+1), A059207(n+1)]`
-/

namespace A059699.P1787723600473628804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059699.P1787723600473628804

/-! ## A059699.P15515843189559620789

`∩[A051948(n+1), A059207(n+1)]`
-/

namespace A059699.P15515843189559620789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059699.P15515843189559620789

/-! ## A059699.P8703561763485575852

`∩[A053813(n+1), A059207(n+1)]`
-/

namespace A059699.P8703561763485575852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059699.P8703561763485575852

/-! ## A059699.P12167041122595979327

`∩[A059207(n+1), A065091(n+1)]`
-/

namespace A059699.P12167041122595979327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059699.P12167041122595979327

/-! ## A059699.P1234434807786623456

`∩[A059207(n+1), A065376(n+1)]`
-/

namespace A059699.P1234434807786623456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059699.P1234434807786623456

/-! ## A059699.P4627286996176980573

`∩[A065396(n+1), A059207(n+1)]`
-/

namespace A059699.P4627286996176980573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059699.P4627286996176980573

