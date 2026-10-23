import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A093302: a(n) = (a(n-1)+(2n-1))*(2n) with a(0) = 0.

The programs for A093302, the canonical program `A093302.P1908604595833814271` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093302 has offset 0).

The definition of A093302 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+2*n-1)*2*n` (program `A093302.P1908604595833814271`, by `A093302.P1908604595833814271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093302.P10544234140356376913

`2*(a(n-1)+2*n-1)*n` with `a(0)=0`
-/

namespace A093302.P10544234140356376913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * (a (n - 1) + (2 * n : ℤ) - 1) * (n : ℤ)

end

end A093302.P10544234140356376913

namespace A093302

/-- `2*(a(n-1)+2*n-1)*n` -/
def P10544234140356376913.Spec : Prop :=
  ∀ n, P10544234140356376913.a n = A093302 n

theorem P10544234140356376913.correct : P10544234140356376913.Spec := by
  intro n
  simp only [A093302, Nat.add_sub_cancel, A093302.P10544234140356376913.a, A093302.P1908604595833814271.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A093302

/-! ## A093302.P1908604595833814271

`(a(n-1)+2*n-1)*2*n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093302

/-- `(a(n-1)+2*n-1)*2*n` -/
def P1908604595833814271.Spec : Prop :=
  ∀ n, P1908604595833814271.a n = A093302 n

theorem P1908604595833814271.correct : P1908604595833814271.Spec := by
  intro n
  simp only [A093302]

end A093302

/-! ## A093302.P1396975417606549534

`2*floor(exp(1/2)*n!*2^n)-2*n-2`
-/

namespace A093302.P1396975417606549534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊Real.exp ((1 : ℚ) / 2 : ℝ) * (Nat.factorial n : ℝ) * (2 ^ n : ℝ)⌋ - (2 * n : ℤ) - 2

end

end A093302.P1396975417606549534

namespace A093302

/-- `2*floor(exp(1/2)*n!*2^n)-2*n-2` -/
def P1396975417606549534.Spec : Prop :=
  ∀ n, P1396975417606549534.a n = A093302 n

end A093302

/-! ## A093302.P15229779244343999862

`2*n*(2*n-(1-a(n-1)))` with `a(0)=0`
-/

namespace A093302.P15229779244343999862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * ((n : ℤ) * ((2 * n : ℤ) - (1 - a (n - 1))))

end

end A093302.P15229779244343999862

namespace A093302

/-- `2*n*(2*n-(1-a(n-1)))` -/
def P15229779244343999862.Spec : Prop :=
  ∀ n, P15229779244343999862.a n = A093302 n

end A093302

/-! ## A093302.P5982140461282256698

`A007566(n)-1`
-/

namespace A093302.P5982140461282256698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007566 n - 1

end

end A093302.P5982140461282256698

namespace A093302

/-- `A007566(n)-1` -/
def P5982140461282256698.Spec : Prop :=
  ∀ n, P5982140461282256698.a n = A093302 n

end A093302

/-! ## A093302.P8843699957310846075

`A077138(2*n)`
-/

namespace A093302.P8843699957310846075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077138 (2 * n)

end

end A093302.P8843699957310846075

namespace A093302

/-- `A077138(2*n)` -/
def P8843699957310846075.Spec : Prop :=
  ∀ n, P8843699957310846075.a n = A093302 n

end A093302

/-! ## A093302.P18354653630884841077

`2*n*A085644(n)`
-/

namespace A093302.P18354653630884841077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A085644 n)

end

end A093302.P18354653630884841077

namespace A093302

/-- `2*n*A085644(n)` -/
def P18354653630884841077.Spec : Prop :=
  ∀ n, P18354653630884841077.a n = A093302 n

end A093302

/-! ## A093302.P6927284066474173673

`2*(A010844(n)-(n+1))`
-/

namespace A093302.P6927284066474173673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A010844 n - (n + 1 : ℤ))

end

end A093302.P6927284066474173673

namespace A093302

/-- `2*(A010844(n)-(n+1))` -/
def P6927284066474173673.Spec : Prop :=
  ∀ n, P6927284066474173673.a n = A093302 n

end A093302

/-! ## A093302.P5214216982115783180

`A161370(n)-(2*n+3)`
-/

namespace A093302.P5214216982115783180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161370 n - (2 * n + 3 : ℤ)

end

end A093302.P5214216982115783180

namespace A093302

/-- `A161370(n)-(2*n+3)` -/
def P5214216982115783180.Spec : Prop :=
  ∀ n, P5214216982115783180.a n = A093302 n

end A093302

/-! ## A093302.P2872136568815403683

`A099760(n+1)-2*(n+1)`
-/

namespace A093302.P2872136568815403683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099760 (n + 1) - (2 * (n + 1) : ℤ)

end

end A093302.P2872136568815403683

namespace A093302

/-- `A099760(n+1)-2*(n+1)` -/
def P2872136568815403683.Spec : Prop :=
  ∀ n, P2872136568815403683.a n = A093302 n

end A093302

/-!
# A093303: a(n) = a(n-1)*(2n-1) + 2n with a(0)=0.

The programs for A093303, the canonical program `A093303.P9172244247440525351` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093303 has offset 0).

The definition of A093303 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*(2*n-1)+2*n` (program `A093303.P9172244247440525351`, by `A093303.P9172244247440525351.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093303.P9172244247440525351

`a(n-1)*(2*n-1)+2*n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093303

/-- `a(n-1)*(2*n-1)+2*n` -/
def P9172244247440525351.Spec : Prop :=
  ∀ n, P9172244247440525351.a n = A093303 n

theorem P9172244247440525351.correct : P9172244247440525351.Spec := by
  intro n
  simp only [A093303]

end A093303

/-! ## A093303.P3343297705699785275

`2*n-(1-2*n)*a(n-1)` with `a(0)=0`
-/

namespace A093303.P3343297705699785275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) - (1 - (2 * n : ℤ)) * a (n - 1)

end

end A093303.P3343297705699785275

namespace A093303

/-- `2*n-(1-2*n)*a(n-1)` -/
def P3343297705699785275.Spec : Prop :=
  ∀ n, P3343297705699785275.a n = A093303 n

end A093303

/-! ## A093303.P16567144733559386812

`A222559(2*n)`
-/

namespace A093303.P16567144733559386812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222559 (2 * n)

end

end A093303.P16567144733559386812

namespace A093303

/-- `A222559(2*n)` -/
def P16567144733559386812.Spec : Prop :=
  ∀ n, P16567144733559386812.a n = A093303 n

end A093303

/-! ## A093303.P11963800110576500867

`2*A368792(n)`
-/

namespace A093303.P11963800110576500867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A368792 n

end

end A093303.P11963800110576500867

namespace A093303

/-- `2*A368792(n)` -/
def P11963800110576500867.Spec : Prop :=
  ∀ n, P11963800110576500867.a n = A093303 n

end A093303

/-! ## A093303.P16521468760689595180

`record[A222559(and(n, n+1))]`
-/

namespace A093303.P16521468760689595180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222559 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093303.P16521468760689595180

namespace A093303

/-- `record[A222559(and(n, n+1))]` -/
def P16521468760689595180.Spec : Prop :=
  ∀ n, P16521468760689595180.a n = A093303 n

end A093303

/-! ## A093303.P11785080555692521816

`record[lcm((n+1)%2, A222559(n))]`
-/

namespace A093303.P11785080555692521816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((n + 1) % 2 : ℕ) : ℤ) (A222559 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093303.P11785080555692521816

namespace A093303

/-- `record[lcm((n+1)%2, A222559(n))]` -/
def P11785080555692521816.Spec : Prop :=
  ∀ n, (P11785080555692521816.a n : ℤ) = A093303 n

end A093303

/-! ## A093303.P17078956439616232332

`record[lcm(A010673(n+1), A222559(n))]`
-/

namespace A093303.P17078956439616232332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010673 (n + 1)) (A222559 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093303.P17078956439616232332

namespace A093303

/-- `record[lcm(A010673(n+1), A222559(n))]` -/
def P17078956439616232332.Spec : Prop :=
  ∀ n, (P17078956439616232332.a n : ℤ) = A093303 n

end A093303

/-! ## A093303.P11673427299643762368

`A047905(2*n+1)-A001147(n)`
-/

namespace A093303.P11673427299643762368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047905 (2 * n + 1) - A001147 n

end

end A093303.P11673427299643762368

namespace A093303

/-- `A047905(2*n+1)-A001147(n)` -/
def P11673427299643762368.Spec : Prop :=
  ∀ n, P11673427299643762368.a n = A093303 n

end A093303

/-! ## A093303.P5318323671916132232

`A001147(n)-A047907(2*n+1)`
-/

namespace A093303.P5318323671916132232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n - A047907 (2 * n + 1)

end

end A093303.P5318323671916132232

namespace A093303

/-- `A001147(n)-A047907(2*n+1)` -/
def P5318323671916132232.Spec : Prop :=
  ∀ n, P5318323671916132232.a n = A093303 n

end A093303

/-!
# A093304: a(n) = A000071(n+1) + A000079(n-1) - A092176(n-1).

The programs for A093304, the canonical program `A093304.P2617661038661647900` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093304 has offset 1).

The definition of A093304 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092176, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A093304.P2617661038661647900

`A000071(n+2)+A000079(n)-A092176(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A093304

/-- `A000071(n+2)+A000079(n)-A092176(n)` -/
def P2617661038661647900.Spec : Prop :=
  ∀ n, P2617661038661647900.a n = A093304 (n + 1)

theorem P2617661038661647900.correct : P2617661038661647900.Spec := by
  intro n
  simp only [A093304, Nat.add_sub_cancel]

end A093304

/-! ## A093304.P13307039998605168979

`A172471(A047027(n))-floor(n/2)`
-/

namespace A093304.P13307039998605168979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A047027 n).toNat - ⌊(n : ℚ) / 2⌋

end

end A093304.P13307039998605168979

namespace A093304

/-- `A172471(A047027(n))-floor(n/2)` -/
def P13307039998605168979.Spec : Prop :=
  ∀ n, P13307039998605168979.a n = A093304 (n + 1)

end A093304

/-! ## A093304.P10482045580574317226

`A333224(n)+A026819(∑[ceil(3^(n-1))])`
-/

namespace A093304.P10482045580574317226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 n + A026819 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093304.P10482045580574317226

namespace A093304

/-- `A333224(n)+A026819(∑[ceil(3^(n-1))])` -/
def P10482045580574317226.Spec : Prop :=
  ∀ n, P10482045580574317226.a n = A093304 (n + 1)

end A093304

/-! ## A093304.P7646871775288954976

`A005041(A234007(n+1)+∏{e}[n+1, #+1])`
-/

namespace A093304.P7646871775288954976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A234007 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A093304.P7646871775288954976

namespace A093304

/-- `A005041(A234007(n+1)+∏{e}[n+1, #+1])` -/
def P7646871775288954976.Spec : Prop :=
  ∀ n, P7646871775288954976.a n = A093304 (n + 1)

end A093304

/-! ## A093304.P2637401672518797915

`A000975(n)+A000005(A353225(n))`
-/

namespace A093304.P2637401672518797915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n + A000005 (A353225 n).toNat

end

end A093304.P2637401672518797915

namespace A093304

/-- `A000975(n)+A000005(A353225(n))` -/
def P2637401672518797915.Spec : Prop :=
  ∀ n, P2637401672518797915.a n = A093304 (n + 1)

end A093304

/-!
# A093305: Number of binary necklaces of length n with no subsequence 000.

The programs for A093305, there is no canonical definition to state claims against.
-/

/-! ## A093305.P8810220481401788699

`A322057(∑[n+3]+1)`
-/

namespace A093305.P8810220481401788699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322057 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A093305.P8810220481401788699

/-! ## A093305.P2536005696690611159

`record[A322057(sqrt(A303054(n+1)))]`
-/

namespace A093305.P2536005696690611159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322057 (SequenceMachineLib.roundAway (Real.sqrt (A303054 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093305.P2536005696690611159

/-! ## A093305.P6330184688924260540

`A322057(A055999(n)+4)%A022093(2*n+1)`
-/

namespace A093305.P6330184688924260540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322057 (A055999 n + 4).toNat) (A022093 (2 * n + 1))

end

end A093305.P6330184688924260540

/-!
# A093306: k-th lower twin prime, where k is the n-th Fibonacci number.

The programs for A093306, the canonical program `A093306.P7046481564405569145` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093306 has offset 1).

The definition of A093306 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A093306.P7046481564405569145

`A001359(A000045(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A093306

/-- `A001359(A000045(n+1))` -/
def P7046481564405569145.Spec : Prop :=
  ∀ n, P7046481564405569145.a n = A093306 (n + 1)

theorem P7046481564405569145.correct : P7046481564405569145.Spec := by
  intro n
  simp only [A093306, Nat.add_sub_cancel]

end A093306

/-! ## A093306.P16140213127607529394

`A093307(n+1)-2`
-/

namespace A093306.P16140213127607529394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093307 (n + 1) - 2

end

end A093306.P16140213127607529394

namespace A093306

/-- `A093307(n+1)-2` -/
def P16140213127607529394.Spec : Prop :=
  ∀ n, P16140213127607529394.a n = A093306 (n + 1)

end A093306

/-! ## A093306.P13980861413695318258

`A158522(A000040(n+1))+A093307(n+1)`
-/

namespace A093306.P13980861413695318258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (A000040 (n + 1)).toNat + A093307 (n + 1)

end

end A093306.P13980861413695318258

namespace A093306

/-- `A158522(A000040(n+1))+A093307(n+1)` -/
def P13980861413695318258.Spec : Prop :=
  ∀ n, P13980861413695318258.a n = A093306 (n + 1)

end A093306

/-! ## A093306.P13720149505391586097

`A158522(A001359(n+1))+A093307(n+1)`
-/

namespace A093306.P13720149505391586097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (A001359 (n + 1)).toNat + A093307 (n + 1)

end

end A093306.P13720149505391586097

namespace A093306

/-- `A158522(A001359(n+1))+A093307(n+1)` -/
def P13720149505391586097.Spec : Prop :=
  ∀ n, P13720149505391586097.a n = A093306 (n + 1)

end A093306

/-! ## A093306.P280446330698158476

`A158522(A006512(n+1))+A093307(n+1)`
-/

namespace A093306.P280446330698158476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158522 (A006512 (n + 1)).toNat + A093307 (n + 1)

end

end A093306.P280446330698158476

namespace A093306

/-- `A158522(A006512(n+1))+A093307(n+1)` -/
def P280446330698158476.Spec : Prop :=
  ∀ n, P280446330698158476.a n = A093306 (n + 1)

end A093306

/-!
# A093307: k-th upper twin prime, where k is the n-th Fibonacci number.

The programs for A093307, the canonical program `A093307.P9129707170619454344` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093307 has offset 1).

The definition of A093307 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093306, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A093307.P9129707170619454344

`2+A093306(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A093307

/-- `2+A093306(n+1)` -/
def P9129707170619454344.Spec : Prop :=
  ∀ n, P9129707170619454344.a n = A093307 (n + 1)

theorem P9129707170619454344.correct : P9129707170619454344.Spec := by
  intro n
  simp only [A093307, Nat.add_sub_cancel]

end A093307

/-! ## A093307.P13748173450960840046

`A006512(A000045(n+1))`
-/

namespace A093307.P13748173450960840046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (A000045 (n + 1)).toNat

end

end A093307.P13748173450960840046

namespace A093307

/-- `A006512(A000045(n+1))` -/
def P13748173450960840046.Spec : Prop :=
  ∀ n, P13748173450960840046.a n = A093307 (n + 1)

end A093307

/-! ## A093307.P15986140648102531323

`A001359(Δ[round(ϕ*a(n-1))])+2` with `a(0)=1`
-/

namespace A093307.P15986140648102531323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (f1 (n + 1) - f1 n).toNat + 2

end

end A093307.P15986140648102531323

namespace A093307

/-- `A001359(Δ[round(ϕ*a(n-1))])+2` -/
def P15986140648102531323.Spec : Prop :=
  ∀ n, P15986140648102531323.a n = A093307 (n + 1)

end A093307

/-! ## A093307.P6343208134908509969

`A001359(A037027(∑[n]))+2`
-/

namespace A093307.P6343208134908509969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A037027 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 2

end

end A093307.P6343208134908509969

namespace A093307

/-- `A001359(A037027(∑[n]))+2` -/
def P6343208134908509969.Spec : Prop :=
  ∀ n, P6343208134908509969.a n = A093307 (n + 1)

end A093307

/-! ## A093307.P4989698170695976729

`A001359(A058071(∑[n]))+2`
-/

namespace A093307.P4989698170695976729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (A058071 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + 2

end

end A093307.P4989698170695976729

namespace A093307

/-- `A001359(A058071(∑[n]))+2` -/
def P4989698170695976729.Spec : Prop :=
  ∀ n, P4989698170695976729.a n = A093307 (n + 1)

end A093307

/-!
# A093308: a(n) = Fibonacci(prime(prime(n))).

The programs for A093308, there is no canonical definition to state claims against.
-/

/-! ## A093308.P6434956858336001487

`A000045(A006450(n+1))`
-/

namespace A093308.P6434956858336001487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A006450 (n + 1)).toNat

end

end A093308.P6434956858336001487

/-! ## A093308.P17402963669339377100

`A030426(A000040(n+1))`
-/

namespace A093308.P17402963669339377100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030426 (A000040 (n + 1)).toNat

end

end A093308.P17402963669339377100

/-! ## A093308.P8568421117840279104

`A059974(A038580(n+1))`
-/

namespace A093308.P8568421117840279104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059974 (A038580 (n + 1)).toNat

end

end A093308.P8568421117840279104

/-! ## A093308.P2712450956726006619

`A094967(A141138(n+1))`
-/

namespace A093308.P2712450956726006619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (A141138 (n + 1)).toNat

end

end A093308.P2712450956726006619

/-! ## A093308.P5079419884446344989

`A000045(A175247(n+2))`
-/

namespace A093308.P5079419884446344989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A175247 (n + 2)).toNat

end

end A093308.P5079419884446344989

/-!
# A093309: a(n) = prime(prime(Fibonacci(n))).

The programs for A093309, the canonical program `A093309.P17076488906338620795` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093309 has offset 1).

The definition of A093309 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A030427, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A093309.P17076488906338620795

`A000040(A030427(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A093309

/-- `A000040(A030427(n+1))` -/
def P17076488906338620795.Spec : Prop :=
  ∀ n, P17076488906338620795.a n = A093309 (n + 1)

theorem P17076488906338620795.correct : P17076488906338620795.Spec := by
  intro n
  simp only [A093309, Nat.add_sub_cancel]

end A093309

/-! ## A093309.P289748694953355453

`A006450(Δ[floor(ϕ*a(n-1))])` with `a(0)=2`
-/

namespace A093309.P289748694953355453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f1 (n + 1) - f1 n).toNat

end

end A093309.P289748694953355453

namespace A093309

/-- `A006450(Δ[floor(ϕ*a(n-1))])` -/
def P289748694953355453.Spec : Prop :=
  ∀ n, P289748694953355453.a n = A093309 (n + 1)

end A093309

/-! ## A093309.P7349038050055131415

`A006450(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A093309.P7349038050055131415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f1 (n + 1) - f1 n).toNat

end

end A093309.P7349038050055131415

namespace A093309

/-- `A006450(Δ[round(ϕ*a(n-1))])` -/
def P7349038050055131415.Spec : Prop :=
  ∀ n, P7349038050055131415.a n = A093309 (n + 1)

end A093309

/-! ## A093309.P17749642881320456419

`A006450(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A093309.P17749642881320456419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093309.P17749642881320456419

namespace A093309

/-- `A006450(∑[round(ϕ*a(n-1))])` -/
def P17749642881320456419.Spec : Prop :=
  ∀ n, P17749642881320456419.a n = A093309 (n + 1)

end A093309

/-! ## A093309.P15785669153426072173

`A006450(∑[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A093309.P15785669153426072173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093309.P15785669153426072173

namespace A093309

/-- `A006450(∑[a(n-1)+a(n-2)])` -/
def P15785669153426072173.Spec : Prop :=
  ∀ n, P15785669153426072173.a n = A093309 (n + 1)

end A093309

/-!
# A093310: a(n) is the k-th lower twin prime, where k = n!.

The programs for A093310, the canonical program `A093310.P6192619687334142110` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093310 has offset 0).

The definition of A093310 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A093310.P12239080786433098145

`A093311(n)-2`
-/

namespace A093310.P12239080786433098145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093311 n - 2

end

end A093310.P12239080786433098145

namespace A093310

/-- `A093311(n)-2` -/
def P12239080786433098145.Spec : Prop :=
  ∀ n, P12239080786433098145.a n = A093310 n

end A093310

/-! ## A093310.P6192619687334142110

`A001359(n!)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A093310

/-- `A001359(n!)` -/
def P6192619687334142110.Spec : Prop :=
  ∀ n, P6192619687334142110.a n = A093310 n

theorem P6192619687334142110.correct : P6192619687334142110.Spec := by
  intro n
  simp only [A093310]

end A093310

/-! ## A093310.P12722512686743237349

`A118824(2*n+1)+A093311(n)`
-/

namespace A093310.P12722512686743237349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118824 (2 * n + 1) + A093311 n

end

end A093310.P12722512686743237349

namespace A093310

/-- `A118824(2*n+1)+A093311(n)` -/
def P12722512686743237349.Spec : Prop :=
  ∀ n, P12722512686743237349.a n = A093310 n

end A093310

/-! ## A093310.P1121940811469218004

`A359791(A007530(n+1))+A093311(n)`
-/

namespace A093310.P1121940811469218004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359791 (A007530 (n + 1)).toNat + A093311 n

end

end A093310.P1121940811469218004

namespace A093310

/-- `A359791(A007530(n+1))+A093311(n)` -/
def P1121940811469218004.Spec : Prop :=
  ∀ n, P1121940811469218004.a n = A093310 n

end A093310

/-! ## A093310.P6916368691745051100

`A121439(A269347(3*n+1))+A093311(n)`
-/

namespace A093310.P6916368691745051100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121439 (A269347 (3 * n + 1)).toNat + A093311 n

end

end A093310.P6916368691745051100

namespace A093310

/-- `A121439(A269347(3*n+1))+A093311(n)` -/
def P6916368691745051100.Spec : Prop :=
  ∀ n, P6916368691745051100.a n = A093310 n

end A093310

/-!
# A093311: a(n) is the k-th upper twin prime, where k = n!.

The programs for A093311, the canonical program `A093311.P2244412378451510497` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093311 has offset 0).

The definition of A093311 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093310, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A093311.P2244412378451510497

`A093310(n)+2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A093311

/-- `A093310(n)+2` -/
def P2244412378451510497.Spec : Prop :=
  ∀ n, P2244412378451510497.a n = A093311 n

theorem P2244412378451510497.correct : P2244412378451510497.Spec := by
  intro n
  simp only [A093311]

end A093311

/-! ## A093311.P4099636393894594164

`A006512(n!)`
-/

namespace A093311.P4099636393894594164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (Nat.factorial n)

end

end A093311.P4099636393894594164

namespace A093311

/-- `A006512(n!)` -/
def P4099636393894594164.Spec : Prop :=
  ∀ n, P4099636393894594164.a n = A093311 n

end A093311

/-! ## A093311.P9164893718493302692

`2-(A025439(n)-A093310(n))`
-/

namespace A093311.P9164893718493302692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A025439 n - A093310 n)

end

end A093311.P9164893718493302692

namespace A093311

/-- `2-(A025439(n)-A093310(n))` -/
def P9164893718493302692.Spec : Prop :=
  ∀ n, P9164893718493302692.a n = A093311 n

end A093311

/-! ## A093311.P14297411047212829082

`3-(char[A254109(n)]-A093310(n))`
-/

namespace A093311.P14297411047212829082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254109 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A093310 n)

end

end A093311.P14297411047212829082

namespace A093311

/-- `3-(char[A254109(n)]-A093310(n))` -/
def P14297411047212829082.Spec : Prop :=
  ∀ n, P14297411047212829082.a n = A093311 n

end A093311

/-! ## A093311.P11714334887802257345

`A001359(n!)+2`
-/

namespace A093311.P11714334887802257345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (Nat.factorial n) + 2

end

end A093311.P11714334887802257345

namespace A093311

/-- `A001359(n!)+2` -/
def P11714334887802257345.Spec : Prop :=
  ∀ n, P11714334887802257345.a n = A093311 n

end A093311

/-!
# A093312: Least k such that (2n + 2k) + 1 and (2n*2k) + 1 are both primes.

The programs for A093312, there is no canonical definition to state claims against.
-/

/-! ## A093312.P694327807936040271

`A093481(n+1)/2`
-/

namespace A093312.P694327807936040271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093481 (n + 1) : ℚ) / 2

end

end A093312.P694327807936040271

/-! ## A093312.P2085940883793407241

`A001281(A093481(n+1))`
-/

namespace A093312.P2085940883793407241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A093481 (n + 1)).toNat

end

end A093312.P2085940883793407241

/-! ## A093312.P10307442686834807636

`A004524(A093481(n+1)+1)`
-/

namespace A093312.P10307442686834807636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A093481 (n + 1) + 1).toNat

end

end A093312.P10307442686834807636

/-! ## A093312.P12974597311348680050

`A004526(A093481(n+1)+1)`
-/

namespace A093312.P12974597311348680050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A093481 (n + 1) + 1).toNat

end

end A093312.P12974597311348680050

/-! ## A093312.P1046199149542114963

`A028242(A093481(n+1)+1)`
-/

namespace A093312.P1046199149542114963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A093481 (n + 1) + 1).toNat

end

end A093312.P1046199149542114963

/-! ## A093312.P14375929456634199205

`A000463(A093481(n+1)-1)`
-/

namespace A093312.P14375929456634199205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A093481 (n + 1) - 1).toNat

end

end A093312.P14375929456634199205

/-! ## A093312.P3385648706387156189

`A001057(A093481(n+1)-1)`
-/

namespace A093312.P3385648706387156189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A093481 (n + 1) - 1).toNat

end

end A093312.P3385648706387156189

/-! ## A093312.P5376243323305271435

`A003602(A093481(n+1)-1)`
-/

namespace A093312.P5376243323305271435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A093481 (n + 1) - 1).toNat

end

end A093312.P5376243323305271435

/-! ## A093312.P5955859951644044580

`A002265(2*A093481(n+1))`
-/

namespace A093312.P5955859951644044580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A093481 (n + 1)).toNat

end

end A093312.P5955859951644044580

/-! ## A093312.P3393653693155411235

`A274923(A093481(n+1)²)`
-/

namespace A093312.P3393653693155411235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274923 (A093481 (n + 1) ^ 2).toNat

end

end A093312.P3393653693155411235

/-!
# A093313: Number of permutations s_1,s_2,...,s_n of 1,2,...,n with s_1 = 2 and such that for all j=1,2,...,n, s_j divides Sum_{i=1..j} s_i.

The programs for A093313, there is no canonical definition to state claims against.
-/

/-! ## A093313.P6217379078267074044

`A025841(A049614(a(n-2)+ceil((n+1)/7)))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A093313.P6217379078267074044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A025841 (A049614 (a (n - 2) + ⌈(n + 1 : ℚ) / 7⌉).toNat).toNat

end

end A093313.P6217379078267074044

/-! ## A093313.P9936014059175070365

`A008721(A146737(a(n-2)+ceil((n+1)/7)))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A093313.P9936014059175070365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A008721 (A146737 (a (n - 2) + ⌈(n + 1 : ℚ) / 7⌉).toNat).toNat

end

end A093313.P9936014059175070365

/-! ## A093313.P9698408386600754943

`A194229(A146778(a(n-2)+ceil((n+1)/7)))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A093313.P9698408386600754943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A194229 (A146778 (a (n - 2) + ⌈(n + 1 : ℚ) / 7⌉).toNat).toNat

end

end A093313.P9698408386600754943

/-! ## A093313.P5792223015867127897

`dr(A151933(A161027(n)))`
-/

namespace A093313.P5792223015867127897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A151933 (A161027 n).toNat)

end

end A093313.P5792223015867127897

/-! ## A093313.P6819933031087198999

`A242609(lcm(7, A225482(n)))`
-/

namespace A093313.P6819933031087198999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242609 (Int.lcm 7 (A225482 n))

end

end A093313.P6819933031087198999

/-!
# A093314: Number of permutations s_1,s_2,...,s_n of 1,2,...,n with s_1 = 3 and such that for all j=1,2,...,n, s_j divides Sum_{i=1..j} s_i.

The programs for A093314, there is no canonical definition to state claims against.
-/

/-! ## A093314.P7730470014567083939

`A000161(n*(9*n-8)+3*floor(n*ϕ²+ϕ)-n)`
-/

namespace A093314.P7730470014567083939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 ((n : ℤ) * ((9 * n : ℤ) - 8) + (3 * ⌊(n : ℝ) * Real.goldenRatio ^ 2 + Real.goldenRatio⌋ - (n : ℤ))).toNat

end

end A093314.P7730470014567083939

/-! ## A093314.P8963200890484309141

`A156660(A241829(n))`
-/

namespace A093314.P8963200890484309141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 (A241829 n).toNat

end

end A093314.P8963200890484309141

/-! ## A093314.P8681982471872120732

`A088917(A098101(n+1))`
-/

namespace A093314.P8681982471872120732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 (A098101 (n + 1)).toNat

end

end A093314.P8681982471872120732

/-! ## A093314.P15462139926614610333

`A215530(A184830(n+2))`
-/

namespace A093314.P15462139926614610333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215530 (A184830 (n + 2)).toNat

end

end A093314.P15462139926614610333

/-! ## A093314.P11404649538140133169

`A124749(∑[A124749(n)^n])`
-/

namespace A093314.P11404649538140133169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124749 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124749 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093314.P11404649538140133169

/-!
# A093316: a(n) = A085653(n) - n.

The programs for A093316, there is no canonical definition to state claims against.
-/

/-! ## A093316.P8770020379191761523

`A085653(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093316.P8770020379191761523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085653 (n + 1) - (n + 1 : ℤ)

end

end A093316.P8770020379191761523

/-! ## A093316.P17210450989215801072

`A023443(A085653(n+1)-n)`
-/

namespace A093316.P17210450989215801072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A085653 (n + 1) - (n : ℤ)).toNat

