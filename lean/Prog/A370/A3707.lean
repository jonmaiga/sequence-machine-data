import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

/-!
# A370700: Expansion of e.g.f. exp(-x^2)/(1-x).

The programs for A370700, the canonical program `A370700.P9135976384995045322` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370700 has offset 0).

The definition of A370700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370700.P9135976384995045322

`2*(n-1)*(n-2)*a(n-3)-2*(n-1)*a(n-2)+n*a(n-1)` with `a(0)=1, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A370700

/-- `2*(n-1)*(n-2)*a(n-3)-2*(n-1)*a(n-2)+n*a(n-1)` -/
def P9135976384995045322.Spec : Prop :=
  ∀ n, P9135976384995045322.a n = A370700 n

theorem P9135976384995045322.correct : P9135976384995045322.Spec := by
  intro n
  simp only [A370700]

end A370700

/-! ## A370700.P8435070876809998298

`n!*∑{#}[floor(n/2), (-1)^#/#!]`
-/

namespace A370700.P8435070876809998298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1).toNat, ((-1) ^ k : ℚ) / (Nat.factorial k : ℚ))

end

end A370700.P8435070876809998298

namespace A370700

/-- `n!*∑{#}[floor(n/2), (-1)^#/#!]` -/
def P8435070876809998298.Spec : Prop :=
  ∀ n, P8435070876809998298.a n = (A370700 n : ℚ)

end A370700

/-! ## A370700.P921614646404673202

`A067994(n)+a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A370700.P921614646404673202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A067994 n : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A370700.P921614646404673202

namespace A370700

/-- `A067994(n)+a(n-1)/n^(-1)` -/
def P921614646404673202.Spec : Prop :=
  ∀ n, P921614646404673202.a n = (A370700 n : ℚ)

end A370700

/-! ## A370700.P13901675454824132955

`A088336(n)-A088506(n)`
-/

namespace A370700.P13901675454824132955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088336 n - A088506 n

end

end A370700.P13901675454824132955

namespace A370700

/-- `A088336(n)-A088506(n)` -/
def P13901675454824132955.Spec : Prop :=
  ∀ n, P13901675454824132955.a n = A370700 n

end A370700

/-! ## A370700.P6110875835718067317

`∑{#}[floor(n/2), (-1)^#*n!/#!]`
-/

namespace A370700.P6110875835718067317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((-1) ^ k : ℚ) * ((Nat.factorial n : ℚ) / (Nat.factorial k : ℚ))

end

end A370700.P6110875835718067317

namespace A370700

/-- `∑{#}[floor(n/2), (-1)^#*n!/#!]` -/
def P6110875835718067317.Spec : Prop :=
  ∀ n, P6110875835718067317.a n = (A370700 n : ℚ)

end A370700

/-! ## A370700.P2913895883659143211

`2*A088336(n)-A000142(n)`
-/

namespace A370700.P2913895883659143211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088336 n - A000142 n

end

end A370700.P2913895883659143211

namespace A370700

/-- `2*A088336(n)-A000142(n)` -/
def P2913895883659143211.Spec : Prop :=
  ∀ n, P2913895883659143211.a n = A370700 n

end A370700

/-! ## A370700.P15300683129695784447

`A000142(n)-2*A088506(n)`
-/

namespace A370700.P15300683129695784447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - 2 * A088506 n

end

end A370700.P15300683129695784447

namespace A370700

/-- `A000142(n)-2*A088506(n)` -/
def P15300683129695784447.Spec : Prop :=
  ∀ n, P15300683129695784447.a n = A370700 n

end A370700

/-!
# A370701: Expansion of e.g.f. exp(-x^3)/(1-x).

The programs for A370701, the canonical program `A370701.P9412743191876333549` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370701 has offset 0).

The definition of A370701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370701.P9412743191876333549

`n!*∑{#}[floor(n/3), (-1)^#/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A370701

/-- `n!*∑{#}[floor(n/3), (-1)^#/#!]` -/
def P9412743191876333549.Spec : Prop :=
  ∀ n, P9412743191876333549.a n = (A370701 n : ℚ)

end A370701

/-! ## A370701.P10695811536674600715

`A011655(A279565(n))*A355988(n)`
-/

namespace A370701.P10695811536674600715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A279565 n).toNat * A355988 n

end

end A370701.P10695811536674600715

namespace A370701

/-- `A011655(A279565(n))*A355988(n)` -/
def P10695811536674600715.Spec : Prop :=
  ∀ n, P10695811536674600715.a n = A370701 n

end A370701

/-! ## A370701.P12430708999399987154

`A014578(A330043(n))*A330043(n)`
-/

namespace A370701.P12430708999399987154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014578 (A330043 n).toNat * A330043 n

end

end A370701.P12430708999399987154

namespace A370701

/-- `A014578(A330043(n))*A330043(n)` -/
def P12430708999399987154.Spec : Prop :=
  ∀ n, P12430708999399987154.a n = A370701 n

end A370701

/-! ## A370701.P9401835202597776878

`A336309(A154949(n))`
-/

namespace A370701.P9401835202597776878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336309 (A154949 n).toNat

end

end A370701.P9401835202597776878

namespace A370701

/-- `A336309(A154949(n))` -/
def P9401835202597776878.Spec : Prop :=
  ∀ n, P9401835202597776878.a n = A370701 n

end A370701

/-!
# A370702: a(n) = h(n + 1) - h(n) where h(n) = floor(n/sqrt(k) + 1/k) and k = 3.

The programs for A370702, there is no canonical definition to state claims against.
-/

/-! ## A370702.P16150764831033551949

`char[round(n*sqrt(3))-8]`
-/

namespace A370702.P16150764831033551949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (3 : ℝ)) - 8

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A370702.P16150764831033551949

/-! ## A370702.P17343874339921844146

`Δ[floor(A198081(n)/3)]`
-/

namespace A370702.P17343874339921844146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198081 n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370702.P17343874339921844146

/-! ## A370702.P14110120235031714596

`Δ[A186223(n+5)]-1`
-/

namespace A370702.P14110120235031714596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186223 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A370702.P14110120235031714596

/-! ## A370702.P3200021206310857478

`Δ[A002264(ceil(n*sqrt(3)))]`
-/

namespace A370702.P3200021206310857478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ⌈(n : ℝ) * Real.sqrt (3 : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370702.P3200021206310857478

/-! ## A370702.P9051902932456016281

`A001221(Δ[A186223(n+5)])`
-/

namespace A370702.P9051902932456016281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186223 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A370702.P9051902932456016281

/-! ## A370702.P2587551409271223243

`A192122(Δ[A186223(n+5)])`
-/

namespace A370702.P2587551409271223243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186223 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192122 (f1 (n + 1) - f1 n).toNat

end

end A370702.P2587551409271223243

/-! ## A370702.P7279621705436502862

`A247814(Δ[comp[A186325(n+1)]])`
-/

namespace A370702.P7279621705436502862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186325 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247814 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A370702.P7279621705436502862

/-! ## A370702.P4231827511850345293

`A280880(Δ[comp[A186325(n+1)]])`
-/

namespace A370702.P4231827511850345293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186325 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280880 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A370702.P4231827511850345293

/-!
# A370703: Triangle read by rows: T(n, k) = denominator([x^k] n! [t^n] (t/2 + sqrt(1 + (t/2)^2))^(2*x)).

The programs for A370703, there is no canonical definition to state claims against.
-/

/-! ## A370703.P3005442686606401225

`gcd(A078297(n), A395861(n))`
-/

namespace A370703.P3005442686606401225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078297 n) (A395861 n)

end

end A370703.P3005442686606401225

/-! ## A370703.P6666625980564133517

`gcd(A244134(n), A395314(n))`
-/

namespace A370703.P6666625980564133517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A244134 n) (A395314 n)

end

end A370703.P6666625980564133517

/-! ## A370703.P7151954579352730483

`gcd(A072286(n), A335948(n))`
-/

namespace A370703.P7151954579352730483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072286 n) (A335948 n)

end

end A370703.P7151954579352730483

/-! ## A370703.P9047962561932649172

`A006519(A329332(n)+A004198(n))`
-/

namespace A370703.P9047962561932649172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A329332 n + A004198 n).toNat

end

end A370703.P9047962561932649172

/-! ## A370703.P2424481552874027663

`A395861(n*A269945(A395862(n+1)))`
-/

namespace A370703.P2424481552874027663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395861 ((n : ℤ) * A269945 (A395862 (n + 1)).toNat).toNat

end

end A370703.P2424481552874027663

/-!
# A370704: a(n) = Sum_{k=0..n} k!*binomial(n, k)*Pochhammer(n, k). Row sums of A370707.

The programs for A370704, there is no canonical definition to state claims against.
-/

/-! ## A370704.P13073838614574887361

`n*A279127(n)+1`
-/

namespace A370704.P13073838614574887361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A279127 n + 1

end

end A370704.P13073838614574887361

/-!
# A370705: Triangle read by rows: T(n, k) = numerator(CF(n, k)) where CF(n, k) = n! * [x^k] [t^n] (t/2 + sqrt(1 + (t/2)^2))^(2*x).

The programs for A370705, there is no canonical definition to state claims against.
-/

/-! ## A370705.P892354606292785190

`A137286(n)%A337323(A356016(2*n+5))`
-/

namespace A370705.P892354606292785190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137286 n) (A337323 (A356016 (2 * n + 5)).toNat)

end

end A370705.P892354606292785190

/-! ## A370705.P10268696067410605710

`A011651(A123490(n))`
-/

namespace A370705.P10268696067410605710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011651 (A123490 n).toNat

end

end A370705.P10268696067410605710

/-! ## A370705.P5087568549629013120

`A016402(A173588(n))`
-/

namespace A370705.P5087568549629013120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016402 (A173588 n).toNat

end

end A370705.P5087568549629013120

/-! ## A370705.P17102983882012449851

`A238469(A117414(n))`
-/

namespace A370705.P17102983882012449851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238469 (A117414 n).toNat

end

end A370705.P17102983882012449851

/-! ## A370705.P7305342782243962781

`A126038(A256041(n))`
-/

namespace A370705.P7305342782243962781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126038 (A256041 n).toNat

end

end A370705.P7305342782243962781

/-!
# A370706: Triangle read by rows: T(n, k) = binomial(n, k) * Pochhammer(n, k).

The programs for A370706, the canonical program `A370706.P10819961141183438908` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370706 has offset 0).

The definition of A370706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370706.P12922320091091585044

`A370707(C(row(n)+1, 2)+col(n))/col(n)!`
-/

namespace A370706.P12922320091091585044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370707 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n) : ℚ)

end

end A370706.P12922320091091585044

namespace A370706

/-- `A370707(C(row(n)+1, 2)+col(n))/col(n)!` -/
def P12922320091091585044.Spec : Prop :=
  ∀ n, P12922320091091585044.a n = (A370706 n : ℚ)

end A370706

/-! ## A370706.P10819961141183438908

