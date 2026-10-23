import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
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
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

/-!
# A151400: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 0), (-1, 1), (0, -1), (1, 1)}.

The programs for A151400, there is no canonical definition to state claims against.
-/

/-! ## A151400.P5857195059575983943

`A116939(A053871(n))`
-/

namespace A151400.P5857195059575983943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A053871 n).toNat

end

end A151400.P5857195059575983943

/-! ## A151400.P5773848458991973369

`A305759(A108469(n))-char[1]`
-/

namespace A151400.P5773848458991973369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305759 (A108469 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A151400.P5773848458991973369

/-! ## A151400.P6454808359653865019

`A000108(n)-A198317(A016921(n))`
-/

namespace A151400.P6454808359653865019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A198317 (A016921 n).toNat

end

end A151400.P6454808359653865019

/-!
# A151401: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 0), (-1, 1), (0, 1), (1, -1)}.

The programs for A151401, there is no canonical definition to state claims against.
-/

/-! ## A151401.P10221338770220032407

`A354994(A056363(n))`
-/

namespace A151401.P10221338770220032407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354994 (A056363 n).toNat

end

end A151401.P10221338770220032407

/-! ## A151401.P6951633226794904181

`A343238(A346733(n+1))`
-/

namespace A151401.P6951633226794904181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343238 (A346733 (n + 1)).toNat

end

end A151401.P6951633226794904181

/-! ## A151401.P11073608256656360933

`or(1, A004788(A148395(n)))`
-/

namespace A151401.P11073608256656360933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004788 (A148395 n).toNat)

end

end A151401.P11073608256656360933

/-! ## A151401.P11570656878744562151

`or(1, A364882(A319616(n)))`
-/

namespace A151401.P11570656878744562151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A364882 (A319616 n).toNat)

end

end A151401.P11570656878744562151

/-!
# A151402: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of 2 n steps taken from {(-1, 0), (-1, 1), (1, -1), (1, 1)}.

The programs for A151402, there is no canonical definition to state claims against.
-/

/-! ## A151402.P17516656384467455661

`A222248((11^n+9)/10)+3*floor(2^n/3)`
-/

namespace A151402.P17516656384467455661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 (SequenceMachineLib.roundAway ((11 ^ n + 9 : ℚ) / 10)).toNat + 3 * ⌊(2 ^ n : ℚ) / 3⌋

end

end A151402.P17516656384467455661

/-!
# A151403: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of 2*n steps taken from {(-1, 0), (-1, 1), (1, 0), (1, 1)}.

The programs for A151403, the canonical program `A151403.P4093610361949357865` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151403 has offset 0).

The definition of A151403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151403.P4093610361949357865

`4^n*A000108(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A151403

/-- `4^n*A000108(n)` -/
def P4093610361949357865.Spec : Prop :=
  ∀ n, P4093610361949357865.a n = A151403 n

theorem P4093610361949357865.correct : P4093610361949357865.Spec := by
  intro n
  simp only [A151403]

end A151403

/-! ## A151403.P9017698326621289965

`4*(4-6/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A151403.P9017698326621289965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((4 - 6 / (n + 1 : ℚ)) * a (n - 1))

end

end A151403.P9017698326621289965

namespace A151403

/-- `4*(4-6/(n+1))*a(n-1)` -/
def P9017698326621289965.Spec : Prop :=
  ∀ n, P9017698326621289965.a n = (A151403 n : ℚ)

end A151403

/-! ## A151403.P14723114040590238598

`C(2*n, n)/(n+1)*2^n*2^n`
-/

namespace A151403.P14723114040590238598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (2 ^ n : ℚ) * (2 ^ n : ℚ)

end

end A151403.P14723114040590238598

namespace A151403

/-- `C(2*n, n)/(n+1)*2^n*2^n` -/
def P14723114040590238598.Spec : Prop :=
  ∀ n, P14723114040590238598.a n = (A151403 n : ℚ)

end A151403

/-! ## A151403.P5552420401195684825

`A052704(n+1)`
-/

namespace A151403.P5552420401195684825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052704 (n + 1)

end

end A151403.P5552420401195684825

namespace A151403

/-- `A052704(n+1)` -/
def P5552420401195684825.Spec : Prop :=
  ∀ n, P5552420401195684825.a n = A151403 n

end A151403

/-! ## A151403.P9943477936680295295

`∑[abs(Δ[A052704(n)])]`
-/

namespace A151403.P9943477936680295295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052704 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151403.P9943477936680295295

namespace A151403

/-- `∑[abs(Δ[A052704(n)])]` -/
def P9943477936680295295.Spec : Prop :=
  ∀ n, P9943477936680295295.a n = A151403 n

end A151403

/-! ## A151403.P6639207616206570987

`A052707(n+1)/2`
-/

namespace A151403.P6639207616206570987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052707 (n + 1) : ℚ) / 2

end

end A151403.P6639207616206570987

namespace A151403

/-- `A052707(n+1)/2` -/
def P6639207616206570987.Spec : Prop :=
  ∀ n, P6639207616206570987.a n = (A151403 n : ℚ)

end A151403

/-! ## A151403.P11691482295011508162

`A349648(Δ[n²])/2`
-/

namespace A151403.P11691482295011508162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349648 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A151403.P11691482295011508162

namespace A151403

/-- `A349648(Δ[n²])/2` -/
def P11691482295011508162.Spec : Prop :=
  ∀ n, P11691482295011508162.a n = (A151403 n : ℚ)

end A151403

/-! ## A151403.P15877666338326887331

`record[A052704(abs(1-n))]`
-/

namespace A151403.P15877666338326887331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052704 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151403.P15877666338326887331

namespace A151403

/-- `record[A052704(abs(1-n))]` -/
def P15877666338326887331.Spec : Prop :=
  ∀ n, P15877666338326887331.a n = A151403 n

end A151403

/-! ## A151403.P7417146607471675196

`A000108(n)*A000302(n)`
-/

namespace A151403.P7417146607471675196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000302 n

end

end A151403.P7417146607471675196

namespace A151403

/-- `A000108(n)*A000302(n)` -/
def P7417146607471675196.Spec : Prop :=
  ∀ n, P7417146607471675196.a n = A151403 n

end A151403

/-! ## A151403.P14770593039551288655

`A068875(n)*A081294(n)`
-/

namespace A151403.P14770593039551288655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068875 n * A081294 n

end

end A151403.P14770593039551288655

namespace A151403

/-- `A068875(n)*A081294(n)` -/
def P14770593039551288655.Spec : Prop :=
  ∀ n, P14770593039551288655.a n = A151403 n

end A151403

/-!
# A151404: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 0), (0, -1), (0, 1), (1, -1)}.

The programs for A151404, there is no canonical definition to state claims against.
-/

/-! ## A151404.P11775626705605500163

`A130446(A268172(n+1))`
-/

namespace A151404.P11775626705605500163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A268172 (n + 1)).toNat

end

end A151404.P11775626705605500163

/-! ## A151404.P7061619730072528323

`A065033(floor(sqrt(A351068(n+1))))`
-/

namespace A151404.P7061619730072528323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.sqrt (A351068 (n + 1))).toNat

end

end A151404.P7061619730072528323

/-! ## A151404.P13201994813795510376

`∑[A003056(abs(A353607(n+1)))]`
-/

namespace A151404.P13201994813795510376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 |A353607 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151404.P13201994813795510376

/-! ## A151404.P1020767018408989439

`A023190(A005628(n)+A000108(n))`
-/

namespace A151404.P1020767018408989439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A005628 n + A000108 n).toNat

end

end A151404.P1020767018408989439

/-!
# A151407: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 0), (0, -1), (1, 0), (1, 1)}.

The programs for A151407, there is no canonical definition to state claims against.
-/

/-! ## A151407.P1764966720569092135

`A161408(n)+A079562(A161381(n))`
-/

namespace A151407.P1764966720569092135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161408 n + A079562 (A161381 n).toNat

end

end A151407.P1764966720569092135

/-! ## A151407.P6929457567407077910

`A332246(A000296(n)*A011972(n))`
-/

namespace A151407.P6929457567407077910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332246 (A000296 n * A011972 n).toNat

end

end A151407.P6929457567407077910

/-!
# A151408: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 0), (0, 1), (1, -1), (1, 0)}.

The programs for A151408, there is no canonical definition to state claims against.
-/

/-! ## A151408.P9074523911652276488

`A248227(A052816(∑[n]))`
-/

namespace A151408.P9074523911652276488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A052816 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A151408.P9074523911652276488

/-! ## A151408.P15294333511280311894

`A194640(A078481(n+1))`
-/

namespace A151408.P15294333511280311894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A078481 (n + 1)).toNat

end

end A151408.P15294333511280311894

/-! ## A151408.P5748624680449090519

`A008617(13*A036765(n))`
-/

namespace A151408.P5748624680449090519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (13 * A036765 n).toNat

end

end A151408.P5748624680449090519

/-! ## A151408.P2748327689632256911

`A286057(A245898(n+1))-A195849(n)`
-/

namespace A151408.P2748327689632256911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286057 (A245898 (n + 1)).toNat - A195849 n

end

end A151408.P2748327689632256911

/-!
# A151409: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 0), (0, 1), (1, -1), (1, 1)}.

The programs for A151409, there is no canonical definition to state claims against.
-/

/-! ## A151409.P16145818026954184208

`A195177(A141602(n+1)²)`
-/

namespace A151409.P16145818026954184208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A141602 (n + 1) ^ 2).toNat

end

end A151409.P16145818026954184208

/-! ## A151409.P1693087729206703178

`A195177(∑[A068330(n+1)]²)`
-/

namespace A151409.P1693087729206703178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A151409.P1693087729206703178