end

end A093316.P17210450989215801072

/-! ## A093316.P11342770353590990369

`A033619(A085653(n+1)-n)`
-/

namespace A093316.P11342770353590990369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A085653 (n + 1) - (n : ℤ)).toNat

end

end A093316.P11342770353590990369

/-! ## A093316.P16470921259876437691

`A247756(A085653(n+1)-n)`
-/

namespace A093316.P16470921259876437691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247756 (A085653 (n + 1) - (n : ℤ)).toNat

end

end A093316.P16470921259876437691

/-! ## A093316.P15320080528299573342

`A323048(A085653(n+1)-n)`
-/

namespace A093316.P15320080528299573342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (A085653 (n + 1) - (n : ℤ)).toNat

end

end A093316.P15320080528299573342

/-! ## A093316.P6269663098509502954

`(A085653(n+1)+6)%A020719(n)`
-/

namespace A093316.P6269663098509502954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085653 (n + 1) + 6) (A020719 n)

end

end A093316.P6269663098509502954

/-! ## A093316.P11868487206622648775

`abs(A085653(n+1)+A001478(n+1))`
-/

namespace A093316.P11868487206622648775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A085653 (n + 1) + A001478 (n + 1)|

end

end A093316.P11868487206622648775

/-!
# A093317: Consider numbers n such that mu(n) = mu(n+1), A064148; sequence gives values of mu(A064148(n)).

The programs for A093317, the canonical program `A093317.P9770701547931233084` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093317 has offset 1).

The definition of A093317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093317.P9770701547931233084

`A008683(A064148(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A093317

/-- `A008683(A064148(n+1))` -/
def P9770701547931233084.Spec : Prop :=
  ∀ n, P9770701547931233084.a n = A093317 (n + 1)

theorem P9770701547931233084.correct : P9770701547931233084.Spec := by
  intro n
  simp only [A093317, Nat.add_sub_cancel]

end A093317

/-! ## A093317.P1540449067705397757

`A008683(eq[A008683(n+1), A008683(n+2)]+1)`
-/

namespace A093317.P1540449067705397757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A093317.P1540449067705397757

namespace A093317

/-- `A008683(eq[A008683(n+1), A008683(n+2)]+1)` -/
def P1540449067705397757.Spec : Prop :=
  ∀ n, P1540449067705397757.a n = A093317 (n + 1)

end A093317

/-! ## A093317.P17084540299364162718

`A209635(or(1, A064148(n+1)))`
-/

namespace A093317.P17084540299364162718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209635 (Int.lor 1 (A064148 (n + 1))).toNat

end

end A093317.P17084540299364162718

namespace A093317

/-- `A209635(or(1, A064148(n+1)))` -/
def P17084540299364162718.Spec : Prop :=
  ∀ n, P17084540299364162718.a n = A093317 (n + 1)

end A093317

/-! ## A093317.P5079839962016940918

`∑{d}[A064148(n+1), A007427(#)]`
-/

namespace A093317.P5079839962016940918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A093317.P5079839962016940918

namespace A093317

/-- `∑{d}[A064148(n+1), A007427(#)]` -/
def P5079839962016940918.Spec : Prop :=
  ∀ n, P5079839962016940918.a n = A093317 (n + 1)

end A093317

/-! ## A093317.P4914655501674999675

`A007423(A064148(n+1)+1)-1`
-/

namespace A093317.P4914655501674999675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (A064148 (n + 1) + 1).toNat - 1

end

end A093317.P4914655501674999675

namespace A093317

/-- `A007423(A064148(n+1)+1)-1` -/
def P4914655501674999675.Spec : Prop :=
  ∀ n, P4914655501674999675.a n = A093317 (n + 1)

end A093317

/-! ## A093317.P14596851296132962327

`A007423(eq[A007423(n+2), A007423(n+1)]+1)-1`
-/

namespace A093317.P14596851296132962327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) - 1

end

end A093317.P14596851296132962327

namespace A093317

/-- `A007423(eq[A007423(n+2), A007423(n+1)]+1)-1` -/
def P14596851296132962327.Spec : Prop :=
  ∀ n, P14596851296132962327.a n = A093317 (n + 1)

end A093317

/-! ## A093317.P1960718540806714407

`A181435(A064148(n+1)+1)`
-/

namespace A093317.P1960718540806714407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181435 (A064148 (n + 1) + 1).toNat

end

end A093317.P1960718540806714407

namespace A093317

/-- `A181435(A064148(n+1)+1)` -/
def P1960718540806714407.Spec : Prop :=
  ∀ n, P1960718540806714407.a n = A093317 (n + 1)

end A093317

/-!
# A093318: a(n) = number of positive divisors k of n where mu(k) = 1 and mu(n/k) = -1.

The programs for A093318, the canonical program `A093318.P13020184346943754968` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093318 has offset 1).

The definition of A093318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093318.P886557121632996691

`A059252(A007427(n+1)²)/2`
-/

namespace A093318.P886557121632996691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059252 (A007427 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A093318.P886557121632996691

namespace A093318

/-- `A059252(A007427(n+1)²)/2` -/
def P886557121632996691.Spec : Prop :=
  ∀ n, P886557121632996691.a n = (A093318 (n + 1) : ℚ)

end A093318

/-! ## A093318.P11928806791278309189

`∑{d}[n+1, A252233(#)*A353629((n+1)/#)]`
-/

namespace A093318.P11928806791278309189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A252233 d * A353629 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A093318.P11928806791278309189

namespace A093318

/-- `∑{d}[n+1, A252233(#)*A353629((n+1)/#)]` -/
def P11928806791278309189.Spec : Prop :=
  ∀ n, P11928806791278309189.a n = A093318 (n + 1)

end A093318

/-! ## A093318.P13020184346943754968

`A002265(abs(A007427(n+1))-A007427(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A093318

/-- `A002265(abs(A007427(n+1))-A007427(n+1))` -/
def P13020184346943754968.Spec : Prop :=
  ∀ n, P13020184346943754968.a n = A093318 (n + 1)

theorem P13020184346943754968.correct : P13020184346943754968.Spec := by
  intro n
  simp only [A093318, Nat.add_sub_cancel]

end A093318

/-! ## A093318.P17660330000772054507

`A007431(abs(A007427(n+1))-A007427(n+1))`
-/

namespace A093318.P17660330000772054507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (|A007427 (n + 1)| - A007427 (n + 1)).toNat

end

end A093318.P17660330000772054507

namespace A093318

/-- `A007431(abs(A007427(n+1))-A007427(n+1))` -/
def P17660330000772054507.Spec : Prop :=
  ∀ n, P17660330000772054507.a n = A093318 (n + 1)

end A093318

/-! ## A093318.P7157881340133920544

`A001842((A008836(n+1)+A007427(n+1))²)²`
-/

namespace A093318.P7157881340133920544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 ((A008836 (n + 1) + A007427 (n + 1)) ^ 2).toNat ^ 2

end

end A093318.P7157881340133920544

namespace A093318

/-- `A001842((A008836(n+1)+A007427(n+1))²)²` -/
def P7157881340133920544.Spec : Prop :=
  ∀ n, P7157881340133920544.a n = A093318 (n + 1)

end A093318

/-! ## A093318.P4805033912326187743

`A001222(A000010(ceil(γ^A007427(n+1))))`
-/

namespace A093318.P4805033912326187743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 ⌈Real.eulerMascheroniConstant ^ (A007427 (n + 1) : ℤ)⌉.toNat).toNat

end

end A093318.P4805033912326187743

namespace A093318

/-- `A001222(A000010(ceil(γ^A007427(n+1))))` -/
def P4805033912326187743.Spec : Prop :=
  ∀ n, P4805033912326187743.a n = A093318 (n + 1)

end A093318

/-! ## A093318.P12352862555477041728

`A001842(A007427(n+1)+A007427(n+1)²²)²`
-/

namespace A093318.P12352862555477041728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A007427 (n + 1) + (A007427 (n + 1) ^ 2) ^ 2).toNat ^ 2

end

end A093318.P12352862555477041728

namespace A093318

/-- `A001842(A007427(n+1)+A007427(n+1)²²)²` -/
def P12352862555477041728.Spec : Prop :=
  ∀ n, P12352862555477041728.a n = A093318 (n + 1)

end A093318

/-! ## A093318.P1447209544180621360

`A053186(gcd(A007427(n+1), A053186(n²)))`
-/

namespace A093318.P1447209544180621360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (Int.gcd (A007427 (n + 1)) (A053186 (n ^ 2)))

end

end A093318.P1447209544180621360

namespace A093318

/-- `A053186(gcd(A007427(n+1), A053186(n²)))` -/
def P1447209544180621360.Spec : Prop :=
  ∀ n, P1447209544180621360.a n = A093318 (n + 1)

end A093318

/-! ## A093318.P15203150103197192384

`A152894(A124859(n+1))`
-/

namespace A093318.P15203150103197192384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152894 (A124859 (n + 1)).toNat

end

end A093318.P15203150103197192384

namespace A093318

/-- `A152894(A124859(n+1))` -/
def P15203150103197192384.Spec : Prop :=
  ∀ n, P15203150103197192384.a n = A093318 (n + 1)

end A093318

/-!
# A093320: a(1) = 1; for m >= 2, a(m) = sum{p|m} a(pi(p)), where the sum is over the distinct prime divisors p of m and pi(p) is the order of p among the primes = the number of primes <= p.

The programs for A093320, the canonical program `A093320.P11452755430572282381` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093320 has offset 1).

The definition of A093320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093320.P11452755430572282381

`A297155(n+1)+a(A252735(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A093320

/-- `A297155(n+1)+a(A252735(n+1))` -/
def P11452755430572282381.Spec : Prop :=
  ∀ n, P11452755430572282381.a n = A093320 (n + 1)

theorem P11452755430572282381.correct : P11452755430572282381.Spec := by
  intro n
  simp only [A093320, Nat.add_sub_cancel]

end A093320

/-! ## A093320.P3089783767381543532

`A001221(A066729(n+1)+A028664(n))`
-/

namespace A093320.P3089783767381543532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A066729 (n + 1) + A028664 n).toNat

end

end A093320.P3089783767381543532

namespace A093320

/-- `A001221(A066729(n+1)+A028664(n))` -/
def P3089783767381543532.Spec : Prop :=
  ∀ n, P3089783767381543532.a n = A093320 (n + 1)

end A093320

/-! ## A093320.P6518619713113734225

`∑{d}[A066729(n+1)+A028664(n), A010051(#)]`
-/

namespace A093320.P6518619713113734225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066729 (n + 1) + A028664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A093320.P6518619713113734225

namespace A093320

/-- `∑{d}[A066729(n+1)+A028664(n), A010051(#)]` -/
def P6518619713113734225.Spec : Prop :=
  ∀ n, P6518619713113734225.a n = A093320 (n + 1)

end A093320

/-! ## A093320.P16317151704200651847

`A303975(n+1)-A010815(A027642(n))`
-/

namespace A093320.P16317151704200651847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303975 (n + 1) - A010815 (A027642 n).toNat

end

end A093320.P16317151704200651847

namespace A093320

/-- `A303975(n+1)-A010815(A027642(n))` -/
def P16317151704200651847.Spec : Prop :=
  ∀ n, P16317151704200651847.a n = A093320 (n + 1)

end A093320

/-! ## A093320.P16416638477307191692

`A096825(n+1)+A089806(A356842(2*(n+2)))`
-/

namespace A093320.P16416638477307191692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096825 (n + 1) + A089806 (A356842 (2 * (n + 2))).toNat

end

end A093320.P16416638477307191692

namespace A093320

/-- `A096825(n+1)+A089806(A356842(2*(n+2)))` -/
def P16416638477307191692.Spec : Prop :=
  ∀ n, P16416638477307191692.a n = A093320 (n + 1)

end A093320

/-!
# A093321: a(1) = 1; for m >= 2, a(m) =sum_{primes p

The programs for A093321, there is no canonical definition to state claims against.
-/

/-! ## A093321.P15515418645835540392

`A336921(A056606(n))+char[2*n]`
-/

namespace A093321.P15515418645835540392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336921 (A056606 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A093321.P15515418645835540392

/-! ## A093321.P11426459420004350805

`A001222(A060552(n+5))-A060610(n+1)`
-/

namespace A093321.P11426459420004350805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A060552 (n + 5)).toNat - A060610 (n + 1)

end

end A093321.P11426459420004350805

/-! ## A093321.P5216923770709738599

`A124765(and(A041019(n), A142974(3*n+1)))`
-/

namespace A093321.P5216923770709738599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (Int.land (A041019 n) (A142974 (3 * n + 1))).toNat

end

end A093321.P5216923770709738599

/-! ## A093321.P3727284722150625317

`A196564(xor(n, A282422(n)))`
-/

namespace A093321.P3727284722150625317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (Int.xor (n : ℤ) (A282422 n)).toNat

end

end A093321.P3727284722150625317

/-! ## A093321.P2705405559248350990

`A277937(A196537(n+1))`
-/

namespace A093321.P2705405559248350990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (A196537 (n + 1)).toNat

end

end A093321.P2705405559248350990

/-!
# A093322: Tetranacci numbers starting with first four cubes.

The programs for A093322, the canonical program `A093322.P7267928285964069468` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093322 has offset 1).

The definition of A093322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093322.P7267928285964069468

`a(n-1)+a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=8, a(2)=27, a(3)=64`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093322

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)` -/
def P7267928285964069468.Spec : Prop :=
  ∀ n, (P7267928285964069468.a n : ℤ) = A093322 (n + 1)

theorem P7267928285964069468.correct : P7267928285964069468.Spec := by
  intro n
  simp only [A093322, Nat.add_sub_cancel]

end A093322

/-!
# A093323: Triangle read by rows giving number of divisor chains of length n beginning with k (1 <= k <= n).

The programs for A093323, there is no canonical definition to state claims against.
-/

/-! ## A093323.P251682947738138879

`A055640(A026729(n)*A227578(n))`
-/

namespace A093323.P251682947738138879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A026729 n * A227578 n).toNat

end

end A093323.P251682947738138879

/-! ## A093323.P9573306714505191364

`∑{d}[A110509(n), A010054(A289659(#))]`
-/

namespace A093323.P9573306714505191364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010054 (A289659 d).toNat

end

end A093323.P9573306714505191364

/-! ## A093323.P451244596665863186

`and(A055801(n), A137738(n))`
-/

namespace A093323.P451244596665863186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055801 n) (A137738 n)

end

end A093323.P451244596665863186

/-! ## A093323.P10010070827001001694

`A332201(A122848(n))`
-/

namespace A093323.P10010070827001001694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332201 (A122848 n).toNat

end

end A093323.P10010070827001001694

/-! ## A093323.P4302439265479392605

`A334028(A221971(n))`
-/

namespace A093323.P4302439265479392605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (A221971 n).toNat

end

end A093323.P4302439265479392605

/-!
# A093324: a(n) is the smallest natural number m such that n^m + m is prime.

The programs for A093324, there is no canonical definition to state claims against.
-/

/-! ## A093324.P5574669136881207805

`A309068(A179455(n)-A168185(n))`
-/

namespace A093324.P5574669136881207805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309068 (A179455 n - A168185 n).toNat

end

end A093324.P5574669136881207805

/-! ## A093324.P12829554345565926386

`A320012(A137729(n)+A025507(n+1))`
-/

namespace A093324.P12829554345565926386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320012 (A137729 n + A025507 (n + 1)).toNat

end

end A093324.P12829554345565926386

/-!
# A093325: Numbers that are divisible by the sum of the factorials of their digits.

The programs for A093325, there is no canonical definition to state claims against.
-/

/-! ## A093325.P6950780419864174858

`eq[n%A061602(n), A000007(n)]`
-/

namespace A093325.P6950780419864174858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A061602 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093325.P6950780419864174858

/-!
# A093328: a(n) = 2*n^2 + 3.

The programs for A093328, the canonical program `A093328.P13671968529086005416` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093328 has offset 0).

The definition of A093328 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+3` (program `A093328.P13671968529086005416`, by `A093328.P13671968529086005416.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093328.P13671968529086005416

`2*n²+3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093328

/-- `2*n²+3` -/
def P13671968529086005416.Spec : Prop :=
  ∀ n, (P13671968529086005416.a n : ℤ) = A093328 n

theorem P13671968529086005416.correct : P13671968529086005416.Spec := by
  intro n
  simp only [A093328]

end A093328

/-! ## A093328.P117025252495269704

`ceil(2/acot(n²+1))`
-/

namespace A093328.P117025252495269704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n ^ 2 + 1 : ℝ)⌉

end

end A093328.P117025252495269704

namespace A093328

/-- `ceil(2/acot(n²+1))` -/
def P117025252495269704.Spec : Prop :=
  ∀ n, P117025252495269704.a n = A093328 n

end A093328

/-! ## A093328.P17721079082331947768

`∑[a(n-1)+4]` with `a(0)=3, a(1)=2`
-/

namespace A093328.P17721079082331947768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093328.P17721079082331947768

namespace A093328

/-- `∑[a(n-1)+4]` -/
def P17721079082331947768.Spec : Prop :=
  ∀ n, (P17721079082331947768.a n : ℤ) = A093328 n

end A093328

/-! ## A093328.P15860666682802304860

`or(1, n*2*n+2)`
-/

namespace A093328.P15860666682802304860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (2 * n) + 2)

end

end A093328.P15860666682802304860

namespace A093328

/-- `or(1, n*2*n+2)` -/
def P15860666682802304860.Spec : Prop :=
  ∀ n, (P15860666682802304860.a n : ℤ) = A093328 n

end A093328

/-! ## A093328.P13528826064112278412

`xor(1, n*2*n+2)`
-/

namespace A093328.P13528826064112278412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (2 * n) + 2)

end

end A093328.P13528826064112278412

namespace A093328

/-- `xor(1, n*2*n+2)` -/
def P13528826064112278412.Spec : Prop :=
  ∀ n, (P13528826064112278412.a n : ℤ) = A093328 n

end A093328

/-! ## A093328.P2942817843196090788

`abs(1-or(4, 2*n²))`
-/

namespace A093328.P2942817843196090788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lor 4 (2 * n ^ 2) : ℤ)|

end

end A093328.P2942817843196090788

namespace A093328

/-- `abs(1-or(4, 2*n²))` -/
def P2942817843196090788.Spec : Prop :=
  ∀ n, P2942817843196090788.a n = A093328 n

end A093328

/-! ## A093328.P4225866841218069252

`abs(1-xor(4, 2*n²))`
-/

namespace A093328.P4225866841218069252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.xor 4 (2 * n ^ 2) : ℤ)|

end

end A093328.P4225866841218069252

namespace A093328

/-- `abs(1-xor(4, 2*n²))` -/
def P4225866841218069252.Spec : Prop :=
  ∀ n, P4225866841218069252.a n = A093328 n

end A093328

/-! ## A093328.P4830549679188167903

`∑[ogf((3-4x+5x^2)/(1-2x+x^2))]`
-/

namespace A093328.P4830549679188167903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093328.P4830549679188167903

namespace A093328

/-- `∑[ogf((3-4x+5x^2)/(1-2x+x^2))]` -/
def P4830549679188167903.Spec : Prop :=
  ∀ n, P4830549679188167903.a n = A093328 n

end A093328

/-! ## A093328.P3137696017147017728

`ogf((3-4x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A093328.P3137696017147017728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4, 5] [1, -3, 3, -1] n

end

end A093328.P3137696017147017728

namespace A093328

/-- `ogf((3-4x+5x^2)/(1-3x+3x^2-x^3))` -/
def P3137696017147017728.Spec : Prop :=
  ∀ n, P3137696017147017728.a n = A093328 n

end A093328

/-! ## A093328.P9407830506652200875

`∑{d}[-a(n-1), n²+#]` with `a(0)=2`
-/

namespace A093328.P9407830506652200875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n ^ 2 + d)

end

end A093328.P9407830506652200875

namespace A093328

/-- `∑{d}[-a(n-1), n²+#]` -/
def P9407830506652200875.Spec : Prop :=
  ∀ n, (P9407830506652200875.a n : ℤ) = A093328 n

end A093328

/-! ## A093328.P5738667231607025426

`abs(C(2*n+1, 2)+3-n)`
-/

namespace A093328.P5738667231607025426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (2 * n + 1) 2 : ℤ) + (3 - (n : ℤ))|

end

end A093328.P5738667231607025426

namespace A093328

/-- `abs(C(2*n+1, 2)+3-n)` -/
def P5738667231607025426.Spec : Prop :=
  ∀ n, P5738667231607025426.a n = A093328 n

end A093328

/-! ## A093328.P8353819011354993140

`floor(4*n+a(n-1)-2)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A093328.P8353819011354993140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (4 * n : ℤ) + (a (n - 1) - 2)

end

end A093328.P8353819011354993140

namespace A093328

/-- `floor(4*n+a(n-1)-2)` -/
def P8353819011354993140.Spec : Prop :=
  ∀ n, P8353819011354993140.a n = A093328 n

theorem P8353819011354993140.correct : P8353819011354993140.Spec := by
  intro n
  induction n with
  | zero => simp [A093328, A093328.P8353819011354993140.a, A093328.P13671968529086005416.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A093328, Nat.add_sub_cancel, A093328.P8353819011354993140.a, A093328.P13671968529086005416.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A093328

/-! ## A093328.P15746906829148402311

`floor(4*n-(2-a(n-1)))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A093328.P15746906829148402311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (4 * n : ℤ) - (2 - a (n - 1))

end

end A093328.P15746906829148402311

namespace A093328

/-- `floor(4*n-(2-a(n-1)))` -/
def P15746906829148402311.Spec : Prop :=
  ∀ n, P15746906829148402311.a n = A093328 n

theorem P15746906829148402311.correct : P15746906829148402311.Spec := by
  intro n
  induction n with
  | zero => simp [A093328, A093328.P15746906829148402311.a, A093328.P13671968529086005416.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A093328, Nat.add_sub_cancel, A093328.P15746906829148402311.a, A093328.P13671968529086005416.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A093328

/-! ## A093328.P18113448300623133870

`abs(lcm(n, 2*n+1)+3-n)`
-/

namespace A093328.P18113448300623133870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm n (2 * n + 1) : ℤ) + (3 - (n : ℤ))|

end

end A093328.P18113448300623133870

namespace A093328

/-- `abs(lcm(n, 2*n+1)+3-n)` -/
def P18113448300623133870.Spec : Prop :=
  ∀ n, P18113448300623133870.a n = A093328 n

end A093328

/-! ## A093328.P17747182823229407017

`ceil(C(2*n, 2)+ϕ+n+1)`
-/

namespace A093328.P17747182823229407017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (2 * n) 2 : ℝ) + Real.goldenRatio + (n + 1 : ℝ)⌉

end

end A093328.P17747182823229407017

namespace A093328

/-- `ceil(C(2*n, 2)+ϕ+n+1)` -/
def P17747182823229407017.Spec : Prop :=
  ∀ n, P17747182823229407017.a n = A093328 n

end A093328

/-! ## A093328.P7926177032663583618

`floor(C(2*n, 2)+ϕ+n+2)`
-/

namespace A093328.P7926177032663583618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (2 * n) 2 : ℝ) + Real.goldenRatio + (n + 2 : ℝ)⌋

end

end A093328.P7926177032663583618

namespace A093328

/-- `floor(C(2*n, 2)+ϕ+n+2)` -/
def P7926177032663583618.Spec : Prop :=
  ∀ n, P7926177032663583618.a n = A093328 n

end A093328

/-! ## A093328.P6597174546035965295

`round(C(2*n, 2)+ϕ+n+1)`
-/

namespace A093328.P6597174546035965295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n) 2 : ℝ) + Real.goldenRatio + (n + 1 : ℝ))

end

end A093328.P6597174546035965295

namespace A093328

/-- `round(C(2*n, 2)+ϕ+n+1)` -/
def P6597174546035965295.Spec : Prop :=
  ∀ n, P6597174546035965295.a n = A093328 n

end A093328

/-! ## A093328.P12857618700057450499

`4*((a(n-1)-2)/4+n)` with `a(0)=3`
-/

namespace A093328.P12857618700057450499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  4 * ((a (n - 1) - 2) / 4 + (n : ℚ))

end

end A093328.P12857618700057450499

namespace A093328

/-- `4*((a(n-1)-2)/4+n)` -/
def P12857618700057450499.Spec : Prop :=
  ∀ n, P12857618700057450499.a n = (A093328 n : ℚ)

theorem P12857618700057450499.correct : P12857618700057450499.Spec := by
  intro n
  induction n with
  | zero => simp [A093328, A093328.P12857618700057450499.a, A093328.P13671968529086005416.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A093328, Nat.add_sub_cancel, A093328.P12857618700057450499.a, A093328.P13671968529086005416.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A093328

/-! ## A093328.P201345683182597259

`4*(n-(2-a(n-1))/4)` with `a(0)=3`
-/

namespace A093328.P201345683182597259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  4 * ((n : ℚ) - (2 - a (n - 1)) / 4)

end

end A093328.P201345683182597259

namespace A093328

/-- `4*(n-(2-a(n-1))/4)` -/
def P201345683182597259.Spec : Prop :=
  ∀ n, P201345683182597259.a n = (A093328 n : ℚ)

theorem P201345683182597259.correct : P201345683182597259.Spec := by
  intro n
  induction n with
  | zero => simp [A093328, A093328.P201345683182597259.a, A093328.P13671968529086005416.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A093328, Nat.add_sub_cancel, A093328.P201345683182597259.a, A093328.P13671968529086005416.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A093328

/-! ## A093328.P18044629380691235799

`lcm(2, C(2*n, 2)+n+3)/2`
-/

namespace A093328.P18044629380691235799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (Nat.choose (2 * n) 2 + (n + 3)) : ℚ) / 2

end

end A093328.P18044629380691235799

namespace A093328

/-- `lcm(2, C(2*n, 2)+n+3)/2` -/
def P18044629380691235799.Spec : Prop :=
  ∀ n, P18044629380691235799.a n = (A093328 n : ℚ)

end A093328

/-!
# A093330: Maximal values in A038598.

The programs for A093330, there is no canonical definition to state claims against.
-/

/-! ## A093330.P13892622930755742327

`record[A038593(n+1)-A181123(n+1)]`
-/

namespace A093330.P13892622930755742327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1) - A181123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093330.P13892622930755742327

/-! ## A093330.P15104796249877280892

`record[A181123(n+2)-A181123(n+1)]`
-/

namespace A093330.P15104796249877280892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 2) - A181123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093330.P15104796249877280892

/-! ## A093330.P5352294792429086747

`record[A038598(n+1)]`
-/

namespace A093330.P5352294792429086747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093330.P5352294792429086747

/-! ## A093330.P880241808696151881

`record[A038598(A008619(n))%A027603(n)]`
-/

namespace A093330.P880241808696151881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038598 (A008619 n).toNat) (A027603 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093330.P880241808696151881

/-! ## A093330.P7600925668694294967

`record[A038598(A133310(n))%A027603(n)]`
-/

namespace A093330.P7600925668694294967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038598 (A133310 n).toNat) (A027603 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093330.P7600925668694294967

/-!
# A093331: Number of ternary necklaces of length n with no subsequence 00.

The programs for A093331, there is no canonical definition to state claims against.
-/

/-! ## A093331.P17469456073367604605

`A208774(n+1)-(A000031(n+1)+1)`
-/

namespace A093331.P17469456073367604605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208774 (n + 1) - (A000031 (n + 1) + 1)

end

end A093331.P17469456073367604605

/-! ## A093331.P4741925185513178009

`A054782(2*(n+2))+A220098(2^n)-A132427(2*n)`
-/

namespace A093331.P4741925185513178009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054782 (2 * (n + 2)) + (A220098 (2 ^ n) - A132427 (2 * n))

end

end A093331.P4741925185513178009

/-!
# A093332: a(0) = 0, a(1) = 1 and for n >= 2, a(n) = floor(sqrt(2 * (a(n-2)^2 + a(n-1)^2))).

The programs for A093332, the canonical program `A093332.P9399844854715308457` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093332 has offset 0).

The definition of A093332 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(2*(a(n-2)²+a(n-1)²)))` (program `A093332.P9399844854715308457`, by `A093332.P9399844854715308457.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093332.P9399844854715308457