`A008279(n)*A059481(n)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A370706

/-- `A008279(n)*A059481(n)` -/
def P10819961141183438908.Spec : Prop :=
  ∀ n, P10819961141183438908.a n = A370706 n

theorem P10819961141183438908.correct : P10819961141183438908.Spec := by
  intro n
  simp only [A370706]

end A370706

/-! ## A370706.P18103872442574489824

`A007318(n)*A124320(n)`
-/

namespace A370706.P18103872442574489824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A124320 n

end

end A370706.P18103872442574489824

namespace A370706

/-- `A007318(n)*A124320(n)` -/
def P18103872442574489824.Spec : Prop :=
  ∀ n, P18103872442574489824.a n = A370706 n

end A370706

/-! ## A370706.P15797205765901980993

`A008279(n)*A100100(A061579(n))`
-/

namespace A370706.P15797205765901980993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A100100 (A061579 n).toNat

end

end A370706.P15797205765901980993

namespace A370706

/-- `A008279(n)*A100100(A061579(n))` -/
def P15797205765901980993.Spec : Prop :=
  ∀ n, P15797205765901980993.a n = A370706 n

end A370706

/-! ## A370706.P3197515456482347392

`A123160(n)*A233543(n)`
-/

namespace A370706.P3197515456482347392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123160 n * A233543 n

end

end A370706.P3197515456482347392

namespace A370706

/-- `A123160(n)*A233543(n)` -/
def P3197515456482347392.Spec : Prop :=
  ∀ n, P3197515456482347392.a n = A370706 n

end A370706

/-! ## A370706.P15669039922834855722

`A370707(n)/A233543(n)`
-/

namespace A370706.P15669039922834855722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370707 n : ℚ) / (A233543 n : ℚ)

end

end A370706.P15669039922834855722

namespace A370706

/-- `A370707(n)/A233543(n)` -/
def P15669039922834855722.Spec : Prop :=
  ∀ n, P15669039922834855722.a n = (A370706 n : ℚ)

end A370706

/-!
# A370707: Triangle read by rows: T(n, k) = (-1)^k*Product_{j=0..k-1} (j - n)*(j + n), for 0 <= k <= n.

The programs for A370707, the canonical program `A370707.P9731332465882975184` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370707 has offset 0).

The definition of A370707 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370706, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A370707.P9731332465882975184

`col(n)!*A370706(C(row(n)+1, 2)+col(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A370707

/-- `col(n)!*A370706(C(row(n)+1, 2)+col(n))` -/
def P9731332465882975184.Spec : Prop :=
  ∀ n, P9731332465882975184.a n = A370707 n

theorem P9731332465882975184.correct : P9731332465882975184.Spec := by
  intro n
  simp only [A370707]

end A370707

/-! ## A370707.P9214374415212279062

`A008279(n)*A124320(n)`
-/

namespace A370707.P9214374415212279062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A124320 n

end

end A370707.P9214374415212279062

namespace A370707

/-- `A008279(n)*A124320(n)` -/
def P9214374415212279062.Spec : Prop :=
  ∀ n, P9214374415212279062.a n = A370707 n

end A370707

/-! ## A370707.P7282962219346082082

`A059481(n)*A371767(n)`
-/

namespace A370707.P7282962219346082082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 n * A371767 n

end

end A370707.P7282962219346082082

namespace A370707

/-- `A059481(n)*A371767(n)` -/
def P7282962219346082082.Spec : Prop :=
  ∀ n, P7282962219346082082.a n = A370707 n

end A370707

/-! ## A370707.P8618691099902431850

`A233543(n)*A370706(n)`
-/

namespace A370707.P8618691099902431850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A370706 n

end

end A370707.P8618691099902431850

namespace A370707

/-- `A233543(n)*A370706(n)` -/
def P8618691099902431850.Spec : Prop :=
  ∀ n, P8618691099902431850.a n = A370707 n

end A370707

/-! ## A370707.P2960801933497942496

`A233543(n)²*A123160(n)`
-/

namespace A370707.P2960801933497942496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n ^ 2 * A123160 n

end

end A370707.P2960801933497942496

namespace A370707

/-- `A233543(n)²*A123160(n)` -/
def P2960801933497942496.Spec : Prop :=
  ∀ n, P2960801933497942496.a n = A370707 n

end A370707

/-! ## A370707.P5629967427870416920

`A303986(n)/A293600(n+1)*A008279(n)`
-/

namespace A370707.P5629967427870416920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303986 n : ℚ) / (A293600 (n + 1) : ℚ) * (A008279 n : ℚ)

end

end A370707.P5629967427870416920

namespace A370707

/-- `A303986(n)/A293600(n+1)*A008279(n)` -/
def P5629967427870416920.Spec : Prop :=
  ∀ n, P5629967427870416920.a n = (A370707 n : ℚ)

end A370707

/-! ## A370707.P10137501128805752409

`A059481(n)*A136494(A059268(n))*A008279(n)`
-/

namespace A370707.P10137501128805752409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 n * A136494 (A059268 n).toNat * A008279 n

end

end A370707.P10137501128805752409

namespace A370707

/-- `A059481(n)*A136494(A059268(n))*A008279(n)` -/
def P10137501128805752409.Spec : Prop :=
  ∀ n, P10137501128805752409.a n = A370707 n

end A370707

/-!
# A370708: a(1)=1; thereafter a(n) is the smallest number > a(n-1) such that no two triples of earlier terms in arithmetic progression have the same common difference.

The programs for A370708, there is no canonical definition to state claims against.
-/

/-! ## A370708.P17640299477787240902

`eq[1, A381597(n+1)]+1`
-/

namespace A370708.P17640299477787240902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381597 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A370708.P17640299477787240902

/-! ## A370708.P949648621855298486

`record[A000027(n+1)/A381597(n+1)]`
-/

namespace A370708.P949648621855298486
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A381597 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370708.P949648621855298486

/-! ## A370708.P11303032761121629587

`record[A246277(2*(n+1))/A381597(n+1)]`
-/

namespace A370708.P11303032761121629587
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246277 (2 * (n + 1)) : ℚ) / (A381597 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370708.P11303032761121629587

/-! ## A370708.P56835185301673553

`lt[A381597(n+1)-A060016(A205396(3*(n+1))), 2]+1`
-/

namespace A370708.P56835185301673553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381597 (n + 1) - A060016 (A205396 (3 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A370708.P56835185301673553

/-! ## A370708.P10409047199225874327

`lt[A381278(A005131(n+1)), A198487(3*n+1)]`
-/

namespace A370708.P10409047199225874327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381278 (A005131 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198487 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370708.P10409047199225874327

/-!
# A370709: a(n) = 2^n * [x^n] Product_{k>=1} (1 + 2*x^k)^(1/2).

The programs for A370709, there is no canonical definition to state claims against.
-/

/-! ## A370709.P12993611599607457816

`and(A000984(n), A335795(A028872(n+2)))`
-/

namespace A370709.P12993611599607457816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000984 n) (A335795 (A028872 (n + 2)).toNat)

end

end A370709.P12993611599607457816

/-! ## A370709.P13851516458984623369

`A286385(A136340(n+1))+1`
-/

namespace A370709.P13851516458984623369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (A136340 (n + 1)).toNat + 1

end

end A370709.P13851516458984623369

/-!
# A370710: a(n) = 3^n * [x^n] Product_{k>=1} 1/(1 - 3*x^k)^(1/3).

The programs for A370710, there is no canonical definition to state claims against.
-/

/-! ## A370710.P6444668299369452638

`A187181(A000244(n)*A026566(n))`
-/

namespace A370710.P6444668299369452638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187181 (A000244 n * A026566 n).toNat

end

end A370710.P6444668299369452638

/-!
# A370712: a(n) = 3^n * [x^n] Product_{k>=1} (1 + 3*x^k)^(1/3).

The programs for A370712, there is no canonical definition to state claims against.
-/

/-! ## A370712.P13594826458644369713

`A332412(A324839(3*n+4)-A285333(n))`
-/

namespace A370712.P13594826458644369713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332412 (A324839 (3 * n + 4) - A285333 n).toNat

end

end A370712.P13594826458644369713

/-!
# A370713: a(n) = 2^n * [x^n] Product_{k>=1} 1/(1 - 2*x^k)^(1/2).

The programs for A370713, there is no canonical definition to state claims against.
-/

/-! ## A370713.P9765868011215749115

`A153864(n^3)+n^3`
-/

namespace A370713.P9765868011215749115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153864 (n ^ 3) + (n ^ 3 : ℤ)

end

end A370713.P9765868011215749115

/-!
# A370718: Expansion of g.f. A(x) satisfying A(x) = exp(x*A(x) + L(x)), where L'(x) = is the least nonnegative integer series such that A(x) is an integer series with A'(0) = 1.

The programs for A370718, there is no canonical definition to state claims against.
-/

/-! ## A370718.P2364471875487692910

`A091500(n)+A048105(A371758(n))`
-/

namespace A370718.P2364471875487692910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091500 n + A048105 (A371758 n).toNat

end

end A370718.P2364471875487692910

/-! ## A370718.P4890437935125716573

`A369054(A101880(n))+A349014(n)`
-/

namespace A370718.P4890437935125716573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A101880 n).toNat + A349014 n

end

end A370718.P4890437935125716573

/-! ## A370718.P10611457340350074455

`A052329(n+1)-A000120(A159712(n))`
-/

namespace A370718.P10611457340350074455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052329 (n + 1) - A000120 (A159712 n).toNat

end

end A370718.P10611457340350074455

/-! ## A370718.P7187903363454369730

`A178798(A082743(n+2))+A089405(n)`
-/

namespace A370718.P7187903363454369730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A082743 (n + 2)).toNat + A089405 n

end

end A370718.P7187903363454369730

/-! ## A370718.P7015964089394265573

`A003019(n+1)-A076142(A347590(n))`
-/

namespace A370718.P7015964089394265573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003019 (n + 1) - A076142 (A347590 n).toNat

end

end A370718.P7015964089394265573

/-!
# A370719: Expansion of l.g.f. L(x) = log(G(x)) - x*G(x) where G(x) is the o.g.f. of A370718.

The programs for A370719, there is no canonical definition to state claims against.
-/

/-! ## A370719.P9301428606542666413

`A203321(n+1)%A002326(A000225(n))`
-/

namespace A370719.P9301428606542666413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203321 (n + 1)) (A002326 (A000225 n).toNat)

end

end A370719.P9301428606542666413

/-!
# A370720: G.f. A(x) satisfies A(x) = (1 + x*A(x)^(3/4) / (1+x))^4.

The programs for A370720, there is no canonical definition to state claims against.
-/

/-! ## A370720.P13816894077799726829

`∑{#}[n, A371494(#)*A371494(n-#)]`
-/

namespace A370720.P13816894077799726829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A371494 k * A371494 (n - k)

end

end A370720.P13816894077799726829

/-! ## A370720.P12918812339496129612

`A248180(A150586(n+1))`
-/

namespace A370720.P12918812339496129612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (A150586 (n + 1)).toNat

end

end A370720.P12918812339496129612

/-!
# A370722: a(n) = Sum_{k=0..floor(n/7)} binomial(n-4*k,3*k).

The programs for A370722, the canonical program `A370722.P12158226723633944557` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370722 has offset 0).

The definition of A370722 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/7), C(n-4*#, 3*#)]` (program `A370722.P12158226723633944557`, by `A370722.P12158226723633944557.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A370722.P306968938429704645

`ogf((1-2x+x^2)/(1-3x+3x^2-x^3-x^7))`
-/

namespace A370722.P306968938429704645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -3, 3, -1, 0, 0, 0, -1] n

end

end A370722.P306968938429704645

namespace A370722

/-- `ogf((1-2x+x^2)/(1-3x+3x^2-x^3-x^7))` -/
def P306968938429704645.Spec : Prop :=
  ∀ n, P306968938429704645.a n = A370722 n

end A370722

/-! ## A370722.P6605018088182093206

`3*a(n-1)-3*a(n-2)+a(n-3)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1`
-/

namespace A370722.P6605018088182093206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 1] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3) + a (n - 7)

end

end A370722.P6605018088182093206