/-! ## A151409.P4045179130406315833

`A195177(A195181(floor(18^(n/5)))²)`
-/

namespace A151409.P4045179130406315833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A195181 ⌊(18 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋.toNat ^ 2).toNat

end

end A151409.P4045179130406315833

/-! ## A151409.P3108472180798694598

`A195177(A141602(n+1)^A100961(n))`
-/

namespace A151409.P3108472180798694598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (SequenceMachineLib.roundAway ((A141602 (n + 1) : ℚ) ^ (A100961 n : ℤ))).toNat

end

end A151409.P3108472180798694598

/-!
# A151410: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of 2 n steps taken from {(-1, 0), (1, -1), (1, 0), (1, 1)}.

The programs for A151410, the canonical program `A151410.P5653092627576698` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151410 has offset 0).

The definition of A151410 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151410.P5653092627576698

`A000108(n)*(A001006(n)+A001006(n+1))*(n+3)/6`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A151410

/-- `A000108(n)*(A001006(n)+A001006(n+1))*(n+3)/6` -/
def P5653092627576698.Spec : Prop :=
  ∀ n, P5653092627576698.a n = (A151410 n : ℚ)

end A151410

/-! ## A151410.P13872122685276155016

`A000108(n)*A038622(∑[n])`
-/

namespace A151410.P13872122685276155016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A038622 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151410.P13872122685276155016

namespace A151410

/-- `A000108(n)*A038622(∑[n])` -/
def P13872122685276155016.Spec : Prop :=
  ∀ n, P13872122685276155016.a n = A151410 n

end A151410

/-! ## A151410.P2287877740143409738

`A000108(n)*A171651(∑[n])`
-/

namespace A151410.P2287877740143409738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A171651 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151410.P2287877740143409738

namespace A151410

/-- `A000108(n)*A171651(∑[n])` -/
def P2287877740143409738.Spec : Prop :=
  ∀ n, P2287877740143409738.a n = A151410 n

end A151410

/-! ## A151410.P3465532692554436473

`A000108(n)*record[A038622(n)]`
-/

namespace A151410.P3465532692554436473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151410.P3465532692554436473

namespace A151410

/-- `A000108(n)*record[A038622(n)]` -/
def P3465532692554436473.Spec : Prop :=
  ∀ n, P3465532692554436473.a n = A151410 n

end A151410

/-! ## A151410.P13930641275878926020

`A000108(n)*A005773(n+1)`
-/

namespace A151410.P13930641275878926020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A005773 (n + 1)

end

end A151410.P13930641275878926020

namespace A151410

/-- `A000108(n)*A005773(n+1)` -/
def P13930641275878926020.Spec : Prop :=
  ∀ n, P13930641275878926020.a n = A151410 n

end A151410

/-! ## A151410.P7735658462774711990

`A000108(n)*A307789(n+2)`
-/

namespace A151410.P7735658462774711990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A307789 (n + 2)

end

end A151410.P7735658462774711990

namespace A151410

/-- `A000108(n)*A307789(n+2)` -/
def P7735658462774711990.Spec : Prop :=
  ∀ n, P7735658462774711990.a n = A151410 n

end A151410

/-! ## A151410.P3502493648222717869

`A005773(n+1)*A126120(2*n)`
-/

namespace A151410.P3502493648222717869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) * A126120 (2 * n)

end

end A151410.P3502493648222717869

namespace A151410

/-- `A005773(n+1)*A126120(2*n)` -/
def P3502493648222717869.Spec : Prop :=
  ∀ n, P3502493648222717869.a n = A151410 n

end A151410

/-! ## A151410.P14928871628199500564

`A005773(n+1)*A097331(2*n+1)`
-/

namespace A151410.P14928871628199500564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) * A097331 (2 * n + 1)

end

end A151410.P14928871628199500564

namespace A151410

/-- `A005773(n+1)*A097331(2*n+1)` -/
def P14928871628199500564.Spec : Prop :=
  ∀ n, P14928871628199500564.a n = A151410 n

end A151410

/-! ## A151410.P7809495642134404364

`abs(A090192(2*n+1))*A005773(n+1)`
-/

namespace A151410.P7809495642134404364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A090192 (2 * n + 1)| * A005773 (n + 1)

end

end A151410.P7809495642134404364

namespace A151410

/-- `abs(A090192(2*n+1))*A005773(n+1)` -/
def P7809495642134404364.Spec : Prop :=
  ∀ n, P7809495642134404364.a n = A151410 n

end A151410

/-!
# A151411: Weight distribution of [128,36,32] extended binary primitive BCH (or XBCH) code.

The programs for A151411, there is no canonical definition to state claims against.
-/

/-! ## A151411.P15821389095818101933

`A186492(A200062(n+1))`
-/

namespace A151411.P15821389095818101933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186492 (A200062 (n + 1)).toNat

end

end A151411.P15821389095818101933

/-! ## A151411.P13691120302277542038

`A289537(2-A057374(n))`
-/

namespace A151411.P13691120302277542038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289537 (2 - A057374 n).toNat

end

end A151411.P13691120302277542038

/-! ## A151411.P13594121946846969689

`A006006(A130959(n)+n)`
-/

namespace A151411.P13594121946846969689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006006 (A130959 n + (n : ℤ)).toNat

end

end A151411.P13594121946846969689

/-! ## A151411.P5171453932237172001

`A342293(A085158(n)-n)`
-/

namespace A151411.P5171453932237172001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342293 (A085158 n - (n : ℤ)).toNat

end

end A151411.P5171453932237172001

/-! ## A151411.P5394236796198500859

`A006006(A207623(n+1)-1)`
-/

namespace A151411.P5394236796198500859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006006 (A207623 (n + 1) - 1).toNat

end

end A151411.P5394236796198500859

/-!
# A151412: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 1), (0, -1), (0, 1), (1, 0)}.

The programs for A151412, there is no canonical definition to state claims against.
-/

/-! ## A151412.P3808125891068387396

`A004526(A281400(n+1)+A126324(2*n+1))`
-/

namespace A151412.P3808125891068387396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A281400 (n + 1) + A126324 (2 * n + 1)).toNat

end

end A151412.P3808125891068387396

/-! ## A151412.P7584524946898950939

`A249728(A213229(n))`
-/

namespace A151412.P7584524946898950939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A213229 n).toNat

end

end A151412.P7584524946898950939

/-! ## A151412.P11659851421494758188

`A371587(A203579(n))`
-/

namespace A151412.P11659851421494758188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371587 (A203579 n).toNat

end

end A151412.P11659851421494758188

/-!
# A151414: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 1), (0, -1), (1, -1), (1, 1)}.

The programs for A151414, there is no canonical definition to state claims against.
-/

/-! ## A151414.P10412589840027026443

`A246277(A064665(3*a(n-1)-2*a(n-2)))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=6, a(5)=14`
-/

namespace A151414.P10412589840027026443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2, 6, 14] fun n a =>
  A246277 (A064665 (3 * a (n - 1) - 2 * a (n - 2)).toNat).toNat

end

end A151414.P10412589840027026443

/-! ## A151414.P11182191968317505427

`A033109(A040059(n)+A006516(n))`
-/

namespace A151414.P11182191968317505427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033109 (A040059 n + A006516 n).toNat

end

end A151414.P11182191968317505427

/-! ## A151414.P9425235144772432123

`A057428(n)+A055086(A060656(n))`
-/

namespace A151414.P9425235144772432123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A055086 (A060656 n).toNat

end

end A151414.P9425235144772432123

/-! ## A151414.P2142922519434340971

`A086880(n)-A000188(A153197(n))`
-/

namespace A151414.P2142922519434340971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086880 n - A000188 (A153197 n).toNat

end

end A151414.P2142922519434340971

/-!
# A151415: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 1), (0, -1), (1, 0), (1, 1)}.

The programs for A151415, there is no canonical definition to state claims against.
-/

/-! ## A151415.P15625625800319184576

`A148138(n)+A057428(A060356(n))`
-/

namespace A151415.P15625625800319184576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148138 n + A057428 (A060356 n).toNat

end

end A151415.P15625625800319184576

/-! ## A151415.P16025996156823826404

`A148138(n)-A117479(A151406(n))`
-/

namespace A151415.P16025996156823826404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148138 n - A117479 (A151406 n).toNat

end

end A151415.P16025996156823826404

/-! ## A151415.P239645384965767083

`A148138(n)-A057428(n)*A057428(A060356(n))`
-/

namespace A151415.P239645384965767083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148138 n - A057428 n * A057428 (A060356 n).toNat

end

end A151415.P239645384965767083

/-! ## A151415.P17913323339876523376

`A156689(A148405(n))+A026800(A000211(n))-char[A036040(n+1)]`
-/

namespace A151415.P17913323339876523376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A148405 n).toNat + A026800 (A000211 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A151415.P17913323339876523376

/-!
# A151416: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 1), (0, 1), (1, -1), (1, 0)}.

The programs for A151416, there is no canonical definition to state claims against.
-/

/-! ## A151416.P9316290450922794256

`A038568(∑[A306258(n)])`
-/

namespace A151416.P9316290450922794256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151416.P9316290450922794256

/-! ## A151416.P18124720331301627077

`A264749(A148939(n+1))`
-/

namespace A151416.P18124720331301627077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A148939 (n + 1)).toNat

end

end A151416.P18124720331301627077

/-! ## A151416.P14260323041588778645

`A173276(n*A338729(n))`
-/

namespace A151416.P14260323041588778645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173276 ((n : ℤ) * A338729 n).toNat

end

end A151416.P14260323041588778645

/-! ## A151416.P9485421505831758495