`floor(sqrt(2*(a(n-2)²+a(n-1)²)))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093332

/-- `floor(sqrt(2*(a(n-2)²+a(n-1)²)))` -/
def P9399844854715308457.Spec : Prop :=
  ∀ n, (P9399844854715308457.a n : ℤ) = A093332 n

theorem P9399844854715308457.correct : P9399844854715308457.Spec := by
  intro n
  simp only [A093332]

end A093332

/-! ## A093332.P2423835539779776576

`A257639(A114589(n))-A000007(n)`
-/

namespace A093332.P2423835539779776576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A114589 n).toNat - A000007 n

end

end A093332.P2423835539779776576

namespace A093332

/-- `A257639(A114589(n))-A000007(n)` -/
def P2423835539779776576.Spec : Prop :=
  ∀ n, P2423835539779776576.a n = A093332 n

end A093332

/-! ## A093332.P14589779895526099792

`A257639(A114589(n))%A000645(n)`
-/

namespace A093332.P14589779895526099792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257639 (A114589 n).toNat) (A000645 n)

end

end A093332.P14589779895526099792

namespace A093332

/-- `A257639(A114589(n))%A000645(n)` -/
def P14589779895526099792.Spec : Prop :=
  ∀ n, P14589779895526099792.a n = A093332 n

end A093332

/-! ## A093332.P3098816323124888741

`A075172(A324095(n+1))+A000045(n)`
-/

namespace A093332.P3098816323124888741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075172 (A324095 (n + 1)).toNat + A000045 n

end

end A093332.P3098816323124888741

namespace A093332

/-- `A075172(A324095(n+1))+A000045(n)` -/
def P3098816323124888741.Spec : Prop :=
  ∀ n, P3098816323124888741.a n = A093332 n

end A093332

/-! ## A093332.P17265755699497670956

`A005206(A005181(n)%A060315(n+1))`
-/

namespace A093332.P17265755699497670956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (Int.tmod (A005181 n) (A060315 (n + 1))).toNat

end

end A093332.P17265755699497670956

namespace A093332

/-- `A005206(A005181(n)%A060315(n+1))` -/
def P17265755699497670956.Spec : Prop :=
  ∀ n, P17265755699497670956.a n = A093332 n

end A093332

/-!
# A093333: a(0) = 0, a(1) = 1 and for n >= 2, a(n) = floor(2 * sqrt(a(n-2) * a(n-1))).

The programs for A093333, the canonical program `A093333.P3934395113728448563` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093333 has offset 0).

The definition of A093333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093333.P3934395113728448563

`floor(2*sqrt(a(n-1)*a(n-2)))` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093333

/-- `floor(2*sqrt(a(n-1)*a(n-2)))` -/
def P3934395113728448563.Spec : Prop :=
  ∀ n, P3934395113728448563.a n = A093333 n

theorem P3934395113728448563.correct : P3934395113728448563.Spec := by
  intro n
  simp only [A093333]

end A093333

/-! ## A093333.P4636187962243908484

`floor(2*sqrt(a(n-2)*a(n-1)))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093333.P4636187962243908484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2] fun n a =>
  ⌊2 * Real.sqrt (a (n - 2) * a (n - 1) : ℝ)⌋

end

end A093333.P4636187962243908484

namespace A093333

/-- `floor(2*sqrt(a(n-2)*a(n-1)))` -/
def P4636187962243908484.Spec : Prop :=
  ∀ n, P4636187962243908484.a n = A093333 n

end A093333

/-! ## A093333.P15144316820256032162

`A277194(A181600(n)+A002828(n))`
-/

namespace A093333.P15144316820256032162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277194 (A181600 n + A002828 n).toNat

end

end A093333.P15144316820256032162

namespace A093333

/-- `A277194(A181600(n)+A002828(n))` -/
def P15144316820256032162.Spec : Prop :=
  ∀ n, P15144316820256032162.a n = A093333 n

end A093333

/-! ## A093333.P2520468203880143854

`A000196(∑[A058387(n)])`
-/

namespace A093333.P2520468203880143854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093333.P2520468203880143854

namespace A093333

/-- `A000196(∑[A058387(n)])` -/
def P2520468203880143854.Spec : Prop :=
  ∀ n, P2520468203880143854.a n = A093333 n

end A093333

/-! ## A093333.P6680220839804323372

`A000194(floor(sqrt(A350175(n))))`
-/

namespace A093333.P6680220839804323372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.sqrt (A350175 n)).toNat

end

end A093333.P6680220839804323372

namespace A093333

/-- `A000194(floor(sqrt(A350175(n))))` -/
def P6680220839804323372.Spec : Prop :=
  ∀ n, P6680220839804323372.a n = A093333 n

end A093333

/-!
# A093334: Denominators of the coefficients of Euler-Ramanujan's harmonic number expansion into negative powers of a triangular number.

The programs for A093334, there is no canonical definition to state claims against.
-/

/-! ## A093334.P1036324582298831026

`A010887(A317654(n+1))*A034386(2*(n+2))`
-/

namespace A093334.P1036324582298831026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010887 (A317654 (n + 1)).toNat * A034386 (2 * (n + 2))

end

end A093334.P1036324582298831026

/-!
# A093335: a(0) = 1, a(1) = 1 and for n >= 2, a(n) = floor(4 * a(n-2) * a(n-1) / (a(n-2) + a(n-1))).

The programs for A093335, the canonical program `A093335.P7672973430705579921` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093335 has offset 0).

The definition of A093335 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4*a(n-2)*a(n-1)/(a(n-2)+a(n-1)))` (program `A093335.P7672973430705579921`, by `A093335.P7672973430705579921.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093335.P7672973430705579921

`floor(4*a(n-2)*a(n-1)/(a(n-2)+a(n-1)))` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093335

/-- `floor(4*a(n-2)*a(n-1)/(a(n-2)+a(n-1)))` -/
def P7672973430705579921.Spec : Prop :=
  ∀ n, P7672973430705579921.a n = A093335 n

theorem P7672973430705579921.correct : P7672973430705579921.Spec := by
  intro n
  simp only [A093335]

end A093335

/-! ## A093335.P13201542254055766541

`A008619(A018060(n*A269626(n)))`
-/

namespace A093335.P13201542254055766541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A018060 ((n : ℤ) * A269626 n).toNat).toNat

end

end A093335.P13201542254055766541

namespace A093335

/-- `A008619(A018060(n*A269626(n)))` -/
def P13201542254055766541.Spec : Prop :=
  ∀ n, P13201542254055766541.a n = A093335 n

end A093335

/-! ## A093335.P7824893470315164540

`A008619(A018060(n)^A269626(n))`
-/

namespace A093335.P7824893470315164540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway ((A018060 n : ℚ) ^ (A269626 n : ℤ))).toNat

end

end A093335.P7824893470315164540

namespace A093335

/-- `A008619(A018060(n)^A269626(n))` -/
def P7824893470315164540.Spec : Prop :=
  ∀ n, P7824893470315164540.a n = A093335 n

end A093335

/-! ## A093335.P17327964259400705116

`A008619(C(A018060(n), A269626(n)))`
-/

namespace A093335.P17327964259400705116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Nat.choose (A018060 n).toNat (A269626 n).toNat)

end

end A093335.P17327964259400705116

namespace A093335

/-- `A008619(C(A018060(n), A269626(n)))` -/
def P17327964259400705116.Spec : Prop :=
  ∀ n, P17327964259400705116.a n = A093335 n

end A093335

/-! ## A093335.P1211161950262006964

`A008619(A008835(n+1)*A018060(n))`
-/

namespace A093335.P1211161950262006964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008835 (n + 1) * A018060 n).toNat

end

end A093335.P1211161950262006964

namespace A093335

/-- `A008619(A008835(n+1)*A018060(n))` -/
def P1211161950262006964.Spec : Prop :=
  ∀ n, P1211161950262006964.a n = A093335 n

end A093335

/-!
# A093336: Second digit of prime(n).

The programs for A093336, there is no canonical definition to state claims against.
-/

/-! ## A093336.P7335000411079414403

`A033308(A068670(n+4)+1)`
-/

namespace A093336.P7335000411079414403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (A068670 (n + 4) + 1).toNat

end

end A093336.P7335000411079414403

/-! ## A093336.P2208424117747591338

`A033308(A086049(n+5)-1)`
-/

namespace A093336.P2208424117747591338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (A086049 (n + 5) - 1).toNat

end

end A093336.P2208424117747591338

/-! ## A093336.P16251086969588116936

`A228355(A068670(n+5)-2)`
-/

namespace A093336.P16251086969588116936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228355 (A068670 (n + 5) - 2).toNat

end

end A093336.P16251086969588116936

/-! ## A093336.P18115595076574317900

`A059995(A004087(n+5))%10`
-/

namespace A093336.P18115595076574317900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059995 (A004087 (n + 5)).toNat) 10

end

end A093336.P18115595076574317900

/-! ## A093336.P8298407933197255807

`A000796(A064467(n+5))`
-/

namespace A093336.P8298407933197255807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A064467 (n + 5)).toNat + 1)

end

end A093336.P8298407933197255807

/-! ## A093336.P11839294507656550873

`A179636(A120533(n+1))`
-/

namespace A093336.P11839294507656550873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179636 (A120533 (n + 1)).toNat

end

end A093336.P11839294507656550873

/-! ## A093336.P17693607426426668891

`A094214(A128050(n+5))`
-/

namespace A093336.P17693607426426668891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094214 (A128050 (n + 5)).toNat

end

end A093336.P17693607426426668891

/-! ## A093336.P7831083986203091770

`A179636(A090417(n+2))`
-/

namespace A093336.P7831083986203091770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179636 (A090417 (n + 2)).toNat

end

end A093336.P7831083986203091770

/-!
# A093337: Penultimate digits of the primes.

The programs for A093337, the canonical program `A093337.P11463696251009930482` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093337 has offset 11).

The definition of A093337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093337.P14115951212568636746

`A176044(n+5)%10`
-/

namespace A093337.P14115951212568636746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176044 (n + 5)) 10

end

end A093337.P14115951212568636746

namespace A093337

/-- `A176044(n+5)%10` -/
def P14115951212568636746.Spec : Prop :=
  ∀ n, P14115951212568636746.a n = A093337 (n + 11)

end A093337

/-! ## A093337.P7277019881204138364

`floor(A110923(n+5)/10)`
-/

namespace A093337.P7277019881204138364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A110923 (n + 5) : ℚ) / 10⌋

end

end A093337.P7277019881204138364

namespace A093337

/-- `floor(A110923(n+5)/10)` -/
def P7277019881204138364.Spec : Prop :=
  ∀ n, P7277019881204138364.a n = A093337 (n + 11)

end A093337

/-! ## A093337.P11463696251009930482

`floor(A000040(n+5)/10)%10`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A093337

/-- `floor(A000040(n+5)/10)%10` -/
def P11463696251009930482.Spec : Prop :=
  ∀ n, P11463696251009930482.a n = A093337 (n + 11)

theorem P11463696251009930482.correct : P11463696251009930482.Spec := by
  intro n
  simp only [A093337, Nat.add_sub_cancel]

end A093337

/-! ## A093337.P922979459864833916

`floor(A006093(n+5)/10)%10`
-/

namespace A093337.P922979459864833916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A006093 (n + 5) : ℚ) / 10⌋ 10

end

end A093337.P922979459864833916

namespace A093337

/-- `floor(A006093(n+5)/10)%10` -/
def P922979459864833916.Spec : Prop :=
  ∀ n, P922979459864833916.a n = A093337 (n + 11)

end A093337

/-! ## A093337.P9910391445443168053

`A179635(A120533(n+1))`
-/

namespace A093337.P9910391445443168053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179635 (A120533 (n + 1)).toNat

end

end A093337.P9910391445443168053

namespace A093337

/-- `A179635(A120533(n+1))` -/
def P9910391445443168053.Spec : Prop :=
  ∀ n, P9910391445443168053.a n = A093337 (n + 11)

end A093337

/-! ## A093337.P2721576956368192280

`A133880(A172407(n+1))`
-/

namespace A093337.P2721576956368192280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133880 (A172407 (n + 1)).toNat

end

end A093337.P2721576956368192280

namespace A093337

/-- `A133880(A172407(n+1))` -/
def P2721576956368192280.Spec : Prop :=
  ∀ n, P2721576956368192280.a n = A093337 (n + 11)

end A093337

/-! ## A093337.P16681540419436184804

`A179635(A140461(n+2))`
-/

namespace A093337.P16681540419436184804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179635 (A140461 (n + 2)).toNat

end

end A093337.P16681540419436184804

namespace A093337

/-- `A179635(A140461(n+2))` -/
def P16681540419436184804.Spec : Prop :=
  ∀ n, P16681540419436184804.a n = A093337 (n + 11)

end A093337

/-! ## A093337.P4417042205506574079

`A059995(A110923(n+5))`
-/

namespace A093337.P4417042205506574079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A110923 (n + 5)).toNat

end

end A093337.P4417042205506574079

namespace A093337

/-- `A059995(A110923(n+5))` -/
def P4417042205506574079.Spec : Prop :=
  ∀ n, P4417042205506574079.a n = A093337 (n + 11)

end A093337

/-! ## A093337.P17694719581203377586

`A010879(A176044(n+5))`
-/

namespace A093337.P17694719581203377586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A176044 (n + 5)).toNat

end

end A093337.P17694719581203377586

namespace A093337

/-- `A010879(A176044(n+5))` -/
def P17694719581203377586.Spec : Prop :=
  ∀ n, P17694719581203377586.a n = A093337 (n + 11)

end A093337

/-! ## A093337.P913647131519023691

`A179635(A262708(n+5))`
-/

namespace A093337.P913647131519023691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179635 (A262708 (n + 5)).toNat

end

end A093337.P913647131519023691

namespace A093337

/-- `A179635(A262708(n+5))` -/
def P913647131519023691.Spec : Prop :=
  ∀ n, P913647131519023691.a n = A093337 (n + 11)

end A093337

/-! ## A093337.P1106731656258407666

`A228355(A068670(n+4)+1)`
-/

namespace A093337.P1106731656258407666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228355 (A068670 (n + 4) + 1).toNat

end

end A093337.P1106731656258407666

namespace A093337

/-- `A228355(A068670(n+4)+1)` -/
def P1106731656258407666.Spec : Prop :=
  ∀ n, P1106731656258407666.a n = A093337 (n + 11)

end A093337

/-! ## A093337.P9634511093953386276

`A059995(A000040(n+5))%10`
-/

namespace A093337.P9634511093953386276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059995 (A000040 (n + 5)).toNat) 10

end

end A093337.P9634511093953386276

namespace A093337

/-- `A059995(A000040(n+5))%10` -/
def P9634511093953386276.Spec : Prop :=
  ∀ n, P9634511093953386276.a n = A093337 (n + 11)

end A093337

/-! ## A093337.P3362623835997361664

`A054899(p?[A069715(n+1)])%11`
-/

namespace A093337.P3362623835997361664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054899 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) 11

end

end A093337.P3362623835997361664

namespace A093337

/-- `A054899(p?[A069715(n+1)])%11` -/
def P3362623835997361664.Spec : Prop :=
  ∀ n, P3362623835997361664.a n = A093337 (n + 11)

end A093337

/-! ## A093337.P11961748203221657430

`A054899(p?[A248499(n+1)])%11`
-/

namespace A093337.P11961748203221657430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054899 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) 11

end

end A093337.P11961748203221657430

namespace A093337

/-- `A054899(p?[A248499(n+1)])%11` -/
def P11961748203221657430.Spec : Prop :=
  ∀ n, P11961748203221657430.a n = A093337 (n + 11)

end A093337

/-! ## A093337.P6464516115362934358

`dr(A007652(n+5)-A110923(n+5))`
-/

namespace A093337.P6464516115362934358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007652 (n + 5) - A110923 (n + 5))

end

end A093337.P6464516115362934358

namespace A093337

/-- `dr(A007652(n+5)-A110923(n+5))` -/
def P6464516115362934358.Spec : Prop :=
  ∀ n, (P6464516115362934358.a n : ℤ) = A093337 (n + 11)

end A093337

/-! ## A093337.P14379107679186059908

`A010879(A059995(p?[A069715(n+1)]))`
-/

namespace A093337.P14379107679186059908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A059995 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A093337.P14379107679186059908

namespace A093337

/-- `A010879(A059995(p?[A069715(n+1)]))` -/
def P14379107679186059908.Spec : Prop :=
  ∀ n, P14379107679186059908.a n = A093337 (n + 11)

end A093337

/-! ## A093337.P4664227701804987827

`A010879(A059995(p?[A248499(n+1)]))`
-/

namespace A093337.P4664227701804987827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A059995 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A093337.P4664227701804987827

namespace A093337

/-- `A010879(A059995(p?[A248499(n+1)]))` -/
def P4664227701804987827.Spec : Prop :=
  ∀ n, P4664227701804987827.a n = A093337 (n + 11)

end A093337

/-! ## A093337.P10625734759100198461

`A000030(A110923(n+5)-A007652(n+5))`
-/

namespace A093337.P10625734759100198461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A110923 (n + 5) - A007652 (n + 5)).toNat

end

end A093337.P10625734759100198461

namespace A093337

/-- `A000030(A110923(n+5)-A007652(n+5))` -/
def P10625734759100198461.Spec : Prop :=
  ∀ n, P10625734759100198461.a n = A093337 (n + 11)

end A093337

/-! ## A093337.P4669567473847573032

`A010888(A110923(n+5)-A007652(n+5))`
-/

namespace A093337.P4669567473847573032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A110923 (n + 5) - A007652 (n + 5)).toNat

end

end A093337.P4669567473847573032

namespace A093337

/-- `A010888(A110923(n+5)-A007652(n+5))` -/
def P4669567473847573032.Spec : Prop :=
  ∀ n, P4669567473847573032.a n = A093337 (n + 11)

end A093337

/-!
# A093338: Scan primes, write down initial digit if it is a prime.

The programs for A093338, the canonical program `A093338.P12790822210776350752` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093338 has offset 2).

The definition of A093338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093338.P12790822210776350752

`p?[A077648(n+1)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A093338

/-- `p?[A077648(n+1)]` -/
def P12790822210776350752.Spec : Prop :=
  ∀ n, P12790822210776350752.a n = A093338 (n + 2)

theorem P12790822210776350752.correct : P12790822210776350752.Spec := by
  intro n
  simp only [A093338, Nat.add_sub_cancel]

end A093338

/-! ## A093338.P12303746132175203002

`p?[A004087(n+1)%10]`
-/

namespace A093338.P12303746132175203002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004087 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093338.P12303746132175203002

namespace A093338

/-- `p?[A004087(n+1)%10]` -/
def P12303746132175203002.Spec : Prop :=
  ∀ n, P12303746132175203002.a n = A093338 (n + 2)

end A093338

/-! ## A093338.P7023179217124941636

`p?[A032759(n+1)%10]`
-/

namespace A093338.P7023179217124941636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032759 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093338.P7023179217124941636

namespace A093338

/-- `p?[A032759(n+1)%10]` -/
def P7023179217124941636.Spec : Prop :=
  ∀ n, P7023179217124941636.a n = A093338 (n + 2)

end A093338

/-! ## A093338.P369076548067480056

`p?[A067087(n+1)%10]`
-/

namespace A093338.P369076548067480056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067087 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093338.P369076548067480056

namespace A093338

/-- `p?[A067087(n+1)%10]` -/
def P369076548067480056.Spec : Prop :=
  ∀ n, P369076548067480056.a n = A093338 (n + 2)

end A093338

/-! ## A093338.P10720942072656205288

`p?[A033308(A068670(n))]`
-/

namespace A093338.P10720942072656205288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (A068670 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093338.P10720942072656205288

namespace A093338

/-- `p?[A033308(A068670(n))]` -/
def P10720942072656205288.Spec : Prop :=
  ∀ n, P10720942072656205288.a n = A093338 (n + 2)

end A093338

/-! ## A093338.P3773219949435976765

`A000030(A320585(n+1))`
-/

namespace A093338.P3773219949435976765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A320585 (n + 1)).toNat

end

end A093338.P3773219949435976765

namespace A093338

/-- `A000030(A320585(n+1))` -/
def P3773219949435976765.Spec : Prop :=
  ∀ n, P3773219949435976765.a n = A093338 (n + 2)

end A093338

/-! ## A093338.P16044176397100243318

`p?[A000030(A000040(n+1))]`
-/

namespace A093338.P16044176397100243318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093338.P16044176397100243318

namespace A093338

/-- `p?[A000030(A000040(n+1))]` -/
def P16044176397100243318.Spec : Prop :=
  ∀ n, P16044176397100243318.a n = A093338 (n + 2)

end A093338

/-! ## A093338.P11653684284428732995

`p?[A000030(A008578(n+1))]`
-/

namespace A093338.P11653684284428732995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093338.P11653684284428732995

namespace A093338

/-- `p?[A000030(A008578(n+1))]` -/
def P11653684284428732995.Spec : Prop :=
  ∀ n, P11653684284428732995.a n = A093338 (n + 2)

end A093338

/-! ## A093338.P9049965471323719720

`p?[A000030(A137589(n+1))]`
-/

namespace A093338.P9049965471323719720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A137589 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093338.P9049965471323719720

namespace A093338

/-- `p?[A000030(A137589(n+1))]` -/
def P9049965471323719720.Spec : Prop :=
  ∀ n, P9049965471323719720.a n = A093338 (n + 2)

end A093338

/-! ## A093338.P14032994136032208931

`p?[A000030(A138840(n+1))]`
-/

namespace A093338.P14032994136032208931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A138840 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093338.P14032994136032208931

namespace A093338

/-- `p?[A000030(A138840(n+1))]` -/
def P14032994136032208931.Spec : Prop :=
  ∀ n, P14032994136032208931.a n = A093338 (n + 2)

end A093338

/-! ## A093338.P10424603134673454487

`p?[A000030(sqrt(A001248(n+1)))]`
-/

namespace A093338.P10424603134673454487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093338.P10424603134673454487

namespace A093338

/-- `p?[A000030(sqrt(A001248(n+1)))]` -/
def P10424603134673454487.Spec : Prop :=
  ∀ n, P10424603134673454487.a n = A093338 (n + 2)

end A093338

/-! ## A093338.P11613083822797653929

`p?[A000030(A006093(n+1)+1)]`
-/

namespace A093338.P11613083822797653929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093338.P11613083822797653929

namespace A093338

/-- `p?[A000030(A006093(n+1)+1)]` -/
def P11613083822797653929.Spec : Prop :=
  ∀ n, P11613083822797653929.a n = A093338 (n + 2)

end A093338

/-! ## A093338.P5976110383728411102

`A331045(A320585(2*n+1-n))`
-/

namespace A093338.P5976110383728411102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331045 (A320585 (2 * n + 1 - n)).toNat

end

end A093338.P5976110383728411102

namespace A093338

/-- `A331045(A320585(2*n+1-n))` -/
def P5976110383728411102.Spec : Prop :=
  ∀ n, P5976110383728411102.a n = A093338 (n + 2)

end A093338

/-! ## A093338.P17131842795619746034

`p?[(A061227(n)-A000040(n+1))%10]`
-/

namespace A093338.P17131842795619746034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061227 n - A000040 (n + 1)) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093338.P17131842795619746034

namespace A093338

/-- `p?[(A061227(n)-A000040(n+1))%10]` -/
def P17131842795619746034.Spec : Prop :=
  ∀ n, P17131842795619746034.a n = A093338 (n + 2)

end A093338

/-! ## A093338.P8295624630946693731

`p?[A028422(2*(n+1))²*A000030(n+1)]`
-/

namespace A093338.P8295624630946693731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (2 * (n + 1)) ^ 2 * A000030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093338.P8295624630946693731

namespace A093338

/-- `p?[A028422(2*(n+1))²*A000030(n+1)]` -/
def P8295624630946693731.Spec : Prop :=
  ∀ n, P8295624630946693731.a n = A093338 (n + 2)

end A093338

/-!
# A093342: Increasing gaps in A038593 (lower terms).

The programs for A093342, there is no canonical definition to state claims against.
-/

/-! ## A093342.P18370417169485054409

`A093362(n)-A093330(n+2)`
-/

namespace A093342.P18370417169485054409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093362 n - A093330 (n + 2)

end

end A093342.P18370417169485054409

/-!
# A093343: Primes of form (prime(n)^2 + prime(n+1)^2)/2.

The programs for A093343, there is no canonical definition to state claims against.
-/

/-! ## A093343.P8040134585186460963

`A216432(n+1)/2`
-/

namespace A093343.P8040134585186460963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216432 (n + 1) : ℚ) / 2

end

end A093343.P8040134585186460963

/-! ## A093343.P2738996757477308098

`A069485(A240749(n+1))`
-/

namespace A093343.P2738996757477308098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069485 (A240749 (n + 1)).toNat

end

end A093343.P2738996757477308098

/-! ## A093343.P9352367955292626327

`A048851(A240749(n+1)+1)/2`
-/

namespace A093343.P9352367955292626327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048851 (A240749 (n + 1) + 1).toNat : ℚ) / 2

end

end A093343.P9352367955292626327

/-! ## A093343.P18182943638412226404

`A075892(A240749(2*n+1-n))`
-/

namespace A093343.P18182943638412226404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075892 (A240749 (2 * n + 1 - n)).toNat

end

end A093343.P18182943638412226404

/-! ## A093343.P4514123250182893193

`∩[A397463(n+1), A075892(n+2)]`
-/

namespace A093343.P4514123250182893193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075892 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093343.P4514123250182893193

/-! ## A093343.P15175394271602015223

`A216432(n+1)-A075892(A240749(n+1))`
-/

namespace A093343.P15175394271602015223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216432 (n + 1) - A075892 (A240749 (n + 1)).toNat

end

end A093343.P15175394271602015223

/-! ## A093343.P280384019272138423

`A010051(A001132(n+1))*A075892(A240749(n+1))`
-/

namespace A093343.P280384019272138423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A001132 (n + 1)).toNat * A075892 (A240749 (n + 1)).toNat

end

end A093343.P280384019272138423

/-!
# A093344: a(n) = n! * Sum_{i=1..n} (1/i)*Sum_{j=0..i-1} 1/j!.

The programs for A093344, the canonical program `A093344.P7925684141274736683` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093344 has offset 0).

The definition of A093344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093344.P7925684141274736683

`2*n*a(n-1)+(2-n²)*a(n-2)+(n-2)²*a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093344

/-- `2*n*a(n-1)+(2-n²)*a(n-2)+(n-2)²*a(n-3)` -/
def P7925684141274736683.Spec : Prop :=
  ∀ n, P7925684141274736683.a n = A093344 n

theorem P7925684141274736683.correct : P7925684141274736683.Spec := by
  intro n
  simp only [A093344]

end A093344

/-! ## A093344.P4271750984288243134

`A248669(A133263(n))-A000007(n)`
-/

namespace A093344.P4271750984288243134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248669 (A133263 n).toNat - A000007 n

end

end A093344.P4271750984288243134

namespace A093344

/-- `A248669(A133263(n))-A000007(n)` -/
def P4271750984288243134.Spec : Prop :=
  ∀ n, P4271750984288243134.a n = A093344 n

end A093344

/-! ## A093344.P7120717702301478093

`A057427(n)*A248669(A133263(n))`
-/

namespace A093344.P7120717702301478093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A248669 (A133263 n).toNat

end

end A093344.P7120717702301478093

namespace A093344

/-- `A057427(n)*A248669(A133263(n))` -/
def P7120717702301478093.Spec : Prop :=
  ∀ n, P7120717702301478093.a n = A093344 n

end A093344

/-! ## A093344.P17319298327254697301

`A178334(n)*A248669(A133263(n))`
-/

namespace A093344.P17319298327254697301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A248669 (A133263 n).toNat

end

end A093344.P17319298327254697301

namespace A093344

/-- `A178334(n)*A248669(A133263(n))` -/
def P17319298327254697301.Spec : Prop :=
  ∀ n, P17319298327254697301.a n = A093344 n

end A093344

/-! ## A093344.P7471492618770199596

`lcm(A062157(n), A248669(A133263(n)))`
-/

namespace A093344.P7471492618770199596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 n) (A248669 (A133263 n).toNat)

end

end A093344.P7471492618770199596

namespace A093344

/-- `lcm(A062157(n), A248669(A133263(n)))` -/
def P7471492618770199596.Spec : Prop :=
  ∀ n, (P7471492618770199596.a n : ℤ) = A093344 n

end A093344

/-! ## A093344.P1571453025425477010

`A248669(A133263(n))%A223901(n)`
-/

namespace A093344.P1571453025425477010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248669 (A133263 n).toNat) (A223901 n)

end

end A093344.P1571453025425477010

namespace A093344

/-- `A248669(A133263(n))%A223901(n)` -/
def P1571453025425477010.Spec : Prop :=
  ∀ n, P1571453025425477010.a n = A093344 n

end A093344

/-!
# A093345: a(n) = n! * {1 + Sum[i=1..n, 1/i*Sum(j=0..i-1, 1/j!)]}.

The programs for A093345, there is no canonical definition to state claims against.
-/

/-! ## A093345.P15382234144463287762

`A093344(n)+n!`
-/

namespace A093345.P15382234144463287762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093344 n + (Nat.factorial n : ℤ)

end

end A093345.P15382234144463287762

/-! ## A093345.P11803944589522653792

`A093344(n)+A000142(n)`
-/

namespace A093345.P11803944589522653792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093344 n + A000142 n

end

end A093345.P11803944589522653792

/-! ## A093345.P13859359450467266145

`n!+A248669(A133263(n))-A000007(n)`
-/

namespace A093345.P13859359450467266145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + (A248669 (A133263 n).toNat - A000007 n)

end

end A093345.P13859359450467266145

/-! ## A093345.P3674852201531450075

`A000142(n)+A057427(n)*A248669(A133263(n))`
-/

namespace A093345.P3674852201531450075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + A057427 n * A248669 (A133263 n).toNat

end

end A093345.P3674852201531450075

/-! ## A093345.P2549904360628502461

`A191490(∑[n+2]-1)`
-/

namespace A093345.P2549904360628502461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191490 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A093345.P2549904360628502461