namespace A370722

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+a(n-7)` -/
def P6605018088182093206.Spec : Prop :=
  ∀ n, P6605018088182093206.a n = A370722 n

end A370722

/-! ## A370722.P12158226723633944557

`∑{#}[floor(n/7), C(n-4*#, 3*#)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A370722

/-- `∑{#}[floor(n/7), C(n-4*#, 3*#)]` -/
def P12158226723633944557.Spec : Prop :=
  ∀ n, (P12158226723633944557.a n : ℤ) = A370722 n

theorem P12158226723633944557.correct : P12158226723633944557.Spec := by
  intro n
  simp only [A370722]

end A370722

/-! ## A370722.P4326486363532998590

`A369814(3*n)`
-/

namespace A370722.P4326486363532998590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369814 (3 * n)

end

end A370722.P4326486363532998590

namespace A370722

/-- `A369814(3*n)` -/
def P4326486363532998590.Spec : Prop :=
  ∀ n, P4326486363532998590.a n = A370722 n

end A370722

/-! ## A370722.P13502632281774827814

`A369814(A008585(n))+C(n+3, A001126(n+1))`
-/

namespace A370722.P13502632281774827814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369814 (A008585 n).toNat + (Nat.choose (n + 3) (A001126 (n + 1)).toNat : ℤ)

end

end A370722.P13502632281774827814

namespace A370722

/-- `A369814(A008585(n))+C(n+3, A001126(n+1))` -/
def P13502632281774827814.Spec : Prop :=
  ∀ n, P13502632281774827814.a n = A370722 n

end A370722

/-! ## A370722.P4970977628693122683

`A369814(A008585(n))+C(n+3, A003273(n+1))`
-/

namespace A370722.P4970977628693122683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369814 (A008585 n).toNat + (Nat.choose (n + 3) (A003273 (n + 1)).toNat : ℤ)

end

end A370722.P4970977628693122683

namespace A370722

/-- `A369814(A008585(n))+C(n+3, A003273(n+1))` -/
def P4970977628693122683.Spec : Prop :=
  ∀ n, P4970977628693122683.a n = A370722 n

end A370722

/-! ## A370722.P6225805084835935351

`A369814(A008585(n))+C(n+3, A214423(n+1))`
-/

namespace A370722.P6225805084835935351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369814 (A008585 n).toNat + (Nat.choose (n + 3) (A214423 (n + 1)).toNat : ℤ)

end

end A370722.P6225805084835935351

namespace A370722

/-- `A369814(A008585(n))+C(n+3, A214423(n+1))` -/
def P6225805084835935351.Spec : Prop :=
  ∀ n, P6225805084835935351.a n = A370722 n

end A370722

/-! ## A370722.P12287229894258713083

`A369814(A008585(n))+C(n+3, A175463(n+3))`
-/

namespace A370722.P12287229894258713083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369814 (A008585 n).toNat + (Nat.choose (n + 3) (A175463 (n + 3)).toNat : ℤ)

end

end A370722.P12287229894258713083

namespace A370722

/-- `A369814(A008585(n))+C(n+3, A175463(n+3))` -/
def P12287229894258713083.Spec : Prop :=
  ∀ n, P12287229894258713083.a n = A370722 n

end A370722

/-! ## A370722.P17734399806070807466

`A369814(A008585(n))+C(n+3, A005449(n+4))`
-/

namespace A370722.P17734399806070807466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369814 (A008585 n).toNat + (Nat.choose (n + 3) (A005449 (n + 4)).toNat : ℤ)

end

end A370722.P17734399806070807466

namespace A370722

/-- `A369814(A008585(n))+C(n+3, A005449(n+4))` -/
def P17734399806070807466.Spec : Prop :=
  ∀ n, P17734399806070807466.a n = A370722 n

end A370722

/-! ## A370722.P17739284780822116696

`A369814(A008585(n))+A259195(A005812(n))`
-/

namespace A370722.P17739284780822116696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369814 (A008585 n).toNat + A259195 (A005812 n).toNat

end

end A370722.P17739284780822116696

namespace A370722

/-- `A369814(A008585(n))+A259195(A005812(n))` -/
def P17739284780822116696.Spec : Prop :=
  ∀ n, P17739284780822116696.a n = A370722 n

end A370722

/-! ## A370722.P3179212066668529961

`A369814(A008585(n))/A091050(A056206(n))`
-/

namespace A370722.P3179212066668529961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369814 (A008585 n).toNat : ℚ) / (A091050 (A056206 n).toNat : ℚ)

end

end A370722.P3179212066668529961

namespace A370722

/-- `A369814(A008585(n))/A091050(A056206(n))` -/
def P3179212066668529961.Spec : Prop :=
  ∀ n, P3179212066668529961.a n = (A370722 n : ℚ)

end A370722

/-! ## A370722.P6205210735179532539

`A369814(A008585(n))%A215108(n+3)`
-/

namespace A370722.P6205210735179532539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369814 (A008585 n).toNat) (A215108 (n + 3))

end

end A370722.P6205210735179532539

namespace A370722

/-- `A369814(A008585(n))%A215108(n+3)` -/
def P6205210735179532539.Spec : Prop :=
  ∀ n, P6205210735179532539.a n = A370722 n

end A370722

/-! ## A370722.P7611081911211158866

`A369814(A008585(n))%A034491(n)`
-/

namespace A370722.P7611081911211158866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369814 (A008585 n).toNat) (A034491 n)

end

end A370722.P7611081911211158866

namespace A370722

/-- `A369814(A008585(n))%A034491(n)` -/
def P7611081911211158866.Spec : Prop :=
  ∀ n, P7611081911211158866.a n = A370722 n

end A370722

/-!
# A370723: Number of symmetric (0,1)-matrices with sum of entries equal to n and no zero rows or columns, with weakly decreasing row sums and column sums.

The programs for A370723, there is no canonical definition to state claims against.
-/

/-! ## A370723.P6363889339063408985

`A101041(A150004(n))`
-/

namespace A370723.P6363889339063408985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101041 (A150004 n).toNat

end

end A370723.P6363889339063408985

/-! ## A370723.P9680864369656021648

`A141204(A148153(n+1))`
-/

namespace A370723.P9680864369656021648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141204 (A148153 (n + 1)).toNat

end

end A370723.P9680864369656021648

/-! ## A370723.P1591018774189438352

`A108954(A197158(n+1)+A126646(n))`
-/

namespace A370723.P1591018774189438352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A197158 (n + 1) + A126646 n).toNat

end

end A370723.P1591018774189438352

/-!
# A370725: Numbers k such that the k X k Fibonacci word matrix has determinant 0.

The programs for A370725, there is no canonical definition to state claims against.
-/

/-! ## A370725.P13846680214808092431

`eq[0, A370724(n)]`
-/

namespace A370725.P13846680214808092431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370724 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A370725.P13846680214808092431

/-! ## A370725.P7295753695959274713

`lt[A370724(n)², A029234(n+1)]`
-/

namespace A370725.P7295753695959274713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370724 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029234 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370725.P7295753695959274713

/-! ## A370725.P9262317782630641064

`lt[A370724(n)², A088842(n+1)]`
-/

namespace A370725.P9262317782630641064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370724 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088842 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370725.P9262317782630641064

/-! ## A370725.P3858258128426567204

`lt[A370724(n)², A029396(n+4)]`
-/

namespace A370725.P3858258128426567204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370724 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029396 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370725.P3858258128426567204

/-! ## A370725.P3608797842503095327

`lt[A370724(n)², A029367(2*(n+1))]`
-/

namespace A370725.P3608797842503095327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370724 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029367 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370725.P3608797842503095327

/-!
# A370726: Denominator of the continued fraction 1/(2-3/(3-4/(4-5/(...(n-1)-n/(n+3))))).

The programs for A370726, there is no canonical definition to state claims against.
-/

/-! ## A370726.P3220989667496589224

`A318956(A051541(n+2))`
-/

namespace A370726.P3220989667496589224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318956 (A051541 (n + 2)).toNat

end

end A370726.P3220989667496589224

/-! ## A370726.P9181005855737195488

`A294887(A284421(n))+A286517(2*n+4)`
-/

namespace A370726.P9181005855737195488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294887 (A284421 n).toNat + A286517 (2 * n + 4)

end

end A370726.P9181005855737195488

/-! ## A370726.P7403037288802906240

`A286517(2*(n+2))%A328064(A240741(n))`
-/

namespace A370726.P7403037288802906240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286517 (2 * (n + 2))) (A328064 (A240741 (n + 21)).toNat)

end

end A370726.P7403037288802906240

/-! ## A370726.P15869629436448966368

`A154402(A052028(n+1))*A286517(2*n+4)`
-/

namespace A370726.P15869629436448966368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (A052028 (n + 1)).toNat * A286517 (2 * n + 4)

end

end A370726.P15869629436448966368

/-!
# A370728: Inverse permutation of A370727.

The programs for A370728, there is no canonical definition to state claims against.
-/

/-! ## A370728.P17374207770397060095

`A000720(A295642(n+1))`
-/

namespace A370728.P17374207770397060095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A295642 (n + 1)).toNat

end

end A370728.P17374207770397060095

/-! ## A370728.P2767175354170579802

`∑{d}[A295642(n+1), A056239(#)]`
-/

namespace A370728.P2767175354170579802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A370728.P2767175354170579802

/-! ## A370728.P17600955321673823233

`∑{d}[A295642(n+1), A252464(#)]`
-/

namespace A370728.P17600955321673823233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A252464 d

end

end A370728.P17600955321673823233

/-! ## A370728.P4695794355347217003

`A252464(A295642(n+1)%A124942(n+1))`
-/

namespace A370728.P4695794355347217003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (Int.tmod (A295642 (n + 1)) (A124942 (n + 1))).toNat

end

end A370728.P4695794355347217003

/-! ## A370728.P13727918899091431560

`A252464(A295642(n+1))%A136072(n+1)`
-/

namespace A370728.P13727918899091431560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252464 (A295642 (n + 1)).toNat) (A136072 (n + 1))

end

end A370728.P13727918899091431560

/-!
# A370729: a(n) is the number of distinct length-n blocks occurring in the characteristic sequence of A228082.

The programs for A370729, there is no canonical definition to state claims against.
-/

/-! ## A370729.P2644653057130113320

`A153088(A061481(n+1))`
-/

namespace A370729.P2644653057130113320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153088 (A061481 (n + 1)).toNat

end

end A370729.P2644653057130113320

/-! ## A370729.P13460844479526189520

`A342678(A100684(n+1))`
-/

namespace A370729.P13460844479526189520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342678 (A100684 (n + 1)).toNat

end

end A370729.P13460844479526189520

/-! ## A370729.P2470172928788283385

`A342678(A103258(n+1))`
-/

namespace A370729.P2470172928788283385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342678 (A103258 (n + 1)).toNat

end

end A370729.P2470172928788283385

/-! ## A370729.P14028428977171218021

`A143184(n)+A072491(n)`
-/

namespace A370729.P14028428977171218021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143184 n + A072491 n

end

end A370729.P14028428977171218021

/-! ## A370729.P15580109122868638953

`A362716(n)+A143184(n)`
-/

namespace A370729.P15580109122868638953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362716 n + A143184 n

end

end A370729.P15580109122868638953

/-!
# A370730: a(n) is the least Fibonacci number f such that f AND n = n (where AND denotes the bitwise AND operator).

The programs for A370730, there is no canonical definition to state claims against.
-/

/-! ## A370730.P322396682510443623

`A000045(A370731(n))`
-/

namespace A370730.P322396682510443623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A370731 n).toNat

end

end A370730.P322396682510443623

/-! ## A370730.P3792636544069163301

`A212804(A370731(n)+1)`
-/

namespace A370730.P3792636544069163301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A370731 n + 1).toNat

end

end A370730.P3792636544069163301

/-! ## A370730.P16389345244543701795

`A103609(2*A370731(n))`
-/

namespace A370730.P16389345244543701795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A370731 n).toNat

end