`or(A036249(n), A216784(A107895(n)))`
-/

namespace A151416.P9485421505831758495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036249 n) (A216784 (A107895 n).toNat)

end

end A151416.P9485421505831758495

/-!
# A151417: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 1), (0, 1), (1, -1), (1, 1)}.

The programs for A151417, there is no canonical definition to state claims against.
-/

/-! ## A151417.P3873623511096993637

`A070548(A365667(n)+A006190(n))`
-/

namespace A151417.P3873623511096993637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070548 (A365667 (n + 25) + A006190 n).toNat

end

end A151417.P3873623511096993637

/-! ## A151417.P9404900820009542379

`A117910(A140429(n)+A132790(n+1))`
-/

namespace A151417.P9404900820009542379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A140429 n + A132790 (n + 1)).toNat

end

end A151417.P9404900820009542379

/-! ## A151417.P4896545041518468009

`A048621(A262441(n)+A025177(n))`
-/

namespace A151417.P4896545041518468009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048621 (A262441 n + A025177 n).toNat

end

end A151417.P4896545041518468009

/-! ## A151417.P1958109241014666780

`A172263(A349052(n))+A014335(n)`
-/

namespace A151417.P1958109241014666780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A349052 n).toNat + A014335 n

end

end A151417.P1958109241014666780

/-!
# A151418: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of 2 n steps taken from {(-1, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151418, there is no canonical definition to state claims against.
-/

/-! ## A151418.P11036099233003076514

`A183081(∏[∑[(n+1)/2^val(n+1, 2)]])`
-/

namespace A151418.P11036099233003076514
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183081 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A151418.P11036099233003076514

/-!
# A151420: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, 1), (1, -1)}.

The programs for A151420, there is no canonical definition to state claims against.
-/

/-! ## A151420.P17813274914338898739

`A237593(A007469(n+2))+A006758(n)`
-/

namespace A151420.P17813274914338898739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (A007469 (n + 2)).toNat + A006758 n

end

end A151420.P17813274914338898739

/-!
# A151421: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, 1), (1, 0)}.

The programs for A151421, there is no canonical definition to state claims against.
-/

/-! ## A151421.P12295247773591494396

`A157271(A241133(n+1))`
-/

namespace A151421.P12295247773591494396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A241133 (n + 1)).toNat

end

end A151421.P12295247773591494396

/-! ## A151421.P12450857282840449357

`A065382(A157021(2*n+1)+2)`
-/

namespace A151421.P12450857282840449357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065382 (A157021 (2 * n + 1) + 2).toNat

end

end A151421.P12450857282840449357

/-! ## A151421.P10812633150780638888

`A126257(A375307(n)+A327498(n+1))`
-/

namespace A151421.P10812633150780638888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A375307 n + A327498 (n + 1)).toNat

end

end A151421.P10812633150780638888

/-!
# A151422: Weight distribution of [128,50,28] extended binary primitive BCH (or XBCH) code.

The programs for A151422, there is no canonical definition to state claims against.
-/

/-! ## A151422.P2721471800948095306

`A267700(C(A010350(n+1), A028310(3*n+1)))`
-/

namespace A151422.P2721471800948095306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267700 (Nat.choose (A010350 (n + 1)).toNat (A028310 (3 * n + 1)).toNat)

end

end A151422.P2721471800948095306

/-!
# A151423: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of 2 n steps taken from {(-1, -1), (-1, 0), (-1, 1), (1, -1), (1, 1)}.

The programs for A151423, there is no canonical definition to state claims against.
-/

/-! ## A151423.P15538705074752268928

`A232559(A246384(n)+A091570(n+2))-1`
-/

namespace A151423.P15538705074752268928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232559 (A246384 n + A091570 (n + 2)).toNat - 1

end

end A151423.P15538705074752268928

/-!
# A151425: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (0, -1), (0, 1), (1, -1)}.

The programs for A151425, there is no canonical definition to state claims against.
-/

/-! ## A151425.P12938571440959679196

`A245900(n+1)+A237113(n)`
-/

namespace A151425.P12938571440959679196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245900 (n + 1) + A237113 n

end

end A151425.P12938571440959679196

/-! ## A151425.P1389025910098347784

`A245900(n+1)+A241831(n)`
-/

namespace A151425.P1389025910098347784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245900 (n + 1) + A241831 n

end

end A151425.P1389025910098347784

/-! ## A151425.P11484765776799205781

`A325459(n)+A245900(n+1)`
-/

namespace A151425.P11484765776799205781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n + A245900 (n + 1)

end

end A151425.P11484765776799205781

/-! ## A151425.P8118078793096202547

`A245900(n+1)+∑[A082023(n)]`
-/

namespace A151425.P8118078793096202547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245900 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151425.P8118078793096202547

/-!
# A151426: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (0, -1), (0, 1), (1, 0)}.

The programs for A151426, there is no canonical definition to state claims against.
-/

/-! ## A151426.P6676796486466323772

`ceil(A101909(4^n)/3)`
-/

namespace A151426.P6676796486466323772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A101909 (4 ^ n) : ℚ) / 3⌉

end

end A151426.P6676796486466323772

/-! ## A151426.P80365565333498740

`A157271(A149946(n))`
-/

namespace A151426.P80365565333498740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A149946 n).toNat

end

end A151426.P80365565333498740

/-! ## A151426.P16054819277645184363

`A226190(A149912(n))`
-/

namespace A151426.P16054819277645184363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A149912 n).toNat

end

end A151426.P16054819277645184363

/-!
# A151427: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (0, -1), (0, 1), (1, 1)}.

The programs for A151427, there is no canonical definition to state claims against.
-/

/-! ## A151427.P4348505143557151721

`A008615(5*A056275(n+1))`
-/

namespace A151427.P4348505143557151721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (5 * A056275 (n + 1)).toNat

end

end A151427.P4348505143557151721

/-! ## A151427.P5976281546027221426

`A178798(A000225(n))+A149275(n)`
-/

namespace A151427.P5976281546027221426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A000225 n).toNat + A149275 n

end

end A151427.P5976281546027221426

/-! ## A151427.P2768293841816107796

`A149275(n)-A025457(A000262(n))`
-/

namespace A151427.P2768293841816107796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149275 n - A025457 (A000262 n).toNat

end

end A151427.P2768293841816107796

/-!
# A151430: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (0, 1), (1, -1), (1, 0)}.

The programs for A151430, there is no canonical definition to state claims against.
-/

/-! ## A151430.P2983227728667900281

`A113246(A086625(n))`
-/

namespace A151430.P2983227728667900281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113246 (A086625 n).toNat

end

end A151430.P2983227728667900281

/-! ## A151430.P18196493326328307111

`A113246(A152172(n+1))`
-/

namespace A151430.P18196493326328307111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113246 (A152172 (n + 1)).toNat

end

end A151430.P18196493326328307111

/-! ## A151430.P15571611408936506382

`A113246(A001677(n+2))`
-/

namespace A151430.P15571611408936506382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113246 (A001677 (n + 2)).toNat

end

end A151430.P15571611408936506382

/-!
# A151431: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (0, 1), (1, -1), (1, 1)}.

The programs for A151431, there is no canonical definition to state claims against.
-/

/-! ## A151431.P2342076361000766702

`ceil(1/record[A323504(6*n)]*5^n)`
-/

namespace A151431.P2342076361000766702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323504 (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) * (5 ^ n : ℚ)⌉

end

end A151431.P2342076361000766702

/-! ## A151431.P120536807998734408

`A276212(A277222(n))`
-/

namespace A151431.P120536807998734408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276212 (A277222 n).toNat

end

end A151431.P120536807998734408

/-! ## A151431.P4535676102776828922

`A195174(A149961(n+1))`
-/

namespace A151431.P4535676102776828922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A149961 (n + 1)).toNat

end

end A151431.P4535676102776828922

/-!
# A151432: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (0, 1), (1, 0), (1, 1)}.

The programs for A151432, there is no canonical definition to state claims against.
-/

/-! ## A151432.P16911098005442952232

`∑[A194640(A109499(n))]`
-/

namespace A151432.P16911098005442952232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A109499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151432.P16911098005442952232

/-! ## A151432.P6753562365436553242

`A076885(A149362(n+1))`
-/

namespace A151432.P6753562365436553242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A149362 (n + 1)).toNat

end

end A151432.P6753562365436553242

/-!
# A151434: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 1), (0, -1), (0, 1), (1, -1)}.

The programs for A151434, there is no canonical definition to state claims against.
-/

/-! ## A151434.P11134708315844403844

`A007095(A319616(n)+A185274(2*(n+1)))`
-/

namespace A151434.P11134708315844403844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A319616 n + A185274 (2 * (n + 1))).toNat

end

end A151434.P11134708315844403844

/-!
# A151435: Weight distribution of [128,57,24] extended binary primitive BCH (or XBCH) code.

The programs for A151435, there is no canonical definition to state claims against.
-/

/-! ## A151435.P2921371259101051476

`A151560(n)/A000005(A151418(n))`
-/

namespace A151435.P2921371259101051476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151560 n : ℚ) / (A000005 (A151418 n).toNat : ℚ)

end

end A151435.P2921371259101051476

/-! ## A151435.P3242970938917359944

`A151560(n)/A000032(A151422(n))`
-/

namespace A151435.P3242970938917359944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151560 n : ℚ) / (A000032 (A151422 n).toNat : ℚ)

end

end A151435.P3242970938917359944

/-! ## A151435.P15756587165818047152

`A151560(n)/A000032(A151559(n))`
-/

namespace A151435.P15756587165818047152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151560 n : ℚ) / (A000032 (A151559 n).toNat : ℚ)

end

end A151435.P15756587165818047152