/-!
# A093346: Array read by antidiagonals: T(r,n) = number of two-stack sortable r-permutations.

The programs for A093346, there is no canonical definition to state claims against.
-/

/-! ## A093346.P11006375986747854755

`A200370(n+1)*A327413(A156953(n))`
-/

namespace A093346.P11006375986747854755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1) * A327413 (A156953 n).toNat

end

end A093346.P11006375986747854755

/-! ## A093346.P5473684115182926839

`A107702(lt[A107685(3*n+4), A107674(n)])`
-/

namespace A093346.P5473684115182926839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107685 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107702 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A093346.P5473684115182926839

/-! ## A093346.P13155495991413703608

`A107702(lt[A107685(3*n+4), A107676(n)])`
-/

namespace A093346.P13155495991413703608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107685 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107676 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107702 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A093346.P13155495991413703608

/-!
# A093347: A 3-fractal "castle" starting with 0.

The programs for A093347, the canonical program `A093347.P11686768757415714358` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093347 has offset 1).

The definition of A093347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093347.P11633122809715185801

`A333773(A244042(n))`
-/

namespace A093347.P11633122809715185801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 (A244042 n).toNat

end

end A093347.P11633122809715185801

namespace A093347

/-- `A333773(A244042(n))` -/
def P11633122809715185801.Spec : Prop :=
  ∀ n, P11633122809715185801.a n = A093347 (n + 1)

end A093347

/-! ## A093347.P361133078979444042

`A333773(n-A300222(n))`
-/

namespace A093347.P361133078979444042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 ((n : ℤ) - A300222 n).toNat

end

end A093347.P361133078979444042

namespace A093347

/-- `A333773(n-A300222(n))` -/
def P361133078979444042.Spec : Prop :=
  ∀ n, P361133078979444042.a n = A093347 (n + 1)

end A093347

/-! ## A093347.P17989205783498171430

`A333773(A004488(A300222(A004488(n))))`
-/

namespace A093347.P17989205783498171430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 (A004488 (A300222 (A004488 n).toNat).toNat).toNat

end

end A093347.P17989205783498171430

namespace A093347

/-- `A333773(A004488(A300222(A004488(n))))` -/
def P17989205783498171430.Spec : Prop :=
  ∀ n, P17989205783498171430.a n = A093347 (n + 1)

end A093347

/-! ## A093347.P9595430929378419050

`A333780(n-A300222(n))`
-/

namespace A093347.P9595430929378419050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333780 ((n : ℤ) - A300222 n).toNat

end

end A093347.P9595430929378419050

namespace A093347

/-- `A333780(n-A300222(n))` -/
def P9595430929378419050.Spec : Prop :=
  ∀ n, P9595430929378419050.a n = A093347 (n + 1)

end A093347

/-! ## A093347.P1874048019651739117

`A333780(A244042(n)%(n+1))`
-/

namespace A093347.P1874048019651739117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333780 (Int.tmod (A244042 n) (n + 1 : ℤ)).toNat

end

end A093347.P1874048019651739117

namespace A093347

/-- `A333780(A244042(n)%(n+1))` -/
def P1874048019651739117.Spec : Prop :=
  ∀ n, P1874048019651739117.a n = A093347 (n + 1)

end A093347

/-! ## A093347.P11686768757415714358

`a(n-1)-3^val(n, 3)*A056594(2*n)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A093347

/-- `a(n-1)-3^val(n, 3)*A056594(2*n)` -/
def P11686768757415714358.Spec : Prop :=
  ∀ n, P11686768757415714358.a n = A093347 (n + 1)

theorem P11686768757415714358.correct : P11686768757415714358.Spec := by
  intro n
  simp only [A093347, Nat.add_sub_cancel]

end A093347

/-! ## A093347.P8978420870578134925

`A306556(A332497(n)+1)`
-/

namespace A093347.P8978420870578134925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306556 (A332497 n + 1).toNat

end

end A093347.P8978420870578134925

namespace A093347

/-- `A306556(A332497(n)+1)` -/
def P8978420870578134925.Spec : Prop :=
  ∀ n, P8978420870578134925.a n = A093347 (n + 1)

end A093347

/-! ## A093347.P15823285732411006107

`A004396(A004489(A195160(n)))`
-/

namespace A093347.P15823285732411006107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004489 (A195160 n).toNat).toNat

end

end A093347.P15823285732411006107

namespace A093347

/-- `A004396(A004489(A195160(n)))` -/
def P15823285732411006107.Spec : Prop :=
  ∀ n, P15823285732411006107.a n = A093347 (n + 1)

end A093347

/-! ## A093347.P396732452939556481

`A004396(A004489(∑[A195159(n)]))`
-/

namespace A093347.P396732452939556481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A093347.P396732452939556481

namespace A093347

/-- `A004396(A004489(∑[A195159(n)]))` -/
def P396732452939556481.Spec : Prop :=
  ∀ n, P396732452939556481.a n = A093347 (n + 1)

end A093347

/-! ## A093347.P5937344230374444602

`round(A105672(n+1)/3)`
-/

namespace A093347.P5937344230374444602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A105672 (n + 1) : ℚ) / 3)

end

end A093347.P5937344230374444602

namespace A093347

/-- `round(A105672(n+1)/3)` -/
def P5937344230374444602.Spec : Prop :=
  ∀ n, P5937344230374444602.a n = A093347 (n + 1)

end A093347

/-!
# A093348: A 5-fractal "castle" starting with 0.

The programs for A093348, the canonical program `A093348.P9820017468597884023` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093348 has offset 1).

The definition of A093348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093348.P9820017468597884023

`a(n-1)+A060904(n)*A062157(n)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A093348

/-- `a(n-1)+A060904(n)*A062157(n)` -/
def P9820017468597884023.Spec : Prop :=
  ∀ n, P9820017468597884023.a n = A093348 (n + 1)

theorem P9820017468597884023.correct : P9820017468597884023.Spec := by
  intro n
  simp only [A093348, Nat.add_sub_cancel]

end A093348

/-! ## A093348.P5039924904088394048

`∑[A060904(abs(1-n)+1)*A062157(n)]`
-/

namespace A093348.P5039924904088394048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060904 (|1 - (n : ℤ)| + 1).toNat * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093348.P5039924904088394048

namespace A093348

/-- `∑[A060904(abs(1-n)+1)*A062157(n)]` -/
def P5039924904088394048.Spec : Prop :=
  ∀ n, P5039924904088394048.a n = A093348 (n + 1)

end A093348

/-! ## A093348.P11431323548641981998

`∑[A060904(A004277(n))*A062157(n)]%(n+1)`
-/

namespace A093348.P11431323548641981998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060904 (A004277 n).toNat * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A093348.P11431323548641981998

namespace A093348

/-- `∑[A060904(A004277(n))*A062157(n)]%(n+1)` -/
def P11431323548641981998.Spec : Prop :=
  ∀ n, P11431323548641981998.a n = A093348 (n + 1)

end A093348

/-! ## A093348.P5984923291996723498

`Δ[A094116(round(sqrt(n²+1)))]`
-/

namespace A093348.P5984923291996723498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094116 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093348.P5984923291996723498

namespace A093348

/-- `Δ[A094116(round(sqrt(n²+1)))]` -/
def P5984923291996723498.Spec : Prop :=
  ∀ n, P5984923291996723498.a n = A093348 (n + 1)

end A093348

/-! ## A093348.P17595908096910420483

`abs(Δ[A094116(A028310(n))])`
-/

namespace A093348.P17595908096910420483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094116 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A093348.P17595908096910420483

namespace A093348

/-- `abs(Δ[A094116(A028310(n))])` -/
def P17595908096910420483.Spec : Prop :=
  ∀ n, P17595908096910420483.a n = A093348 (n + 1)

end A093348

/-! ## A093348.P11798660821798212598

`A094116(n+1)-A094116(round(sqrt(n²+1)))`
-/

namespace A093348.P11798660821798212598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094116 (n + 1) - A094116 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A093348.P11798660821798212598

namespace A093348

/-- `A094116(n+1)-A094116(round(sqrt(n²+1)))` -/
def P11798660821798212598.Spec : Prop :=
  ∀ n, P11798660821798212598.a n = A093348 (n + 1)

end A093348

/-! ## A093348.P4524240291146414186

`∑[gcd(25, n)*A062157(n)]%A181454(n+1)`
-/

namespace A093348.P4524240291146414186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 25 n : ℤ) * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A181454 (n + 1))

end

end A093348.P4524240291146414186

namespace A093348

/-- `∑[gcd(25, n)*A062157(n)]%A181454(n+1)` -/
def P4524240291146414186.Spec : Prop :=
  ∀ n, P4524240291146414186.a n = A093348 (n + 1)

end A093348

/-!
# A093349: A 7-fractal "castle" starting with 0.

The programs for A093349, there is no canonical definition to state claims against.
-/

/-! ## A093349.P12707842441554869158

`Δ[A094117(floor(acot(n)+n))]`
-/

namespace A093349.P12707842441554869158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094117 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093349.P12707842441554869158

/-! ## A093349.P2773900723317971083

`A014081(A133024(n+1))+A000035(n)`
-/

namespace A093349.P2773900723317971083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A133024 (n + 1)).toNat + A000035 n

end

end A093349.P2773900723317971083

/-! ## A093349.P7362227282411944934

`A240830(n+1)+A049347(A000079(n))`
-/

namespace A093349.P7362227282411944934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240830 (n + 1) + A049347 (A000079 n).toNat

end

end A093349.P7362227282411944934

/-! ## A093349.P6281602259989446317

`A056239(A248770(n+1))+A000035(n)`
-/

namespace A093349.P6281602259989446317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A248770 (n + 1)).toNat + A000035 n

end

end A093349.P6281602259989446317

/-! ## A093349.P10377403380019373251

`A151785(A117302(n+1))-A059841(n)`
-/

namespace A093349.P10377403380019373251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151785 (A117302 (n + 1)).toNat - A059841 n

end

end A093349.P10377403380019373251

/-!
# A093350: Primes congruent to 6 mod 13.

The programs for A093350, the canonical program `A093350.P6153094955691601461` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093350 has offset 1).

The definition of A093350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093350.P6153094955691601461

`∪[A142170(n+1), A142178(n+1)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A093350

/-- `∪[A142170(n+1), A142178(n+1)]` -/
def P6153094955691601461.Spec : Prop :=
  ∀ n, (P6153094955691601461.a n : ℤ) = A093350 (n + 1)

theorem P6153094955691601461.correct : P6153094955691601461.Spec := by
  intro n
  simp only [A093350, Nat.add_sub_cancel]

end A093350

/-! ## A093350.P7768644473116449386

`∪[A142516(n+1), A142528(n+1)]`
-/

namespace A093350.P7768644473116449386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093350.P7768644473116449386

namespace A093350

/-- `∪[A142516(n+1), A142528(n+1)]` -/
def P7768644473116449386.Spec : Prop :=
  ∀ n, (P7768644473116449386.a n : ℤ) = A093350 (n + 1)

end A093350

/-! ## A093350.P7933941552747130648

`p?[13*n+6]`
-/

namespace A093350.P7933941552747130648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13 * n + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A093350.P7933941552747130648

namespace A093350

/-- `p?[13*n+6]` -/
def P7933941552747130648.Spec : Prop :=
  ∀ n, (P7933941552747130648.a n : ℤ) = A093350 (n + 1)

end A093350

/-! ## A093350.P6244391265984780722

`or(1, p?[a(n-1)+13])` with `a(0)=6`
-/

namespace A093350.P6244391265984780722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A093350.P6244391265984780722

namespace A093350

/-- `or(1, p?[a(n-1)+13])` -/
def P6244391265984780722.Spec : Prop :=
  ∀ n, (P6244391265984780722.a n : ℤ) = A093350 (n + 1)

end A093350

/-! ## A093350.P9085504418998991898

`∏{d}[p?[a(n-1)+13], #]` with `a(0)=6`
-/

namespace A093350.P9085504418998991898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f2 =>
  f2 (n - 1) + 13

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A093350.P9085504418998991898

namespace A093350

/-- `∏{d}[p?[a(n-1)+13], #]` -/
def P9085504418998991898.Spec : Prop :=
  ∀ n, (P9085504418998991898.a n : ℤ) = A093350 (n + 1)

end A093350

/-! ## A093350.P5322299933813121838

`∑{p}[p?[a(n-1)+13], #]` with `a(0)=6`
-/

namespace A093350.P5322299933813121838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f2 =>
  f2 (n - 1) + 13

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A093350.P5322299933813121838

namespace A093350

/-- `∑{p}[p?[a(n-1)+13], #]` -/
def P5322299933813121838.Spec : Prop :=
  ∀ n, (P5322299933813121838.a n : ℤ) = A093350 (n + 1)

end A093350

/-! ## A093350.P3283249748397933324

`∏{p}[p?[a(n-1)+13], #]` with `a(0)=6`
-/

namespace A093350.P3283249748397933324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f2 =>
  f2 (n - 1) + 13

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A093350.P3283249748397933324

namespace A093350

/-- `∏{p}[p?[a(n-1)+13], #]` -/
def P3283249748397933324.Spec : Prop :=
  ∀ n, (P3283249748397933324.a n : ℤ) = A093350 (n + 1)

end A093350

/-! ## A093350.P15814652301244897594

`∩[A009087(n+1), A186113(n)]`
-/

namespace A093350.P15814652301244897594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093350.P15814652301244897594

namespace A093350

/-- `∩[A009087(n+1), A186113(n)]` -/
def P15814652301244897594.Spec : Prop :=
  ∀ n, (P15814652301244897594.a n : ℤ) = A093350 (n + 1)

end A093350

/-! ## A093350.P14289057911422703387

`∩[A038884(n+1), A186113(n)]`
-/

namespace A093350.P14289057911422703387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093350.P14289057911422703387

namespace A093350

/-- `∩[A038884(n+1), A186113(n)]` -/
def P14289057911422703387.Spec : Prop :=
  ∀ n, (P14289057911422703387.a n : ℤ) = A093350 (n + 1)

end A093350

/-! ## A093350.P17844756881814121843

`∩[A040127(n+1), A186113(n)]`
-/

namespace A093350.P17844756881814121843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093350.P17844756881814121843

namespace A093350

/-- `∩[A040127(n+1), A186113(n)]` -/
def P17844756881814121843.Spec : Prop :=
  ∀ n, (P17844756881814121843.a n : ℤ) = A093350 (n + 1)

end A093350

/-! ## A093350.P1201652600689159975

`∩[A120330(n+1), A186113(n)]`
-/

namespace A093350.P1201652600689159975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093350.P1201652600689159975

namespace A093350

/-- `∩[A120330(n+1), A186113(n)]` -/
def P1201652600689159975.Spec : Prop :=
  ∀ n, (P1201652600689159975.a n : ℤ) = A093350 (n + 1)

end A093350

/-! ## A093350.P15113516466721341485

`∩[A215131(n+1), A186113(n)]`
-/

namespace A093350.P15113516466721341485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093350.P15113516466721341485

namespace A093350

/-- `∩[A215131(n+1), A186113(n)]` -/
def P15113516466721341485.Spec : Prop :=
  ∀ n, (P15113516466721341485.a n : ℤ) = A093350 (n + 1)

end A093350

/-! ## A093350.P16116042061594308092

`∩[A215276(n+1), A186113(n)]`
-/

namespace A093350.P16116042061594308092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093350.P16116042061594308092

namespace A093350

/-- `∩[A215276(n+1), A186113(n)]` -/
def P16116042061594308092.Spec : Prop :=
  ∀ n, (P16116042061594308092.a n : ℤ) = A093350 (n + 1)

end A093350

/-! ## A093350.P12903416829947388443

`∩[A215319(n+1), A186113(n)]`
-/

namespace A093350.P12903416829947388443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093350.P12903416829947388443

namespace A093350

/-- `∩[A215319(n+1), A186113(n)]` -/
def P12903416829947388443.Spec : Prop :=
  ∀ n, (P12903416829947388443.a n : ℤ) = A093350 (n + 1)

end A093350

/-! ## A093350.P632204743249783665

`∩[A215323(n+1), A186113(n)]`
-/

namespace A093350.P632204743249783665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093350.P632204743249783665

namespace A093350

/-- `∩[A215323(n+1), A186113(n)]` -/
def P632204743249783665.Spec : Prop :=
  ∀ n, (P632204743249783665.a n : ℤ) = A093350 (n + 1)

end A093350

/-! ## A093350.P877715347221541395

`∩[A215351(n+1), A186113(n)]`
-/

namespace A093350.P877715347221541395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093350.P877715347221541395

namespace A093350

/-- `∩[A215351(n+1), A186113(n)]` -/
def P877715347221541395.Spec : Prop :=
  ∀ n, (P877715347221541395.a n : ℤ) = A093350 (n + 1)

end A093350

/-! ## A093350.P14364623630949154765

`∩[A215371(n+1), A186113(n)]`
-/

namespace A093350.P14364623630949154765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093350.P14364623630949154765

namespace A093350

/-- `∩[A215371(n+1), A186113(n)]` -/
def P14364623630949154765.Spec : Prop :=
  ∀ n, (P14364623630949154765.a n : ℤ) = A093350 (n + 1)

end A093350

/-! ## A093350.P13212064432786606476

`∩[A215383(n+1), A186113(n)]`
-/

namespace A093350.P13212064432786606476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093350.P13212064432786606476

namespace A093350

/-- `∩[A215383(n+1), A186113(n)]` -/
def P13212064432786606476.Spec : Prop :=
  ∀ n, (P13212064432786606476.a n : ℤ) = A093350 (n + 1)

end A093350

/-! ## A093350.P12371906513703108465

`∩[A215387(n+1), A186113(n)]`
-/

namespace A093350.P12371906513703108465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093350.P12371906513703108465

namespace A093350

/-- `∩[A215387(n+1), A186113(n)]` -/
def P12371906513703108465.Spec : Prop :=
  ∀ n, (P12371906513703108465.a n : ℤ) = A093350 (n + 1)

end A093350

/-! ## A093350.P4809824635247630713

`∩[A215424(n+1), A186113(n)]`
-/

namespace A093350.P4809824635247630713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093350.P4809824635247630713

namespace A093350

/-- `∩[A215424(n+1), A186113(n)]` -/
def P4809824635247630713.Spec : Prop :=
  ∀ n, (P4809824635247630713.a n : ℤ) = A093350 (n + 1)

end A093350

/-!
# A093351: Number of labeled n-vertex graphs with a 2-component.

The programs for A093351, there is no canonical definition to state claims against.
-/

/-! ## A093351.P14232957727874996759

`A006125(n)-A093352(n)`
-/

namespace A093351.P14232957727874996759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A093352 n

end

end A093351.P14232957727874996759

/-! ## A093351.P9060764536843719440

`∏[A011782(n)]-A093352(n)`
-/

namespace A093351.P9060764536843719440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A093352 n

end

end A093351.P9060764536843719440

/-! ## A093351.P1293865284682770658

`A016116(A103505(n))-A093352(n)`
-/

namespace A093351.P1293865284682770658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A103505 n).toNat - A093352 n

end

end A093351.P1293865284682770658

/-! ## A093351.P8384495513394304320

`A000079(A161680(n))-A093352(n)`
-/

namespace A093351.P8384495513394304320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A161680 n).toNat - A093352 n

end

end A093351.P8384495513394304320

/-! ## A093351.P8740159553337473774

`∏[A000010(A000079(n))]-A093352(n)`
-/

namespace A093351.P8740159553337473774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A093352 n

end

end A093351.P8740159553337473774

/-!
# A093352: Number of labeled n-vertex graphs without a 2-component.

The programs for A093352, there is no canonical definition to state claims against.
-/

/-! ## A093352.P3129161065444867603

`A006125(n)-A093351(n)`
-/

namespace A093352.P3129161065444867603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A093351 n

end

end A093352.P3129161065444867603

/-! ## A093352.P1191850595656743530

`∏[A011782(n)]-A093351(n)`
-/

namespace A093352.P1191850595656743530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A093351 n

end

end A093352.P1191850595656743530

/-! ## A093352.P11746183485299132956

`A016116(A103505(n))-A093351(n)`
-/

namespace A093352.P11746183485299132956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A103505 n).toNat - A093351 n

end

end A093352.P11746183485299132956

/-! ## A093352.P1262642749153653852

`A000079(A161680(n))-A093351(n)`
-/

namespace A093352.P1262642749153653852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A161680 n).toNat - A093351 n

end

end A093352.P1262642749153653852

/-! ## A093352.P13351941410053460440

`∏[A000010(A000079(n))]-A093351(n)`
-/

namespace A093352.P13351941410053460440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A093351 n

end

end A093352.P13351941410053460440

/-!
# A093353: a(n) = (n + (n mod 2))*(n + 1)/2.

The programs for A093353, the canonical program `A093353.P3260188406593260230` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093353 has offset 0).

The definition of A093353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093353.P3260188406593260230

`(n+1)*floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093353

/-- `(n+1)*floor((n+1)/2)` -/
def P3260188406593260230.Spec : Prop :=
  ∀ n, P3260188406593260230.a n = A093353 n

theorem P3260188406593260230.correct : P3260188406593260230.Spec := by
  intro n
  simp only [A093353]

end A093353

/-! ## A093353.P5770451489536427532

`(n+n%2)*(n+1)/2`
-/

namespace A093353.P5770451489536427532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + n % 2) * (n + 1) : ℕ) : ℚ) / 2

end

end A093353.P5770451489536427532

namespace A093353

/-- `(n+n%2)*(n+1)/2` -/
def P5770451489536427532.Spec : Prop :=
  ∀ n, P5770451489536427532.a n = (A093353 n : ℚ)

end A093353

/-! ## A093353.P758834883997369153

`A387541(n+1)+A387539(n+1)`
-/

namespace A093353.P758834883997369153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387541 (n + 1) + A387539 (n + 1)

end

end A093353.P758834883997369153

namespace A093353

/-- `A387541(n+1)+A387539(n+1)` -/
def P758834883997369153.Spec : Prop :=
  ∀ n, P758834883997369153.a n = A093353 n

end A093353

/-! ## A093353.P18270951471583783910

`∑[lcm(2, n)-floor(n/2)]`
-/

namespace A093353.P18270951471583783910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℤ) - ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093353.P18270951471583783910

namespace A093353

/-- `∑[lcm(2, n)-floor(n/2)]` -/
def P18270951471583783910.Spec : Prop :=
  ∀ n, P18270951471583783910.a n = A093353 n

end A093353

/-! ## A093353.P6539312063055720288

`∑[n]+∑[n]%(n+1)`
-/

namespace A093353.P6539312063055720288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1)

end

end A093353.P6539312063055720288

namespace A093353

/-- `∑[n]+∑[n]%(n+1)` -/
def P6539312063055720288.Spec : Prop :=
  ∀ n, (P6539312063055720288.a n : ℤ) = A093353 n

end A093353

/-! ## A093353.P11733120670495310771

`round(n*or(1, n+1)/2)`
-/

namespace A093353.P11733120670495310771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * ((Nat.lor 1 (n + 1) : ℚ) / 2))

end

end A093353.P11733120670495310771

namespace A093353

/-- `round(n*or(1, n+1)/2)` -/
def P11733120670495310771.Spec : Prop :=
  ∀ n, P11733120670495310771.a n = A093353 n

end A093353

/-! ## A093353.P9598885443138787275

`(n+1)*∑[n]/or(1, n)`
-/

namespace A093353.P9598885443138787275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / (Nat.lor 1 n : ℚ)

end

end A093353.P9598885443138787275

namespace A093353

/-- `(n+1)*∑[n]/or(1, n)` -/
def P9598885443138787275.Spec : Prop :=
  ∀ n, P9598885443138787275.a n = (A093353 n : ℚ)

end A093353

/-! ## A093353.P4226564760337077336

`round(round(n/2)/acot(n+1))`
-/

namespace A093353.P4226564760337077336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((n : ℚ) / 2) : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ))

end

end A093353.P4226564760337077336

namespace A093353

/-- `round(round(n/2)/acot(n+1))` -/
def P4226564760337077336.Spec : Prop :=
  ∀ n, P4226564760337077336.a n = A093353 n

end A093353

/-! ## A093353.P2542766426692071383

`∑[∑[2*n]%comp[2*n]]`
-/

namespace A093353.P2542766426692071383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093353.P2542766426692071383

namespace A093353

/-- `∑[∑[2*n]%comp[2*n]]` -/
def P2542766426692071383.Spec : Prop :=
  ∀ n, (P2542766426692071383.a n : ℤ) = A093353 n

end A093353

/-! ## A093353.P4985835473605849517

`(and(1, n)+n)*(n+1)/2`
-/

namespace A093353.P4985835473605849517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n + n) * (n + 1) : ℚ) / 2

end

end A093353.P4985835473605849517

namespace A093353

/-- `(and(1, n)+n)*(n+1)/2` -/
def P4985835473605849517.Spec : Prop :=
  ∀ n, P4985835473605849517.a n = (A093353 n : ℚ)

end A093353

/-! ## A093353.P10190043729946086095

`∑[n+1]-gcd(n+1, ∑[n])`
-/

namespace A093353.P10190043729946086095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

end

end A093353.P10190043729946086095

namespace A093353

/-- `∑[n+1]-gcd(n+1, ∑[n])` -/
def P10190043729946086095.Spec : Prop :=
  ∀ n, P10190043729946086095.a n = A093353 n

end A093353

/-! ## A093353.P10782834876955042985

`∪[C(2*n+1, 2), 2*n²]`
-/

namespace A093353.P10782834876955042985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A093353.P10782834876955042985

namespace A093353

/-- `∪[C(2*n+1, 2), 2*n²]` -/
def P10782834876955042985.Spec : Prop :=
  ∀ n, (P10782834876955042985.a n : ℤ) = A093353 n

end A093353

/-! ## A093353.P14736377796295428000

`floor(∑[4-a(n-1)]²/8)` with `a(0)=1`
-/

namespace A093353.P14736377796295428000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 8⌋

end

end A093353.P14736377796295428000

namespace A093353

/-- `floor(∑[4-a(n-1)]²/8)` -/
def P14736377796295428000.Spec : Prop :=
  ∀ n, P14736377796295428000.a n = A093353 n

end A093353

/-! ## A093353.P2329706174530750563

`lcm(n+1, (n+1)*∑[and(1, n)])`
-/

namespace A093353.P2329706174530750563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A093353.P2329706174530750563

namespace A093353

/-- `lcm(n+1, (n+1)*∑[and(1, n)])` -/
def P2329706174530750563.Spec : Prop :=
  ∀ n, (P2329706174530750563.a n : ℤ) = A093353 n

end A093353

/-! ## A093353.P9885566593009587140

`∪[2*n², n*(2*n+1)]`
-/

namespace A093353.P9885566593009587140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A093353.P9885566593009587140

namespace A093353

/-- `∪[2*n², n*(2*n+1)]` -/
def P9885566593009587140.Spec : Prop :=
  ∀ n, (P9885566593009587140.a n : ℤ) = A093353 n

end A093353

/-! ## A093353.P1373998843677252443

`floor(floor((n+1)/2)/acot(n+1))`
-/

namespace A093353.P1373998843677252443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n + 1 : ℚ) / 2⌋ : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ)⌋

end

end A093353.P1373998843677252443

namespace A093353

/-- `floor(floor((n+1)/2)/acot(n+1))` -/
def P1373998843677252443.Spec : Prop :=
  ∀ n, P1373998843677252443.a n = A093353 n

end A093353

/-! ## A093353.P2611193322301915342

`(n+1)*(n+2-gcd(2, n))/2`
-/

namespace A093353.P2611193322301915342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * ((n + 2 : ℤ) - (Nat.gcd 2 n : ℤ)) : ℚ) / 2

end

end A093353.P2611193322301915342

namespace A093353

/-- `(n+1)*(n+2-gcd(2, n))/2` -/
def P2611193322301915342.Spec : Prop :=
  ∀ n, P2611193322301915342.a n = (A093353 n : ℚ)

end A093353

/-! ## A093353.P11454008857042201837

`abs((n+1)*∑[1-a(n-1)])` with `a(0)=0`
-/

namespace A093353.P11454008857042201837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A093353.P11454008857042201837

namespace A093353

/-- `abs((n+1)*∑[1-a(n-1)])` -/
def P11454008857042201837.Spec : Prop :=
  ∀ n, P11454008857042201837.a n = A093353 n

end A093353

/-! ## A093353.P5407946059479812387

`floor((n+1)*∑[1-a(n-1)])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A093353.P5407946059479812387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093353.P5407946059479812387

namespace A093353

/-- `floor((n+1)*∑[1-a(n-1)])` -/
def P5407946059479812387.Spec : Prop :=
  ∀ n, P5407946059479812387.a n = A093353 n

end A093353

/-! ## A093353.P13876860503250943449

`ceil((n+1)*∑[1-a(n-1)])` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A093353.P13876860503250943449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093353.P13876860503250943449

namespace A093353

/-- `ceil((n+1)*∑[1-a(n-1)])` -/
def P13876860503250943449.Spec : Prop :=
  ∀ n, P13876860503250943449.a n = A093353 n

end A093353

/-!
# A093354: Number of prime triples (p,q,r) with p < q < r <= n and q - p = r - q.

The programs for A093354, there is no canonical definition to state claims against.
-/

/-! ## A093354.P249168125439799335

`A125505(A033270(n+1)+1)`
-/

namespace A093354.P249168125439799335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125505 (A033270 (n + 1) + 1).toNat

end

end A093354.P249168125439799335

/-! ## A093354.P6521374604338931112