end A370730.P16389345244543701795

/-!
# A370731: a(n) is the least k >= 0 such that F(k) AND n = n (where F(k) denotes A000045(k), the k-th Fibonacci number and AND denotes the bitwise AND operator).

The programs for A370731, there is no canonical definition to state claims against.
-/

/-! ## A370731.P3728840127629315513

`A020344(A370730(n))`
-/

namespace A370731.P3728840127629315513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020344 (A370730 n).toNat

end

end A370731.P3728840127629315513

/-!
# A370732: a(n) = 4^n * [x^n] Product_{k>=1} 1/(1 - 2*x^k)^(1/4).

The programs for A370732, there is no canonical definition to state claims against.
-/

/-! ## A370732.P2264264819294333756

`A087910(A000142(n)*A295862(n))`
-/

namespace A370732.P2264264819294333756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087910 (A000142 n * A295862 n).toNat

end

end A370732.P2264264819294333756

/-!
# A370736: a(n) = 4^n * [x^n] Product_{k>=1} (1 + 2*x^k)^(1/4).

The programs for A370736, there is no canonical definition to state claims against.
-/

/-! ## A370736.P12036184605981088178

`A323910(A364983(n))+A053644(n)`
-/

namespace A370736.P12036184605981088178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (A364983 n).toNat + A053644 n

end

end A370736.P12036184605981088178

/-!
# A370741: Number of 3-edge-colorings of the complete graph on n labeled vertices without rainbow colored triangles.

The programs for A370741, there is no canonical definition to state claims against.
-/

/-! ## A370741.P1994910712340144811

`A144621(n)%A000404(A018239(n+1))`
-/

namespace A370741.P1994910712340144811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144621 n) (A000404 (A018239 (n + 1)).toNat)

end

end A370741.P1994910712340144811

/-!
# A370745: Numbers k that have at least one divisor d such that p = k/d-1 is prime and (2*d)|(p-1).

The programs for A370745, there is no canonical definition to state claims against.
-/

/-! ## A370745.P4074805624965886958

`lt[A137760(A341947(n+4)), A258913(n+1)]+1`
-/

namespace A370745.P4074805624965886958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137760 (A341947 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A370745.P4074805624965886958

/-! ## A370745.P16089092349230951433

`eq[4, A010121(A113050(n+1))]`
-/

namespace A370745.P16089092349230951433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 (A113050 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A370745.P16089092349230951433

/-! ## A370745.P1476128965176700119

`∑[3+A209661(A235186(n+1))]`
-/

namespace A370745.P1476128965176700119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + A209661 (A235186 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370745.P1476128965176700119

/-! ## A370745.P5061220830279478686

`A332075(n+1)+A132199(A230809(2*n+5))`
-/

namespace A370745.P5061220830279478686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332075 (n + 1) + A132199 (A230809 (2 * n + 5)).toNat

end

end A370745.P5061220830279478686

/-! ## A370745.P14769384291480499047

`A010063(A077168(n)+1)`
-/

namespace A370745.P14769384291480499047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010063 (A077168 n + 1).toNat

end

end A370745.P14769384291480499047

/-!
# A370747: Number of partitions of n into distinct parts such that number of parts is a multiples of 3.

The programs for A370747, there is no canonical definition to state claims against.
-/

/-! ## A370747.P1873110199103607855

`(A001399(n)-n)%A048981(n+1)`
-/

namespace A370747.P1873110199103607855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001399 n - (n : ℤ)) (A048981 (n + 1))

end

end A370747.P1873110199103607855

/-! ## A370747.P15403391137763195756

`A001399(n)%A169791(n+1)-n`
-/

namespace A370747.P15403391137763195756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001399 n) (A169791 (n + 1)) - (n : ℤ)

end

end A370747.P15403391137763195756

/-! ## A370747.P8592222934781995300

`A001399(n)-n%A324260(n+3)`
-/

namespace A370747.P8592222934781995300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - Int.tmod (n : ℤ) (A324260 (n + 3))

end

end A370747.P8592222934781995300

/-! ## A370747.P15562558810880087767

`round((3*A062157(A354789(n))-n)²/12)`
-/

namespace A370747.P15562558810880087767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 * A062157 (A354789 n).toNat - (n : ℤ)) ^ 2 : ℚ) / 12)

end

end A370747.P15562558810880087767

/-! ## A370747.P5369275765820399672

`round((A000005(A001248(3*(n+1)))-n)²/12)`
-/

namespace A370747.P5369275765820399672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A000005 (A001248 (3 * (n + 1))).toNat - (n : ℤ)) ^ 2 : ℚ) / 12)

end

end A370747.P5369275765820399672

/-!
# A370749: a(n) = 2^n * [x^n] Product_{k>=1} ((1 + 2*x^k)/(1 - 2*x^k))^(1/4).

The programs for A370749, there is no canonical definition to state claims against.
-/

/-! ## A370749.P11256758873634475157

`lcm(n+1, A076752(A226965(n+1)))`
-/

namespace A370749.P11256758873634475157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A076752 (A226965 (n + 1)).toNat)

end

end A370749.P11256758873634475157

/-! ## A370749.P6393450631130109025

`A003963(A081093(n+1)-(∑{d}[n+1, #]+1))`
-/

namespace A370749.P6393450631130109025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A081093 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d + 1 : ℕ) : ℤ)).toNat

end

end A370749.P6393450631130109025

/-!
# A370751: a(n) = 2^n * [x^n] Product_{k>=1} ((1 + 3*x^k)/(1 - 3*x^k))^(1/2).

The programs for A370751, there is no canonical definition to state claims against.
-/

/-! ## A370751.P13125931176936545410

`A045778(A011557(n))*A087503(n)`
-/

namespace A370751.P13125931176936545410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A011557 n).toNat * A087503 n

end

end A370751.P13125931176936545410

/-!
# A370752: a(n) = 3^n * [x^n] Product_{k>=1} ((1 + 3*x^k)/(1 - 3*x^k))^(1/3).

The programs for A370752, there is no canonical definition to state claims against.
-/

/-! ## A370752.P3125257720320577679

`A316313(n+2)*A316313(A298877(n))`
-/

namespace A370752.P3125257720320577679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316313 (n + 2) * A316313 (A298877 n).toNat

end

end A370752.P3125257720320577679

/-!
# A370753: Antidiagonal products of A319840.

The programs for A370753, there is no canonical definition to state claims against.
-/

/-! ## A370753.P3046004617689088961

`n²*A200322(a(n-1))` with `a(0)=1`
-/

namespace A370753.P3046004617689088961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ 2 : ℤ) * A200322 (a (n - 1)).toNat

end

end A370753.P3046004617689088961

/-! ## A370753.P12396006287044747893

`A029935(∏[A000124(n)])/(n+1)`
-/

namespace A370753.P12396006287044747893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029935 (∏ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (n + 1 : ℚ)

end

end A370753.P12396006287044747893

/-!
# A370754: a(n) = 2 + n^2*floor((n+3)/2) + floor(3*n/2).

The programs for A370754, the canonical program `A370754.P13612265772980041886` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370754 has offset 1).

The definition of A370754 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2+(n+1)²*floor((n+4)/2)+floor(3*(n+1)/2)` (program `A370754.P13612265772980041886`, by `A370754.P13612265772980041886.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A370754.P16220222601505558422

`ogf((5+8x+5x^2-x^3+8x^4+x^5-2x^6)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`
-/

namespace A370754.P16220222601505558422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 8, 5, -1, 8, 1, -2] [1, -1, -3, 3, 3, -3, -1, 1] n

end

end A370754.P16220222601505558422

namespace A370754

/-- `ogf((5+8x+5x^2-x^3+8x^4+x^5-2x^6)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P16220222601505558422.Spec : Prop :=
  ∀ n, P16220222601505558422.a n = A370754 (n + 1)

end A370754

/-! ## A370754.P13612265772980041886

`2+(n+1)²*floor((n+4)/2)+floor(3*(n+1)/2)`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A370754

/-- `2+(n+1)²*floor((n+4)/2)+floor(3*(n+1)/2)` -/
def P13612265772980041886.Spec : Prop :=
  ∀ n, P13612265772980041886.a n = A370754 (n + 1)

theorem P13612265772980041886.correct : P13612265772980041886.Spec := by
  intro n
  simp only [A370754, Nat.add_sub_cancel]

end A370754

/-! ## A370754.P5357330091176952924

`A020725(A369817(n+1))`
-/

namespace A370754.P5357330091176952924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A369817 (n + 1)).toNat

end

end A370754.P5357330091176952924

namespace A370754

/-- `A020725(A369817(n+1))` -/
def P5357330091176952924.Spec : Prop :=
  ∀ n, P5357330091176952924.a n = A370754 (n + 1)

end A370754

/-!
# A370756: a(n) is the van der Waerden number W_t(2,n) of the Thue-Morse word (A010060).

The programs for A370756, there is no canonical definition to state claims against.
-/

/-! ## A370756.P8924180159836950406

`A350235(n+1)+1`
-/

namespace A370756.P8924180159836950406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350235 (n + 1) + 1

end

end A370756.P8924180159836950406

/-! ## A370756.P1444184975606591180

`n*A134332(A058008(n+1))+1`
-/

namespace A370756.P1444184975606591180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A134332 (A058008 (n + 1)).toNat + 1

end

end A370756.P1444184975606591180

/-!
# A370757: a(n) is the least k > 0 such that 1/n and 1/k have equivalent repeating decimal digits.

The programs for A370757, there is no canonical definition to state claims against.
-/

/-! ## A370757.P1066240558543648130

`gcd((n+1)/5^val(n+1, 5), record[A291452(n)])`
-/

namespace A370757.P1066240558543648130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291452 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (5 ^ SequenceMachineLib.valuation (n + 1) 5 : ℚ))) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A370757.P1066240558543648130

/-! ## A370757.P1362109075363109757

`A132740(n+1)*A333254(A303547(2*n+5))`
-/

namespace A370757.P1362109075363109757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (n + 1) * A333254 (A303547 (2 * n + 5)).toNat

end

end A370757.P1362109075363109757

/-! ## A370757.P706808950243998652

`A050361(A293346(n))*A132740(n+1)`
-/

namespace A370757.P706808950243998652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A293346 n).toNat * A132740 (n + 1)

end

end A370757.P706808950243998652

/-! ## A370757.P15539706855666301042

`gcd(n+1, A050278(A283877(n)))`
-/

namespace A370757.P15539706855666301042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A050278 (A283877 n).toNat)

end

end A370757.P15539706855666301042

/-! ## A370757.P7049355732958529717

`gcd((n+1)/4^val(n+1, 4), A027193(A060524(3*n)))`
-/

namespace A370757.P7049355732958529717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))) (A027193 (A060524 (3 * n)).toNat)

end

end A370757.P7049355732958529717

/-!
# A370758: Number of ramified partitions (I,J) of size n, where J is balanced with respect to up brackets and down brackets.

The programs for A370758, there is no canonical definition to state claims against.
-/

/-! ## A370758.P6749380551389573908

`A097992(A355426(n))`
-/

namespace A370758.P6749380551389573908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A355426 n).toNat

end

end A370758.P6749380551389573908

/-!
# A370759: Numbers expressible in the form k*m + 2*(k+m) - 1, for positive k and m.

The programs for A370759, there is no canonical definition to state claims against.
-/

/-! ## A370759.P18094943661949541189

`A254671(n+1)-4`
-/

namespace A370759.P18094943661949541189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254671 (n + 1) - 4

end

end A370759.P18094943661949541189

/-! ## A370759.P2007092297868464833

`A009188(n+1)-5`
-/

namespace A370759.P2007092297868464833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1) - 5

end

end A370759.P2007092297868464833

/-! ## A370759.P4864775371788972419

`A264828(n+3)-5`
-/

namespace A370759.P4864775371788972419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264828 (n + 3) - 5

end

end A370759.P4864775371788972419

/-! ## A370759.P13269094092957305721

`lt[0, A259124(n+4)]`
-/

namespace A370759.P13269094092957305721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259124 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A370759.P13269094092957305721

/-! ## A370759.P11281200213829704882

`lt[0, A255361(n)]-4`
-/

namespace A370759.P11281200213829704882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 4

end

end A370759.P11281200213829704882

/-! ## A370759.P5387637536484614885

`lt[1, A318440(n+5)]`
-/

namespace A370759.P5387637536484614885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318440 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A370759.P5387637536484614885

/-! ## A370759.P8942396632106183741

`lt[2, A033676(n+5)]`
-/

namespace A370759.P8942396632106183741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A370759.P8942396632106183741

/-! ## A370759.P6263290545945561810

`lt[6, A305891(n+5)]`
-/

namespace A370759.P6263290545945561810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305891 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A370759.P6263290545945561810

/-! ## A370759.P17288464896626058321

`A023447(A009188(n+1))`
-/

namespace A370759.P17288464896626058321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023447 (A009188 (n + 1)).toNat

end

end A370759.P17288464896626058321

/-! ## A370759.P806287559636146867

`A023446(A254671(n+1))`
-/

namespace A370759.P806287559636146867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A254671 (n + 1)).toNat

end

end A370759.P806287559636146867

/-!
# A370760: Table read by rows: row n is the unique primitive Pythagorean triple (a,b,c) such that a = prime(n).

The programs for A370760, there is no canonical definition to state claims against.
-/

/-! ## A370760.P53968398363319225

`A026741(A140392(n+1))`
-/

namespace A370760.P53968398363319225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A140392 (n + 1)).toNat

end

end A370760.P53968398363319225

/-! ## A370760.P13322435438637815757

`A140392(n+1)/A131534(n)`
-/

namespace A370760.P13322435438637815757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140392 (n + 1) : ℚ) / (A131534 n : ℚ)

end

end A370760.P13322435438637815757

/-! ## A370760.P3298070263906596894

`A060789(3*A140392(n+1))`
-/

namespace A370760.P3298070263906596894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (3 * A140392 (n + 1)).toNat

end

end A370760.P3298070263906596894

/-!
# A370761: Expansion of Product_{k>=1} (1 + 2^(k+1)*x^k) * (1 + 2^(k-1)*x^k).

The programs for A370761, there is no canonical definition to state claims against.
-/

/-! ## A370761.P2520946213386265488

`A018756(A250120(n)-n)`
-/

namespace A370761.P2520946213386265488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018756 (A250120 n - (n : ℤ)).toNat

end

end A370761.P2520946213386265488

/-!
# A370762: Triangle read by rows: T(n,k) = 2 * (k mod 2 + 1) * T(n-1,floor(k/2)) + 1 with T(0,0) = 1 for 0 <= k <= 2^n-1.

The programs for A370762, the canonical program `A370762.P7978249327831845572` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370762 has offset 0).

The definition of A370762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370762.P7978249327831845572

`2*(gcd(2, n)*a(floor((n+1)/2)-1)+1)-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A370762