/-!
# A151436: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 1), (0, -1), (0, 1), (1, 1)}.

The programs for A151436, there is no canonical definition to state claims against.
-/

/-! ## A151436.P16644112877126684134

`A333750(A149048(n+1))+A149051(n)`
-/

namespace A151436.P16644112877126684134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333750 (A149048 (n + 1)).toNat + A149051 n

end

end A151436.P16644112877126684134

/-! ## A151436.P12611181889772391405

`A096457(A149202(n))+A002264(A003510(n))`
-/

namespace A151436.P12611181889772391405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096457 (A149202 n).toNat + A002264 (A003510 n).toNat

end

end A151436.P12611181889772391405

/-!
# A151437: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 1), (0, -1), (1, -1), (1, 1)}.

The programs for A151437, there is no canonical definition to state claims against.
-/

/-! ## A151437.P5284324524006325996

`A316865(n)+A079677(A028859(n))`
-/

namespace A151437.P5284324524006325996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n + A079677 (A028859 n).toNat

end

end A151437.P5284324524006325996

/-! ## A151437.P16894244059181718800

`A035218(A003087(n))*A187306(n)`
-/

namespace A151437.P16894244059181718800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (A003087 n).toNat * A187306 n

end

end A151437.P16894244059181718800

/-! ## A151437.P3627297343840642082

`A002865(n)*A162343(A187306(n))`
-/

namespace A151437.P3627297343840642082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n * A162343 (A187306 n).toNat

end

end A151437.P3627297343840642082

/-!
# A151439: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 1), (0, 1), (1, -1), (1, 0)}.

The programs for A151439, there is no canonical definition to state claims against.
-/

/-! ## A151439.P6997088090687929765

`A204218(n)+A117168(A373911(n))`
-/

namespace A151439.P6997088090687929765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204218 n + A117168 (A373911 n).toNat

end

end A151439.P6997088090687929765

/-! ## A151439.P7683926518535218878

`or(A216837(n), A317994(A223012(2*(n+1))))`
-/

namespace A151439.P7683926518535218878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A216837 n) (A317994 (A223012 (2 * (n + 1))).toNat)

end

end A151439.P7683926518535218878

/-! ## A151439.P10528859020415971107

`A226762(A090317(n))`
-/

namespace A151439.P10528859020415971107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A090317 n).toNat

end

end A151439.P10528859020415971107

/-!
# A151440: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 1), (0, 1), (1, -1), (1, 1)}.

The programs for A151440, there is no canonical definition to state claims against.
-/

/-! ## A151440.P1521826137074808155

`A185063(A166444(n))+A148888(n)`
-/

namespace A151440.P1521826137074808155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185063 (A166444 n).toNat + A148888 n

end

end A151440.P1521826137074808155

/-! ## A151440.P10689249520169642211

`A157271(A279553(n)+A149285(n))`
-/

namespace A151440.P10689249520169642211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A279553 n + A149285 n).toNat

end

end A151440.P10689249520169642211

/-!
# A151441: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 1), (0, 1), (1, 0), (1, 1)}.

The programs for A151441, there is no canonical definition to state claims against.
-/

/-! ## A151441.P17567688736181524632

`A149382(n)-A118135(A110110(n))`
-/

namespace A151441.P17567688736181524632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149382 n - A118135 (A110110 n).toNat

end

end A151441.P17567688736181524632

/-! ## A151441.P13728044289580658805

`A149382(n)-A060039(A265154(n+1))`
-/

namespace A151441.P13728044289580658805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149382 n - A060039 (A265154 (n + 1)).toNat

end

end A151441.P13728044289580658805

/-! ## A151441.P11804660642001523289

`A149382(n)-A325817(A320792(3*n+8))`
-/

namespace A151441.P11804660642001523289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149382 n - A325817 (A320792 (3 * n + 8)).toNat

end

end A151441.P11804660642001523289

/-!
# A151442: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (0, -1), (0, 1), (1, -1), (1, 0)}.

The programs for A151442, there is no canonical definition to state claims against.
-/

/-! ## A151442.P8490428029183446322

`A297330(A065975(n))+A114509(n)`
-/

namespace A151442.P8490428029183446322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (A065975 n).toNat + A114509 n

end

end A151442.P8490428029183446322

/-! ## A151442.P9772586080326859741

`A006927(A000045(n))+A003080(n)`
-/

namespace A151442.P9772586080326859741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006927 (A000045 n).toNat + A003080 n

end

end A151442.P9772586080326859741

/-! ## A151442.P16140106038704186250

`A082858(A186735(n))+A003080(n)`
-/

namespace A151442.P16140106038704186250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082858 (A186735 n).toNat + A003080 n

end

end A151442.P16140106038704186250

/-!
# A151443: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (0, -1), (0, 1), (1, -1), (1, 1)}.

The programs for A151443, there is no canonical definition to state claims against.
-/

/-! ## A151443.P16332644629472030010

`A154287(A099163(n))`
-/

namespace A151443.P16332644629472030010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154287 (A099163 n).toNat

end

end A151443.P16332644629472030010

/-! ## A151443.P17302966418157428808

`A004031(n)-A073308(A028421(n))`
-/

namespace A151443.P17302966418157428808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004031 n - A073308 (A028421 n).toNat

end

end A151443.P17302966418157428808

/-! ## A151443.P16747667347236059218

`A289497(A265791(n+1)+A052560(n))`
-/

namespace A151443.P16747667347236059218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289497 (A265791 (n + 1) + A052560 n).toNat

end

end A151443.P16747667347236059218

/-!
# A151445: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (0, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151445, there is no canonical definition to state claims against.
-/

/-! ## A151445.P14735132787193371886

`A067434(A330641(∑[n]))`
-/

namespace A151445.P14735132787193371886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (A330641 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A151445.P14735132787193371886

/-! ## A151445.P16505230046120011529

`A239499((n+2)²)+1`
-/

namespace A151445.P16505230046120011529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239499 ((n + 2) ^ 2) + 1

end

end A151445.P16505230046120011529

/-! ## A151445.P3498156782338790344

`A309135(a(n-1))+n` with `a(0)=1`
-/

namespace A151445.P3498156782338790344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A309135 (a (n - 1)).toNat + (n : ℤ)

end

end A151445.P3498156782338790344

/-!
# A151446: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1)}.

The programs for A151446, there is no canonical definition to state claims against.
-/

/-! ## A151446.P17623499138521963631

`A226762(A148476(n+1))`
-/

namespace A151446.P17623499138521963631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A148476 (n + 1)).toNat

end

end A151446.P17623499138521963631

/-! ## A151446.P11995512930040735363

`A289494(or(n, A150129(n)))`
-/

namespace A151446.P11995512930040735363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (Int.lor (n : ℤ) (A150129 n)).toNat

end

end A151446.P11995512930040735363

/-! ## A151446.P14065094671090549581

`A289494(A007717(n)-A059252(n))`
-/

namespace A151446.P14065094671090549581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A007717 n - A059252 n).toNat

end

end A151446.P14065094671090549581

/-! ## A151446.P17068404149616853918

`A108141(A000108(n)-A241468(n+1))`
-/

namespace A151446.P17068404149616853918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A000108 n - A241468 (n + 1)).toNat

end

end A151446.P17068404149616853918

/-!
# A151447: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 0), (-1, 1), (0, -1), (0, 1), (1, 0)}.

The programs for A151447, there is no canonical definition to state claims against.
-/

/-! ## A151447.P391400899249275644

`A110658(4^n)+A081579(n)`
-/

namespace A151447.P391400899249275644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (4 ^ n) + A081579 n

end

end A151447.P391400899249275644

/-! ## A151447.P1915717761508316832

`A096457(A149202(n))-A105517(A000108(n))`
-/

namespace A151447.P1915717761508316832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096457 (A149202 n).toNat - A105517 (A000108 n).toNat

end

end A151447.P1915717761508316832

/-!
# A151448: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 0), (-1, 1), (0, -1), (0, 1), (1, 1)}.

The programs for A151448, there is no canonical definition to state claims against.
-/

/-! ## A151448.P2651525814729458663

`A008647((2^(n+1)+3)*2^n-1-floor(n/2))`
-/

namespace A151448.P2651525814729458663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (((2 ^ (n + 1) + 3) * 2 ^ n : ℤ) - 1 - ⌊(n : ℚ) / 2⌋).toNat

end

end A151448.P2651525814729458663

/-! ## A151448.P7784715430354727504

`A008679(A002804(2*n+1)+5)`
-/

namespace A151448.P7784715430354727504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A002804 (2 * n + 1) + 5).toNat

end

end A151448.P7784715430354727504

/-! ## A151448.P5262808401776457879

`A008612(A268431(n+2)+comp[∑[n]])`
-/

namespace A151448.P5262808401776457879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A268431 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A151448.P5262808401776457879

/-!
# A151451: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 0), (-1, 1), (0, 1), (1, -1), (1, 0)}.

The programs for A151451, there is no canonical definition to state claims against.
-/

/-! ## A151451.P4577665815669423792

`A061375(A225826(n))`
-/

namespace A151451.P4577665815669423792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (A225826 n).toNat

end

end A151451.P4577665815669423792

/-! ## A151451.P11608657388779153930

`A195174(A054108(n))`
-/

namespace A151451.P11608657388779153930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A054108 n).toNat

end

end A151451.P11608657388779153930

/-! ## A151451.P12853416494200826688

`A187187(A047106(n+1))`
-/

namespace A151451.P12853416494200826688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A047106 (n + 1)).toNat

end

end A151451.P12853416494200826688

/-!
# A151452: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 0), (-1, 1), (0, 1), (1, -1), (1, 1)}.