`A125505(A000720(n+1)+C(2, n))`
-/

namespace A093354.P6521374604338931112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125505 (A000720 (n + 1) + (Nat.choose 2 n : ℤ)).toNat

end

end A093354.P6521374604338931112

/-! ## A093354.P12515583460916530736

`A125505(A000720(round(sqrt(n²+1))+1))`
-/

namespace A093354.P12515583460916530736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125505 (A000720 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat).toNat

end

end A093354.P12515583460916530736

/-! ## A093354.P12333210405027114950

`A125505(round(sqrt(n²+1))-A065855(n+1))`
-/

namespace A093354.P12333210405027114950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125505 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - A065855 (n + 1)).toNat

end

end A093354.P12333210405027114950

/-! ## A093354.P10656848322051849346

`A125505(A137734(A000720(n+1)²))`
-/

namespace A093354.P10656848322051849346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125505 (A137734 (A000720 (n + 1) ^ 2).toNat).toNat

end

end A093354.P10656848322051849346

/-! ## A093354.P17200359018447886453

`A125505(A328902(∑[A049084(n+1)]))`
-/

namespace A093354.P17200359018447886453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125505 (A328902 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A093354.P17200359018447886453

/-! ## A093354.P14373910127052640642

`A125505(A000720(n+1)+A000007(n))`
-/

namespace A093354.P14373910127052640642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125505 (A000720 (n + 1) + A000007 n).toNat

end

end A093354.P14373910127052640642

/-! ## A093354.P9677986218060993229

`A125505(A000720(n+1)+A000038(n))`
-/

namespace A093354.P9677986218060993229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125505 (A000720 (n + 1) + A000038 n).toNat

end

end A093354.P9677986218060993229

/-! ## A093354.P18340493874582708234

`A125505(A000720(n+1)^A178334(n))`
-/

namespace A093354.P18340493874582708234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125505 (SequenceMachineLib.roundAway ((A000720 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A093354.P18340493874582708234

/-! ## A093354.P11652322940918368427

`A125505(A000720(n+1)+1-A178334(n))`
-/

namespace A093354.P11652322940918368427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125505 (A000720 (n + 1) + (1 - A178334 n)).toNat

end

end A093354.P11652322940918368427

/-!
# A093356: Number of occurrences of pattern 1-2 after n iterations of morphism A007413.

The programs for A093356, the canonical program `A093356.P1493801398208406444` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093356 has offset 1).

The definition of A093356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093356.P9925448925377922057

`ceil((3*4^n+2^(n+1))/2)`
-/

namespace A093356.P9925448925377922057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * 4 ^ n + 2 ^ (n + 1) : ℚ) / 2⌉

end

end A093356.P9925448925377922057

namespace A093356

/-- `ceil((3*4^n+2^(n+1))/2)` -/
def P9925448925377922057.Spec : Prop :=
  ∀ n, P9925448925377922057.a n = A093356 (n + 1)

end A093356

/-! ## A093356.P1493801398208406444

`6*a(n-1)-8*a(n-2)` with `a(0)=3, a(1)=8, a(2)=28`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093356

/-- `6*a(n-1)-8*a(n-2)` -/
def P1493801398208406444.Spec : Prop :=
  ∀ n, P1493801398208406444.a n = A093356 (n + 1)

theorem P1493801398208406444.correct : P1493801398208406444.Spec := by
  intro n
  simp only [A093356, Nat.add_sub_cancel]

end A093356

/-! ## A093356.P7714685691179000725

`ogf((3-10x+4x^2)/(1-6x+8x^2))`
-/

namespace A093356.P7714685691179000725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -10, 4] [1, -6, 8] n

end

end A093356.P7714685691179000725

namespace A093356

/-- `ogf((3-10x+4x^2)/(1-6x+8x^2))` -/
def P7714685691179000725.Spec : Prop :=
  ∀ n, P7714685691179000725.a n = A093356 (n + 1)

end A093356

/-! ## A093356.P13069413919217344251

`4*a(n-1)-2^n` with `a(0)=3, a(1)=8`
-/

namespace A093356.P13069413919217344251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n a =>
  4 * a (n - 1) - (2 ^ n : ℤ)

end

end A093356.P13069413919217344251

namespace A093356

/-- `4*a(n-1)-2^n` -/
def P13069413919217344251.Spec : Prop :=
  ∀ n, P13069413919217344251.a n = A093356 (n + 1)

end A093356

/-! ## A093356.P4281426570214743241

`Δ[A343175(n)]`
-/

namespace A093356.P4281426570214743241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093356.P4281426570214743241

namespace A093356

/-- `Δ[A343175(n)]` -/
def P4281426570214743241.Spec : Prop :=
  ∀ n, P4281426570214743241.a n = A093356 (n + 1)

end A093356

/-! ## A093356.P12470355365663155003

`Δ[A116362(2*n)]`
-/

namespace A093356.P12470355365663155003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116362 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093356.P12470355365663155003

namespace A093356

/-- `Δ[A116362(2*n)]` -/
def P12470355365663155003.Spec : Prop :=
  ∀ n, P12470355365663155003.a n = A093356 (n + 1)

end A093356

/-! ## A093356.P7072115953306089674

`Δ[A257418(2*n)]`
-/

namespace A093356.P7072115953306089674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257418 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093356.P7072115953306089674

namespace A093356

/-- `Δ[A257418(2*n)]` -/
def P7072115953306089674.Spec : Prop :=
  ∀ n, P7072115953306089674.a n = A093356 (n + 1)

end A093356

/-! ## A093356.P16239649853117620128

`(A042950(n)+1)*2^n`
-/

namespace A093356.P16239649853117620128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A042950 n + 1) * (2 ^ n : ℤ)

end

end A093356.P16239649853117620128

namespace A093356

/-- `(A042950(n)+1)*2^n` -/
def P16239649853117620128.Spec : Prop :=
  ∀ n, P16239649853117620128.a n = A093356 (n + 1)

end A093356

/-! ## A093356.P11168765666432570605

`A161168(n)+ceil(4^n/2)`
-/

namespace A093356.P11168765666432570605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161168 n + ⌈(4 ^ n : ℚ) / 2⌉

end

end A093356.P11168765666432570605

namespace A093356

/-- `A161168(n)+ceil(4^n/2)` -/
def P11168765666432570605.Spec : Prop :=
  ∀ n, P11168765666432570605.a n = A093356 (n + 1)

end A093356

/-! ## A093356.P12568024759180005778

`A087009(2*(n+1))+2^n`
-/

namespace A093356.P12568024759180005778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087009 (2 * (n + 1)) + (2 ^ n : ℤ)

end

end A093356.P12568024759180005778

namespace A093356

/-- `A087009(2*(n+1))+2^n` -/
def P12568024759180005778.Spec : Prop :=
  ∀ n, P12568024759180005778.a n = A093356 (n + 1)

end A093356

/-! ## A093356.P8546946811877388366

`(A266550(n+2)+2)*2^n`
-/

namespace A093356.P8546946811877388366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A266550 (n + 2) + 2) * (2 ^ n : ℤ)

end

end A093356.P8546946811877388366

namespace A093356

/-- `(A266550(n+2)+2)*2^n` -/
def P8546946811877388366.Spec : Prop :=
  ∀ n, P8546946811877388366.a n = A093356 (n + 1)

end A093356

/-! ## A093356.P6087242560111259995

`A049775(n+2)+ceil(2^(n-1))`
-/

namespace A093356.P6087242560111259995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049775 (n + 2) + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A093356.P6087242560111259995

namespace A093356

/-- `A049775(n+2)+ceil(2^(n-1))` -/
def P6087242560111259995.Spec : Prop :=
  ∀ n, P6087242560111259995.a n = A093356 (n + 1)

end A093356

/-! ## A093356.P4146208563638604242

`A042950(n)+A010036(n)`
-/

namespace A093356.P4146208563638604242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n + A010036 n

end

end A093356.P4146208563638604242

namespace A093356

/-- `A042950(n)+A010036(n)` -/
def P4146208563638604242.Spec : Prop :=
  ∀ n, P4146208563638604242.a n = A093356 (n + 1)

end A093356

/-! ## A093356.P1120855493928945404

`A343175(n)+A103454(n)`
-/

namespace A093356.P1120855493928945404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343175 n + A103454 n

end

end A093356.P1120855493928945404

namespace A093356

/-- `A343175(n)+A103454(n)` -/
def P1120855493928945404.Spec : Prop :=
  ∀ n, P1120855493928945404.a n = A093356 (n + 1)

end A093356

/-! ## A093356.P16949461969657383185

`A394314(n)+A074506(n)`
-/

namespace A093356.P16949461969657383185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394314 n + A074506 n

end

end A093356.P16949461969657383185

namespace A093356

/-- `A394314(n)+A074506(n)` -/
def P16949461969657383185.Spec : Prop :=
  ∀ n, P16949461969657383185.a n = A093356 (n + 1)

end A093356

/-! ## A093356.P13005111192512810322

`A085601(n)-A343175(n)`
-/

namespace A093356.P13005111192512810322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085601 n - A343175 n

end

end A093356.P13005111192512810322

namespace A093356

/-- `A085601(n)-A343175(n)` -/
def P13005111192512810322.Spec : Prop :=
  ∀ n, P13005111192512810322.a n = A093356 (n + 1)

end A093356

/-! ## A093356.P12218839657760223036

`A004119(n)*A171559(n)`
-/

namespace A093356.P12218839657760223036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004119 n * A171559 n

end

end A093356.P12218839657760223036

namespace A093356

/-- `A004119(n)*A171559(n)` -/
def P12218839657760223036.Spec : Prop :=
  ∀ n, P12218839657760223036.a n = A093356 (n + 1)

end A093356

/-! ## A093356.P9182692981676585505

`A158561(n+1)+A131577(n)`
-/

namespace A093356.P9182692981676585505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158561 (n + 1) + A131577 n

end

end A093356.P9182692981676585505

namespace A093356

/-- `A158561(n+1)+A131577(n)` -/
def P9182692981676585505.Spec : Prop :=
  ∀ n, P9182692981676585505.a n = A093356 (n + 1)

end A093356

/-!
# A093357: Number of occurrences of pattern 2-1 after n iterations of morphism A007413.

The programs for A093357, the canonical program `A093357.P13378498480444602000` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093357 has offset 1).

The definition of A093357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093357.P13378498480444602000

`6*a(n-1)-8*a(n-2)` with `a(0)=0, a(1)=4, a(2)=20`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093357

/-- `6*a(n-1)-8*a(n-2)` -/
def P13378498480444602000.Spec : Prop :=
  ∀ n, P13378498480444602000.a n = A093357 (n + 1)

theorem P13378498480444602000.correct : P13378498480444602000.Spec := by
  intro n
  simp only [A093357, Nat.add_sub_cancel]

end A093357

/-! ## A093357.P17569538750367126384

`ogf((4x-4x^2)/(1-6x+8x^2))`
-/

namespace A093357.P17569538750367126384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -4] [1, -6, 8] n

end

end A093357.P17569538750367126384

namespace A093357

/-- `ogf((4x-4x^2)/(1-6x+8x^2))` -/
def P17569538750367126384.Spec : Prop :=
  ∀ n, P17569538750367126384.a n = A093357 (n + 1)

end A093357

/-! ## A093357.P2906928226356317889

`floor(Δ[(1-2^n)²]/2)`
-/

namespace A093357.P2906928226356317889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 ^ n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 2⌋

end

end A093357.P2906928226356317889

namespace A093357

/-- `floor(Δ[(1-2^n)²]/2)` -/
def P2906928226356317889.Spec : Prop :=
  ∀ n, P2906928226356317889.a n = A093357 (n + 1)

end A093357

/-! ## A093357.P6972490266794391174

`Δ[or(1, -2^n)²/2]`
-/

namespace A093357.P6972490266794391174
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 1 (-(2 ^ n : ℤ)) ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093357.P6972490266794391174

namespace A093357

/-- `Δ[or(1, -2^n)²/2]` -/
def P6972490266794391174.Spec : Prop :=
  ∀ n, P6972490266794391174.a n = (A093357 (n + 1) : ℚ)

end A093357

/-! ## A093357.P14185968212404923887

`2^n+4*a(n-1)` with `a(0)=0, a(1)=4`
-/

namespace A093357.P14185968212404923887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  2 ^ n + 4 * a (n - 1)

end

end A093357.P14185968212404923887

namespace A093357

/-- `2^n+4*a(n-1)` -/
def P14185968212404923887.Spec : Prop :=
  ∀ n, (P14185968212404923887.a n : ℤ) = A093357 (n + 1)

end A093357

/-! ## A093357.P6267922018256139485

`or(4*a(n-1), 2^n)` with `a(0)=0, a(1)=4`
-/

namespace A093357.P6267922018256139485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  Nat.lor (4 * a (n - 1)) (2 ^ n)

end

end A093357.P6267922018256139485

namespace A093357

/-- `or(4*a(n-1), 2^n)` -/
def P6267922018256139485.Spec : Prop :=
  ∀ n, (P6267922018256139485.a n : ℤ) = A093357 (n + 1)

end A093357

/-! ## A093357.P17571364612211956890

`Δ[(ceil(sin(n)²)-2^n)²/2]`
-/

namespace A093357.P17571364612211956890
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((⌈Real.sin (n : ℝ) ^ 2⌉ - (2 ^ n : ℤ)) ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093357.P17571364612211956890

namespace A093357

/-- `Δ[(ceil(sin(n)²)-2^n)²/2]` -/
def P17571364612211956890.Spec : Prop :=
  ∀ n, P17571364612211956890.a n = (A093357 (n + 1) : ℚ)

end A093357

/-! ## A093357.P439766276774725697

`Δ[lcm(2^n-2, and(-2, 2^n))]`
-/

namespace A093357.P439766276774725697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 ^ n : ℤ) - 2) (Int.land (-2) (2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A093357.P439766276774725697

namespace A093357

/-- `Δ[lcm(2^n-2, and(-2, 2^n))]` -/
def P439766276774725697.Spec : Prop :=
  ∀ n, P439766276774725697.a n = A093357 (n + 1)

end A093357

/-! ## A093357.P10027579537210277881

`and(-2, A269716(n))`
-/

namespace A093357.P10027579537210277881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A269716 n)

end

end A093357.P10027579537210277881

namespace A093357

/-- `and(-2, A269716(n))` -/
def P10027579537210277881.Spec : Prop :=
  ∀ n, P10027579537210277881.a n = A093357 (n + 1)

end A093357

/-! ## A093357.P7784777000706360219

`Δ[A211012(n)/2]`
-/

namespace A093357.P7784777000706360219
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211012 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093357.P7784777000706360219

namespace A093357

/-- `Δ[A211012(n)/2]` -/
def P7784777000706360219.Spec : Prop :=
  ∀ n, P7784777000706360219.a n = (A093357 (n + 1) : ℚ)

end A093357

/-! ## A093357.P6561623113903224275

`A164908(n)-2^n`
-/

namespace A093357.P6561623113903224275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164908 n - (2 ^ n : ℤ)

end

end A093357.P6561623113903224275

namespace A093357

/-- `A164908(n)-2^n` -/
def P6561623113903224275.Spec : Prop :=
  ∀ n, P6561623113903224275.a n = A093357 (n + 1)

end A093357

/-! ## A093357.P17708232481502127113

`2^n*A055010(n)`
-/

namespace A093357.P17708232481502127113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A055010 n

end

end A093357.P17708232481502127113

namespace A093357

/-- `2^n*A055010(n)` -/
def P17708232481502127113.Spec : Prop :=
  ∀ n, P17708232481502127113.a n = A093357 (n + 1)

end A093357

/-! ## A093357.P12536342847045873101

`Δ[A255047(n)²/2]`
-/

namespace A093357.P12536342847045873101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255047 n ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093357.P12536342847045873101

namespace A093357

/-- `Δ[A255047(n)²/2]` -/
def P12536342847045873101.Spec : Prop :=
  ∀ n, P12536342847045873101.a n = (A093357 (n + 1) : ℚ)

end A093357

/-! ## A093357.P3512556538573838408

`4*Δ[C(A131577(n), 2)]`
-/

namespace A093357.P3512556538573838408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A131577 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A093357.P3512556538573838408

namespace A093357

/-- `4*Δ[C(A131577(n), 2)]` -/
def P3512556538573838408.Spec : Prop :=
  ∀ n, P3512556538573838408.a n = A093357 (n + 1)

end A093357

/-! ## A093357.P6227281727576965310

`Δ[floor(A000225(n)²/2)]`
-/

namespace A093357.P6227281727576965310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000225 n ^ 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093357.P6227281727576965310

namespace A093357

/-- `Δ[floor(A000225(n)²/2)]` -/
def P6227281727576965310.Spec : Prop :=
  ∀ n, P6227281727576965310.a n = A093357 (n + 1)

end A093357

/-! ## A093357.P2622650142600120793

`Δ[Δ[A132045(n)]²/2]`
-/

namespace A093357.P2622650142600120793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132045 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) - f2 n) ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093357.P2622650142600120793

namespace A093357

/-- `Δ[Δ[A132045(n)]²/2]` -/
def P2622650142600120793.Spec : Prop :=
  ∀ n, P2622650142600120793.a n = (A093357 (n + 1) : ℚ)

end A093357

/-! ## A093357.P8433360511157995960

`record[Δ[A052551(n)²/2]]`
-/

namespace A093357.P8433360511157995960
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052551 n ^ 2 : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093357.P8433360511157995960

namespace A093357

/-- `record[Δ[A052551(n)²/2]]` -/
def P8433360511157995960.Spec : Prop :=
  ∀ n, P8433360511157995960.a n = (A093357 (n + 1) : ℚ)

end A093357

/-! ## A093357.P17330324163351667140

`4*(A166444(n)+a(n-1))` with `a(0)=0`
-/

namespace A093357.P17330324163351667140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 * (A166444 n + a (n - 1))

end

end A093357.P17330324163351667140

namespace A093357

/-- `4*(A166444(n)+a(n-1))` -/
def P17330324163351667140.Spec : Prop :=
  ∀ n, P17330324163351667140.a n = A093357 (n + 1)

end A093357

/-! ## A093357.P4205313932408534143

`floor(2^(n-1))*∑[A003945(n)]`
-/

namespace A093357.P4205313932408534143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093357.P4205313932408534143

namespace A093357

/-- `floor(2^(n-1))*∑[A003945(n)]` -/
def P4205313932408534143.Spec : Prop :=
  ∀ n, P4205313932408534143.a n = A093357 (n + 1)

end A093357

/-! ## A093357.P13699806198547132820

`A010036(n)-A011782(n)`
-/

namespace A093357.P13699806198547132820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010036 n - A011782 n

end

end A093357.P13699806198547132820

namespace A093357

/-- `A010036(n)-A011782(n)` -/
def P13699806198547132820.Spec : Prop :=
  ∀ n, P13699806198547132820.a n = A093357 (n + 1)

end A093357

/-!
# A093359: Primes of the form 28*k + 1.

The programs for A093359, the canonical program `A093359.P15132916093607665240` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093359 has offset 1).

The definition of A093359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6509 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093359.P7715915376482634221

`∪[A142641(n+1), A142653(n+1)]`
-/

namespace A093359.P7715915376482634221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A093359.P7715915376482634221

namespace A093359

/-- `∪[A142641(n+1), A142653(n+1)]` -/
def P7715915376482634221.Spec : Prop :=
  ∀ n, (P7715915376482634221.a n : ℤ) = A093359 (n + 1)

end A093359

/-! ## A093359.P15132916093607665240

`p?[28*n+1]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093359

/-- `p?[28*n+1]` -/
def P15132916093607665240.Spec : Prop :=
  ∀ n, (P15132916093607665240.a n : ℤ) = A093359 (n + 1)

theorem P15132916093607665240.correct : P15132916093607665240.Spec := by
  intro n
  simp only [A093359, Nat.add_sub_cancel]

end A093359

/-! ## A093359.P9201536410527078213

`or(1, p?[a(n-1)+28])` with `a(0)=1`
-/

namespace A093359.P9201536410527078213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 28

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A093359.P9201536410527078213

namespace A093359

/-- `or(1, p?[a(n-1)+28])` -/
def P9201536410527078213.Spec : Prop :=
  ∀ n, (P9201536410527078213.a n : ℤ) = A093359 (n + 1)

end A093359

/-! ## A093359.P1816939437621562279

`∏{d}[p?[a(n-1)+28], #]` with `a(0)=1`
-/

namespace A093359.P1816939437621562279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 28

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A093359.P1816939437621562279

namespace A093359

/-- `∏{d}[p?[a(n-1)+28], #]` -/
def P1816939437621562279.Spec : Prop :=
  ∀ n, (P1816939437621562279.a n : ℤ) = A093359 (n + 1)

end A093359

/-! ## A093359.P14625675199660972176

`∑{p}[p?[a(n-1)+28], #]` with `a(0)=1`
-/

namespace A093359.P14625675199660972176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 28

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A093359.P14625675199660972176

namespace A093359

/-- `∑{p}[p?[a(n-1)+28], #]` -/
def P14625675199660972176.Spec : Prop :=
  ∀ n, (P14625675199660972176.a n : ℤ) = A093359 (n + 1)

end A093359

/-! ## A093359.P4644475555396655042

`∏{p}[p?[a(n-1)+28], #]` with `a(0)=1`
-/

namespace A093359.P4644475555396655042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 28

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A093359.P4644475555396655042

namespace A093359

/-- `∏{p}[p?[a(n-1)+28], #]` -/
def P4644475555396655042.Spec : Prop :=
  ∀ n, (P4644475555396655042.a n : ℤ) = A093359 (n + 1)

end A093359

/-! ## A093359.P15983218371070260792

`∩[A008846(n+1), A045465(n+1)]`
-/

namespace A093359.P15983218371070260792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093359.P15983218371070260792

namespace A093359

/-- `∩[A008846(n+1), A045465(n+1)]` -/
def P15983218371070260792.Spec : Prop :=
  ∀ n, (P15983218371070260792.a n : ℤ) = A093359 (n + 1)

end A093359

/-! ## A093359.P12128772528576953482

`∩[A008846(n+1), A140444(n+1)]`
-/

namespace A093359.P12128772528576953482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093359.P12128772528576953482

namespace A093359

/-- `∩[A008846(n+1), A140444(n+1)]` -/
def P12128772528576953482.Spec : Prop :=
  ∀ n, (P12128772528576953482.a n : ℤ) = A093359 (n + 1)

end A093359

/-! ## A093359.P6018526146844772278

`∩[A004619(n+1), A107134(n+1)]`
-/

namespace A093359.P6018526146844772278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093359.P6018526146844772278

namespace A093359

/-- `∩[A004619(n+1), A107134(n+1)]` -/
def P6018526146844772278.Spec : Prop :=
  ∀ n, (P6018526146844772278.a n : ℤ) = A093359 (n + 1)

end A093359

/-! ## A093359.P17781328347318764296

`∩[A004619(n+1), A141172(n+1)]`
-/

namespace A093359.P17781328347318764296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093359.P17781328347318764296

namespace A093359

/-- `∩[A004619(n+1), A141172(n+1)]` -/
def P17781328347318764296.Spec : Prop :=
  ∀ n, (P17781328347318764296.a n : ℤ) = A093359 (n + 1)

end A093359

/-! ## A093359.P10516602703161925242

`∩[A141172(n+1), A140444(n+1)]`
-/

namespace A093359.P10516602703161925242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093359.P10516602703161925242

namespace A093359

/-- `∩[A141172(n+1), A140444(n+1)]` -/
def P10516602703161925242.Spec : Prop :=
  ∀ n, (P10516602703161925242.a n : ℤ) = A093359 (n + 1)

end A093359

/-! ## A093359.P13458284347679825152

`∩[A045446(n+1), A107134(n+1)]`
-/

namespace A093359.P13458284347679825152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093359.P13458284347679825152

namespace A093359

/-- `∩[A045446(n+1), A107134(n+1)]` -/
def P13458284347679825152.Spec : Prop :=
  ∀ n, (P13458284347679825152.a n : ℤ) = A093359 (n + 1)

end A093359

/-! ## A093359.P13977497996440967362

`∩[A045456(n+1), A107134(n+1)]`
-/

namespace A093359.P13977497996440967362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093359.P13977497996440967362

namespace A093359

/-- `∩[A045456(n+1), A107134(n+1)]` -/
def P13977497996440967362.Spec : Prop :=
  ∀ n, (P13977497996440967362.a n : ℤ) = A093359 (n + 1)

end A093359

/-! ## A093359.P11244799303416523840

`∩[A141172(n+1), A045446(n+1)]`
-/

namespace A093359.P11244799303416523840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093359.P11244799303416523840

namespace A093359

/-- `∩[A141172(n+1), A045446(n+1)]` -/
def P11244799303416523840.Spec : Prop :=
  ∀ n, (P11244799303416523840.a n : ℤ) = A093359 (n + 1)

end A093359

/-! ## A093359.P14267566956672164164

`∩[A045424(n+1), A107134(n+1)]`
-/

namespace A093359.P14267566956672164164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093359.P14267566956672164164

namespace A093359

/-- `∩[A045424(n+1), A107134(n+1)]` -/
def P14267566956672164164.Spec : Prop :=
  ∀ n, (P14267566956672164164.a n : ℤ) = A093359 (n + 1)

end A093359

/-! ## A093359.P6019192477598682843

`∩[A045436(n+1), A107134(n+1)]`
-/

namespace A093359.P6019192477598682843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093359.P6019192477598682843

namespace A093359

/-- `∩[A045436(n+1), A107134(n+1)]` -/
def P6019192477598682843.Spec : Prop :=
  ∀ n, (P6019192477598682843.a n : ℤ) = A093359 (n + 1)

end A093359

/-! ## A093359.P4967768124154609659

`∩[A045465(n+1), A191218(n+1)]`
-/

namespace A093359.P4967768124154609659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093359.P4967768124154609659

namespace A093359

/-- `∩[A045465(n+1), A191218(n+1)]` -/
def P4967768124154609659.Spec : Prop :=
  ∀ n, (P4967768124154609659.a n : ℤ) = A093359 (n + 1)

end A093359

/-! ## A093359.P3807780435355493696

`∩[A045463(n+1), A107134(n+1)]`
-/

namespace A093359.P3807780435355493696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093359.P3807780435355493696

namespace A093359

/-- `∩[A045463(n+1), A107134(n+1)]` -/
def P3807780435355493696.Spec : Prop :=
  ∀ n, (P3807780435355493696.a n : ℤ) = A093359 (n + 1)

end A093359

/-! ## A093359.P5925683202346226264

`∩[A045472(n+1), A107134(n+1)]`
-/

namespace A093359.P5925683202346226264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093359.P5925683202346226264

namespace A093359

/-- `∩[A045472(n+1), A107134(n+1)]` -/
def P5925683202346226264.Spec : Prop :=
  ∀ n, (P5925683202346226264.a n : ℤ) = A093359 (n + 1)

end A093359

/-! ## A093359.P2132020796576419821

`∩[A045381(n+1), A161714(n)]`
-/

namespace A093359.P2132020796576419821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093359.P2132020796576419821

namespace A093359

/-- `∩[A045381(n+1), A161714(n)]` -/
def P2132020796576419821.Spec : Prop :=
  ∀ n, (P2132020796576419821.a n : ℤ) = A093359 (n + 1)

end A093359

/-!
# A093360: a(n) = prime(n)^(n-1).

The programs for A093360, there is no canonical definition to state claims against.
-/

/-! ## A093360.P4140541797492266193

`p?[comp[n²]]^n`
-/

namespace A093360.P4140541797492266193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ n

end

end A093360.P4140541797492266193

/-! ## A093360.P3143569432710026911

`eq[1, ∑{e}[n, #]]^n`
-/

namespace A093360.P3143569432710026911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ n

end

end A093360.P3143569432710026911

/-! ## A093360.P10188890537115103223

`record[∑{p}[n+2, #]]^n`
-/

namespace A093360.P10188890537115103223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ n

end

end A093360.P10188890537115103223

/-! ## A093360.P717412596537610681

`eq[2, ∏{e}[n², #]]^n`
-/

namespace A093360.P717412596537610681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ n

end

end A093360.P717412596537610681

/-! ## A093360.P7200846998831435000

`eq[n, ∏{d}[n, -#]]^n`
-/

namespace A093360.P7200846998831435000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), (-(d : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ n

end

end A093360.P7200846998831435000

/-!
# A093361: Add/multiply sequence, see example.

The programs for A093361, the canonical program `A093361.P9115174845444459584` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093361 has offset 0).

The definition of A093361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093361.P9115174845444459584

`1/24*(4*n^3+12*n²+20*n+33+(6*n²-9)*(-1)^n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093361

/-- `1/24*(4*n^3+12*n²+20*n+33+(6*n²-9)*(-1)^n)` -/
def P9115174845444459584.Spec : Prop :=
  ∀ n, P9115174845444459584.a n = (A093361 n : ℚ)

end A093361

/-! ## A093361.P12166402680540196057

`or(1, ∑[or(1, A065679(n))])`
-/

namespace A093361.P12166402680540196057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A065679 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093361.P12166402680540196057

namespace A093361

/-- `or(1, ∑[or(1, A065679(n))])` -/
def P12166402680540196057.Spec : Prop :=
  ∀ n, P12166402680540196057.a n = A093361 n

end A093361

/-! ## A093361.P18249193286444858627

`∑[A103831(n)-n]+1`
-/

namespace A093361.P18249193286444858627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103831 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A093361.P18249193286444858627

namespace A093361

/-- `∑[A103831(n)-n]+1` -/
def P18249193286444858627.Spec : Prop :=
  ∀ n, P18249193286444858627.a n = A093361 n

end A093361

/-! ## A093361.P12310748573625043712

`(n+1)²+a(n-1)-A103832(n)` with `a(0)=1`
-/

namespace A093361.P12310748573625043712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ 2 : ℤ) + (a (n - 1) - A103832 n)

end

end A093361.P12310748573625043712

namespace A093361

/-- `(n+1)²+a(n-1)-A103832(n)` -/
def P12310748573625043712.Spec : Prop :=
  ∀ n, P12310748573625043712.a n = A093361 n

end A093361

/-! ## A093361.P868589386957281351

`A136047(n+1)-A266440(n)`
-/

namespace A093361.P868589386957281351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136047 (n + 1) - A266440 n

end

end A093361.P868589386957281351

namespace A093361

/-- `A136047(n+1)-A266440(n)` -/
def P868589386957281351.Spec : Prop :=
  ∀ n, P868589386957281351.a n = A093361 n

end A093361

/-! ## A093361.P13374083122786887632

`∑[A000463(A053438(n)+1)]`
-/

namespace A093361.P13374083122786887632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A053438 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093361.P13374083122786887632

namespace A093361

/-- `∑[A000463(A053438(n)+1)]` -/
def P13374083122786887632.Spec : Prop :=
  ∀ n, P13374083122786887632.a n = A093361 n

end A093361

/-!
# A093362: Increasing gaps in A038593 (upper terms).

The programs for A093362, there is no canonical definition to state claims against.
-/

/-! ## A093362.P11924710270470344273

`A093342(n+1)+A093330(n+2)`
-/

namespace A093362.P11924710270470344273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093342 (n + 1) + A093330 (n + 2)

end

end A093362.P11924710270470344273

/-! ## A093362.P16645690997737187361

`A093342(n+1)+record[A038598(n+2)]`
-/

namespace A093362.P16645690997737187361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093342 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093362.P16645690997737187361

/-!
# A093364: Gaps associated with the arithmetic progressions of primes in A005115.

The programs for A093364, there is no canonical definition to state claims against.
-/

/-! ## A093364.P13012658438938009542

`A354484(char[n+10-8*n²]+1+n)`
-/

namespace A093364.P13012658438938009542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 10 : ℤ) - (8 * n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354484 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 + n)

end

end A093364.P13012658438938009542

/-! ## A093364.P14217495883041108094

`lcm(A033188(n+1), A193592(A033188(n+1)))`
-/

namespace A093364.P14217495883041108094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033188 (n + 1)) (A193592 (A033188 (n + 1)).toNat)

end

end A093364.P14217495883041108094

/-! ## A093364.P10359887323011832573

`A133277(A133263(n))-A113827(n+1)`
-/

namespace A093364.P10359887323011832573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133277 (A133263 n).toNat - A113827 (n + 1)

end

end A093364.P10359887323011832573

/-! ## A093364.P7744154259178772994

`A133277(A133263(n))-A133277(∑[n]+1)`
-/

namespace A093364.P7744154259178772994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133277 (A133263 n).toNat - A133277 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A093364.P7744154259178772994

/-! ## A093364.P16973728905418227359

`filter[A033188(n+1), A071026(#)]`
-/

namespace A093364.P16973728905418227359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071026 (f1 j).toNat = 1) n)

end

end A093364.P16973728905418227359

/-!
# A093367: Number of n-bead necklaces using exactly three colors with no adjacent beads having the same color.

The programs for A093367, the canonical program `A093367.P814731074857858464` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093367 has offset 1).