/-- `2*(gcd(2, n)*a(floor((n+1)/2)-1)+1)-1` -/
def P7978249327831845572.Spec : Prop :=
  ∀ n, P7978249327831845572.a n = A370762 n

theorem P7978249327831845572.correct : P7978249327831845572.Spec := by
  intro n
  simp only [A370762]

end A370762

/-! ## A370762.P5878028855689314739

`A247648(A232560(n+1))`
-/

namespace A370762.P5878028855689314739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247648 (A232560 (n + 1)).toNat

end

end A370762.P5878028855689314739

namespace A370762

/-- `A247648(A232560(n+1))` -/
def P5878028855689314739.Spec : Prop :=
  ∀ n, P5878028855689314739.a n = A370762 n

end A370762

/-! ## A370762.P16323803812283759281

`A006257(A196168(n+1))`
-/

namespace A370762.P16323803812283759281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A196168 (n + 1)).toNat

end

end A370762.P16323803812283759281

namespace A370762

/-- `A006257(A196168(n+1))` -/
def P16323803812283759281.Spec : Prop :=
  ∀ n, P16323803812283759281.a n = A370762 n

end A370762

/-! ## A370762.P18274943616196363610

`A048678(2*(n+1))-A006257(A048678(2*(n+1)))`
-/

namespace A370762.P18274943616196363610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (2 * (n + 1)) - A006257 (A048678 (2 * (n + 1))).toNat

end

end A370762.P18274943616196363610

namespace A370762

/-- `A048678(2*(n+1))-A006257(A048678(2*(n+1)))` -/
def P18274943616196363610.Spec : Prop :=
  ∀ n, P18274943616196363610.a n = A370762 n

end A370762

/-! ## A370762.P2517906639812360383

`A261693(A048678(n+1))`
-/

namespace A370762.P2517906639812360383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261693 (A048678 (n + 1)).toNat

end

end A370762.P2517906639812360383

namespace A370762

/-- `A261693(A048678(n+1))` -/
def P2517906639812360383.Spec : Prop :=
  ∀ n, P2517906639812360383.a n = A370762 n

end A370762

/-! ## A370762.P10431394263409710320

`A059893(A054429(A048678(A059893(n+1))))`
-/

namespace A370762.P10431394263409710320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A054429 (A048678 (A059893 (n + 1)).toNat).toNat).toNat

end

end A370762.P10431394263409710320

namespace A370762

/-- `A059893(A054429(A048678(A059893(n+1))))` -/
def P10431394263409710320.Spec : Prop :=
  ∀ n, P10431394263409710320.a n = A370762 n

end A370762

/-! ## A370762.P11374036720397140312

`A035327(A124108(n+1))`
-/

namespace A370762.P11374036720397140312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A124108 (n + 1)).toNat

end

end A370762.P11374036720397140312

namespace A370762

/-- `A035327(A124108(n+1))` -/
def P11374036720397140312.Spec : Prop :=
  ∀ n, P11374036720397140312.a n = A370762 n

end A370762

/-! ## A370762.P17487862673710065432

`A035327(2*A048678(n+1))`
-/

namespace A370762.P17487862673710065432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (2 * A048678 (n + 1)).toNat

end

end A370762.P17487862673710065432

namespace A370762

/-- `A035327(2*A048678(n+1))` -/
def P17487862673710065432.Spec : Prop :=
  ∀ n, P17487862673710065432.a n = A370762 n

end A370762

/-!
# A370766: Number of signed permutations of length n with adjacent elements differing by more than 1.

The programs for A370766, there is no canonical definition to state claims against.
-/

/-! ## A370766.P14847265895625135317

`2*A370767(n)-A283184(n)`
-/

namespace A370766.P14847265895625135317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A370767 n - A283184 n

end

end A370766.P14847265895625135317

/-! ## A370766.P5597065493988379785

`A084592(A325977(n+1)+A000108(n))`
-/

namespace A370766.P5597065493988379785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084592 (A325977 (n + 1) + A000108 n).toNat

end

end A370766.P5597065493988379785

/-!
# A370767: Number of signed permutations of length n+1 with adjacent elements differing by more than 1 and whose first element is 1.

The programs for A370767, there is no canonical definition to state claims against.
-/

/-! ## A370767.P5185198131132113176

`∑[A283184(n)]`
-/

namespace A370767.P5185198131132113176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370767.P5185198131132113176

/-! ## A370767.P7177361517241026198

`A370766(n)-a(n-1)` with `a(0)=1`
-/

namespace A370767.P7177361517241026198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A370766 n - a (n - 1)

end

end A370767.P7177361517241026198

/-! ## A370767.P3155183437596816071

`A302042(A370766(n)+A283184(n))`
-/

namespace A370767.P3155183437596816071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A370766 n + A283184 n).toNat

end

end A370767.P3155183437596816071

/-!
# A370768: Number of signed permutations of length n+2 with adjacent elements differing by more than 1 whose first element is 1 and whose last element has absolute value n+2.

The programs for A370768, there is no canonical definition to state claims against.
-/

/-! ## A370768.P9631827098785057646

`2*A370767(n)-a(n-1)` with `a(0)=1`
-/

namespace A370768.P9631827098785057646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A370767 n - a (n - 1)

end

end A370768.P9631827098785057646

/-! ## A370768.P214084031727522172

`A109613(A369645(n+1)-A272919(n+1))`
-/

namespace A370768.P214084031727522172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A369645 (n + 1) - A272919 (n + 1)).toNat

end

end A370768.P214084031727522172

/-!
# A370769: Number of achiral unicursal star polygons (no edge joins adjacent vertices) that can be formed by connecting the vertices of a regular n-gon.

The programs for A370769, there is no canonical definition to state claims against.
-/

/-! ## A370769.P3414532157035616722

`A237050(A011946(n+1))`
-/

namespace A370769.P3414532157035616722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237050 (A011946 (n + 1)).toNat

end

end A370769.P3414532157035616722

/-! ## A370769.P5274156629112747015

`A237050(A128022(n+1))`
-/

namespace A370769.P5274156629112747015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237050 (A128022 (n + 1)).toNat

end

end A370769.P5274156629112747015

/-! ## A370769.P2714877090661915073

`A004197(A225960(n)+n)`
-/

namespace A370769.P2714877090661915073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A225960 n + (n : ℤ)).toNat

end

end A370769.P2714877090661915073

/-! ## A370769.P7542053487524179218

`or(1, 10^n)%A364350(A001350(n))`
-/

namespace A370769.P7542053487524179218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.lor 1 (10 ^ n) : ℤ) (A364350 (A001350 n).toNat)

end

end A370769.P7542053487524179218

/-! ## A370769.P2974543159659347711

`A129527(A057574(n)-A104502(n))`
-/

namespace A370769.P2974543159659347711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 (A057574 n - A104502 n).toNat

end

end A370769.P2974543159659347711

/-!
# A370770: Triangle read by rows: T(n,k) is the number of k-trees with n unlabeled nodes.

The programs for A370770, there is no canonical definition to state claims against.
-/

/-! ## A370770.P5131514471057150658

`A370771(C(row(n)+1, 2)+col(n))+A370772(C(row(n)+1, 2)+col(n))-A370773(C(row(n)+1, 2)+col(n))`
-/

namespace A370770.P5131514471057150658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370771 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) + A370772 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) - A370773 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A370770.P5131514471057150658

/-! ## A370770.P8376435312707506148

`A370771(n)+A370772(n)-A370773(n)`
-/

namespace A370770.P8376435312707506148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370771 n + (A370772 n - A370773 n)

end

end A370770.P8376435312707506148

/-! ## A370770.P11031801488186075819

`A120699(A092921(n)!)`
-/

namespace A370770.P11031801488186075819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120699 (Nat.factorial (A092921 n).toNat)

end

end A370770.P11031801488186075819

/-! ## A370770.P12290420628203383560

`A307985(A158780(n+3))+A001400(A092921(n))`
-/

namespace A370770.P12290420628203383560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307985 (A158780 (n + 3)).toNat + A001400 (A092921 n).toNat

end

end A370770.P12290420628203383560

/-! ## A370770.P344979707378616314

`A083710(A092921(n)%A253804(n+3))`
-/

namespace A370770.P344979707378616314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083710 (Int.tmod (A092921 n) (A253804 (n + 3))).toNat

end

end A370770.P344979707378616314

/-!
# A370771: Triangle read by rows: T(n,k) is the number of k-trees with n unlabeled nodes rooted at a front.

The programs for A370771, there is no canonical definition to state claims against.
-/