The programs for A151452, there is no canonical definition to state claims against.
-/

/-! ## A151452.P6323224763478769101

`A156552(A000142(n))+A086647(n)`
-/

namespace A151452.P6323224763478769101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A000142 n).toNat + A086647 n

end

end A151452.P6323224763478769101

/-! ## A151452.P14709048629123357042

`or(A020104(n), A220658(A150791(n)))`
-/

namespace A151452.P14709048629123357042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020104 n) (A220658 (A150791 n).toNat)

end

end A151452.P14709048629123357042

/-! ## A151452.P16905448653050979184

`A353851(n)+A230198(A084214(2*n))`
-/

namespace A151452.P16905448653050979184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353851 n + A230198 (A084214 (2 * n)).toNat

end

end A151452.P16905448653050979184

/-!
# A151454: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 0), (0, -1), (0, 1), (1, -1), (1, 0)}.

The programs for A151454, there is no canonical definition to state claims against.
-/

/-! ## A151454.P12590418824790902050

`A242062(A187984(n+1))+A212804(n)`
-/

namespace A151454.P12590418824790902050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (A187984 (n + 1)).toNat + A212804 n

end

end A151454.P12590418824790902050

/-! ## A151454.P4475210662006637343

`A023193(or(n, A150418(n)-n))`
-/

namespace A151454.P4475210662006637343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (Int.lor (n : ℤ) (A150418 n - (n : ℤ))).toNat

end

end A151454.P4475210662006637343

/-! ## A151454.P14024419084892844007

`A054846(A197551(n+1)*A321729(n))`
-/

namespace A151454.P14024419084892844007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A197551 (n + 1) * A321729 n).toNat

end

end A151454.P14024419084892844007

/-!
# A151455: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 0), (0, -1), (0, 1), (1, 0), (1, 1)}.

The programs for A151455, there is no canonical definition to state claims against.
-/

/-! ## A151455.P14568227328701801303

`A149269(n)-A184955(2*n+3)`
-/

namespace A151455.P14568227328701801303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149269 n - A184955 (2 * n + 3)

end

end A151455.P14568227328701801303

/-! ## A151455.P4722098771857823396

`A105516(A004171(n))+A026790(n)`
-/

namespace A151455.P4722098771857823396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105516 (A004171 n).toNat + A026790 n

end

end A151455.P4722098771857823396

/-! ## A151455.P1259383354627206327

`A149269(n)-A210715(A010364(n+1))`
-/

namespace A151455.P1259383354627206327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149269 n - A210715 (A010364 (n + 1)).toNat

end

end A151455.P1259383354627206327

/-!
# A151457: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 0), (0, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151457, there is no canonical definition to state claims against.
-/

/-! ## A151457.P18309091320461209374

`A008620(A000077(2*n)-A025177(n))`
-/

namespace A151457.P18309091320461209374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A000077 (2 * n) - A025177 n).toNat

end

end A151457.P18309091320461209374

/-!
# A151458: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 1), (0, -1), (0, 1), (1, -1), (1, 0)}.

The programs for A151458, there is no canonical definition to state claims against.
-/

/-! ## A151458.P7261384583370936088

`A148818(A004902(n+1))-A238831(n+1)`
-/

namespace A151458.P7261384583370936088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148818 (A004902 (n + 1)).toNat - A238831 (n + 1)

end

end A151458.P7261384583370936088

/-! ## A151458.P16067980665605150337

`A131824(n)+A131810(A000009(3*n))-A238831(n+1)`
-/

namespace A151458.P16067980665605150337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131824 n + A131810 (A000009 (3 * n)).toNat - A238831 (n + 1)

end

end A151458.P16067980665605150337

/-! ## A151458.P14400391879385652111

`A226190(A232622(n))`
-/

namespace A151458.P14400391879385652111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A232622 n).toNat

end

end A151458.P14400391879385652111

/-!
# A151459: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 1), (0, -1), (0, 1), (1, -1), (1, 1)}.

The programs for A151459, there is no canonical definition to state claims against.
-/

/-! ## A151459.P8723719451147162837

`A194979(A149964(n)+1)-1`
-/

namespace A151459.P8723719451147162837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (A149964 n + 1).toNat - 1

end

end A151459.P8723719451147162837

/-! ## A151459.P12136909850340583917

`A194979(A149964(n)-A057427(n))`
-/

namespace A151459.P12136909850340583917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (A149964 n - A057427 n).toNat

end

end A151459.P12136909850340583917

/-! ## A151459.P3858837802657765980

`A220658(A150743(n))`
-/

namespace A151459.P3858837802657765980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A150743 n).toNat

end

end A151459.P3858837802657765980

/-!
# A151460: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 1), (0, -1), (0, 1), (1, 0), (1, 1)}.

The programs for A151460, there is no canonical definition to state claims against.
-/

/-! ## A151460.P12737734425205470840

`A256261(∑[∑[∑{e}[n, #]]²])`
-/

namespace A151460.P12737734425205470840
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256261 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151460.P12737734425205470840

/-! ## A151460.P10580207819817279024

`A175374(a(n-1))-1` with `a(0)=1, a(1)=1`
-/

namespace A151460.P10580207819817279024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A175374 (a (n - 1)).toNat - 1

end

end A151460.P10580207819817279024

/-!
# A151461: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 1), (0, -1), (1, -1), (1, 0), (1, 1)}.

The programs for A151461, there is no canonical definition to state claims against.
-/

/-! ## A151461.P8884255120014829855

`A003056(A266768(∑[abs((-2)^n+1)]))`
-/

namespace A151461.P8884255120014829855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-2) ^ n + 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A266768 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A151461.P8884255120014829855

/-! ## A151461.P11410212291869100285

`A134357(n)-A008683(A006125(n))`
-/

namespace A151461.P11410212291869100285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134357 n - A008683 (A006125 n).toNat

end

end A151461.P11410212291869100285

/-! ## A151461.P14514785872087048669

`A003056(A124642(n)*A338084(n))`
-/

namespace A151461.P14514785872087048669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A124642 n * A338084 n).toNat

end

end A151461.P14514785872087048669

/-!
# A151462: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 1), (0, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151462, there is no canonical definition to state claims against.
-/

/-! ## A151462.P18383228707101251080

`A369296(n)+A046933(A000670(n))`
-/

namespace A151462.P18383228707101251080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369296 n + A046933 (A000670 n).toNat

end

end A151462.P18383228707101251080

/-! ## A151462.P7138575137225340486

`A095773(A188687(n))-A049344(n+1)`
-/

namespace A151462.P7138575137225340486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095773 (A188687 n).toNat - A049344 (n + 1)

end

end A151462.P7138575137225340486

/-!
# A151463: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1)}.

The programs for A151463, there is no canonical definition to state claims against.
-/

/-! ## A151463.P15003227525318219194

`xor(A006379(A029744(n+1)), A240610(n))`
-/

namespace A151463.P15003227525318219194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006379 (A029744 (n + 1)).toNat) (A240610 n)

end

end A151463.P15003227525318219194

/-! ## A151463.P4756671433519945624

`char[6]+Δ[A077556(n)]-floor((n/2)²)`
-/

namespace A151463.P4756671433519945624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077556 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n - ⌊((n : ℚ) / 2) ^ 2⌋)

end

end A151463.P4756671433519945624

/-! ## A151463.P3059042237087278208

`A108141(A148380(n))`
-/

namespace A151463.P3059042237087278208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A148380 n).toNat

end

end A151463.P3059042237087278208

/-!
# A151464: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, 0)}.

The programs for A151464, there is no canonical definition to state claims against.
-/

/-! ## A151464.P16905433559104151304

`A061358(A150846(n))+A005750(n+1)`
-/

namespace A151464.P16905433559104151304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A150846 n).toNat + A005750 (n + 1)

end

end A151464.P16905433559104151304

/-! ## A151464.P2478305601043926200

`A157271(A150362(n))`
-/

namespace A151464.P2478305601043926200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A150362 n).toNat

end

end A151464.P2478305601043926200

/-!
# A151465: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, 1)}.

The programs for A151465, there is no canonical definition to state claims against.
-/

/-! ## A151465.P15557725147733803184

`A110654(A150803(n))+A025480(n)`
-/

namespace A151465.P15557725147733803184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A150803 n).toNat + A025480 n

end

end A151465.P15557725147733803184

/-! ## A151465.P345143849010945104

`A171481(A097355(n)+A049086(n))`
-/

namespace A151465.P345143849010945104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171481 (A097355 n + A049086 n).toNat

end

end A151465.P345143849010945104

/-! ## A151465.P9707610660832785381

`A175126(n)+A004525(A150803(n))`
-/

namespace A151465.P9707610660832785381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n + A004525 (A150803 n).toNat

end

end A151465.P9707610660832785381

/-!
# A151467: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, -1), (1, 0), (1, 1)}.

The programs for A151467, there is no canonical definition to state claims against.
-/

/-! ## A151467.P2317066932594151563

`A351978(A156787(n+1)-1)`
-/

namespace A151467.P2317066932594151563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351978 (A156787 (n + 1) - 1).toNat

end

end A151467.P2317066932594151563

/-! ## A151467.P18386404223212000583

`A099056(A129598(n+1))%A099073(n+1)`
-/

namespace A151467.P18386404223212000583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099056 (A129598 (n + 1)).toNat) (A099073 (n + 1))

end

end A151467.P18386404223212000583

/-!
# A151468: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, 1), (1, -1), (1, 0)}.

The programs for A151468, there is no canonical definition to state claims against.
-/

/-! ## A151468.P2586580749270859767

`A269371(A006013(n)-A044046(n))`
-/