The definition of A093367 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A093367.P814731074857858464

`A000031(n+1)-(5+(-1)^(n+1))/2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A093367

/-- `A000031(n+1)-(5+(-1)^(n+1))/2` -/
def P814731074857858464.Spec : Prop :=
  ∀ n, P814731074857858464.a n = (A093367 (n + 1) : ℚ)

end A093367

/-! ## A093367.P6488118580750137994

`A052823(n+1)-n%2`
-/

namespace A093367.P6488118580750137994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 (n + 1) - ((n % 2 : ℕ) : ℤ)

end

end A093367.P6488118580750137994

namespace A093367

/-- `A052823(n+1)-n%2` -/
def P6488118580750137994.Spec : Prop :=
  ∀ n, P6488118580750137994.a n = A093367 (n + 1)

end A093367

/-! ## A093367.P11142132930991489935

`floor(A262232(n+1)+n/2)`
-/

namespace A093367.P11142132930991489935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262232 (n + 1) : ℚ) + (n : ℚ) / 2⌋

end

end A093367.P11142132930991489935

namespace A093367

/-- `floor(A262232(n+1)+n/2)` -/
def P11142132930991489935.Spec : Prop :=
  ∀ n, P11142132930991489935.a n = A093367 (n + 1)

end A093367

/-! ## A093367.P6067131451363137156

`A008965(n+1)-gcd(2, n+1)`
-/

namespace A093367.P6067131451363137156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 1) - (Nat.gcd 2 (n + 1) : ℤ)

end

end A093367.P6067131451363137156

namespace A093367

/-- `A008965(n+1)-gcd(2, n+1)` -/
def P6067131451363137156.Spec : Prop :=
  ∀ n, P6067131451363137156.a n = A093367 (n + 1)

end A093367

/-! ## A093367.P7427361466564928992

`A262232(n+1)+A004526(n)`
-/

namespace A093367.P7427361466564928992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262232 (n + 1) + A004526 n

end

end A093367.P7427361466564928992

namespace A093367

/-- `A262232(n+1)+A004526(n)` -/
def P7427361466564928992.Spec : Prop :=
  ∀ n, P7427361466564928992.a n = A093367 (n + 1)

end A093367

/-! ## A093367.P5853705146656041887

`A008965(n+1)-A000034(n)`
-/

namespace A093367.P5853705146656041887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 1) - A000034 n

end

end A093367.P5853705146656041887

namespace A093367

/-- `A008965(n+1)-A000034(n)` -/
def P5853705146656041887.Spec : Prop :=
  ∀ n, P5853705146656041887.a n = A093367 (n + 1)

end A093367

/-! ## A093367.P14113338335736911307

`A052823(n+1)-A000035(n)`
-/

namespace A093367.P14113338335736911307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 (n + 1) - A000035 n

end

end A093367.P14113338335736911307

namespace A093367

/-- `A052823(n+1)-A000035(n)` -/
def P14113338335736911307.Spec : Prop :=
  ∀ n, P14113338335736911307.a n = A093367 (n + 1)

end A093367

/-! ## A093367.P3468330841992930519

`A141023(n)-A329145(n+1)`
-/

namespace A093367.P3468330841992930519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141023 n - A329145 (n + 1)

end

end A093367.P3468330841992930519

namespace A093367

/-- `A141023(n)-A329145(n+1)` -/
def P3468330841992930519.Spec : Prop :=
  ∀ n, P3468330841992930519.a n = A093367 (n + 1)

end A093367

/-! ## A093367.P2629039230131719402

`A106365(n+1)+A330632(n+1)-A208539(n+1)`
-/

namespace A093367.P2629039230131719402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106365 (n + 1) + (A330632 (n + 1) - A208539 (n + 1))

end

end A093367.P2629039230131719402

namespace A093367

/-- `A106365(n+1)+A330632(n+1)-A208539(n+1)` -/
def P2629039230131719402.Spec : Prop :=
  ∀ n, P2629039230131719402.a n = A093367 (n + 1)

end A093367

/-!
# A093368: Number of asymmetric periodic cycles of iterative map described by Ma and Wainwright.

The programs for A093368, there is no canonical definition to state claims against.
-/

/-! ## A093368.P6948444851409556744

`A002264(A002823(n+3)^A296554(n+1))`
-/

namespace A093368.P6948444851409556744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.roundAway ((A002823 (n + 3) : ℚ) ^ (A296554 (n + 1) : ℤ))).toNat

end

end A093368.P6948444851409556744

/-! ## A093368.P4565068318457090830

`A002264(C(A002823(n+3), A296554(n+1)))`
-/

namespace A093368.P4565068318457090830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Nat.choose (A002823 (n + 3)).toNat (A296554 (n + 1)).toNat)

end

end A093368.P4565068318457090830

/-! ## A093368.P2829463050643473555

`A002264(A296554(n+1)²²*A002823(n+3))`
-/

namespace A093368.P2829463050643473555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((A296554 (n + 1) ^ 2) ^ 2 * A002823 (n + 3)).toNat

end

end A093368.P2829463050643473555

/-! ## A093368.P10492315002364115136

`A054166(n)-A353573(A320745(n+1))`
-/

namespace A093368.P10492315002364115136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054166 n - A353573 (A320745 (n + 1)).toNat

end

end A093368.P10492315002364115136

/-! ## A093368.P6956814215547352608

`A002264(A002823(n+3))%A109461(n+1)`
-/

namespace A093368.P6956814215547352608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002264 (A002823 (n + 3)).toNat) (A109461 (n + 1))

end

end A093368.P6956814215547352608

/-!
# A093369: a(n) = sum of lengths of strings that can be generated by any starting string of n 2's and 3's that starts with a 2, using the rule described in the Comments lines.

The programs for A093369, there is no canonical definition to state claims against.
-/

/-! ## A093369.P12382766432792105936

`A023187(A038388(n+1)+2^n-log2(gcd(2, n)))`
-/

namespace A093369.P12382766432792105936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023187 (SequenceMachineLib.roundAway ((A038388 (n + 1) : ℝ) + ((2 ^ n : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)))).toNat

end

end A093369.P12382766432792105936

/-! ## A093369.P15369787073119671066

`A080606(A171477(n))-A234312(n)`
-/

namespace A093369.P15369787073119671066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080606 (A171477 n).toNat - A234312 n

end

end A093369.P15369787073119671066

/-!
# A093370: Start with any initial string of n numbers s(1), ..., s(n), with s(1) = 2, other s(i)'s = 2 or 3 (so there are 2^(n-1) starting strings). The rule for extending the string is this as follows: To get s(n+1), write the string s(1)s(2)...s(n) as xy^k for words x and y (where y has positive length) and k is maximized, i.e., k = the maximal number of repeating blocks at the end of the sequence. Then a(n) = number of starting strings for which k > 1.

The programs for A093370, there is no canonical definition to state claims against.
-/

/-! ## A093370.P5093317761212351765

`A121880(n+1)/2`
-/

namespace A093370.P5093317761212351765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121880 (n + 1) : ℚ) / 2

end

end A093370.P5093317761212351765

/-! ## A093370.P17550236741018432239

`2^n-A122536(n+1)/2`
-/

namespace A093370.P17550236741018432239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) - (A122536 (n + 1) : ℚ) / 2

end

end A093370.P17550236741018432239

/-! ## A093370.P5721325900149334357

`2^n-A093371(n+1)`
-/

namespace A093370.P5721325900149334357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A093371 (n + 1)

end

end A093370.P5721325900149334357

/-! ## A093370.P13229064444042059039

`floor(A121880(n-log2(1/2))/2)`
-/

namespace A093370.P13229064444042059039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A121880 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℚ) / 2⌋

end

end A093370.P13229064444042059039

/-! ## A093370.P15593459710090463521

`∑[ceil(2^(n-1))]-A216955(∑[n]+1)/2`
-/

namespace A093370.P15593459710090463521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A216955 (∑ j ∈ Finset.range (n + 1), f2 j + 1) : ℚ) / 2

end

end A093370.P15593459710090463521

/-!
# A093371: Start with any initial string of n numbers s(1), ..., s(n), with s(1) = 2, other s(i)'s = 2 or 3 (so there are 2^(n-1) starting strings). The rule for extending the string is this as follows: To get s(n+1), write the string s(1)s(2)...s(n) as xy^k for words x and y (where y has positive length) and k is maximized, i.e., k = the maximal number of repeating blocks at the end of the sequence. Then a(n) = number of starting strings for which k = 1.

The programs for A093371, there is no canonical definition to state claims against.
-/

/-! ## A093371.P15549394362115183177

`2^n-A093370(n+1)`
-/

namespace A093371.P15549394362115183177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A093370 (n + 1)

end

end A093371.P15549394362115183177

/-! ## A093371.P12251510872675312266

`A122536(n+1)/2`
-/

namespace A093371.P12251510872675312266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122536 (n + 1) : ℚ) / 2

end

end A093371.P12251510872675312266

/-! ## A093371.P1579995429843423647

`A216955(∑[n]+1)/2`
-/

namespace A093371.P1579995429843423647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216955 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 2

end

end A093371.P1579995429843423647

/-! ## A093371.P7873483834722563942

`floor(A122536(abs(Δ[n²]-n))/2)`
-/

namespace A093371.P7873483834722563942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A122536 |(f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)|.toNat : ℚ) / 2⌋

end

end A093371.P7873483834722563942

/-! ## A093371.P271481566185854839

`(2^(n+1)-A121880(n+1))/2`
-/

namespace A093371.P271481566185854839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - A121880 (n + 1) : ℚ) / 2

end

end A093371.P271481566185854839

/-!
# A093372: Composite k such that Fibonacci(k) == Legendre(k,5) == 1 (mod k).

The programs for A093372, there is no canonical definition to state claims against.
-/

/-! ## A093372.P10951670476771803407

`record[A049062(n+1)/A049062(n+1)²%5]`
-/

namespace A093372.P10951670476771803407
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049062 (n + 1) : ℚ) / (Int.tmod (A049062 (n + 1) ^ 2) 5 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093372.P10951670476771803407

/-! ## A093372.P12932591995409948094

`filter[A049062(n+1), A393076(#)]`
-/

namespace A093372.P12932591995409948094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393076 (f1 j).toNat = 1) n)

end

end A093372.P12932591995409948094

/-!
# A093373: Numbers that are not the product of factorials.

The programs for A093373, the canonical program `A093373.P5396455180272052482` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093373 has offset 1).

The definition of A093373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093373.P18183191274715105730

`eq[0, A322583(n+1)]+1`
-/

namespace A093373.P18183191274715105730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093373.P18183191274715105730

namespace A093373

/-- `eq[0, A322583(n+1)]+1` -/
def P18183191274715105730.Spec : Prop :=
  ∀ n, (P18183191274715105730.a n : ℤ) = A093373 (n + 1)

end A093373

/-! ## A093373.P5396455180272052482

`eq[0, A344438(n+1)]+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A093373

/-- `eq[0, A344438(n+1)]+1` -/
def P5396455180272052482.Spec : Prop :=
  ∀ n, (P5396455180272052482.a n : ℤ) = A093373 (n + 1)

theorem P5396455180272052482.correct : P5396455180272052482.Spec := by
  intro n
  simp only [A093373, Nat.add_sub_cancel]

end A093373

/-! ## A093373.P7368915010763272589

`comp[A001013(n+1)-1]+1`
-/

namespace A093373.P7368915010763272589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A093373.P7368915010763272589

namespace A093373

/-- `comp[A001013(n+1)-1]+1` -/
def P7368915010763272589.Spec : Prop :=
  ∀ n, (P7368915010763272589.a n : ℤ) = A093373 (n + 1)

end A093373

/-! ## A093373.P11044340953031140525

`comp[lt[A322583(2*n+3), A322583(n+1)]]+1`
-/

namespace A093373.P11044340953031140525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (2 * n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A093373.P11044340953031140525

namespace A093373

/-- `comp[lt[A322583(2*n+3), A322583(n+1)]]+1` -/
def P11044340953031140525.Spec : Prop :=
  ∀ n, (P11044340953031140525.a n : ℤ) = A093373 (n + 1)

end A093373

/-! ## A093373.P18367277179282931593

`A153152(eq[0, A322583(n+1)])`
-/

namespace A093373.P18367277179282931593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A093373.P18367277179282931593

namespace A093373

/-- `A153152(eq[0, A322583(n+1)])` -/
def P18367277179282931593.Spec : Prop :=
  ∀ n, P18367277179282931593.a n = A093373 (n + 1)

end A093373

/-! ## A093373.P6546020920929345875

`A153152(eq[0, A344438(n+1)])`
-/

namespace A093373.P6546020920929345875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A093373.P6546020920929345875

namespace A093373

/-- `A153152(eq[0, A344438(n+1)])` -/
def P6546020920929345875.Spec : Prop :=
  ∀ n, P6546020920929345875.a n = A093373 (n + 1)

end A093373

/-! ## A093373.P2028022035459429675

`eq[0, A322583(A000038(n)+n)]`
-/

namespace A093373.P2028022035459429675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093373.P2028022035459429675

namespace A093373

/-- `eq[0, A322583(A000038(n)+n)]` -/
def P2028022035459429675.Spec : Prop :=
  ∀ n, (P2028022035459429675.a n : ℤ) = A093373 (n + 1)

end A093373

/-! ## A093373.P15962313800986720088

`eq[0, A322583(A000007(n)+n)]`
-/

namespace A093373.P15962313800986720088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093373.P15962313800986720088

namespace A093373

/-- `eq[0, A322583(A000007(n)+n)]` -/
def P15962313800986720088.Spec : Prop :=
  ∀ n, (P15962313800986720088.a n : ℤ) = A093373 (n + 1)

end A093373

/-! ## A093373.P15177228171024940344

`eq[0, A322583(A065033(2*n))]`
-/

namespace A093373.P15177228171024940344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093373.P15177228171024940344

namespace A093373

/-- `eq[0, A322583(A065033(2*n))]` -/
def P15177228171024940344.Spec : Prop :=
  ∀ n, (P15177228171024940344.a n : ℤ) = A093373 (n + 1)

end A093373

/-! ## A093373.P3071619881411864380

`eq[0, A322583(A233583(n+1))]`
-/

namespace A093373.P3071619881411864380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093373.P3071619881411864380

namespace A093373

/-- `eq[0, A322583(A233583(n+1))]` -/
def P3071619881411864380.Spec : Prop :=
  ∀ n, (P3071619881411864380.a n : ℤ) = A093373 (n + 1)

end A093373

/-! ## A093373.P8269658014528580417

`eq[0, A344438(A003056(A000124(n)))]`
-/

namespace A093373.P8269658014528580417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344438 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093373.P8269658014528580417

namespace A093373

/-- `eq[0, A344438(A003056(A000124(n)))]` -/
def P8269658014528580417.Spec : Prop :=
  ∀ n, (P8269658014528580417.a n : ℤ) = A093373 (n + 1)

end A093373

/-!
# A093374: Number of 1-2-3-avoiding permutations with exactly thrice the 1-3-2 pattern.

The programs for A093374, the canonical program `A093374.P2048052970696785146` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093374 has offset 4).

The definition of A093374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093374.P2048052970696785146

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=5, a(2)=18, a(3)=57`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093374

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P2048052970696785146.Spec : Prop :=
  ∀ n, P2048052970696785146.a n = A093374 (n + 4)

theorem P2048052970696785146.correct : P2048052970696785146.Spec := by
  intro n
  simp only [A093374, Nat.add_sub_cancel]

end A093374

/-! ## A093374.P3151173282333753082

`A176027(n)+A081913(n)`
-/

namespace A093374.P3151173282333753082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176027 n + A081913 n

end

end A093374.P3151173282333753082

namespace A093374

/-- `A176027(n)+A081913(n)` -/
def P3151173282333753082.Spec : Prop :=
  ∀ n, P3151173282333753082.a n = A093374 (n + 4)

end A093374

/-! ## A093374.P729943923358167654

`A387185(n)+A084851(n)`
-/

namespace A093374.P729943923358167654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387185 n + A084851 n

end

end A093374.P729943923358167654

namespace A093374

/-- `A387185(n)+A084851(n)` -/
def P729943923358167654.Spec : Prop :=
  ∀ n, P729943923358167654.a n = A093374 (n + 4)

end A093374

/-! ## A093374.P4038118645495413969

`A081913(n)-Δ[A127276(n)]`
-/

namespace A093374.P4038118645495413969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081913 n - (f1 (n + 1) - f1 n)

end

end A093374.P4038118645495413969

namespace A093374

/-- `A081913(n)-Δ[A127276(n)]` -/
def P4038118645495413969.Spec : Prop :=
  ∀ n, P4038118645495413969.a n = A093374 (n + 4)

end A093374

/-! ## A093374.P13194316690031034845

`A387185(n)+A049611(n+1)`
-/

namespace A093374.P13194316690031034845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387185 n + A049611 (n + 1)

end

end A093374.P13194316690031034845

namespace A093374

/-- `A387185(n)+A049611(n+1)` -/
def P13194316690031034845.Spec : Prop :=
  ∀ n, P13194316690031034845.a n = A093374 (n + 4)

end A093374

/-! ## A093374.P13517872987066443661

`A001788(n)+A081913(n)+A036289(n)`
-/

namespace A093374.P13517872987066443661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n + (A081913 n + A036289 n)

end

end A093374.P13517872987066443661

namespace A093374

/-- `A001788(n)+A081913(n)+A036289(n)` -/
def P13517872987066443661.Spec : Prop :=
  ∀ n, P13517872987066443661.a n = A093374 (n + 4)

end A093374

/-! ## A093374.P5674521256659976609

`A062109(n+1)-(A001793(n+1)+A000079(n+1))`
-/

namespace A093374.P5674521256659976609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062109 (n + 1) - (A001793 (n + 1) + A000079 (n + 1))

end

end A093374.P5674521256659976609

namespace A093374

/-- `A062109(n+1)-(A001793(n+1)+A000079(n+1))` -/
def P5674521256659976609.Spec : Prop :=
  ∀ n, P5674521256659976609.a n = A093374 (n + 4)

end A093374

/-! ## A093374.P10673346570919128433

`A062109(n+1)-(A011782(n+2)+A001793(n+1))`
-/

namespace A093374.P10673346570919128433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062109 (n + 1) - (A011782 (n + 2) + A001793 (n + 1))

end

end A093374.P10673346570919128433

namespace A093374

/-- `A062109(n+1)-(A011782(n+2)+A001793(n+1))` -/
def P10673346570919128433.Spec : Prop :=
  ∀ n, P10673346570919128433.a n = A093374 (n + 4)

end A093374

/-!
# A093375: Array T(m,n) read by ascending antidiagonals: T(m,n) = m*binomial(n+m-2, n-1) for m, n >= 1.

The programs for A093375, the canonical program `A093375.P10840461646579491391` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093375 has offset 1).

The definition of A093375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093375.P16585578093568100914

`abs(A103283(n))`
-/

namespace A093375.P16585578093568100914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103283 n|

end

end A093375.P16585578093568100914

namespace A093375

/-- `abs(A103283(n))` -/
def P16585578093568100914.Spec : Prop :=
  ∀ n, P16585578093568100914.a n = A093375 (n + 1)

end A093375

/-! ## A093375.P12106345653154793761

`A216973(n)+A007318(n)`
-/

namespace A093375.P12106345653154793761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216973 n + A007318 n

end

end A093375.P12106345653154793761

namespace A093375

/-- `A216973(n)+A007318(n)` -/
def P12106345653154793761.Spec : Prop :=
  ∀ n, P12106345653154793761.a n = A093375 (n + 1)

end A093375

/-! ## A093375.P5594532345032084223

`A355659(n)+A008949(n)`
-/

namespace A093375.P5594532345032084223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355659 n + A008949 n

end

end A093375.P5594532345032084223

namespace A093375

/-- `A355659(n)+A008949(n)` -/
def P5594532345032084223.Spec : Prop :=
  ∀ n, P5594532345032084223.a n = A093375 (n + 1)

end A093375

/-! ## A093375.P10840461646579491391