/-! ## A370771.P7610849667344375735

`A370770(n)+A370773(n)-A370772(n)`
-/

namespace A370771.P7610849667344375735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370770 n + (A370773 n - A370772 n)

end

end A370771.P7610849667344375735

/-! ## A370771.P11467146669082201805

`A369858(A331562(n+1))`
-/

namespace A370771.P11467146669082201805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369858 (A331562 (n + 1)).toNat

end

end A370771.P11467146669082201805

/-! ## A370771.P4285948785245073259

`A162351(A256268(n))`
-/

namespace A370771.P4285948785245073259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162351 (A256268 n).toNat

end

end A370771.P4285948785245073259

/-! ## A370771.P2620338593856305847

`A162351(A332700(n))`
-/

namespace A370771.P2620338593856305847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162351 (A332700 n).toNat

end

end A370771.P2620338593856305847

/-! ## A370771.P3276942518548935581

`A097561(A047888(n+1))`
-/

namespace A370771.P3276942518548935581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097561 (A047888 (n + 1)).toNat

end

end A370771.P3276942518548935581

/-!
# A370772: Triangle read by rows: T(n,k) is the number of k-trees with n unlabeled nodes rooted at a hedron.

The programs for A370772, there is no canonical definition to state claims against.
-/

/-! ## A370772.P17293276383755261538

`A370770(n)+A370773(n)-A370771(n)`
-/

namespace A370772.P17293276383755261538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370770 n + (A370773 n - A370771 n)

end

end A370772.P17293276383755261538

/-! ## A370772.P3898890536854047096

`A131469(A135302(n+1))`
-/

namespace A370772.P3898890536854047096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131469 (A135302 (n + 1)).toNat

end

end A370772.P3898890536854047096

/-! ## A370772.P1154916619322414931

`A325678(A092921(n)^3)`
-/

namespace A370772.P1154916619322414931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A092921 n ^ 3).toNat

end

end A370772.P1154916619322414931

/-! ## A370772.P5376293053219504528

`A371355(4^A092921(n))`
-/

namespace A370772.P5376293053219504528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371355 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A092921 n : ℤ))).toNat

end

end A370772.P5376293053219504528

/-! ## A370772.P3897545401901216746

`A211263(10^A092921(n))`
-/

namespace A370772.P3897545401901216746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211263 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A092921 n : ℤ))).toNat

end

end A370772.P3897545401901216746

/-!
# A370773: Triangle read by rows: T(n,k) is the number of k-trees with n unlabeled nodes rooted at a hedron with a designated front.

The programs for A370773, there is no canonical definition to state claims against.
-/

/-! ## A370773.P17767517271859041748

`A370771(n)+A370772(n)-A370770(n)`
-/

namespace A370773.P17767517271859041748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370771 n + (A370772 n - A370770 n)

end

end A370773.P17767517271859041748

/-! ## A370773.P9223646155588924836

`A076906(A246106(n))%A204890(n+1)`
-/

namespace A370773.P9223646155588924836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076906 (A246106 n).toNat) (A204890 (n + 1))

end

end A370773.P9223646155588924836

/-! ## A370773.P480120629493928732

`A000129(A321391(n)%A208809(n+1))`
-/

namespace A370773.P480120629493928732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (Int.tmod (A321391 n) (A208809 (n + 1))).toNat

end

end A370773.P480120629493928732

/-! ## A370773.P13664828387291597007

`A333632(A143395(n+1))`
-/

namespace A370773.P13664828387291597007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (A143395 (n + 1)).toNat

end

end A370773.P13664828387291597007

/-! ## A370773.P13085850900309262825

`A215462(A269945(n+1))`
-/

namespace A370773.P13085850900309262825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215462 (A269945 (n + 1)).toNat

end

end A370773.P13085850900309262825

/-!
# A370774: Denominator of the n-th partial sum of the generalized harmonic numbers A007406/A007407.

The programs for A370774, there is no canonical definition to state claims against.
-/

/-! ## A370774.P7868468630372030394

`A092824(A212101(n+1))`
-/

namespace A370774.P7868468630372030394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092824 (A212101 (n + 1)).toNat

end

end A370774.P7868468630372030394

/-! ## A370774.P17829356496681376539

`A333219(A054879(n)+A001221(n+1))`
-/

namespace A370774.P17829356496681376539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333219 (A054879 n + A001221 (n + 1)).toNat

end

end A370774.P17829356496681376539

/-!
# A370775: Integers m whose (constant) convergence speed is exactly 2 (i.e., m^^(m+1) has 2 more rightmost frozen digits than m^^m, where ^^ indicates tetration).

The programs for A370775, there is no canonical definition to state claims against.
-/

/-! ## A370775.P11490018517360385640

`eq[A000122(n²), A373387(n)]`
-/

namespace A370775.P11490018517360385640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370775.P11490018517360385640

/-! ## A370775.P5305214567649092767

`eq[floor(1/A109297(3*(n+1)))+2, A373387(n)]`
-/

namespace A370775.P5305214567649092767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A109297 (3 * (n + 1)) : ℚ)⌋ + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370775.P5305214567649092767

/-! ## A370775.P2015548220524532979

`eq[A000005(A034845(n+1)), A373387(n)]`
-/

namespace A370775.P2015548220524532979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A034845 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370775.P2015548220524532979

/-! ## A370775.P6980624428528780618

`eq[A000005(A217046(2*(n+2))), A373387(n)]`
-/

namespace A370775.P6980624428528780618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A217046 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370775.P6980624428528780618

/-! ## A370775.P9822758293038155251

`eq[A020639(A007504(2*n+1)), A373387(n)]`
-/

namespace A370775.P9822758293038155251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007504 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370775.P9822758293038155251

/-!
# A370781: Expansion of 1 / ( (1 - x)*(1 + 2*x)*(1 - 4*x) )^(1/3).

The programs for A370781, the canonical program `A370781.P4682620017456229269` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370781 has offset 0).

The definition of A370781 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370781.P4682620017456229269

`∑{#}[floor(n/2), A004987(#)*C(n, 2*#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A370781

/-- `∑{#}[floor(n/2), A004987(#)*C(n, 2*#)]` -/
def P4682620017456229269.Spec : Prop :=
  ∀ n, P4682620017456229269.a n = A370781 n

theorem P4682620017456229269.correct : P4682620017456229269.Spec := by
  intro n
  simp only [A370781]

end A370781

/-! ## A370781.P8041797360980418370

`A211894(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A370781.P8041797360980418370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A211894 n - 2 * a (n - 1)

end

end A370781.P8041797360980418370

namespace A370781

/-- `A211894(n)-2*a(n-1)` -/
def P8041797360980418370.Spec : Prop :=
  ∀ n, P8041797360980418370.a n = A370781 n

end A370781

/-! ## A370781.P5004497806538147980

`A289493(A259274(n)+A216507(n))`
-/

namespace A370781.P5004497806538147980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (A259274 n + A216507 n).toNat

end

end A370781.P5004497806538147980

namespace A370781

/-- `A289493(A259274(n)+A216507(n))` -/
def P5004497806538147980.Spec : Prop :=
  ∀ n, P5004497806538147980.a n = A370781 n

end A370781

/-!
# A370783: a(n) is the numerator of the sum of the reciprocals of the squarefree divisors of the powerful part of n.

The programs for A370783, the canonical program `A370783.P9884989495501341942` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370783 has offset 1).

The definition of A370783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370783.P9884989495501341942

`A332880(A057521(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A370783

/-- `A332880(A057521(n+1))` -/
def P9884989495501341942.Spec : Prop :=
  ∀ n, P9884989495501341942.a n = A370783 (n + 1)

theorem P9884989495501341942.correct : P9884989495501341942.Spec := by
  intro n
  simp only [A370783, Nat.add_sub_cancel]

end A370783

/-! ## A370783.P15343480311742899128

`A017665(∏{p}[ceil(n/∏{p}[n+1, #]), #])`
-/

namespace A370783.P15343480311742899128
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A370783.P15343480311742899128

namespace A370783

/-- `A017665(∏{p}[ceil(n/∏{p}[n+1, #]), #])` -/
def P15343480311742899128.Spec : Prop :=
  ∀ n, P15343480311742899128.a n = A370783 (n + 1)

end A370783

/-! ## A370783.P14098859747536728143

`A017665(∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A370783.P14098859747536728143
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A370783.P14098859747536728143

namespace A370783

/-- `A017665(∏{p}[(n+1)/∏{p}[n+1, #], #])` -/
def P14098859747536728143.Spec : Prop :=
  ∀ n, P14098859747536728143.a n = A370783 (n + 1)

end A370783

/-! ## A370783.P6472797901450616913

`A332880(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²]))`
-/

namespace A370783.P6472797901450616913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332880 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)))

end

end A370783.P6472797901450616913

namespace A370783

/-- `A332880(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²]))` -/
def P6472797901450616913.Spec : Prop :=
  ∀ n, P6472797901450616913.a n = A370783 (n + 1)

end A370783

/-! ## A370783.P17742262884727551762

`A017665(∏{p}[∏{p}[n+1, #^val(n+1, #²)]², #])`
-/

namespace A370783.P17742262884727551762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A370783.P17742262884727551762

namespace A370783

/-- `A017665(∏{p}[∏{p}[n+1, #^val(n+1, #²)]², #])` -/
def P17742262884727551762.Spec : Prop :=
  ∀ n, P17742262884727551762.a n = A370783 (n + 1)

end A370783

/-! ## A370783.P9779459284591738308

`A017665(A071773(n+1))`
-/

namespace A370783.P9779459284591738308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (A071773 (n + 1)).toNat

end

end A370783.P9779459284591738308

namespace A370783

/-- `A017665(A071773(n+1))` -/
def P9779459284591738308.Spec : Prop :=
  ∀ n, P9779459284591738308.a n = A370783 (n + 1)

end A370783

/-! ## A370783.P9855729683094018423

`A332880(A000189(n+1))`
-/

namespace A370783.P9855729683094018423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332880 (A000189 (n + 1)).toNat

end

end A370783.P9855729683094018423

namespace A370783

/-- `A332880(A000189(n+1))` -/
def P9855729683094018423.Spec : Prop :=
  ∀ n, P9855729683094018423.a n = A370783 (n + 1)

end A370783

/-! ## A370783.P1036685716934098929

`A332880(A000190(n+1))`
-/

namespace A370783.P1036685716934098929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332880 (A000190 (n + 1)).toNat

end

end A370783.P1036685716934098929

namespace A370783

/-- `A332880(A000190(n+1))` -/
def P1036685716934098929.Spec : Prop :=
  ∀ n, P1036685716934098929.a n = A370783 (n + 1)

end A370783

/-! ## A370783.P203709026749256772

`A332880(A003557(n+1))`
-/

namespace A370783.P203709026749256772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332880 (A003557 (n + 1)).toNat

end

end A370783.P203709026749256772

namespace A370783

/-- `A332880(A003557(n+1))` -/
def P203709026749256772.Spec : Prop :=
  ∀ n, P203709026749256772.a n = A370783 (n + 1)

end A370783

/-! ## A370783.P1974242107137219846

`A332880(A008833(n+1))`
-/

namespace A370783.P1974242107137219846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332880 (A008833 (n + 1)).toNat

end

end A370783.P1974242107137219846

namespace A370783

/-- `A332880(A008833(n+1))` -/
def P1974242107137219846.Spec : Prop :=
  ∀ n, P1974242107137219846.a n = A370783 (n + 1)

end A370783

/-! ## A370783.P12904658976088365596

`A348038(A007948(n+1))`
-/

namespace A370783.P12904658976088365596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348038 (A007948 (n + 1)).toNat

end

end A370783.P12904658976088365596

namespace A370783

/-- `A348038(A007948(n+1))` -/
def P12904658976088365596.Spec : Prop :=
  ∀ n, P12904658976088365596.a n = A370783 (n + 1)

end A370783

/-! ## A370783.P3002479009140742374

`A332880(A085731(n+1))`
-/

namespace A370783.P3002479009140742374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332880 (A085731 (n + 1)).toNat

end

end A370783.P3002479009140742374

namespace A370783

/-- `A332880(A085731(n+1))` -/
def P3002479009140742374.Spec : Prop :=
  ∀ n, P3002479009140742374.a n = A370783 (n + 1)

end A370783

/-! ## A370783.P17461058866419561461

`A332880(A366993(n+1))`
-/

namespace A370783.P17461058866419561461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332880 (A366993 (n + 1)).toNat

end

end A370783.P17461058866419561461

namespace A370783

/-- `A332880(A366993(n+1))` -/
def P17461058866419561461.Spec : Prop :=
  ∀ n, P17461058866419561461.a n = A370783 (n + 1)

end A370783

/-! ## A370783.P2106452928225705317

`A332880((n+1)/A007947(n+1))`
-/

namespace A370783.P2106452928225705317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332880 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A370783.P2106452928225705317

namespace A370783

/-- `A332880((n+1)/A007947(n+1))` -/
def P2106452928225705317.Spec : Prop :=
  ∀ n, P2106452928225705317.a n = A370783 (n + 1)

end A370783

/-! ## A370783.P15884985198233653902

`A348038(A007947(A003557(n+1))²)`
-/

namespace A370783.P15884985198233653902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348038 (A007947 (A003557 (n + 1)).toNat ^ 2).toNat

end

end A370783.P15884985198233653902

namespace A370783

/-- `A348038(A007947(A003557(n+1))²)` -/
def P15884985198233653902.Spec : Prop :=
  ∀ n, P15884985198233653902.a n = A370783 (n + 1)

end A370783

/-! ## A370783.P2288112659454627178

`A017665(A007947((n+1)/A007947(n+1)))`
-/

namespace A370783.P2288112659454627178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat).toNat

end

end A370783.P2288112659454627178

namespace A370783

/-- `A017665(A007947((n+1)/A007947(n+1)))` -/
def P2288112659454627178.Spec : Prop :=
  ∀ n, P2288112659454627178.a n = A370783 (n + 1)

end A370783

/-! ## A370783.P8435657890298144195

`A348038((n+1)/A003557(A003557(n+1)))`
-/

namespace A370783.P8435657890298144195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348038 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (A003557 (n + 1)).toNat : ℚ))).toNat