namespace A151468.P2586580749270859767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269371 (A006013 n - A044046 n).toNat

end

end A151468.P2586580749270859767

/-! ## A151468.P11129390166263231929

`A270789(n)+A121554(A303022(n+1))`
-/

namespace A151468.P11129390166263231929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270789 n + A121554 (A303022 (n + 1)).toNat

end

end A151468.P11129390166263231929

/-! ## A151468.P5843553538732842638

`A187188(A276903(n+2)-A023533(n))`
-/

namespace A151468.P5843553538732842638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A276903 (n + 2) - A023533 n).toNat

end

end A151468.P5843553538732842638

/-!
# A151469: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, 1), (1, -1), (1, 1)}.

The programs for A151469, there is no canonical definition to state claims against.
-/

/-! ## A151469.P12878041457323651604

`A137619(A052806(n))`
-/

namespace A151469.P12878041457323651604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137619 (A052806 n).toNat

end

end A151469.P12878041457323651604

/-! ## A151469.P7878388680503838694

`A137619(A138164(n))`
-/

namespace A151469.P7878388680503838694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137619 (A138164 n).toNat

end

end A151469.P7878388680503838694

/-!
# A151470: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, 1), (1, 0), (1, 1)}.

The programs for A151470, there is no canonical definition to state claims against.
-/

/-! ## A151470.P14394830962076116491

`A103221(35*A044046(n))`
-/

namespace A151470.P14394830962076116491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (35 * A044046 n).toNat

end

end A151470.P14394830962076116491

/-! ## A151470.P12884751403539015069

`A337138(A087299(n))+A038154(n)`
-/

namespace A151470.P12884751403539015069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337138 (A087299 n).toNat + A038154 n

end

end A151470.P12884751403539015069

/-!
# A151471: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of 2 n steps taken from {(-1, -1), (-1, 0), (-1, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151471, there is no canonical definition to state claims against.
-/

/-! ## A151471.P15527192586771090889

`record[A005773(n)*A097331(n)]`
-/

namespace A151471.P15527192586771090889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n * A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151471.P15527192586771090889

/-! ## A151471.P10680650678490459838

`record[abs(A005773(n)*A090192(n))]`
-/

namespace A151471.P10680650678490459838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005773 n * A090192 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151471.P10680650678490459838

/-! ## A151471.P7619355570140598452

`A000108(n)*A005773(2*n+1)`
-/

namespace A151471.P7619355570140598452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A005773 (2 * n + 1)

end

end A151471.P7619355570140598452

/-! ## A151471.P17945300309994260712

`A005773(2*n+1)*A126120(2*n)`
-/

namespace A151471.P17945300309994260712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (2 * n + 1) * A126120 (2 * n)

end

end A151471.P17945300309994260712

/-! ## A151471.P8070788294996269723

`A005773(2*n+1)*A097331(2*n+1)`
-/

namespace A151471.P8070788294996269723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (2 * n + 1) * A097331 (2 * n + 1)

end

end A151471.P8070788294996269723

/-! ## A151471.P12850349212119156161

`abs(A005773(2*n+1)*A090192(2*n+1))`
-/

namespace A151471.P12850349212119156161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005773 (2 * n + 1) * A090192 (2 * n + 1)|

end

end A151471.P12850349212119156161

/-! ## A151471.P16099831521149179127

`A151312(2*n)/(n+1)`
-/

namespace A151471.P16099831521149179127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151312 (2 * n) : ℚ) / (n + 1 : ℚ)

end

end A151471.P16099831521149179127

/-!
# A151472: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (0, -1), (0, 1), (1, -1), (1, 0)}.

The programs for A151472, there is no canonical definition to state claims against.
-/

/-! ## A151472.P7597202087005749724

`A008620(A302288(n)+A149233(n))`
-/

namespace A151472.P7597202087005749724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A302288 n + A149233 n).toNat

end

end A151472.P7597202087005749724

/-! ## A151472.P13012212247815237815

`A005206(A337526(n+1)-A337531(n+1))`
-/

namespace A151472.P13012212247815237815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A337526 (n + 1) - A337531 (n + 1)).toNat

end

end A151472.P13012212247815237815

/-! ## A151472.P16056789401035542641

`A111857(A343176(n))`
-/

namespace A151472.P16056789401035542641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111857 (A343176 n).toNat

end

end A151472.P16056789401035542641

/-!
# A151473: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (0, -1), (0, 1), (1, -1), (1, 1)}.

The programs for A151473, there is no canonical definition to state claims against.
-/

/-! ## A151473.P14836120965516335397

`A023416(n)+A004525(A318577(n+1)*A375438(2*n+3))`
-/

namespace A151473.P14836120965516335397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n + A004525 (A318577 (n + 1) * A375438 (2 * n + 3)).toNat

end

end A151473.P14836120965516335397

/-! ## A151473.P18032059701176616464

`A258251(floor(sqrt(∑{digits}[n, #^#])))`
-/

namespace A151473.P18032059701176616464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258251 (Nat.sqrt ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ x).sum)

end

end A151473.P18032059701176616464

/-!
# A151474: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (0, -1), (0, 1), (1, 0), (1, 1)}.

The programs for A151474, there is no canonical definition to state claims against.
-/

/-! ## A151474.P2554595690674672361

`A004525(xor(A150916(n), A166260(n+1)))`
-/

namespace A151474.P2554595690674672361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.xor (A150916 n) (A166260 (n + 1))).toNat

end

end A151474.P2554595690674672361

/-! ## A151474.P13918898748716127631

`A050296(A150632(n))`
-/

namespace A151474.P13918898748716127631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A150632 n).toNat

end

end A151474.P13918898748716127631

/-!
# A151476: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (0, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151476, there is no canonical definition to state claims against.
-/

/-! ## A151476.P2387183169577480884

`A061375(A006139(n)+n)`
-/

namespace A151476.P2387183169577480884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (A006139 n + (n : ℤ)).toNat

end

end A151476.P2387183169577480884

/-! ## A151476.P4005496051469825752

`A061375(or(n, A006139(n)))`
-/

namespace A151476.P4005496051469825752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (Int.lor (n : ℤ) (A006139 n)).toNat

end

end A151476.P4005496051469825752

/-! ## A151476.P14585824020605813628

`A061375(xor(n, A006139(n)))`
-/

namespace A151476.P14585824020605813628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (Int.xor (n : ℤ) (A006139 n)).toNat

end

end A151476.P14585824020605813628

/-!
# A151477: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 0)}.

The programs for A151477, there is no canonical definition to state claims against.
-/

/-! ## A151477.P2796572921134746447

`A120836(a(n-1)+2^(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A151477.P2796572921134746447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A120836 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A151477.P2796572921134746447

/-! ## A151477.P4919486471444509044

`A051889(A150974(n))`
-/

namespace A151477.P4919486471444509044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A150974 n).toNat

end

end A151477.P4919486471444509044

/-!
# A151478: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 1)}.

The programs for A151478, the canonical program `A151478.P13056534414797967315` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151478 has offset 0).

The definition of A151478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151478.P13056534414797967315

`A001006(n)*C(n, floor(n/2))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A151478

/-- `A001006(n)*C(n, floor(n/2))` -/
def P13056534414797967315.Spec : Prop :=
  ∀ n, P13056534414797967315.a n = A151478 n

theorem P13056534414797967315.correct : P13056534414797967315.Spec := by
  intro n
  simp only [A151478]

end A151478

/-! ## A151478.P2379357398749515548

`A001006(n)*A001405(n)`
-/

namespace A151478.P2379357398749515548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A001405 n

end

end A151478.P2379357398749515548

namespace A151478

/-- `A001006(n)*A001405(n)` -/
def P2379357398749515548.Spec : Prop :=
  ∀ n, P2379357398749515548.a n = A151478 n

end A151478

/-! ## A151478.P1882566517172540372

`abs(A001006(n)*A126930(n))`
-/

namespace A151478.P1882566517172540372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001006 n * A126930 n|

end

end A151478.P1882566517172540372

namespace A151478

/-- `abs(A001006(n)*A126930(n))` -/
def P1882566517172540372.Spec : Prop :=
  ∀ n, P1882566517172540372.a n = A151478 n

end A151478

/-! ## A151478.P15501988016760433939

`sqrt(A018224(n))*A001006(n)`
-/

namespace A151478.P15501988016760433939
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A018224 n : ℝ) * (A001006 n : ℝ)

end

end A151478.P15501988016760433939

namespace A151478

/-- `sqrt(A018224(n))*A001006(n)` -/
def P15501988016760433939.Spec : Prop :=
  ∀ n, P15501988016760433939.a n = (A151478 n : ℝ)

end A151478

/-! ## A151478.P16625353863135602766

`A001405(n)*A064189(∑[n])`
-/

namespace A151478.P16625353863135602766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A064189 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151478.P16625353863135602766

namespace A151478

/-- `A001405(n)*A064189(∑[n])` -/
def P16625353863135602766.Spec : Prop :=
  ∀ n, P16625353863135602766.a n = A151478 n

end A151478

/-! ## A151478.P11660205876940395789

`A001405(n)*A064645(∑[n])`
-/

namespace A151478.P11660205876940395789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A064645 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A151478.P11660205876940395789

namespace A151478

/-- `A001405(n)*A064645(∑[n])` -/
def P11660205876940395789.Spec : Prop :=
  ∀ n, P11660205876940395789.a n = A151478 n

end A151478

/-! ## A151478.P12855557876106746523

`Δ[A097332(n)]*A001405(n)`
-/

namespace A151478.P12855557876106746523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001405 n

end

end A151478.P12855557876106746523

namespace A151478