`A028326(n)-A055137(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A093375

/-- `A028326(n)-A055137(n)` -/
def P10840461646579491391.Spec : Prop :=
  ∀ n, P10840461646579491391.a n = A093375 (n + 1)

theorem P10840461646579491391.correct : P10840461646579491391.Spec := by
  intro n
  simp only [A093375, Nat.add_sub_cancel]

end A093375

/-! ## A093375.P13783785112252531356

`A134083(n)-A216973(n)`
-/

namespace A093375.P13783785112252531356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134083 n - A216973 n

end

end A093375.P13783785112252531356

namespace A093375

/-- `A134083(n)-A216973(n)` -/
def P13783785112252531356.Spec : Prop :=
  ∀ n, P13783785112252531356.a n = A093375 (n + 1)

end A093375

/-! ## A093375.P2203110248981221499

`A097807(n)*A103283(n)`
-/

namespace A093375.P2203110248981221499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A103283 n

end

end A093375.P2203110248981221499

namespace A093375

/-- `A097807(n)*A103283(n)` -/
def P2203110248981221499.Spec : Prop :=
  ∀ n, P2203110248981221499.a n = A093375 (n + 1)

end A093375

/-! ## A093375.P305634258210889978

`A135227(n)*A193592(n)`
-/

namespace A093375.P305634258210889978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135227 n * A193592 n

end

end A093375.P305634258210889978

namespace A093375

/-- `A135227(n)*A193592(n)` -/
def P305634258210889978.Spec : Prop :=
  ∀ n, P305634258210889978.a n = A093375 (n + 1)

end A093375

/-! ## A093375.P1707263759143511870

`gcd(A000038(n), A103283(n))`
-/

namespace A093375.P1707263759143511870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A103283 n)

end

end A093375.P1707263759143511870

namespace A093375

/-- `gcd(A000038(n), A103283(n))` -/
def P1707263759143511870.Spec : Prop :=
  ∀ n, (P1707263759143511870.a n : ℤ) = A093375 (n + 1)

end A093375

/-! ## A093375.P13617373966531621006

`lcm(A007318(n), A103283(n))`
-/

namespace A093375.P13617373966531621006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A103283 n)

end

end A093375.P13617373966531621006

namespace A093375

/-- `lcm(A007318(n), A103283(n))` -/
def P13617373966531621006.Spec : Prop :=
  ∀ n, (P13617373966531621006.a n : ℤ) = A093375 (n + 1)

end A093375

/-! ## A093375.P11725491456528811005

`A128710(n)-A128065(n+1)`
-/

namespace A093375.P11725491456528811005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128710 n - A128065 (n + 1)

end

end A093375.P11725491456528811005

namespace A093375

/-- `A128710(n)-A128065(n+1)` -/
def P11725491456528811005.Spec : Prop :=
  ∀ n, P11725491456528811005.a n = A093375 (n + 1)

end A093375

/-! ## A093375.P10121711246070296068

`A004736(n+1)*A007318(n)`
-/

namespace A093375.P10121711246070296068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A007318 n

end

end A093375.P10121711246070296068

namespace A093375

/-- `A004736(n+1)*A007318(n)` -/
def P10121711246070296068.Spec : Prop :=
  ∀ n, P10121711246070296068.a n = A093375 (n + 1)

end A093375

/-! ## A093375.P13350657484874921193

`A007318(n)*(A025581(n)+1)`
-/

namespace A093375.P13350657484874921193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * (A025581 n + 1)

end

end A093375.P13350657484874921193

namespace A093375

/-- `A007318(n)*(A025581(n)+1)` -/
def P13350657484874921193.Spec : Prop :=
  ∀ n, P13350657484874921193.a n = A093375 (n + 1)

end A093375

/-! ## A093375.P736442554885044310

`A141611(n)/A002260(n+1)`
-/

namespace A093375.P736442554885044310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141611 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A093375.P736442554885044310

namespace A093375

/-- `A141611(n)/A002260(n+1)` -/
def P736442554885044310.Spec : Prop :=
  ∀ n, P736442554885044310.a n = (A093375 (n + 1) : ℚ)

end A093375

/-! ## A093375.P9180915158350137998

`A221877(n+1)/A238303(n)`
-/

namespace A093375.P9180915158350137998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221877 (n + 1) : ℚ) / (A238303 n : ℚ)

end

end A093375.P9180915158350137998

namespace A093375

/-- `A221877(n+1)/A238303(n)` -/
def P9180915158350137998.Spec : Prop :=
  ∀ n, P9180915158350137998.a n = (A093375 (n + 1) : ℚ)

end A093375

/-! ## A093375.P15426883010121449983

`2*A007318(n)-A055137(n)`
-/

namespace A093375.P15426883010121449983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A055137 n

end

end A093375.P15426883010121449983

namespace A093375

/-- `2*A007318(n)-A055137(n)` -/
def P15426883010121449983.Spec : Prop :=
  ∀ n, P15426883010121449983.a n = A093375 (n + 1)

end A093375

/-! ## A093375.P3280167048591760536

`(A134083(n)+A007318(n))/2`
-/

namespace A093375.P3280167048591760536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134083 n + A007318 n : ℚ) / 2

end

end A093375.P3280167048591760536

namespace A093375

/-- `(A134083(n)+A007318(n))/2` -/
def P3280167048591760536.Spec : Prop :=
  ∀ n, P3280167048591760536.a n = (A093375 (n + 1) : ℚ)

end A093375

/-! ## A093375.P538000366608942953

`A094305(n)-n*A007318(n)`
-/

namespace A093375.P538000366608942953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094305 n - (n : ℤ) * A007318 n

end

end A093375.P538000366608942953

namespace A093375

/-- `A094305(n)-n*A007318(n)` -/
def P538000366608942953.Spec : Prop :=
  ∀ n, P538000366608942953.a n = A093375 (n + 1)

end A093375

/-! ## A093375.P13426824512892766459

`abs(A004736(n+1)*A108086(n))`
-/

namespace A093375.P13426824512892766459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004736 (n + 1) * A108086 n|

end

end A093375.P13426824512892766459

namespace A093375

/-- `abs(A004736(n+1)*A108086(n))` -/
def P13426824512892766459.Spec : Prop :=
  ∀ n, P13426824512892766459.a n = A093375 (n + 1)

end A093375

/-! ## A093375.P10327123386194081916

`abs((A025581(n)+1)*A108086(n))`
-/

namespace A093375.P10327123386194081916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A025581 n + 1) * A108086 n|

end

end A093375.P10327123386194081916

namespace A093375

/-- `abs((A025581(n)+1)*A108086(n))` -/
def P10327123386194081916.Spec : Prop :=
  ∀ n, P10327123386194081916.a n = A093375 (n + 1)

end A093375

/-! ## A093375.P10037653213358237704

`abs(A004736(n+1)*A130595(n))`
-/

namespace A093375.P10037653213358237704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004736 (n + 1) * A130595 n|

end

end A093375.P10037653213358237704

namespace A093375

/-- `abs(A004736(n+1)*A130595(n))` -/
def P10037653213358237704.Spec : Prop :=
  ∀ n, P10037653213358237704.a n = A093375 (n + 1)

end A093375

/-!
# A093376: Number of labeled n-vertex graphs with 2-components and without isolated vertices(1-components).

The programs for A093376, there is no canonical definition to state claims against.
-/

/-! ## A093376.P10862405836051651584

`A006129(n)-A093377(n)`
-/

namespace A093376.P10862405836051651584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006129 n - A093377 n

end

end A093376.P10862405836051651584

/-! ## A093376.P3539743556386933037

`A006125(n)-(A327367(n)+A093377(n))`
-/

namespace A093376.P3539743556386933037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - (A327367 n + A093377 n)

end

end A093376.P3539743556386933037

/-! ## A093376.P9146809124964073713

`A100743(n)+A327227(n)-A093377(n)`
-/

namespace A093376.P9146809124964073713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100743 n + (A327227 n - A093377 n)

end

end A093376.P9146809124964073713

/-! ## A093376.P7823272305232853864

`∏[A011782(n)]-(A327367(n)+A093377(n))`
-/

namespace A093376.P7823272305232853864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (A327367 n + A093377 n)

end

end A093376.P7823272305232853864

/-! ## A093376.P4349745235123461570

`A327377(A000217(n))+A327227(n)-A093377(n)`
-/

namespace A093376.P4349745235123461570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327377 (A000217 n).toNat + (A327227 n - A093377 n)

end

end A093376.P4349745235123461570

/-!
# A093377: Number of labeled n-vertex graphs without 2-components and without isolated vertices (1-components).

The programs for A093377, there is no canonical definition to state claims against.
-/

/-! ## A093377.P13269465824502462355

`A006129(n)-A093376(n)`
-/

namespace A093377.P13269465824502462355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006129 n - A093376 n

end

end A093377.P13269465824502462355

/-! ## A093377.P3412038802238812752

`A006125(n)-(A327367(n)+A093376(n))`
-/

namespace A093377.P3412038802238812752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - (A327367 n + A093376 n)

end

end A093377.P3412038802238812752

/-! ## A093377.P808078493325700739

`A100743(n)+A327227(n)-A093376(n)`
-/

namespace A093377.P808078493325700739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100743 n + (A327227 n - A093376 n)

end

end A093377.P808078493325700739

/-! ## A093377.P5938315029708566541

`∏[A011782(n)]-(A327367(n)+A093376(n))`
-/

namespace A093377.P5938315029708566541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (A327367 n + A093376 n)

end

end A093377.P5938315029708566541

/-! ## A093377.P2896738880101951313

`A327377(A000217(n))+A327227(n)-A093376(n)`
-/

namespace A093377.P2896738880101951313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327377 (A000217 n).toNat + (A327227 n - A093376 n)

end

end A093377.P2896738880101951313

/-!
# A093378: a(n) = numerator of any non-diagonal entry of the matrix A^n, where A is described in the Comments lines.

The programs for A093378, there is no canonical definition to state claims against.
-/

/-! ## A093378.P9497733339704711884

`A098122(4*(n+1))/2`
-/

namespace A093378.P9497733339704711884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098122 (4 * (n + 1)) : ℚ) / 2

end

end A093378.P9497733339704711884

/-! ## A093378.P9430345851881512341

`gcd(A045840(A077335(n)), A045873(2*n+2))`
-/

namespace A093378.P9430345851881512341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045840 (A077335 n).toNat) (A045873 (2 * n + 2))

end

end A093378.P9430345851881512341

/-! ## A093378.P3468435366562187043

`abs(A045873(record[A088133(n+1)]))`
-/

namespace A093378.P3468435366562187043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A045873 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A093378.P3468435366562187043

/-! ## A093378.P16911497473475152326

`abs(A066770(A070938(n+1))/2)`
-/

namespace A093378.P16911497473475152326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A066770 (A070938 (n + 1)).toNat : ℚ) / 2|

end

end A093378.P16911497473475152326

/-!
# A093379: Expansion of x(1-2x-2x^2)/((1+x)(1-2x)(1-3x)).

The programs for A093379, the canonical program `A093379.P7925982103825302141` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093379 has offset 0).

The definition of A093379 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-2x^2-2x^3)/(1-4x+x^2+6x^3))` (program `A093379.P7925982103825302141`, by `A093379.P7925982103825302141.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093379.P7925982103825302141

`ogf((x-2x^2-2x^3)/(1-4x+x^2+6x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093379

/-- `ogf((x-2x^2-2x^3)/(1-4x+x^2+6x^3))` -/
def P7925982103825302141.Spec : Prop :=
  ∀ n, P7925982103825302141.a n = A093379 n

theorem P7925982103825302141.correct : P7925982103825302141.Spec := by
  intro n
  simp only [A093379]

end A093379

/-! ## A093379.P6985002909989682411

`4*a(n-1)-a(n-2)-6*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`
-/

namespace A093379.P6985002909989682411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 5] fun n a =>
  4 * a (n - 1) - a (n - 2) - 6 * a (n - 3)

end

end A093379.P6985002909989682411

namespace A093379

/-- `4*a(n-1)-a(n-2)-6*a(n-3)` -/
def P6985002909989682411.Spec : Prop :=
  ∀ n, P6985002909989682411.a n = A093379 n

end A093379

/-! ## A093379.P10536731753745637204

`∑[round(A085279(n)/6)]`
-/

namespace A093379.P10536731753745637204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A085279 n : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093379.P10536731753745637204

namespace A093379

/-- `∑[round(A085279(n)/6)]` -/
def P10536731753745637204.Spec : Prop :=
  ∀ n, P10536731753745637204.a n = A093379 n

end A093379

/-! ## A093379.P14414098645088920055

`A085279(n)-∑[A087432(n)]`
-/

namespace A093379.P14414098645088920055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085279 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093379.P14414098645088920055

namespace A093379

/-- `A085279(n)-∑[A087432(n)]` -/
def P14414098645088920055.Spec : Prop :=
  ∀ n, P14414098645088920055.a n = A093379 n

end A093379

/-! ## A093379.P5038904718026680594

`Δ[A087432(n)]-A015518(n)`
-/

namespace A093379.P5038904718026680594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087432 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A015518 n

end

end A093379.P5038904718026680594

namespace A093379

/-- `Δ[A087432(n)]-A015518(n)` -/
def P5038904718026680594.Spec : Prop :=
  ∀ n, P5038904718026680594.a n = A093379 n

end A093379

/-! ## A093379.P5481564551337363320

`A015518(n)+A085279(n)-A087432(n+1)`
-/

namespace A093379.P5481564551337363320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n + (A085279 n - A087432 (n + 1))

end

end A093379.P5481564551337363320

namespace A093379

/-- `A015518(n)+A085279(n)-A087432(n+1)` -/
def P5481564551337363320.Spec : Prop :=
  ∀ n, P5481564551337363320.a n = A093379 n

end A093379

/-! ## A093379.P8317340596446036523

`A087432(n+1)-(A087432(n)+A015518(n))`
-/

namespace A093379.P8317340596446036523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087432 (n + 1) - (A087432 n + A015518 n)

end

end A093379.P8317340596446036523

namespace A093379

/-- `A087432(n+1)-(A087432(n)+A015518(n))` -/
def P8317340596446036523.Spec : Prop :=
  ∀ n, P8317340596446036523.a n = A093379 n

end A093379

/-! ## A093379.P6400062760174905985

`floor(A271743(n+4)/12)`
-/

namespace A093379.P6400062760174905985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A271743 (n + 4) : ℚ) / 12⌋

end

end A093379.P6400062760174905985

namespace A093379

/-- `floor(A271743(n+4)/12)` -/
def P6400062760174905985.Spec : Prop :=
  ∀ n, P6400062760174905985.a n = A093379 n

end A093379

/-! ## A093379.P3673427201444129728

`round(A271743(n+4)/12*A057427(n))`
-/

namespace A093379.P3673427201444129728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A271743 (n + 4) : ℚ) / 12 * (A057427 n : ℚ))

end

end A093379.P3673427201444129728

namespace A093379

/-- `round(A271743(n+4)/12*A057427(n))` -/
def P3673427201444129728.Spec : Prop :=
  ∀ n, P3673427201444129728.a n = A093379 n

end A093379

/-! ## A093379.P3414237566029911714

`A015518(n+1)+A001045(n)-A025192(n)`
-/

namespace A093379.P3414237566029911714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (n + 1) + (A001045 n - A025192 n)

end

end A093379.P3414237566029911714

namespace A093379

/-- `A015518(n+1)+A001045(n)-A025192(n)` -/
def P3414237566029911714.Spec : Prop :=
  ∀ n, P3414237566029911714.a n = A093379 n

end A093379

/-! ## A093379.P8300280380290305679

`A054878(n+1)+A078008(n)-A025192(n)`
-/

namespace A093379.P8300280380290305679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054878 (n + 1) + (A078008 n - A025192 n)

end

end A093379.P8300280380290305679

namespace A093379

/-- `A054878(n+1)+A078008(n)-A025192(n)` -/
def P8300280380290305679.Spec : Prop :=
  ∀ n, P8300280380290305679.a n = A093379 n

end A093379

/-!
# A093380: Expansion of (1+4x+x^2-10x^3)/((1-x)(1-x-2x^2)).

The programs for A093380, the canonical program `A093380.P18045643933428569841` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093380 has offset 0).

The definition of A093380 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x+x^2-10x^3)/(1-2x-x^2+2x^3))` (program `A093380.P18045643933428569841`, by `A093380.P18045643933428569841.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093380.P18045643933428569841

`ogf((1+4x+x^2-10x^3)/(1-2x-x^2+2x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093380

/-- `ogf((1+4x+x^2-10x^3)/(1-2x-x^2+2x^3))` -/
def P18045643933428569841.Spec : Prop :=
  ∀ n, P18045643933428569841.a n = A093380 n

theorem P18045643933428569841.correct : P18045643933428569841.Spec := by
  intro n
  simp only [A093380]

end A093380

/-! ## A093380.P2641449624298764665

`2^(n+2)-a(n-1)+4` with `a(0)=1, a(1)=6`
-/

namespace A093380.P2641449624298764665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  (2 ^ (n + 2) : ℤ) - a (n - 1) + 4

end

end A093380.P2641449624298764665

namespace A093380

/-- `2^(n+2)-a(n-1)+4` -/
def P2641449624298764665.Spec : Prop :=
  ∀ n, P2641449624298764665.a n = A093380 n

end A093380

/-! ## A093380.P12138806324831710863

`or(10, a(n-1))+a(n-1)-6` with `a(0)=1`
-/

namespace A093380.P12138806324831710863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 10 (a (n - 1)) + (a (n - 1) - 6)

end

end A093380.P12138806324831710863

namespace A093380

/-- `or(10, a(n-1))+a(n-1)-6` -/
def P12138806324831710863.Spec : Prop :=
  ∀ n, P12138806324831710863.a n = A093380 n

end A093380

/-! ## A093380.P14360156309019956597

`or(10, a(n-1))-(6-a(n-1))` with `a(0)=1`
-/

namespace A093380.P14360156309019956597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 10 (a (n - 1)) - (6 - a (n - 1))

end

end A093380.P14360156309019956597

namespace A093380

/-- `or(10, a(n-1))-(6-a(n-1))` -/
def P14360156309019956597.Spec : Prop :=
  ∀ n, P14360156309019956597.a n = A093380 n

end A093380

/-! ## A093380.P2039964534227226714

`2*a(n-1)-Δ[2*xor(1, n)]` with `a(0)=1, a(1)=6`
-/

namespace A093380.P2039964534227226714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  2 * a (n - 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A093380.P2039964534227226714

namespace A093380

/-- `2*a(n-1)-Δ[2*xor(1, n)]` -/
def P2039964534227226714.Spec : Prop :=
  ∀ n, P2039964534227226714.a n = A093380 n

end A093380

/-! ## A093380.P4078741449502624123

`xor(2*a(n-1), and(10, a(n-1)))` with `a(0)=1, a(1)=6`
-/

namespace A093380.P4078741449502624123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  Nat.xor (2 * a (n - 1)) (Nat.land 10 (a (n - 1)))

end

end A093380.P4078741449502624123

namespace A093380

/-- `xor(2*a(n-1), and(10, a(n-1)))` -/
def P4078741449502624123.Spec : Prop :=
  ∀ n, (P4078741449502624123.a n : ℤ) = A093380 n

end A093380

/-! ## A093380.P1136493110222077314

`A173197(A074764(n+1))`
-/

namespace A093380.P1136493110222077314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173197 (A074764 (n + 1)).toNat

end

end A093380.P1136493110222077314

namespace A093380

/-- `A173197(A074764(n+1))` -/
def P1136493110222077314.Spec : Prop :=
  ∀ n, P1136493110222077314.a n = A093380 n

end A093380

/-! ## A093380.P4697600739382449588

`lcm(A267052(n), A280560(n))`
-/

namespace A093380.P4697600739382449588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A267052 n) (A280560 n)

end

end A093380.P4697600739382449588

namespace A093380

/-- `lcm(A267052(n), A280560(n))` -/
def P4697600739382449588.Spec : Prop :=
  ∀ n, (P4697600739382449588.a n : ℤ) = A093380 n

end A093380

/-! ## A093380.P12109480857156619132

`A036453(n+1)*A267052(n)`
-/

namespace A093380.P12109480857156619132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A267052 n

end

end A093380.P12109480857156619132

namespace A093380

/-- `A036453(n+1)*A267052(n)` -/
def P12109480857156619132.Spec : Prop :=
  ∀ n, P12109480857156619132.a n = A093380 n

end A093380

/-! ## A093380.P3403548842485799084

`(1-A057428(n))*A267052(n)`
-/

namespace A093380.P3403548842485799084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A057428 n) * A267052 n

end

end A093380.P3403548842485799084

namespace A093380

/-- `(1-A057428(n))*A267052(n)` -/
def P3403548842485799084.Spec : Prop :=
  ∀ n, P3403548842485799084.a n = A093380 n

end A093380

/-! ## A093380.P4690339985683522621

`A267052(n)*A280560(2*n)`
-/

namespace A093380.P4690339985683522621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267052 n * A280560 (2 * n)

end

end A093380.P4690339985683522621

namespace A093380

/-- `A267052(n)*A280560(2*n)` -/
def P4690339985683522621.Spec : Prop :=
  ∀ n, P4690339985683522621.a n = A093380 n

end A093380

/-! ## A093380.P8186631088766187552

`or(record[A097073(n)], A280193(2*n))`
-/

namespace A093380.P8186631088766187552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A280193 (2 * n))

end

end A093380.P8186631088766187552

namespace A093380

/-- `or(record[A097073(n)], A280193(2*n))` -/
def P8186631088766187552.Spec : Prop :=
  ∀ n, P8186631088766187552.a n = A093380 n

end A093380

/-! ## A093380.P93064666318735862

`record[A097073(n)]+2%A003158(n+1)`
-/

namespace A093380.P93064666318735862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + Int.tmod 2 (A003158 (n + 1))

end

end A093380.P93064666318735862

namespace A093380

/-- `record[A097073(n)]+2%A003158(n+1)` -/
def P93064666318735862.Spec : Prop :=
  ∀ n, P93064666318735862.a n = A093380 n

end A093380

/-!
# A093381: Expansion of (1 - 2*x - 3*x^2 - 4*x^3)/((1-x)*(1-2*x)*(1-3*x)*(1-4*x)).

The programs for A093381, the canonical program `A093381.P16338191243049969707` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093381 has offset 0).

The definition of A093381 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x-3x^2-4x^3)/(1-10x+35x^2-50x^3+24x^4))` (program `A093381.P16338191243049969707`, by `A093381.P16338191243049969707.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093381.P12710948629417633249

`2*A000244(n)-5*A000079(n)+4*A001045(2*n+1)`
-/

namespace A093381.P12710948629417633249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000244 n - 5 * A000079 n + 4 * A001045 (2 * n + 1)

end

end A093381.P12710948629417633249

namespace A093381

/-- `2*A000244(n)-5*A000079(n)+4*A001045(2*n+1)` -/
def P12710948629417633249.Spec : Prop :=
  ∀ n, P12710948629417633249.a n = A093381 n

end A093381

/-! ## A093381.P16338191243049969707

`ogf((1-2x-3x^2-4x^3)/(1-10x+35x^2-50x^3+24x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093381

/-- `ogf((1-2x-3x^2-4x^3)/(1-10x+35x^2-50x^3+24x^4))` -/
def P16338191243049969707.Spec : Prop :=
  ∀ n, P16338191243049969707.a n = A093381 n

theorem P16338191243049969707.correct : P16338191243049969707.Spec := by
  intro n
  simp only [A093381]

end A093381

/-! ## A093381.P11519534536430357365

`4/3-5*2^n+2*3^n+8*4^n/3`
-/

namespace A093381.P11519534536430357365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 - (5 * 2 ^ n : ℚ) + (2 * 3 ^ n : ℚ) + (8 * 4 ^ n : ℚ) / 3

end

end A093381.P11519534536430357365

namespace A093381

/-- `4/3-5*2^n+2*3^n+8*4^n/3` -/
def P11519534536430357365.Spec : Prop :=
  ∀ n, P11519534536430357365.a n = (A093381 n : ℚ)

end A093381

/-!
# A093383: One of the 16 sequences illustrating the fact that A093382(2) = 31.

The programs for A093383, there is no canonical definition to state claims against.
-/

/-! ## A093383.P2437427120093096463

`char[∑[4-and(n+1, ∑[n])]]`
-/

namespace A093383.P2437427120093096463
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.land (n + 1) (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A093383.P2437427120093096463

/-! ## A093383.P16403313918632748079

`floor(n/∑[log2(gcd(2, n))/2]²)%2`
-/

namespace A093383.P16403313918632748079
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(n : ℝ) / (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2⌋ 2

end

end A093383.P16403313918632748079

/-! ## A093383.P1809490114339054671

`char[∑[a(n-2)-3]]` with `a(0)=4, a(1)=2, a(2)=1, a(3)=1, a(4)=2, a(5)=1, a(6)=0, a(7)=2`
-/

namespace A093383.P1809490114339054671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 2, 1, 1, 2, 1, 0, 2] fun n f2 =>
  f2 (n - 2) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A093383.P1809490114339054671

/-! ## A093383.P2760323879633080196

`A188642(A293519(n))`
-/

namespace A093383.P2760323879633080196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 (A293519 n).toNat

end

end A093383.P2760323879633080196

/-! ## A093383.P6241149560982712814

`A093384(A106614(n+1))`
-/

namespace A093383.P6241149560982712814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093384 (A106614 (n + 1)).toNat

end

end A093383.P6241149560982712814

/-!
# A093384: Another of the 16 sequences illustrating the fact that A093382(2) = 31.

The programs for A093384, there is no canonical definition to state claims against.
-/

/-! ## A093384.P3077382642574674732

`round(dr(n!)/(n+5))`
-/

namespace A093384.P3077382642574674732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.digitalRoot (Nat.factorial n : ℤ) : ℚ) / (n + 5 : ℚ))

end

end A093384.P3077382642574674732

/-! ## A093384.P14905676489124941438

`A023970(A102046(n))`
-/

namespace A093384.P14905676489124941438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023970 (A102046 n).toNat

end

end A093384.P14905676489124941438

/-! ## A093384.P16084729514649475927

`A127822(A242374(n))`
-/

namespace A093384.P16084729514649475927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127822 (A242374 n).toNat

end

end A093384.P16084729514649475927

/-! ## A093384.P3108280753673233287

`A188642(A265755(n))`
-/

namespace A093384.P3108280753673233287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 (A265755 n).toNat

end

end A093384.P3108280753673233287

/-! ## A093384.P18445853019284566513

`A023975(A075644(n+1))`
-/

namespace A093384.P18445853019284566513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023975 (A075644 (n + 1)).toNat

end

end A093384.P18445853019284566513

/-!
# A093385: One of the 32 sequences illustrating the fact that A093382(2) = 199.

The programs for A093385, there is no canonical definition to state claims against.
-/

/-! ## A093385.P11113454492556726679

`A093386(char[8]+1+n)`
-/

namespace A093385.P11113454492556726679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093386 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)

end

end A093385.P11113454492556726679

/-! ## A093385.P9861545353111307706

`and(Δ[A082853(n)], A093386(n+1))`
-/

namespace A093385.P9861545353111307706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A093386 (n + 1))

end

end A093385.P9861545353111307706

/-! ## A093385.P1398260941779704092

`and(p?[A033930(n)], A093386(n+1))`
-/

namespace A093385.P1398260941779704092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A093386 (n + 1))

end

end A093385.P1398260941779704092

/-! ## A093385.P11750651907811013237

`and(p?[A076314(n)], A093386(n+1))`
-/

namespace A093385.P11750651907811013237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A093386 (n + 1))

end

end A093385.P11750651907811013237

/-! ## A093385.P10344627208023878126

`and(A006844(n+1), A093386(n+1))`
-/

namespace A093385.P10344627208023878126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006844 (n + 1)) (A093386 (n + 1))

end

end A093385.P10344627208023878126

/-! ## A093385.P13926134696105458752

`and(A093386(n+1), A270325(n+2))`
-/

namespace A093385.P13926134696105458752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093386 (n + 1)) (A270325 (n + 2))

end

end A093385.P13926134696105458752

/-! ## A093385.P153901367455729485

`and(A064894(2*n), A093386(n+1))`
-/

namespace A093385.P153901367455729485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A064894 (2 * n)) (A093386 (n + 1))

end

end A093385.P153901367455729485

/-! ## A093385.P11937783266859483556

`ceil(A004514(n)*A093386(n+1)/(2*n+1))`
-/

namespace A093385.P11937783266859483556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004514 n * A093386 (n + 1) : ℚ) / (2 * n + 1 : ℚ)⌉

end

end A093385.P11937783266859483556

/-! ## A093385.P534315374596112309

`A019428(A004514(n)*A093386(n+1))`
-/

namespace A093385.P534315374596112309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (A004514 n * A093386 (n + 1)).toNat

end

end A093385.P534315374596112309

/-! ## A093385.P11390837672767682467

`and(A006530(A059582(n)), A093386(n+1))`
-/

namespace A093385.P11390837672767682467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (A059582 n).toNat) (A093386 (n + 1))

end

end A093385.P11390837672767682467

/-! ## A093385.P18070250876850270462

`and(A006530(A072831(n)), A093386(n+1))`
-/

namespace A093385.P18070250876850270462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (A072831 n).toNat) (A093386 (n + 1))

end

end A093385.P18070250876850270462

/-! ## A093385.P731147715317614061

`and(A073137(A056964(n)), A093386(n+1))`
-/

namespace A093385.P731147715317614061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073137 (A056964 n).toNat) (A093386 (n + 1))

end

end A093385.P731147715317614061

/-! ## A093385.P12207386216570688489

`and(A006530(A260109(n)), A093386(n+1))`
-/

namespace A093385.P12207386216570688489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (A260109 n).toNat) (A093386 (n + 1))

end

end A093385.P12207386216570688489

/-! ## A093385.P3353109813790099129

`and(A006530(A311340(n)), A093386(n+1))`
-/

namespace A093385.P3353109813790099129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (A311340 n).toNat) (A093386 (n + 1))

end

end A093385.P3353109813790099129

/-! ## A093385.P7811304807844246668

`and(A093386(n+1), A255545(A003959(n+1)))`
-/

namespace A093385.P7811304807844246668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093386 (n + 1)) (A255545 (A003959 (n + 1)).toNat)

end

end A093385.P7811304807844246668

/-! ## A093385.P15703008789314131061

`and(A087112(A191129(n+1)), A093386(n+1))`
-/

namespace A093385.P15703008789314131061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087112 (A191129 (n + 1)).toNat) (A093386 (n + 1))

end

end A093385.P15703008789314131061

/-! ## A093385.P4698020555672666544

`and(A006530(A000217(n+7)+8), A093386(n+1))`
-/

namespace A093385.P4698020555672666544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006530 (A000217 (n + 7) + 8).toNat) (A093386 (n + 1))

end

end A093385.P4698020555672666544

/-! ## A093385.P7992513164181493663

`A093386(n+1)-A143433(A006530(A106571(n+1)))`
-/

namespace A093385.P7992513164181493663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093386 (n + 1) - A143433 (A006530 (A106571 (n + 1)).toNat).toNat

end

end A093385.P7992513164181493663

/-! ## A093385.P10512395096194297774

`A057979(A053644(A212957(n+1)))*A093386(n+1)`
-/

namespace A093385.P10512395096194297774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A053644 (A212957 (n + 1)).toNat).toNat * A093386 (n + 1)

end

end A093385.P10512395096194297774

/-! ## A093385.P3183724720009642704

`A104121(n*A093386(n+1))`
-/

namespace A093385.P3183724720009642704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104121 ((n : ℤ) * A093386 (n + 1)).toNat

end

end A093385.P3183724720009642704

/-!
# A093386: Another of the 32 sequences illustrating the fact that A093382(2) = 199.

The programs for A093386, there is no canonical definition to state claims against.
-/

/-! ## A093386.P18159830926962466786

`A093385(n+1)+char[8]`
-/

namespace A093386.P18159830926962466786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093385 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A093386.P18159830926962466786

/-! ## A093386.P16690419062488378863

`A093385(n-2*val(n+1, 9)+1)`
-/

namespace A093386.P16690419062488378863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093385 ((n : ℤ) - (2 * SequenceMachineLib.valuation (n + 1) 9 : ℤ) + 1).toNat

end

end A093386.P16690419062488378863

/-! ## A093386.P15836715611655225224

`A093385(n-and(2, val(n+1, 3))+1)`
-/

namespace A093386.P15836715611655225224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093385 ((n : ℤ) - (Nat.land 2 (SequenceMachineLib.valuation (n + 1) 3) : ℤ) + 1).toNat

end

end A093386.P15836715611655225224

/-! ## A093386.P4502560943144716009

`A093385(A030214(n)+1+n)`
-/

namespace A093386.P4502560943144716009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093385 (A030214 n + 1 + (n : ℤ)).toNat

end

end A093386.P4502560943144716009

/-! ## A093386.P7731725422425426211

`A093385(A124010(2*n+5)+n)`
-/

namespace A093386.P7731725422425426211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093385 (A124010 (2 * n + 5) + (n : ℤ)).toNat

end

end A093386.P7731725422425426211

/-! ## A093386.P1897745123965707992

`A093385(xor(n+1, A289035(n+1)))`
-/

namespace A093386.P1897745123965707992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093385 (Int.xor (n + 1 : ℤ) (A289035 (n + 1))).toNat

end

end A093386.P1897745123965707992

/-! ## A093386.P15610544863822951988

`A093385(A002448(lcm(3, n+1))+n+1)`
-/

namespace A093386.P15610544863822951988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093385 (A002448 (Nat.lcm 3 (n + 1)) + (n + 1 : ℤ)).toNat

end

end A093386.P15610544863822951988

/-! ## A093386.P13947589245975848890

`A093385(A098725(A208721(n+1))+n)`
-/

namespace A093386.P13947589245975848890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093385 (A098725 (A208721 (n + 1)).toNat + (n : ℤ)).toNat

end

end A093386.P13947589245975848890

/-!
# A093387: a(n) = 2^(n-1) - binomial(n, floor(n/2)).

The programs for A093387, the canonical program `A093387.P11464323104930007808` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093387 has offset 1).

The definition of A093387 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n-C(n+1, floor((n+1)/2))` (program `A093387.P11464323104930007808`, by `A093387.P11464323104930007808.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093387.P11657952734853141791

`A000079(n)-A001405(n+1)`
-/

namespace A093387.P11657952734853141791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A001405 (n + 1)

end

end A093387.P11657952734853141791

namespace A093387

/-- `A000079(n)-A001405(n+1)` -/
def P11657952734853141791.Spec : Prop :=
  ∀ n, P11657952734853141791.a n = A093387 (n + 1)

end A093387

/-! ## A093387.P11464323104930007808