end

end A370783.P8435657890298144195

namespace A370783

/-- `A348038((n+1)/A003557(A003557(n+1)))` -/
def P8435657890298144195.Spec : Prop :=
  ∀ n, P8435657890298144195.a n = A370783 (n + 1)

end A370783

/-! ## A370783.P14578175455850067325

`A332880(A011264(n+1))`
-/

namespace A370783.P14578175455850067325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332880 (A011264 (n + 1)).toNat

end

end A370783.P14578175455850067325

namespace A370783

/-- `A332880(A011264(n+1))` -/
def P14578175455850067325.Spec : Prop :=
  ∀ n, P14578175455850067325.a n = A370783 (n + 1)

end A370783

/-! ## A370783.P8975038604258268659

`A332880(A295666(n+1))`
-/

namespace A370783.P8975038604258268659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332880 (A295666 (n + 1)).toNat

end

end A370783.P8975038604258268659

namespace A370783

/-- `A332880(A295666(n+1))` -/
def P8975038604258268659.Spec : Prop :=
  ∀ n, P8975038604258268659.a n = A370783 (n + 1)

end A370783

/-! ## A370783.P7943645119173818876

`A332880(A322020(n+1))`
-/

namespace A370783.P7943645119173818876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332880 (A322020 (n + 1)).toNat

end

end A370783.P7943645119173818876

namespace A370783

/-- `A332880(A322020(n+1))` -/
def P7943645119173818876.Spec : Prop :=
  ∀ n, P7943645119173818876.a n = A370783 (n + 1)

end A370783

/-!
# A370784: a(n) is the denominator of the sum of the reciprocals of the squarefree divisors of the powerful part of n.

The programs for A370784, the canonical program `A370784.P17196978018823182147` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370784 has offset 1).

The definition of A370784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370784.P17196978018823182147

`A332881(A057521(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A370784

/-- `A332881(A057521(n+1))` -/
def P17196978018823182147.Spec : Prop :=
  ∀ n, P17196978018823182147.a n = A370784 (n + 1)

theorem P17196978018823182147.correct : P17196978018823182147.Spec := by
  intro n
  simp only [A370784, Nat.add_sub_cancel]

end A370784

/-! ## A370784.P7322978119607496485

`A332881((n+1)/∏{p}[n+1, #])`
-/

namespace A370784.P7322978119607496485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A370784.P7322978119607496485

namespace A370784

/-- `A332881((n+1)/∏{p}[n+1, #])` -/
def P7322978119607496485.Spec : Prop :=
  ∀ n, P7322978119607496485.a n = A370784 (n + 1)

end A370784

/-! ## A370784.P9091259669737117477

`A017666(∏{p}[ceil(n/∏{p}[n+1, #]), #])`
-/

namespace A370784.P9091259669737117477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A370784.P9091259669737117477

namespace A370784

/-- `A017666(∏{p}[ceil(n/∏{p}[n+1, #]), #])` -/
def P9091259669737117477.Spec : Prop :=
  ∀ n, P9091259669737117477.a n = A370784 (n + 1)

end A370784

/-! ## A370784.P12663974295687421352

`A017666(∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A370784.P12663974295687421352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A370784.P12663974295687421352

namespace A370784

/-- `A017666(∏{p}[(n+1)/∏{p}[n+1, #], #])` -/
def P12663974295687421352.Spec : Prop :=
  ∀ n, P12663974295687421352.a n = A370784 (n + 1)

end A370784

/-! ## A370784.P15238865594082124427

`A332881(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A370784.P15238865594082124427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A370784.P15238865594082124427

namespace A370784

/-- `A332881(∏{p}[n+1, #^val(n+1, #²)])` -/
def P15238865594082124427.Spec : Prop :=
  ∀ n, P15238865594082124427.a n = A370784 (n + 1)

end A370784

/-! ## A370784.P4339595939849670803

`A332881(A003557(n+1))`
-/

namespace A370784.P4339595939849670803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (A003557 (n + 1)).toNat

end

end A370784.P4339595939849670803

namespace A370784

/-- `A332881(A003557(n+1))` -/
def P4339595939849670803.Spec : Prop :=
  ∀ n, P4339595939849670803.a n = A370784 (n + 1)

end A370784

/-! ## A370784.P6098027721659541713

`A017666(∏{p}[A003557(n+1), #])`
-/

namespace A370784.P6098027721659541713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A370784.P6098027721659541713

namespace A370784

/-- `A017666(∏{p}[A003557(n+1), #])` -/
def P6098027721659541713.Spec : Prop :=
  ∀ n, P6098027721659541713.a n = A370784 (n + 1)

end A370784

/-! ## A370784.P7692778665435892675

`A332881((n+1)/A007947(n+1))`
-/

namespace A370784.P7692778665435892675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A370784.P7692778665435892675

namespace A370784

/-- `A332881((n+1)/A007947(n+1))` -/
def P7692778665435892675.Spec : Prop :=
  ∀ n, P7692778665435892675.a n = A370784 (n + 1)

end A370784

/-! ## A370784.P4959887884088691858

`A017666(A007947((n+1)/A007947(n+1)))`
-/

namespace A370784.P4959887884088691858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A007947 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat).toNat

end

end A370784.P4959887884088691858

namespace A370784

/-- `A017666(A007947((n+1)/A007947(n+1)))` -/
def P4959887884088691858.Spec : Prop :=
  ∀ n, P4959887884088691858.a n = A370784 (n + 1)

end A370784

/-! ## A370784.P828243796457979475

`A332881(A001615(n+1)/A048250(n+1))`
-/

namespace A370784.P828243796457979475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (SequenceMachineLib.roundAway ((A001615 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ))).toNat

end

end A370784.P828243796457979475

namespace A370784

/-- `A332881(A001615(n+1)/A048250(n+1))` -/
def P828243796457979475.Spec : Prop :=
  ∀ n, P828243796457979475.a n = A370784 (n + 1)

end A370784

/-! ## A370784.P10248235176745105915

`A017666(A007947(A373440(n+1)²))`
-/

namespace A370784.P10248235176745105915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A007947 (A373440 (n + 1) ^ 2).toNat).toNat

end

end A370784.P10248235176745105915

namespace A370784

/-- `A017666(A007947(A373440(n+1)²))` -/
def P10248235176745105915.Spec : Prop :=
  ∀ n, P10248235176745105915.a n = A370784 (n + 1)

end A370784

/-!
# A370785: Powerful numbers with an even number of prime factors (counted with multiplicity).

The programs for A370785, there is no canonical definition to state claims against.
-/

/-! ## A370785.P4020975045729622097

`filter[A001694(n+1), A065043(#)]`
-/

namespace A370785.P4020975045729622097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A370785.P4020975045729622097

/-! ## A370785.P2410260693140857308

`record[A061019(A001694(n+1))]`
-/

namespace A370785.P2410260693140857308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061019 (A001694 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370785.P2410260693140857308

/-! ## A370785.P1048982652574823717

`∩[A001694(n+1), A028260(n+1)]`
-/

namespace A370785.P1048982652574823717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370785.P1048982652574823717

/-! ## A370785.P16105561758145890599

`record[A057521(A028260(n+1))]`
-/

namespace A370785.P16105561758145890599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A028260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370785.P16105561758145890599

/-! ## A370785.P10475177409117101030

`record[A057521(n+1)*A065043(n+1)]`
-/

namespace A370785.P10475177409117101030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1) * A065043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370785.P10475177409117101030

/-! ## A370785.P146868140011883453

`∩[A001694(n+1), A233182(n+1)]`
-/

namespace A370785.P146868140011883453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370785.P146868140011883453

/-! ## A370785.P10231338556434658995

`∩[A001694(n+1), A337052(n+1)]`
-/

namespace A370785.P10231338556434658995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370785.P10231338556434658995

/-! ## A370785.P13100554693337455328

`record[(n+1)*A307423(n+1)]`
-/

namespace A370785.P13100554693337455328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A307423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370785.P13100554693337455328

/-! ## A370785.P11563255655733552798

`filter[A028260(n+1), A112526(#)]`
-/

namespace A370785.P11563255655733552798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A370785.P11563255655733552798

/-! ## A370785.P5340535660887628154

`filter[A233182(n+1), A112526(#)]`
-/

namespace A370785.P5340535660887628154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A370785.P5340535660887628154

/-! ## A370785.P18088262870986654273

`filter[A337052(n+1), A112526(#)]`
-/

namespace A370785.P18088262870986654273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A370785.P18088262870986654273

/-! ## A370785.P9058880649393711490

`filter[A143691(2*n+1), A112526(#)]`
-/

namespace A370785.P9058880649393711490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143691 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A370785.P9058880649393711490

/-!
# A370786: Powerful numbers with an odd number of prime factors (counted with multiplicity).

The programs for A370786, there is no canonical definition to state claims against.
-/

/-! ## A370786.P4936139182659348257

`filter[A001694(n+1), A066829(#)]`
-/

namespace A370786.P4936139182659348257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A370786.P4936139182659348257

/-! ## A370786.P16484819168638772742

`filter[A102834(1+n), A066829(#)]`
-/

namespace A370786.P16484819168638772742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A370786.P16484819168638772742

/-! ## A370786.P6128756218269767444

`filter[A320966(n+1), A066829(#)]`
-/

namespace A370786.P6128756218269767444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A370786.P6128756218269767444

/-! ## A370786.P15889987276516223096

`A377820(n+1)+A377782(A377808(2*n+5))`
-/

namespace A370786.P15889987276516223096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377820 (n + 1) + A377782 (A377808 (2 * n + 5)).toNat

end

end A370786.P15889987276516223096

/-! ## A370786.P18333511349758869231

`A377820(n+1)+A079978(A160120(n+3))`
-/

namespace A370786.P18333511349758869231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377820 (n + 1) + A079978 (A160120 (n + 3)).toNat

end

end A370786.P18333511349758869231

/-! ## A370786.P1513924925757397718

`A377820(n+1)+A008683(A377820(2*(n+1)))`
-/

namespace A370786.P1513924925757397718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377820 (n + 1) + A008683 (A377820 (2 * (n + 1))).toNat

end

end A370786.P1513924925757397718

/-! ## A370786.P8662439293521562945

`A005361(A035790(n+1))*A377820(n+1)`
-/

namespace A370786.P8662439293521562945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A035790 (n + 1)).toNat * A377820 (n + 1)

end

end A370786.P8662439293521562945

/-! ## A370786.P2225345264872259789

`∩[A001694(n+1), A046339(n+1)]`
-/

namespace A370786.P2225345264872259789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370786.P2225345264872259789

/-! ## A370786.P12818945572349865928

`∩[A046339(n+1), A102834(n+1)]`
-/

namespace A370786.P12818945572349865928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370786.P12818945572349865928

/-! ## A370786.P3334004817089293067

`∩[A046339(n+1), A320966(n+1)]`
-/

namespace A370786.P3334004817089293067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370786.P3334004817089293067

/-! ## A370786.P6757147758517232851

`∩[A046339(n+1), A377821(n+1)]`
-/

namespace A370786.P6757147758517232851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370786.P6757147758517232851

/-! ## A370786.P6409161389452706652

`∩[A051144(n+1), A377821(n+1)]`
-/

namespace A370786.P6409161389452706652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370786.P6409161389452706652

/-! ## A370786.P17051486450663072570

`∩[A001694(n+1), A026424(n+1)]`
-/

namespace A370786.P17051486450663072570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370786.P17051486450663072570

/-! ## A370786.P14695093383176395596

`∩[A026422(n+1), A102834(n+1)]`
-/

namespace A370786.P14695093383176395596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370786.P14695093383176395596

/-! ## A370786.P17929908605061815925

`∩[A026424(n+1), A102834(n+1)]`
-/

namespace A370786.P17929908605061815925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370786.P17929908605061815925

/-! ## A370786.P1795996175564852592

`∩[A026422(n+1), A320966(n+1)]`
-/

namespace A370786.P1795996175564852592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370786.P1795996175564852592

/-! ## A370786.P879314149566621448

`∩[A026424(n+1), A320966(n+1)]`
-/

namespace A370786.P879314149566621448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370786.P879314149566621448

/-! ## A370786.P7611684141421337786

`∩[A026424(n+1), A377821(n+1)]`
-/

namespace A370786.P7611684141421337786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370786.P7611684141421337786

/-! ## A370786.P15959269910555904258

`∩[A102834(n+1), A344609(n+1)]`
-/

namespace A370786.P15959269910555904258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370786.P15959269910555904258

/-! ## A370786.P2659078685191992834

`A377820(A350389(A000290(n+1))+n)`
-/

namespace A370786.P2659078685191992834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377820 (A350389 (A000290 (n + 1)).toNat + (n : ℤ)).toNat

end

end A370786.P2659078685191992834

/-!
# A370787: Cubefull numbers with an even number of prime factors (counted with multiplicity).

The programs for A370787, there is no canonical definition to state claims against.
-/

/-! ## A370787.P11055326694819756383

`∩[A036966(n+1), A370785(n+1)]`
-/

namespace A370787.P11055326694819756383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370787.P11055326694819756383

/-! ## A370787.P8226117982066406655

`filter[A036966(n+1), A065043(#)]`
-/

namespace A370787.P8226117982066406655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A370787.P8226117982066406655

/-! ## A370787.P3335209692079698394

`∩[A028260(n+1), A036966(n+1)]`
-/

namespace A370787.P3335209692079698394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370787.P3335209692079698394

/-! ## A370787.P4943684552190547625

`filter[A028260(n+1), A360539(#)]`
-/

namespace A370787.P4943684552190547625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360539 (f1 j).toNat = 1) n)

end

end A370787.P4943684552190547625

/-! ## A370787.P7443240082900991095

`∩[A036966(n+1), A122986(n+1)]`
-/

namespace A370787.P7443240082900991095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370787.P7443240082900991095

/-!
# A370788: Cubefull numbers with an odd number of prime factors (counted with multiplicity).

The programs for A370788, there is no canonical definition to state claims against.
-/

/-! ## A370788.P9494855912577213115

`∩[A036966(n+1), A370786(n+1)]`
-/

namespace A370788.P9494855912577213115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370788.P9494855912577213115

/-! ## A370788.P10085745639428509026

`∩[A001694(A371185(n+1)), A370786(n+1)]`
-/

namespace A370788.P10085745639428509026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A371185 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370788.P10085745639428509026

/-! ## A370788.P8869544981384739234

`filter[A036966(n+1), A066829(#)]`
-/

namespace A370788.P8869544981384739234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A370788.P8869544981384739234

/-! ## A370788.P5256876674378915158

`∩[A036966(n+1), A046339(n+1)]`
-/

namespace A370788.P5256876674378915158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370788.P5256876674378915158

/-! ## A370788.P4441338524963427993

`∩[A026424(n+1), A036966(n+1)]`
-/

namespace A370788.P4441338524963427993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370788.P4441338524963427993

/-!
# A370789: Ore numbers whose nontrivial divisors are not Ore numbers.

The programs for A370789, there is no canonical definition to state claims against.
-/

/-! ## A370789.P628588372558149734

`filter[A035527(n+1), A011747(#)]`
-/

namespace A370789.P628588372558149734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011747 (f1 j).toNat = 1) n)