/-- `Δ[A097332(n)]*A001405(n)` -/
def P12855557876106746523.Spec : Prop :=
  ∀ n, P12855557876106746523.a n = A151478 n

end A151478

/-! ## A151478.P17392460680030660227

`(A014495(n)+1)*A001006(n)`
-/

namespace A151478.P17392460680030660227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014495 n + 1) * A001006 n

end

end A151478.P17392460680030660227

namespace A151478

/-- `(A014495(n)+1)*A001006(n)` -/
def P17392460680030660227.Spec : Prop :=
  ∀ n, P17392460680030660227.a n = A151478 n

end A151478

/-! ## A151478.P4467660324810042361

`A001006(n)*A210736(n+1)`
-/

namespace A151478.P4467660324810042361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A210736 (n + 1)

end

end A151478.P4467660324810042361

namespace A151478

/-- `A001006(n)*A210736(n+1)` -/
def P4467660324810042361.Spec : Prop :=
  ∀ n, P4467660324810042361.a n = A151478 n

end A151478

/-! ## A151478.P12102814777595537283

`A001405(n)*A086246(n+2)`
-/

namespace A151478.P12102814777595537283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A086246 (n + 2)

end

end A151478.P12102814777595537283

namespace A151478

/-- `A001405(n)*A086246(n+2)` -/
def P12102814777595537283.Spec : Prop :=
  ∀ n, P12102814777595537283.a n = A151478 n

end A151478

/-! ## A151478.P13178419810235651850

`A001405(n)*A168049(n+2)`
-/

namespace A151478.P13178419810235651850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A168049 (n + 2)

end

end A151478.P13178419810235651850

namespace A151478

/-- `A001405(n)*A168049(n+2)` -/
def P13178419810235651850.Spec : Prop :=
  ∀ n, P13178419810235651850.a n = A151478 n

end A151478

/-! ## A151478.P11599994795270606534

`abs(A166587(n+1))*A001405(n)`
-/

namespace A151478.P11599994795270606534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 (n + 1)| * A001405 n

end

end A151478.P11599994795270606534

namespace A151478

/-- `abs(A166587(n+1))*A001405(n)` -/
def P11599994795270606534.Spec : Prop :=
  ∀ n, P11599994795270606534.a n = A151478 n

end A151478

/-! ## A151478.P12670333294150755993

`∑[A002026(abs(1-n))]*A001405(n)`
-/

namespace A151478.P12670333294150755993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001405 n

end

end A151478.P12670333294150755993

namespace A151478

/-- `∑[A002026(abs(1-n))]*A001405(n)` -/
def P12670333294150755993.Spec : Prop :=
  ∀ n, P12670333294150755993.a n = A151478 n

end A151478

/-! ## A151478.P4275861640396897759

`A005717(n+1)/(n+1)*A001405(n)`
-/

namespace A151478.P4275861640396897759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005717 (n + 1) : ℚ) / (n + 1 : ℚ) * (A001405 n : ℚ)

end

end A151478.P4275861640396897759

namespace A151478

/-- `A005717(n+1)/(n+1)*A001405(n)` -/
def P4275861640396897759.Spec : Prop :=
  ∀ n, P4275861640396897759.a n = (A151478 n : ℚ)

end A151478

/-! ## A151478.P13127870670899619401

`A001006(n)*A007318(A194274(n))`
-/

namespace A151478.P13127870670899619401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A007318 (A194274 n).toNat

end

end A151478.P13127870670899619401

namespace A151478

/-- `A001006(n)*A007318(A194274(n))` -/
def P13127870670899619401.Spec : Prop :=
  ∀ n, P13127870670899619401.a n = A151478 n

end A151478

/-! ## A151478.P10233962857598818853

`(A343386(n)+A107587(n))*A001405(n)`
-/

namespace A151478.P10233962857598818853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A343386 n + A107587 n) * A001405 n

end

end A151478.P10233962857598818853

namespace A151478

/-- `(A343386(n)+A107587(n))*A001405(n)` -/
def P10233962857598818853.Spec : Prop :=
  ∀ n, P10233962857598818853.a n = A151478 n

end A151478

/-! ## A151478.P13073610642556398936

`(A005043(n+1)+A005043(n))*A001405(n)`
-/

namespace A151478.P13073610642556398936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005043 (n + 1) + A005043 n) * A001405 n

end

end A151478.P13073610642556398936

namespace A151478

/-- `(A005043(n+1)+A005043(n))*A001405(n)` -/
def P13073610642556398936.Spec : Prop :=
  ∀ n, P13073610642556398936.a n = A151478 n

end A151478

/-! ## A151478.P2596522864346293767

`(A097332(n+1)-A097332(n))*A001405(n)`
-/

namespace A151478.P2596522864346293767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097332 (n + 1) - A097332 n) * A001405 n

end

end A151478.P2596522864346293767

namespace A151478

/-- `(A097332(n+1)-A097332(n))*A001405(n)` -/
def P2596522864346293767.Spec : Prop :=
  ∀ n, P2596522864346293767.a n = A151478 n

end A151478

/-! ## A151478.P4533405345433526771

`(A005043(n+1)+A005043(n))*A210736(n+1)`
-/

namespace A151478.P4533405345433526771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005043 (n + 1) + A005043 n) * A210736 (n + 1)

end

end A151478.P4533405345433526771

namespace A151478

/-- `(A005043(n+1)+A005043(n))*A210736(n+1)` -/
def P4533405345433526771.Spec : Prop :=
  ∀ n, P4533405345433526771.a n = A151478 n

end A151478

/-! ## A151478.P8756954487599812136

`(A245001(n+3)-A001405(n+1))*A001405(n)`
-/

namespace A151478.P8756954487599812136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A245001 (n + 3) - A001405 (n + 1)) * A001405 n

end

end A151478.P8756954487599812136

namespace A151478

/-- `(A245001(n+3)-A001405(n+1))*A001405(n)` -/
def P8756954487599812136.Spec : Prop :=
  ∀ n, P8756954487599812136.a n = A151478 n

end A151478

/-!
# A151479: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 1), (0, -1), (0, 1), (1, 0), (1, 1)}.

The programs for A151479, there is no canonical definition to state claims against.
-/

/-! ## A151479.P13720023581629370932

`∏{p}[A330800(n)², #]`
-/

namespace A151479.P13720023581629370932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330800 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A151479.P13720023581629370932

/-! ## A151479.P4972940463136711698

`A097538(A010552(n))`
-/

namespace A151479.P4972940463136711698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097538 (A010552 n).toNat

end

end A151479.P4972940463136711698

/-!
# A151481: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 1), (0, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151481, there is no canonical definition to state claims against.
-/

/-! ## A151481.P8866498795139099518

`A091182(A155651(n))+1`
-/

namespace A151481.P8866498795139099518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091182 (A155651 n).toNat + 1

end

end A151481.P8866498795139099518

/-! ## A151481.P15564436276967000346

`A227911(A149459(n+1))`
-/

namespace A151481.P15564436276967000346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227911 (A149459 (n + 1)).toNat

end

end A151481.P15564436276967000346

/-!
# A151482: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (0, -1), (0, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151482, there is no canonical definition to state claims against.
-/

/-! ## A151482.P11735086289401196637

`A073425(A225342(n+1))-1`
-/

namespace A151482.P11735086289401196637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073425 (A225342 (n + 1)).toNat - 1

end

end A151482.P11735086289401196637

/-! ## A151482.P3252600647346438537

`round(A185162(n+1)/A185208(n+2))`
-/

namespace A151482.P3252600647346438537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A185162 (n + 1) : ℚ) / (A185208 (n + 2) : ℚ))

end

end A151482.P3252600647346438537

/-! ## A151482.P15928199055983254472

`A048293(A128084(n)+A033321(n))`
-/

namespace A151482.P15928199055983254472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048293 (A128084 n + A033321 n).toNat

end

end A151482.P15928199055983254472

/-!
# A151483: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 0)}.

The programs for A151483, the canonical program `A151483.P13399049736923005023` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151483 has offset 0).

The definition of A151483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151483.P13399049736923005023