`2^n-C(n+1, floor((n+1)/2))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093387

/-- `2^n-C(n+1, floor((n+1)/2))` -/
def P11464323104930007808.Spec : Prop :=
  ∀ n, P11464323104930007808.a n = A093387 (n + 1)

theorem P11464323104930007808.correct : P11464323104930007808.Spec := by
  intro n
  simp only [A093387, Nat.add_sub_cancel]

end A093387

/-! ## A093387.P684911513260709165

`2^n-A210736(n+2)`
-/

namespace A093387.P684911513260709165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A210736 (n + 2)

end

end A093387.P684911513260709165

namespace A093387

/-- `2^n-A210736(n+2)` -/
def P684911513260709165.Spec : Prop :=
  ∀ n, P684911513260709165.a n = A093387 (n + 1)

end A093387

/-! ## A093387.P11892432064928134221

`A126120(n)+2*a(n-1)` with `a(0)=0`
-/

namespace A093387.P11892432064928134221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A126120 n + 2 * a (n - 1)

end

end A093387.P11892432064928134221

namespace A093387

/-- `A126120(n)+2*a(n-1)` -/
def P11892432064928134221.Spec : Prop :=
  ∀ n, P11892432064928134221.a n = A093387 (n + 1)

end A093387

/-! ## A093387.P11737407687210411052

`A045621(n)-A037952(n)`
-/

namespace A093387.P11737407687210411052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 n - A037952 n

end

end A093387.P11737407687210411052

namespace A093387

/-- `A045621(n)-A037952(n)` -/
def P11737407687210411052.Spec : Prop :=
  ∀ n, P11737407687210411052.a n = A093387 (n + 1)

end A093387

/-! ## A093387.P3708769475264418464

`A261681(n)-A208976(n)`
-/

namespace A093387.P3708769475264418464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261681 n - A208976 n

end

end A093387.P3708769475264418464

namespace A093387

/-- `A261681(n)-A208976(n)` -/
def P3708769475264418464.Spec : Prop :=
  ∀ n, P3708769475264418464.a n = A093387 (n + 1)

end A093387

/-! ## A093387.P3259140777704675755

`A045621(n)-Δ[A001405(n)]`
-/

namespace A093387.P3259140777704675755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 n - (f1 (n + 1) - f1 n)

end

end A093387.P3259140777704675755

namespace A093387

/-- `A045621(n)-Δ[A001405(n)]` -/
def P3259140777704675755.Spec : Prop :=
  ∀ n, P3259140777704675755.a n = A093387 (n + 1)

end A093387

/-! ## A093387.P15311220569024059556

`A191389(n+1)+A037955(n)`
-/

namespace A093387.P15311220569024059556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191389 (n + 1) + A037955 n

end

end A093387.P15311220569024059556

namespace A093387

/-- `A191389(n+1)+A037955(n)` -/
def P15311220569024059556.Spec : Prop :=
  ∀ n, P15311220569024059556.a n = A093387 (n + 1)

end A093387

/-! ## A093387.P3299183341335884893

`A000225(n)-A014495(n+1)`
-/

namespace A093387.P3299183341335884893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A014495 (n + 1)

end

end A093387.P3299183341335884893

namespace A093387

/-- `A000225(n)-A014495(n+1)` -/
def P3299183341335884893.Spec : Prop :=
  ∀ n, P3299183341335884893.a n = A093387 (n + 1)

end A093387

/-! ## A093387.P13983340462555022732

`A000051(n)-A051920(n+1)`
-/

namespace A093387.P13983340462555022732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A051920 (n + 1)

end

end A093387.P13983340462555022732

namespace A093387

/-- `A000051(n)-A051920(n+1)` -/
def P13983340462555022732.Spec : Prop :=
  ∀ n, P13983340462555022732.a n = A093387 (n + 1)

end A093387

/-! ## A093387.P15903385586608233087

`A014833(n)-A129937(n+1)`
-/

namespace A093387.P15903385586608233087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014833 n - A129937 (n + 1)

end

end A093387.P15903385586608233087

namespace A093387

/-- `A014833(n)-A129937(n+1)` -/
def P15903385586608233087.Spec : Prop :=
  ∀ n, P15903385586608233087.a n = A093387 (n + 1)

end A093387

/-! ## A093387.P1107459234140981924

`A191391(n+1)-A001405(n)`
-/

namespace A093387.P1107459234140981924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191391 (n + 1) - A001405 n

end

end A093387.P1107459234140981924

namespace A093387

/-- `A191391(n+1)-A001405(n)` -/
def P1107459234140981924.Spec : Prop :=
  ∀ n, P1107459234140981924.a n = A093387 (n + 1)

end A093387

/-! ## A093387.P9956987896594531410

`A000918(n)-A201686(n+1)`
-/

namespace A093387.P9956987896594531410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n - A201686 (n + 1)

end

end A093387.P9956987896594531410

namespace A093387

/-- `A000918(n)-A201686(n+1)` -/
def P9956987896594531410.Spec : Prop :=
  ∀ n, P9956987896594531410.a n = A093387 (n + 1)

end A093387

/-! ## A093387.P1807909167009848978

`A294175(n+1)-A138364(n)`
-/

namespace A093387.P1807909167009848978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 (n + 1) - A138364 n

end

end A093387.P1807909167009848978

namespace A093387

/-- `A294175(n+1)-A138364(n)` -/
def P1807909167009848978.Spec : Prop :=
  ∀ n, P1807909167009848978.a n = A093387 (n + 1)

end A093387

/-! ## A093387.P15281419274102052413

`A011782(n+1)-A001405(n+1)`
-/

namespace A093387.P15281419274102052413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - A001405 (n + 1)

end

end A093387.P15281419274102052413

namespace A093387

/-- `A011782(n+1)-A001405(n+1)` -/
def P15281419274102052413.Spec : Prop :=
  ∀ n, P15281419274102052413.a n = A093387 (n + 1)

end A093387

/-! ## A093387.P16412487412560832472

`A016116(2*n)-A001405(n+1)`
-/

namespace A093387.P16412487412560832472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) - A001405 (n + 1)

end

end A093387.P16412487412560832472

namespace A093387

/-- `A016116(2*n)-A001405(n+1)` -/
def P16412487412560832472.Spec : Prop :=
  ∀ n, P16412487412560832472.a n = A093387 (n + 1)

end A093387

/-! ## A093387.P16489373348797051797

`A077957(2*n)-A001405(n+1)`
-/

namespace A093387.P16489373348797051797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * n) - A001405 (n + 1)

end

end A093387.P16489373348797051797

namespace A093387

/-- `A077957(2*n)-A001405(n+1)` -/
def P16489373348797051797.Spec : Prop :=
  ∀ n, P16489373348797051797.a n = A093387 (n + 1)

end A093387

/-! ## A093387.P2900839931424731431

`A016116(2*n)-abs(A126930(n+1))`
-/

namespace A093387.P2900839931424731431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) - |A126930 (n + 1)|

end

end A093387.P2900839931424731431

namespace A093387

/-- `A016116(2*n)-abs(A126930(n+1))` -/
def P2900839931424731431.Spec : Prop :=
  ∀ n, P2900839931424731431.a n = A093387 (n + 1)

end A093387

/-! ## A093387.P12536623320546508450

`A011782(n+1)-(A014495(n+1)+1)`
-/

namespace A093387.P12536623320546508450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - (A014495 (n + 1) + 1)

end

end A093387.P12536623320546508450

namespace A093387

/-- `A011782(n+1)-(A014495(n+1)+1)` -/
def P12536623320546508450.Spec : Prop :=
  ∀ n, P12536623320546508450.a n = A093387 (n + 1)

end A093387

/-! ## A093387.P13584168605837942613

`A094373(n+1)-(A001405(n+1)+1)`
-/

namespace A093387.P13584168605837942613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (n + 1) - (A001405 (n + 1) + 1)

end

end A093387.P13584168605837942613

namespace A093387

/-- `A094373(n+1)-(A001405(n+1)+1)` -/
def P13584168605837942613.Spec : Prop :=
  ∀ n, P13584168605837942613.a n = A093387 (n + 1)

end A093387

/-!
# A093388: (n+1)^2*a(n+1) = (17n^2+17n+6)*a(n) - 72*n^2*a(n-1).

The programs for A093388, the canonical program `A093388.P732465292511210607` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093388 has offset 0).

The definition of A093388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093388.P732465292511210607

`((17*n²-17*n+6)*a(n-1)-72*(n-1)²*a(n-2))/n²` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093388

/-- `((17*n²-17*n+6)*a(n-1)-72*(n-1)²*a(n-2))/n²` -/
def P732465292511210607.Spec : Prop :=
  ∀ n, P732465292511210607.a n = (A093388 n : ℚ)

end A093388

/-!
# A093390: a(n) = floor(n/9) + floor((n+1)/9) + floor((n+2)/9).

The programs for A093390, the canonical program `A093390.P1811915316347876173` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093390 has offset 0).

The definition of A093390 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/9)+floor((n+1)/9)+floor((n+2)/9)` (program `A093390.P1811915316347876173`, by `A093390.P1811915316347876173.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093390.P1811915316347876173

`floor(n/9)+floor((n+1)/9)+floor((n+2)/9)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093390

/-- `floor(n/9)+floor((n+1)/9)+floor((n+2)/9)` -/
def P1811915316347876173.Spec : Prop :=
  ∀ n, P1811915316347876173.a n = A093390 n

theorem P1811915316347876173.correct : P1811915316347876173.Spec := by
  intro n
  simp only [A093390]

end A093390

/-! ## A093390.P15754487234117357049

`∑[floor(dr(n)/7)]`
-/

namespace A093390.P15754487234117357049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.digitalRoot (n : ℤ) : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093390.P15754487234117357049

namespace A093390

/-- `∑[floor(dr(n)/7)]` -/
def P15754487234117357049.Spec : Prop :=
  ∀ n, P15754487234117357049.a n = A093390 n

end A093390

/-! ## A093390.P13897340056538095127

`∑[val(dr(n)!, 7)]`
-/

namespace A093390.P13897340056538095127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (SequenceMachineLib.digitalRoot (n : ℤ))) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093390.P13897340056538095127

namespace A093390

/-- `∑[val(dr(n)!, 7)]` -/
def P13897340056538095127.Spec : Prop :=
  ∀ n, (P13897340056538095127.a n : ℤ) = A093390 n

end A093390

/-! ## A093390.P17170960468676707444

`∑[round((dr(n)/9)²)]`
-/

namespace A093390.P17170960468676707444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((SequenceMachineLib.digitalRoot (n : ℤ) : ℚ) / 9) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093390.P17170960468676707444

namespace A093390

/-- `∑[round((dr(n)/9)²)]` -/
def P17170960468676707444.Spec : Prop :=
  ∀ n, P17170960468676707444.a n = A093390 n

end A093390

/-! ## A093390.P16026815308944309167

`∑[round((dr(n)-2)/9)]`
-/

namespace A093390.P16026815308944309167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((SequenceMachineLib.digitalRoot (n : ℤ) : ℤ) - 2 : ℚ) / 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093390.P16026815308944309167

namespace A093390

/-- `∑[round((dr(n)-2)/9)]` -/
def P16026815308944309167.Spec : Prop :=
  ∀ n, P16026815308944309167.a n = A093390 n

end A093390

/-! ## A093390.P14844305564460963995

`∑[abs(floor(sin(dr(3-n))))]`
-/

namespace A093390.P14844305564460963995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊Real.sin (SequenceMachineLib.digitalRoot (3 - (n : ℤ)) : ℝ)⌋|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093390.P14844305564460963995

namespace A093390

/-- `∑[abs(floor(sin(dr(3-n))))]` -/
def P14844305564460963995.Spec : Prop :=
  ∀ n, P14844305564460963995.a n = A093390 n

end A093390

/-! ## A093390.P17744860002079758181

`∑[-floor(sin(dr(3-n)))]`
-/

namespace A093390.P17744860002079758181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊Real.sin (SequenceMachineLib.digitalRoot (3 - (n : ℤ)) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093390.P17744860002079758181

namespace A093390

/-- `∑[-floor(sin(dr(3-n)))]` -/
def P17744860002079758181.Spec : Prop :=
  ∀ n, P17744860002079758181.a n = A093390 n

end A093390

/-! ## A093390.P14738941558313314954

`∑[ceil(sin(-dr(3-n)))]`
-/

namespace A093390.P14738941558313314954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (-(SequenceMachineLib.digitalRoot (3 - (n : ℤ)) : ℤ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093390.P14738941558313314954

namespace A093390

/-- `∑[ceil(sin(-dr(3-n)))]` -/
def P14738941558313314954.Spec : Prop :=
  ∀ n, P14738941558313314954.a n = A093390 n

end A093390

/-! ## A093390.P16931332433007340389

`∑[floor(sin(dr(3-n)))²]`
-/

namespace A093390.P16931332433007340389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (SequenceMachineLib.digitalRoot (3 - (n : ℤ)) : ℝ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093390.P16931332433007340389

namespace A093390

/-- `∑[floor(sin(dr(3-n)))²]` -/
def P16931332433007340389.Spec : Prop :=
  ∀ n, P16931332433007340389.a n = A093390 n

end A093390

/-! ## A093390.P5141194727950026749

`∑[dr(floor(sin(dr(3-n))))]`
-/

namespace A093390.P5141194727950026749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ⌊Real.sin (SequenceMachineLib.digitalRoot (3 - (n : ℤ)) : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093390.P5141194727950026749

namespace A093390

/-- `∑[dr(floor(sin(dr(3-n))))]` -/
def P5141194727950026749.Spec : Prop :=
  ∀ n, (P5141194727950026749.a n : ℤ) = A093390 n

end A093390

/-! ## A093390.P12939297156241399250

`∑[∑{p}[∑[∑[n]], val(#, 3)]]`
-/

namespace A093390.P12939297156241399250
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093390.P12939297156241399250

namespace A093390

/-- `∑[∑{p}[∑[∑[n]], val(#, 3)]]` -/
def P12939297156241399250.Spec : Prop :=
  ∀ n, (P12939297156241399250.a n : ℤ) = A093390 n

end A093390

/-! ## A093390.P6679127687300868539

`∑[val(∏{p}[∑[∑[n]], #], 3)]`
-/

namespace A093390.P6679127687300868539
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093390.P6679127687300868539

namespace A093390

/-- `∑[val(∏{p}[∑[∑[n]], #], 3)]` -/
def P6679127687300868539.Spec : Prop :=
  ∀ n, (P6679127687300868539.a n : ℤ) = A093390 n

end A093390

/-!
# A093391: a(n) = floor(n/16) + floor((n+1)/16) + floor((n+2)/16) + floor((n+3)/16).

The programs for A093391, the canonical program `A093391.P17437526581563560897` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093391 has offset 0).

The definition of A093391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/16)+floor((n+1)/16)+floor((n+2)/16)+floor((n+3)/16)` (program `A093391.P17437526581563560897`, by `A093391.P17437526581563560897.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093391.P17437526581563560897

`floor(n/16)+floor((n+1)/16)+floor((n+2)/16)+floor((n+3)/16)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093391

/-- `floor(n/16)+floor((n+1)/16)+floor((n+2)/16)+floor((n+3)/16)` -/
def P17437526581563560897.Spec : Prop :=
  ∀ n, P17437526581563560897.a n = A093391 n

theorem P17437526581563560897.correct : P17437526581563560897.Spec := by
  intro n
  simp only [A093391]

end A093391

/-! ## A093391.P18069343164771264458

`∑[char[or(12, n)+1]]`
-/

namespace A093391.P18069343164771264458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 12 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093391.P18069343164771264458

namespace A093391

/-- `∑[char[or(12, n)+1]]` -/
def P18069343164771264458.Spec : Prop :=
  ∀ n, (P18069343164771264458.a n : ℤ) = A093391 n

end A093391

/-! ## A093391.P14270179159015167149

`∑[C(a(n-1), and(6, ∑[n+1]))]` with `a(0)=0`
-/

namespace A093391.P14270179159015167149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose (f1 (n - 1)) (Nat.land 6 (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093391.P14270179159015167149

namespace A093391

/-- `∑[C(a(n-1), and(6, ∑[n+1]))]` -/
def P14270179159015167149.Spec : Prop :=
  ∀ n, (P14270179159015167149.a n : ℤ) = A093391 n

end A093391

/-! ## A093391.P8215334014901257018

`∑[(A219676(n+1)%A219676(n))%2]`
-/

namespace A093391.P8215334014901257018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A219676 (n + 1)) (A219676 n)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093391.P8215334014901257018

namespace A093391

/-- `∑[(A219676(n+1)%A219676(n))%2]` -/
def P8215334014901257018.Spec : Prop :=
  ∀ n, P8215334014901257018.a n = A093391 n

end A093391

/-! ## A093391.P13493348937434968396

`abs(∑[A166486(A002265(n+3))]-n)`
-/

namespace A093391.P13493348937434968396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A002265 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A093391.P13493348937434968396

namespace A093391

/-- `abs(∑[A166486(A002265(n+3))]-n)` -/
def P13493348937434968396.Spec : Prop :=
  ∀ n, P13493348937434968396.a n = A093391 n

end A093391

/-! ## A093391.P16901232116314783738

`∑[A035039(∑[n%2])%2]`
-/

namespace A093391.P16901232116314783738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035039 (∑ j ∈ Finset.range (n + 1), f2 j)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093391.P16901232116314783738

namespace A093391

/-- `∑[A035039(∑[n%2])%2]` -/
def P16901232116314783738.Spec : Prop :=
  ∀ n, P16901232116314783738.a n = A093391 n

end A093391

/-!
# A093392: [n/25] + [(n+1)/25] + [(n+2)/25] + [(n+3)/25] + [(n+4)/25].

The programs for A093392, the canonical program `A093392.P7804911709201375788` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093392 has offset 0).

The definition of A093392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093392.P7804911709201375788

`∑[char[∑[5*gcd(5, n)-4]]]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093392

/-- `∑[char[∑[5*gcd(5, n)-4]]]` -/
def P7804911709201375788.Spec : Prop :=
  ∀ n, (P7804911709201375788.a n : ℤ) = A093392 n

theorem P7804911709201375788.correct : P7804911709201375788.Spec := by
  intro n
  simp only [A093392]

end A093392

/-! ## A093392.P13912911310108188034

`∑[A079998(A255590(n+4))]`
-/

namespace A093392.P13912911310108188034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A255590 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093392.P13912911310108188034

namespace A093392

/-- `∑[A079998(A255590(n+4))]` -/
def P13912911310108188034.Spec : Prop :=
  ∀ n, P13912911310108188034.a n = A093392 n

end A093392

/-! ## A093392.P15553822345811963761

`∑[∑[A014034(n+4)]]+n`
-/

namespace A093392.P15553822345811963761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014034 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A093392.P15553822345811963761

namespace A093392

/-- `∑[∑[A014034(n+4)]]+n` -/
def P15553822345811963761.Spec : Prop :=
  ∀ n, P15553822345811963761.a n = A093392 n

end A093392

/-! ## A093392.P5674969989612405286

`∑[A079998(A090223(n)+A008574(n))]`
-/

namespace A093392.P5674969989612405286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A090223 n + A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093392.P5674969989612405286

namespace A093392

/-- `∑[A079998(A090223(n)+A008574(n))]` -/
def P5674969989612405286.Spec : Prop :=
  ∀ n, P5674969989612405286.a n = A093392 n

end A093392

/-! ## A093392.P2215802321775657402

`∑[A079998(A008574(A090223(6*n)))]`
-/

namespace A093392.P2215802321775657402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A008574 (A090223 (6 * n)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093392.P2215802321775657402

namespace A093392

/-- `∑[A079998(A008574(A090223(6*n)))]` -/
def P2215802321775657402.Spec : Prop :=
  ∀ n, P2215802321775657402.a n = A093392 n

end A093392

/-!
# A093393: [n/9] + [n/4] + [(n+1)/9] + [(n+1)/4] + [(n+2)/9].

The programs for A093393, the canonical program `A093393.P11296675382952924623` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093393 has offset 0).

The definition of A093393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093393.P11296675382952924623

`A093390(n)+A004524(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A093393

/-- `A093390(n)+A004524(n)` -/
def P11296675382952924623.Spec : Prop :=
  ∀ n, P11296675382952924623.a n = A093393 n

theorem P11296675382952924623.correct : P11296675382952924623.Spec := by
  intro n
  simp only [A093393]

end A093393

/-! ## A093393.P1928770271178221402

`A004525(n+1)+A093390(n)-1`
-/

namespace A093393.P1928770271178221402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (n + 1) + (A093390 n - 1)

end

end A093393.P1928770271178221402

namespace A093393

/-- `A004525(n+1)+A093390(n)-1` -/
def P1928770271178221402.Spec : Prop :=
  ∀ n, P1928770271178221402.a n = A093393 n

end A093393

/-! ## A093393.P8415697420162563293

`A093390(n)+A004523(A057353(n))`
-/

namespace A093393.P8415697420162563293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093390 n + A004523 (A057353 n).toNat

end

end A093393.P8415697420162563293

namespace A093393

/-- `A093390(n)+A004523(A057353(n))` -/
def P8415697420162563293.Spec : Prop :=
  ∀ n, P8415697420162563293.a n = A093393 n

end A093393

/-! ## A093393.P14951969545312220115

`A093390(n)+A004526(A290561(n))`
-/

namespace A093393.P14951969545312220115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093390 n + A004526 (A290561 n).toNat

end

end A093393.P14951969545312220115

namespace A093393

/-- `A093390(n)+A004526(A290561(n))` -/
def P14951969545312220115.Spec : Prop :=
  ∀ n, P14951969545312220115.a n = A093393 n

end A093393

/-! ## A093393.P18176081514289821411

`A093390(n)+∑[A059841(A065033(n))]`
-/

namespace A093393.P18176081514289821411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093390 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093393.P18176081514289821411

namespace A093393

/-- `A093390(n)+∑[A059841(A065033(n))]` -/
def P18176081514289821411.Spec : Prop :=
  ∀ n, P18176081514289821411.a n = A093393 n

end A093393

/-! ## A093393.P11247021811204247253

`A002265(n+1)+A093390(n)+A002265(n)`
-/

namespace A093393.P11247021811204247253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1) + (A093390 n + A002265 n)

end

end A093393.P11247021811204247253

namespace A093393

/-- `A002265(n+1)+A093390(n)+A002265(n)` -/
def P11247021811204247253.Spec : Prop :=
  ∀ n, P11247021811204247253.a n = A093393 n

end A093393

/-! ## A093393.P12868891056424395183

`A093390(n)-Δ[A011848(n+1)]+n`
-/

namespace A093393.P12868891056424395183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093390 n - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A093393.P12868891056424395183

namespace A093393

/-- `A093390(n)-Δ[A011848(n+1)]+n` -/
def P12868891056424395183.Spec : Prop :=
  ∀ n, P12868891056424395183.a n = A093393 n

end A093393

/-! ## A093393.P354559667088638346

`A093390(n)+A002264(A187326(n))`
-/

namespace A093393.P354559667088638346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093390 n + A002264 (A187326 n).toNat

end

end A093393.P354559667088638346

namespace A093393

/-- `A093390(n)+A002264(A187326(n))` -/
def P354559667088638346.Spec : Prop :=
  ∀ n, P354559667088638346.a n = A093393 n

end A093393

/-! ## A093393.P7126293855295794946

`A004524(3*n)-(n-A093390(n))`
-/

namespace A093393.P7126293855295794946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (3 * n) - ((n : ℤ) - A093390 n)

end

end A093393.P7126293855295794946

namespace A093393

/-- `A004524(3*n)-(n-A093390(n))` -/
def P7126293855295794946.Spec : Prop :=
  ∀ n, P7126293855295794946.a n = A093393 n

end A093393

/-!
# A093394: a(n) is the GCD of n and the product of the anti-divisors of n.

The programs for A093394, there is no canonical definition to state claims against.
-/

/-! ## A093394.P4977814179482693227

`gcd(n+3, A091507(n+3))`
-/

namespace A093394.P4977814179482693227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A091507 (n + 3))

end

end A093394.P4977814179482693227

/-! ## A093394.P4912624920804050367

`(n+3)/A093395(n+3)`
-/

namespace A093394.P4912624920804050367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A093395 (n + 3) : ℚ)

end

end A093394.P4912624920804050367

/-! ## A093394.P5585326199485857199

`A091507(n+3)/A093396(n+3)`
-/

namespace A093394.P5585326199485857199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091507 (n + 3) : ℚ) / (A093396 (n + 3) : ℚ)

end

end A093394.P5585326199485857199

/-! ## A093394.P15434025467637579030

`val(A000079(n+3), A000079(A093395(n+3)))`
-/

namespace A093394.P15434025467637579030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 (n + 3)).toNat (A000079 (A093395 (n + 3)).toNat).toNat

end

end A093394.P15434025467637579030

/-! ## A093394.P16400404052459482121

`A001222(root(2^(n+3), A093395(n+3)))`
-/

namespace A093394.P16400404052459482121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 ^ (n + 3) : ℝ) ^ (1 / (A093395 (n + 3) : ℝ)))).toNat

end

end A093394.P16400404052459482121

/-!
# A093395: Numerators of n divided by the product of the anti-divisors of n.

The programs for A093395, there is no canonical definition to state claims against.
-/

/-! ## A093395.P8525088040377759056

`(n+3)/A093394(n+3)`
-/

namespace A093395.P8525088040377759056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A093394 (n + 3) : ℚ)

end

end A093395.P8525088040377759056

/-! ## A093395.P5642683835233368209

`(n+3)/gcd(n+3, A091507(n+3))`
-/

namespace A093395.P5642683835233368209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (Int.gcd (n + 3 : ℤ) (A091507 (n + 3)) : ℚ)

end

end A093395.P5642683835233368209

/-! ## A093395.P10628414852245296982

`(n+3)/A091507(n+3)*A093396(n+3)`
-/

namespace A093395.P10628414852245296982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A091507 (n + 3) : ℚ) * (A093396 (n + 3) : ℚ)

end

end A093395.P10628414852245296982

/-! ## A093395.P18121312435914554631

`gcd(A000005(A000079(n))+2, A005069(n+3))`
-/

namespace A093395.P18121312435914554631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A000079 n).toNat + 2) (A005069 (n + 3))

end

end A093395.P18121312435914554631

/-! ## A093395.P13519263429680352964

`gcd(A001222(A000079(n+3)), A326988(n+3))`
-/

namespace A093395.P13519263429680352964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A000079 (n + 3)).toNat) (A326988 (n + 3))

end

end A093395.P13519263429680352964

/-!
# A093396: Denominators of n divided by the product of the anti-divisors of n.

The programs for A093396, there is no canonical definition to state claims against.
-/

/-! ## A093396.P13860919873416263063

`A091507(n+3)/gcd(n+3, A091507(n+3))`
-/

namespace A093396.P13860919873416263063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091507 (n + 3) : ℚ) / (Int.gcd (n + 3 : ℤ) (A091507 (n + 3)) : ℚ)

end

end A093396.P13860919873416263063

/-! ## A093396.P17671669211533090913

`A091507(n+3)/A093394(n+3)`
-/

namespace A093396.P17671669211533090913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091507 (n + 3) : ℚ) / (A093394 (n + 3) : ℚ)

end

end A093396.P17671669211533090913

/-! ## A093396.P2093439522777962801

`A091507(n+3)/(n+3)*A093395(n+3)`
-/

namespace A093396.P2093439522777962801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091507 (n + 3) : ℚ) / (n + 3 : ℚ) * (A093395 (n + 3) : ℚ)

end

end A093396.P2093439522777962801

/-! ## A093396.P8559738752873064527

`A091507(n+3)/A028310((n+3)/A093395(n+3))`
-/

namespace A093396.P8559738752873064527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091507 (n + 3) : ℚ) / (A028310 (SequenceMachineLib.roundAway ((n + 3 : ℚ) / (A093395 (n + 3) : ℚ))).toNat : ℚ)

end

end A093396.P8559738752873064527

/-! ## A093396.P378620506579735975

`A091507(n+3)/A001222(root(2^(n+3), A093395(n+3)))`
-/

namespace A093396.P378620506579735975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091507 (n + 3) : ℚ) / (A001222 (SequenceMachineLib.roundAway ((2 ^ (n + 3) : ℝ) ^ (1 / (A093395 (n + 3) : ℝ)))).toNat : ℚ)

end

end A093396.P378620506579735975

/-!
# A093397: Absolute value of difference between counts of uninterrupted runs of single nonprimes in A093183 and A093184.

The programs for A093397, there is no canonical definition to state claims against.
-/

/-! ## A093397.P9080635151224260089

`abs(A093183(n+1)-A093184(n+1))`
-/

namespace A093397.P9080635151224260089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A093183 (n + 1) - A093184 (n + 1)|

end

end A093397.P9080635151224260089

/-! ## A093397.P8702653150363164753

`gcd(A093183(n+1)-A093184(n+1), A331302(n+1))`
-/

namespace A093397.P8702653150363164753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093183 (n + 1) - A093184 (n + 1)) (A331302 (n + 1))

end

end A093397.P8702653150363164753

/-!
# A093398: Absolute value of difference between counts of uninterrupted runs of 2 nonprimes in A093185 and A093186.

The programs for A093398, there is no canonical definition to state claims against.
-/

/-! ## A093398.P18335544025052482967

`abs(A093185(n+1)-A093186(n+1))`
-/

namespace A093398.P18335544025052482967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A093185 (n + 1) - A093186 (n + 1)|

end

end A093398.P18335544025052482967

/-! ## A093398.P6833494731682679876

`gcd(A093185(n+1)-A093186(n+1), A331302(n+1))`
-/

namespace A093398.P6833494731682679876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093185 (n + 1) - A093186 (n + 1)) (A331302 (n + 1))

end

end A093398.P6833494731682679876

/-!
# A093399: Absolute value of difference between counts of uninterrupted runs of 3 nonprimes in A093187 and A093188.

The programs for A093399, there is no canonical definition to state claims against.
-/

/-! ## A093399.P983742574856140673

`A093187(n+1)-A093188(n+1)`
-/

namespace A093399.P983742574856140673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093187 (n + 1) - A093188 (n + 1)

end

end A093399.P983742574856140673

/-! ## A093399.P6217485718422508911

`A145018(A088874(3*n+1)+1)%A271166(n)`
-/

namespace A093399.P6217485718422508911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145018 (A088874 (3 * n + 1) + 1).toNat) (A271166 n)

end

end A093399.P6217485718422508911