end

end A370789.P628588372558149734

/-!
# A370790: Lexicographically earliest sequence of distinct nonnegative integers such that for any n >= 0, a(n) AND a(n+1) equals 0, a(n) or a(n+1) (where AND denotes the bitwise AND operator).

The programs for A370790, there is no canonical definition to state claims against.
-/

/-! ## A370790.P12047700447366551713

`A303767(A153152(n))`
-/

namespace A370790.P12047700447366551713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303767 (A153152 n).toNat

end

end A370790.P12047700447366551713

/-! ## A370790.P4795759496553956112

`A053644(n)+A303767(n-A053644(n))`
-/

namespace A370790.P4795759496553956112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n + A303767 ((n : ℤ) - A053644 n).toNat

end

end A370790.P4795759496553956112

/-!
# A370791: Inverse permutation of A370790.

The programs for A370791, the canonical program `A370791.P32120878239990069` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370791 has offset 0).

The definition of A370791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370791.P32120878239990069

`A153151(A303768(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A370791

/-- `A153151(A303768(n))` -/
def P32120878239990069.Spec : Prop :=
  ∀ n, P32120878239990069.a n = A370791 n

theorem P32120878239990069.correct : P32120878239990069.Spec := by
  intro n
  simp only [A370791]

end A370791

/-! ## A370791.P6824356079981572302

`Δ[A384877(A001744(n+1))]+n`
-/

namespace A370791.P6824356079981572302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384877 (A001744 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A370791.P6824356079981572302

namespace A370791

/-- `Δ[A384877(A001744(n+1))]+n` -/
def P6824356079981572302.Spec : Prop :=
  ∀ n, P6824356079981572302.a n = A370791 n

end A370791

/-! ## A370791.P3958544410358416865

`and(A052905(A090037(n+1)+1)-6, A233279(n))`
-/

namespace A370791.P3958544410358416865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052905 (A090037 (n + 1) + 1).toNat - 6) (A233279 n)

end

end A370791.P3958544410358416865

namespace A370791

/-- `and(A052905(A090037(n+1)+1)-6, A233279(n))` -/
def P3958544410358416865.Spec : Prop :=
  ∀ n, P3958544410358416865.a n = A370791 n

end A370791

/-!
# A370792: Expansion of Product_{k>=1} (1 + 3^(k+1)*x^k) * (1 + 3^(k-1)*x^k).

The programs for A370792, there is no canonical definition to state claims against.
-/

/-! ## A370792.P77887030788131672

`A353832(A360539(10*a(n-1)))` with `a(0)=1`
-/

namespace A370792.P77887030788131672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A353832 (A360539 (10 * a (n - 1)).toNat).toNat

end

end A370792.P77887030788131672

/-!
# A370796: Number of primes between (prime(n)+1)^2 and (prime(n+1)-1)^2.

The programs for A370796, the canonical program `A370796.P801255412299993999` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370796 has offset 1).

The definition of A370796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370796.P801255412299993999

`abs(A000720((A000040(n+2)-1)²)-A000720((A000040(n+1)+1)²))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A370796

/-- `abs(A000720((A000040(n+2)-1)²)-A000720((A000040(n+1)+1)²))` -/
def P801255412299993999.Spec : Prop :=
  ∀ n, P801255412299993999.a n = A370796 (n + 1)

theorem P801255412299993999.correct : P801255412299993999.Spec := by
  intro n
  simp only [A370796, Nat.add_sub_cancel]

end A370796

/-!
# A370797: Expansion of (1/x) * Series_Reversion( x/(x+1/(1-x-x^3)) ).

The programs for A370797, the canonical program `A370797.P14741787817802709745` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370797 has offset 0).

The definition of A370797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370797.P14741787817802709745

`∑{#}[n, C(n, #)*A049140(#+1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A370797

/-- `∑{#}[n, C(n, #)*A049140(#+1)]` -/
def P14741787817802709745.Spec : Prop :=
  ∀ n, P14741787817802709745.a n = A370797 n

theorem P14741787817802709745.correct : P14741787817802709745.Spec := by
  intro n
  simp only [A370797]

end A370797

/-! ## A370797.P3827882832848371721

`A352077(A148105(n+1))`
-/

namespace A370797.P3827882832848371721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352077 (A148105 (n + 1)).toNat

end

end A370797.P3827882832848371721

namespace A370797

/-- `A352077(A148105(n+1))` -/
def P3827882832848371721.Spec : Prop :=
  ∀ n, P3827882832848371721.a n = A370797 n

end A370797

/-! ## A370797.P10590759978933693363

`A349458(n)+A056975(A000272(n))`
-/

namespace A370797.P10590759978933693363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349458 n + A056975 (A000272 n).toNat

end

end A370797.P10590759978933693363

namespace A370797

/-- `A349458(n)+A056975(A000272(n))` -/
def P10590759978933693363.Spec : Prop :=
  ∀ n, P10590759978933693363.a n = A370797 n

end A370797

/-!
# A370798: Expansion of (1/x) * Series_Reversion( x/(x+1/(1-x-x^4)) ).

The programs for A370798, there is no canonical definition to state claims against.
-/

/-! ## A370798.P14524371342854651150

`A025443(A369267(n))+A007317(n+1)`
-/

namespace A370798.P14524371342854651150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A369267 n).toNat + A007317 (n + 1)

end

end A370798.P14524371342854651150

/-! ## A370798.P11218619509141632744

`A258788(n)+A048766(A000045(3*n))`
-/

namespace A370798.P11218619509141632744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258788 n + A048766 (A000045 (3 * n)).toNat

end

end A370798.P11218619509141632744