`2^n/(n+1)*A342912(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A151483

/-- `2^n/(n+1)*A342912(n)` -/
def P13399049736923005023.Spec : Prop :=
  ∀ n, P13399049736923005023.a n = (A151483 n : ℚ)

end A151483

/-! ## A151483.P14782701389088865994

`2^n/(n+1)*A005043(n+2)`
-/

namespace A151483.P14782701389088865994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / (n + 1 : ℚ) * (A005043 (n + 2) : ℚ)

end

end A151483.P14782701389088865994

namespace A151483

/-- `2^n/(n+1)*A005043(n+2)` -/
def P14782701389088865994.Spec : Prop :=
  ∀ n, P14782701389088865994.a n = (A151483 n : ℚ)

end A151483

/-! ## A151483.P2432642732939413200

`ceil(2^(n-1))*A331682(A316471(n+2))`
-/

namespace A151483.P2432642732939413200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A331682 (A316471 (n + 2)).toNat

end

end A151483.P2432642732939413200

namespace A151483

/-- `ceil(2^(n-1))*A331682(A316471(n+2))` -/
def P2432642732939413200.Spec : Prop :=
  ∀ n, P2432642732939413200.a n = A151483 n

end A151483

/-! ## A151483.P12711451512450484273

`A011782(n)*A332110(A090344(n))`
-/

namespace A151483.P12711451512450484273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A332110 (A090344 n).toNat

end

end A151483.P12711451512450484273

namespace A151483

/-- `A011782(n)*A332110(A090344(n))` -/
def P12711451512450484273.Spec : Prop :=
  ∀ n, P12711451512450484273.a n = A151483 n

end A151483

/-!
# A151484: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 1)}.

The programs for A151484, there is no canonical definition to state claims against.
-/

/-! ## A151484.P14499458963022691088

`A123920(∑[A179469(n)])`
-/

namespace A151484.P14499458963022691088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123920 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151484.P14499458963022691088

/-! ## A151484.P8014268325118948456

`A230980(2*(floor(6^n/9)+1))`
-/

namespace A151484.P8014268325118948456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (2 * (⌊(6 ^ n : ℚ) / 9⌋ + 1)).toNat

end

end A151484.P8014268325118948456

/-!
# A151485: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 0), (-1, 1), (0, -1), (0, 1), (1, 0), (1, 1)}.

The programs for A151485, there is no canonical definition to state claims against.
-/

/-! ## A151485.P5467628555530350434

`A214701(∑{d}[A149773(n), #])`
-/

namespace A151485.P5467628555530350434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A151485.P5467628555530350434

/-!
# A151486: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 0), (-1, 1), (0, -1), (1, -1), (1, 0), (1, 1)}.

The programs for A151486, there is no canonical definition to state claims against.
-/

/-! ## A151486.P5856138295642202656

`A351982(A083209(n+1))-1`
-/

namespace A151486.P5856138295642202656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351982 (A083209 (n + 1)).toNat - 1

end

end A151486.P5856138295642202656

/-! ## A151486.P5280115371096674261

`A318563(n+1)-A351593(11*n)`
-/

namespace A151486.P5280115371096674261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318563 (n + 1) - A351593 (11 * n)

end

end A151486.P5280115371096674261

/-!
# A151487: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 0), (-1, 1), (0, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151487, there is no canonical definition to state claims against.
-/

/-! ## A151487.P2139418498796022634

`A107821(A149720(n))`
-/

namespace A151487.P2139418498796022634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107821 (A149720 n).toNat

end

end A151487.P2139418498796022634

/-! ## A151487.P10080014986775658545

`or(1, A141204(A151469(n)))`
-/

namespace A151487.P10080014986775658545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A141204 (A151469 n).toNat)

end

end A151487.P10080014986775658545

/-!
# A151488: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 1), (0, -1), (0, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151488, there is no canonical definition to state claims against.
-/

/-! ## A151488.P18079497256097860918

`A311802(A052703(n+1))`
-/

namespace A151488.P18079497256097860918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311802 (A052703 (n + 1)).toNat

end

end A151488.P18079497256097860918

/-! ## A151488.P12779382771344672574

`A248148(ceil(A054662(n+1)/2))`
-/

namespace A151488.P12779382771344672574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248148 ⌈(A054662 (n + 1) : ℚ) / 2⌉.toNat

end

end A151488.P12779382771344672574

/-! ## A151488.P15467916778127708259

`A248148(round(A054662(n+1)/2))`
-/

namespace A151488.P15467916778127708259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248148 (SequenceMachineLib.roundAway ((A054662 (n + 1) : ℚ) / 2)).toNat

end

end A151488.P15467916778127708259

/-!
# A151489: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 0)}.

The programs for A151489, there is no canonical definition to state claims against.
-/

/-! ## A151489.P4887486106266385735

`or(a(n-1)+2, A169982(n+1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A151489.P4887486106266385735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  Int.lor (a (n - 1) + 2) (A169982 (n + 1))

end

end A151489.P4887486106266385735

/-! ## A151489.P15235374468151447744

`A178210(A307733(n))`
-/

namespace A151489.P15235374468151447744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A307733 n).toNat

end

end A151489.P15235374468151447744

/-!
# A151490: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 1)}.

The programs for A151490, there is no canonical definition to state claims against.
-/

/-! ## A151490.P4084556802290452724

`A000174(A335087(n))`
-/

namespace A151490.P4084556802290452724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 (A335087 n).toNat

end

end A151490.P4084556802290452724

/-! ## A151490.P15708808733729958008

`A138311(A091768(n)-n)`
-/

namespace A151490.P15708808733729958008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A091768 n - (n : ℤ)).toNat

end

end A151490.P15708808733729958008

/-!
# A151491: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, 0), (1, 1)}.

The programs for A151491, there is no canonical definition to state claims against.
-/

/-! ## A151491.P7317694766131988373

`A257978(A176281(n)+A011782(n))`
-/

namespace A151491.P7317694766131988373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257978 (A176281 n + A011782 n).toNat

end

end A151491.P7317694766131988373

/-! ## A151491.P7540581764561362988

`or(A052170(n), A345992(A262123(n+2)))`
-/

namespace A151491.P7540581764561362988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052170 n) (A345992 (A262123 (n + 2)).toNat)

end

end A151491.P7540581764561362988

/-!
# A151492: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, -1), (1, -1), (1, 0), (1, 1)}.

The programs for A151492, there is no canonical definition to state claims against.
-/

/-! ## A151492.P14201498548970553237

`A253146(A271863(n+1)+A192198(3*n+1))-A003984(n)`
-/

namespace A151492.P14201498548970553237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253146 (A271863 (n + 1) + A192198 (3 * n + 1)).toNat - A003984 n

end

end A151492.P14201498548970553237

/-!
# A151493: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151493, there is no canonical definition to state claims against.
-/

/-! ## A151493.P3452892693867107328

`and(A318376(A318395(n)), A318431(n))`
-/

namespace A151493.P3452892693867107328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A318376 (A318395 n).toNat) (A318431 n)

end

end A151493.P3452892693867107328

/-! ## A151493.P8447136278845498719

`A169925(n+1)+A090861(A364475(n))`
-/

namespace A151493.P8447136278845498719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169925 (n + 1) + A090861 (A364475 n).toNat

end

end A151493.P8447136278845498719

/-!
# A151494: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 0), (0, -1), (0, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151494, there is no canonical definition to state claims against.
-/

/-! ## A151494.P14570775364615020537

`A195185(A149796(n))`
-/

namespace A151494.P14570775364615020537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195185 (A149796 n).toNat

end

end A151494.P14570775364615020537

/-! ## A151494.P1088200592542660741

`A314625(A089412(n)-1)`
-/

namespace A151494.P1088200592542660741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314625 (A089412 n - 1).toNat

end

end A151494.P1088200592542660741

/-!
# A151495: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 0), (1, 1)}.

The programs for A151495, there is no canonical definition to state claims against.
-/

/-! ## A151495.P11676044671459796283

`A289498(A122370(n)+2)`
-/

namespace A151495.P11676044671459796283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289498 (A122370 n + 2).toNat

end

end A151495.P11676044671459796283

/-! ## A151495.P5915476389728683080

`A289498(xor(2, A122370(n)))`
-/

namespace A151495.P5915476389728683080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289498 (Int.xor 2 (A122370 n)).toNat

end

end A151495.P5915476389728683080

/-!
# A151496: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1,-1), (-1,0), (-1,1), (0,-1), (0,1), (1,-1), (1,0), (1,1)}.

The programs for A151496, there is no canonical definition to state claims against.
-/

/-! ## A151496.P5655108540398157730

`A260683(A339165(3*n+1)+A076227(3*n+2))`
-/

namespace A151496.P5655108540398157730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260683 (A339165 (3 * n + 1) + A076227 (3 * n + 2)).toNat

end

end A151496.P5655108540398157730

/-!
# A151497: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, 1), (0, -1), (1, 0)}.

The programs for A151497, there is no canonical definition to state claims against.
-/

/-! ## A151497.P18274797307370494838

`A113218(A274489(n+1))`
-/

namespace A151497.P18274797307370494838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113218 (A274489 (n + 1)).toNat

end

end A151497.P18274797307370494838

/-! ## A151497.P16119148300773987674

`A000196(A118658(ceil(∑[n/2])))`
-/

namespace A151497.P16119148300773987674
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A118658 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat).toNat

end

end A151497.P16119148300773987674

/-! ## A151497.P14368031680737809250

`A234016(n)+A000196(A053532(n))`
-/

namespace A151497.P14368031680737809250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234016 n + A000196 (A053532 n).toNat

end

end A151497.P14368031680737809250

/-! ## A151497.P17947458626449270835

`A340572(n)+A122312(A010355(n+1))`
-/

namespace A151497.P17947458626449270835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340572 n + A122312 (A010355 (n + 1)).toNat

end

end A151497.P17947458626449270835

/-! ## A151497.P3881163084597769459

`A304974(n)+A191607(A335019(n+1))`
-/

namespace A151497.P3881163084597769459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304974 n + A191607 (A335019 (n + 1)).toNat

end

end A151497.P3881163084597769459

/-!
# A151498: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of 2 n steps taken from {(-1, 1), (1, -1), (1, 0)}.

The programs for A151498, there is no canonical definition to state claims against.
-/

/-! ## A151498.P9825049819329472010

`ceil((2*n+1)*(3*n+1)^(n-2)*4^n/A195762(n+1))`
-/

namespace A151498.P9825049819329472010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℚ) * (3 * n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (4 ^ n : ℚ) / (A195762 (n + 1) : ℚ)⌉

end

end A151498.P9825049819329472010

/-! ## A151498.P9236968323130817768

`A248562(A248521(n!))`
-/

namespace A151498.P9236968323130817768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248562 (A248521 (Nat.factorial n)).toNat

end

end A151498.P9236968323130817768

/-!
# A151499: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0), ending on the vertical axis and consisting of n steps taken from {(-1, -1), (-1, 1), (0, -1), (1, 0)}.

The programs for A151499, there is no canonical definition to state claims against.
-/

/-! ## A151499.P6232575879296660033

`or(A002262(A074115(n)), A293942(n))`
-/

namespace A151499.P6232575879296660033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A074115 n).toNat) (A293942 n)

end

end A151499.P6232575879296660033

